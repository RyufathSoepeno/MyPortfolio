<?php

namespace App\Http\Controllers\Akip;

use App\Http\Controllers\Controller;
use App\Models\Akip\Penghargaan;
use App\Models\KlpdInstansi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class PenghargaanController extends Controller
{
    protected $currentUser;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->currentUser = auth()->user();
            return $next($request);
        });
    }

    /**
     * Display a single penghargaan record
     */
    public function show($id)
    {
        $penghargaan = Penghargaan::with('instansi')->find($id);

        if (!$penghargaan) {
            return response()->json([
                'success' => false,
                'message' => 'Data penghargaan tidak ditemukan'
            ], 404);
        }

        return response()->json([
            'success' => true,
            'data' => $penghargaan
        ]);
    }

    /**
     * Display the penghargaan page
     */
    public function index(Request $request)
    {
        // Filter berdasarkan tahun dengan validasi
        $tahun = $request->input('tahun', date('Y'));
        $tahun = is_numeric($tahun) && $tahun >= 2020 && $tahun <= date('Y') ? (int) $tahun : date('Y');

        // Get current user info
        $userLevel = auth()->user()->level;
        $instansiId = auth()->user()->instansi_id;

        // Determine view based on user role
        if (in_array($userLevel, ['tpn', 'admin'])) {
            // TPN/Admin view - show all institutions
            return $this->indexTpn($request, $tahun);
        } elseif ($userLevel == 'kl') {
            // KL view - show only their own institution
            return $this->indexKl($request, $instansiId);
        } elseif (in_array($userLevel, ['provinsi', 'kabupaten'])) {
            // Pemda view - show only their own institution
            return $this->indexPemda($request, $instansiId);
        }

        abort(403);
    }

    /**
     * Display TPN/Admin view - all institutions
     */
    private function indexTpn(Request $request, $tahun)
    {
        // Filter berdasarkan tim
        $tim_id = $request->input('tim_id', null);

        // Get all instansi with their penghargaan status for the selected year
        $query = KlpdInstansi::select(
            'klpd_instansi_new.*',
            'penghargaan.id as penghargaan_id',
            'penghargaan.file_sertifikat',
            'tim_evaluasi.id as tim_id',
            'tim_evaluasi.nama as tim_nama'
        )
            ->leftJoin('penghargaan', function ($join) use ($tahun) {
                $join->on('klpd_instansi_new.id', '=', 'penghargaan.instansi_id')
                    ->where('penghargaan.tahun', $tahun)
                    ->whereNull('penghargaan.deleted_at');
            })
            ->leftJoin('instansi_tim', 'klpd_instansi_new.id', '=', 'instansi_tim.instansi_id')
            ->leftJoin('tim_evaluasi', 'instansi_tim.tim_id', '=', 'tim_evaluasi.id')
            ->whereNull('klpd_instansi_new.deleted_at');

        // Apply tim filter if provided
        if (!empty($tim_id)) {
            $query->where('tim_evaluasi.id', $tim_id);
        }

        // Apply search filter if provided
        $search = $request->input('search', '');
        if (!empty($search)) {
            $query->where('klpd_instansi_new.name', 'like', '%' . $search . '%');
        }

        // Order by: NULL first (belum upload) then yang sudah upload
        $instansiData = $query->orderBy('penghargaan.id', 'asc')
            ->orderBy('klpd_instansi_new.name', 'asc')
            ->get();

        // Reorder to put "Belum Upload" (penghargaan_id is null) at the top
        $instansiData = $instansiData->sortBy(function ($item) {
            return $item->penghargaan_id === null ? 0 : 1;
        })->values();

        // Get all tim options for filter dropdown
        $timOptions = \App\Models\TimEvaluasiRB::orderBy('nama', 'asc')->get();

        // Calculate statistics per tim
        $timStatistics = [];
        foreach ($timOptions as $tim) {
            // Get total instansi for this tim
            $totalInstansi = \App\Models\InstansiTimEvaluasi::where('tim_id', $tim->id)->count();

            // Get instansi that have penghargaan for this tim
            $instansiIds = \App\Models\InstansiTimEvaluasi::where('tim_id', $tim->id)
                ->pluck('instansi_id');

            $sudahUpload = \App\Models\Akip\Penghargaan::where('tahun', $tahun)
                ->whereNull('deleted_at')
                ->whereIn('instansi_id', $instansiIds)
                ->count();

            $belumUpload = $totalInstansi - $sudahUpload;
            $persentase = $totalInstansi > 0 ? round(($sudahUpload / $totalInstansi) * 100, 2) : 0;

            $timStatistics[] = [
                'tim_id' => $tim->id,
                'tim_nama' => $tim->nama,
                'total_instansi' => $totalInstansi,
                'sudah_upload' => $sudahUpload,
                'belum_upload' => $belumUpload,
                'persentase' => $persentase
            ];
        }

        // Calculate overall statistics
        $totalInstansi = KlpdInstansi::whereNull('deleted_at')->count();
        $totalSudahUpload = Penghargaan::where('tahun', $tahun)->whereNull('deleted_at')->count();
        $totalBelumUpload = $totalInstansi - $totalSudahUpload;
        $overallPersentase = $totalInstansi > 0 ? round(($totalSudahUpload / $totalInstansi) * 100, 2) : 0;

        $overallStatistics = [
            'total_instansi' => $totalInstansi,
            'sudah_upload' => $totalSudahUpload,
            'belum_upload' => $totalBelumUpload,
            'persentase' => $overallPersentase
        ];

        return view('akip.penghargaan.index', compact(
            'instansiData',
            'timOptions',
            'timStatistics',
            'overallStatistics',
            'tahun',
            'search',
            'tim_id'
        ));
    }

    /**
     * Display KL view - their own institution only
     */
    private function indexKl(Request $request, $instansiId)
    {
        // Get the user's institution
        $instansi = KlpdInstansi::where('id', $instansiId)
            ->whereNull('deleted_at')
            ->first();

        if (!$instansi) {
            \Log::error('Institusi tidak ditemukan', [
                'user_id' => $this->currentUser->id,
                'user_name' => $this->currentUser->name,
                'user_email' => $this->currentUser->email,
                'user_level' => $this->currentUser->level,
                'instansi_id' => $instansiId,
                'timestamp' => now()->toDateTimeString()
            ]);

            $errorMessage = 'Instansi Anda belum terdaftar di sistem. Silakan hubungi evaluator masing-masing untuk di-assign ke instansi yang aktif.';

            return view('akip.penghargaan.index_kl', compact(
                'errorMessage'
            ));
        }

        // Get all penghargaan for this institution
        $penghargaanList = Penghargaan::where('instansi_id', $instansiId)
            ->whereNull('deleted_at')
            ->orderBy('tahun', 'desc')
            ->get();

        return view('akip.penghargaan.index_kl', compact(
            'instansi',
            'penghargaanList'
        ));
    }

    /**
     * Display Pemda view - their own institution only
     */
    private function indexPemda(Request $request, $instansiId)
    {
        // Get the user's institution
        $instansi = KlpdInstansi::where('id', $instansiId)
            ->whereNull('deleted_at')
            ->first();

        if (!$instansi) {
            \Log::error('Institusi tidak ditemukan', [
                'user_id' => $this->currentUser->id,
                'user_name' => $this->currentUser->name,
                'user_email' => $this->currentUser->email,
                'user_level' => $this->currentUser->level,
                'instansi_id' => $instansiId,
                'timestamp' => now()->toDateTimeString()
            ]);

            $errorMessage = 'Instansi Anda belum terdaftar di sistem. Silakan hubungi evaluator masing-masing untuk di-assign ke instansi yang aktif.';

            return view('akip.penghargaan.index_pemda', compact(
                'errorMessage'
            ));
        }

        // Get all penghargaan for this institution
        $penghargaanList = Penghargaan::where('instansi_id', $instansiId)
            ->whereNull('deleted_at')
            ->orderBy('tahun', 'desc')
            ->get();

        return view('akip.penghargaan.index_pemda', compact(
            'instansi',
            'penghargaanList'
        ));
    }

    /**
     * Store a newly created penghargaan
     */
    public function store(Request $request)
    {
        // Check if user has permission (TPN only)
        if (!in_array($this->currentUser->level, ['tpn', 'admin'])) {
            return response()->json([
                'success' => false,
                'message' => 'Anda tidak memiliki izin untuk menambah data penghargaan'
            ], 403);
        }

        try {
            // Validate request
            $request->validate([
                'instansi_id' => 'required|exists:klpd_instansi_new,id',
                'tahun' => 'required|integer|min:2020|max:' . date('Y'),
                'file_sertifikat' => 'required|file|mimes:pdf,jpg,jpeg,png|max:20480', // 5MB max
            ]);

            // Check unique constraint
            $exists = Penghargaan::where('instansi_id', $request->instansi_id)
                ->where('tahun', $request->tahun)
                ->whereNull('deleted_at')
                ->first();

            if ($exists) {
                return response()->json([
                    'success' => false,
                    'message' => 'Instansi ini sudah memiliki sertifikat untuk tahun ' . $request->tahun
                ]);
            }

            // Handle file upload
            if ($request->hasFile('file_sertifikat')) {
                $file = $request->file('file_sertifikat');

                // Normalisasi nama file
                $original = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);
                $ext = $file->getClientOriginalExtension();
                $safeName = Str::slug($original, '_') . '.' . $ext;

                $filename = time() . '_' . $safeName;
                $file->storeAs('akip/penghargaan', $filename, 'public');
            }

            // Create penghargaan record
            $penghargaan = new Penghargaan();
            $penghargaan->instansi_id = $request->instansi_id;
            $penghargaan->tahun = $request->tahun;
            $penghargaan->file_sertifikat = $filename;
            $penghargaan->save();

            return response()->json([
                'success' => true,
                'message' => 'Data penghargaan berhasil ditambahkan'
            ]);

        } catch (\Illuminate\Validation\ValidationException $e) {
            // Flatten error messages from associative array
            $errorMessages = [];
            foreach ($e->errors() as $field => $messages) {
                foreach ($messages as $message) {
                    $errorMessages[] = $message;
                }
            }

            return response()->json([
                'success' => false,
                'message' => 'Validasi gagal: ' . implode(', ', $errorMessages)
            ], 422);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Gagal menambah data: ' . $e->getMessage()
            ], 500);
        }
    }

    /**
     * Update the specified penghargaan
     */
    public function update(Request $request, $id)
    {
        // Check if user has permission (TPN only)
        if (!in_array($this->currentUser->level, ['tpn', 'admin'])) {
            return response()->json([
                'success' => false,
                'message' => 'Anda tidak memiliki izin untuk mengubah data penghargaan'
            ], 403);
        }

        try {
            $penghargaan = Penghargaan::find($id);
            if (!$penghargaan) {
                return response()->json([
                    'success' => false,
                    'message' => 'Data penghargaan tidak ditemukan'
                ], 404);
            }

            // Validate request
            $request->validate([
                'instansi_id' => 'required|exists:klpd_instansi_new,id',
                'tahun' => 'required|integer|min:2020|max:' . date('Y'),
                'file_sertifikat' => 'nullable|file|mimes:pdf,jpg,jpeg,png|max:20480',
            ]);

            // Check unique constraint (excluding current record)
            $exists = Penghargaan::where('instansi_id', $request->instansi_id)
                ->where('tahun', $request->tahun)
                ->where('id', '!=', $id)
                ->whereNull('deleted_at')
                ->first();

            if ($exists) {
                return response()->json([
                    'success' => false,
                    'message' => 'Instansi ini sudah memiliki sertifikat untuk tahun ' . $request->tahun
                ]);
            }

            // Handle file upload if new file is provided
            if ($request->hasFile('file_sertifikat')) {
                // Delete old file
                if (!empty($penghargaan->file_sertifikat)) {
                    Storage::disk('public')->delete('akip/penghargaan/' . $penghargaan->file_sertifikat);
                }

                $file = $request->file('file_sertifikat');
                $original = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);
                $ext = $file->getClientOriginalExtension();
                $safeName = Str::slug($original, '_') . '.' . $ext;

                $filename = time() . '_' . $safeName;
                $file->storeAs('akip/penghargaan', $filename, 'public');
                $penghargaan->file_sertifikat = $filename;
            }

            // Update penghargaan record
            $penghargaan->instansi_id = $request->instansi_id;
            $penghargaan->tahun = $request->tahun;
            $penghargaan->save();

            return response()->json([
                'success' => true,
                'message' => 'Data penghargaan berhasil diperbarui'
            ]);

        } catch (\Illuminate\Validation\ValidationException $e) {
            // Flatten error messages from associative array
            $errorMessages = [];
            foreach ($e->errors() as $field => $messages) {
                foreach ($messages as $message) {
                    $errorMessages[] = $message;
                }
            }

            return response()->json([
                'success' => false,
                'message' => 'Validasi gagal: ' . implode(', ', $errorMessages)
            ], 422);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Gagal mengubah data: ' . $e->getMessage()
            ], 500);
        }
    }

    /**
     * Remove the specified penghargaan
     */
    public function destroy($id)
    {
        // Check if user has permission (TPN only)
        if (!in_array($this->currentUser->level, ['tpn', 'admin'])) {
            return response()->json([
                'success' => false,
                'message' => 'Anda tidak memiliki izin untuk menghapus data penghargaan'
            ], 403);
        }

        try {
            $penghargaan = Penghargaan::find($id);
            if (!$penghargaan) {
                return response()->json([
                    'success' => false,
                    'message' => 'Data penghargaan tidak ditemukan'
                ], 404);
            }

            // Delete file from storage
            if (!empty($penghargaan->file_sertifikat)) {
                Storage::disk('public')->delete('akip/penghargaan/' . $penghargaan->file_sertifikat);
            }

            // Soft delete the record
            $penghargaan->delete();

            return response()->json([
                'success' => true,
                'message' => 'Data penghargaan berhasil dihapus'
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Gagal menghapus data: ' . $e->getMessage()
            ], 500);
        }
    }

    /**
     * Download sertifikat file
     */
    public function download($id)
    {
        try {
            $penghargaan = Penghargaan::find($id);
            if (!$penghargaan || empty($penghargaan->file_sertifikat)) {
                \Log::error('File penghargaan tidak ditemukan', [
                    'user_id' => $this->currentUser->id,
                    'penghargaan_id' => $id
                ]);
                return response()->json([
                    'success' => false,
                    'message' => 'File tidak ditemukan'
                ], 404);
            }

            $filePath = 'akip/penghargaan/' . $penghargaan->file_sertifikat;

            if (!Storage::disk('public')->exists($filePath)) {
                \Log::error('File tidak ditemukan di storage', [
                    'user_id' => $this->currentUser->id,
                    'penghargaan_id' => $id,
                    'file_path' => $filePath
                ]);
                return response()->json([
                    'success' => false,
                    'message' => 'File tidak ditemukan di storage'
                ], 404);
            }

            return Storage::disk('public')->download($filePath, $penghargaan->file_sertifikat);

        } catch (\Exception $e) {
            abort(500, 'Gagal mengunduh file: ' . $e->getMessage());
        }
    }
}
