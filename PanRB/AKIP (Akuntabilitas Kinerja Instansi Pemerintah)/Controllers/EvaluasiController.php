<?php

namespace App\Http\Controllers\Akip;

use App\Http\Controllers\Controller;
use App\Models\Akip\EvaluasiSakip;
use App\Models\InstansiTimEvaluasi;
use App\Models\KlpdInstansi;
use App\Models\OpenAccessSetting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class EvaluasiController extends Controller
{
    protected $currentUser;

    public function __construct()
    {
        // Middleware to get current authenticated user
        $this->middleware(function ($request, $next) {
            $this->currentUser = auth()->user();
            return $next($request);
        });
    }

    /**
     * Display evaluasi SAKIP page
     */
    public function index(Request $request)
    {
        // Filter berdasarkan tahun dengan validasi
        $tahun = $request->input('tahun', date('Y'));
        $tahun = is_numeric($tahun) && $tahun >= 2020 && $tahun <= date('Y') ? (int) $tahun : date('Y');

        // Get current user info
        $userLevel = $this->currentUser->level;
        $instansiId = $this->currentUser->instansi_id;

        // Determine view based on user role
        if (in_array($userLevel, ['tpn', 'admin'])) {
            // TPN/Admin view - show all institutions
            return $this->indexTpn($request, $tahun);
        } elseif ($userLevel == 'kl') {
            // KL view - show only their own institution's Final evaluations
            return $this->indexKl($request, $instansiId);
        } elseif (in_array($userLevel, ['provinsi', 'kabupaten'])) {
            // Pemda view - show only their own institution's Final evaluations
            return $this->indexPemda($request, $instansiId);
        }

        abort(403);
    }

    /**
     * Display TPN/Admin view - all institutions
     */
    private function indexTpn(Request $request, $tahun)
    {
        $tim = $this->currentUser->anggota ? $this->currentUser->anggota->tim : false;
        if ($this->currentUser->level == 'admin') {
            $anggota_tims = InstansiTimEvaluasi::with('instansi')->whereHas('instansi', function ($query) {
                $query->whereIn('group', ['kl', 'provinsi', 'kabupaten'])->whereNull('deleted_at');
            })->get();
        } else {
            // Load the relationship for non-admin users - relasi instansi_tim() sudah filter deleted_at
            $anggota_tims = $tim ? $tim->instansi_tim()->with('instansi')->get() : collect();
        }

        // Get search parameters
        $search_kl = $request->input('search_kl', '');
        $search_pemda = $request->input('search_pemda', '');

        // Pisahkan data K/L dan Pemda
        $anggota_kl = collect();
        $anggota_pemda = collect();

        foreach ($anggota_tims as $anggota_tim) {
            $instansi = $anggota_tim->instansi;

            // Skip if instansi is null or deleted (shouldn't happen due to whereHas, but safety check)
            if (!$instansi || $instansi->deleted_at) {
                continue;
            }

            if ($instansi->group == 'kl') {
                // Apply search filter for K/L
                if (!empty($search_kl) && stripos($instansi->name, $search_kl) === false) {
                    continue;
                }

                // Untuk K/L, cek status evaluasi Final
                $evaluasi_final = EvaluasiSakip::where('instansi_id', $instansi->id)
                    ->where('tahun', $tahun)
                    ->where('periode', 'Final')
                    ->first();

                $anggota_tim->status_evaluasi = $evaluasi_final ? 'sudah' : 'belum';
                $anggota_tim->evaluasi_data = $evaluasi_final;
                $anggota_tim->tahun_evaluasi = $tahun;

                $anggota_kl->push($anggota_tim);
            } else {
                // Apply search filter for Pemda
                if (!empty($search_pemda) && stripos($instansi->name, $search_pemda) === false) {
                    continue;
                }

                // Untuk Pemda, cek status evaluasi per TW
                $evaluasi_tw1 = EvaluasiSakip::where('instansi_id', $instansi->id)
                    ->where('tahun', $tahun)
                    ->where('periode', 'TW 1')
                    ->first();

                $evaluasi_tw2 = EvaluasiSakip::where('instansi_id', $instansi->id)
                    ->where('tahun', $tahun)
                    ->where('periode', 'TW 2')
                    ->first();

                $evaluasi_tw3 = EvaluasiSakip::where('instansi_id', $instansi->id)
                    ->where('tahun', $tahun)
                    ->where('periode', 'TW 3')
                    ->first();

                $evaluasi_tw4 = EvaluasiSakip::where('instansi_id', $instansi->id)
                    ->where('tahun', $tahun)
                    ->where('periode', 'Final')
                    ->first();

                $anggota_tim->status_tw1 = $evaluasi_tw1 ? 'sudah' : 'belum';
                $anggota_tim->status_tw2 = $evaluasi_tw2 ? 'sudah' : 'belum';
                $anggota_tim->status_tw3 = $evaluasi_tw3 ? 'sudah' : 'belum';
                $anggota_tim->status_tw4 = $evaluasi_tw4 ? 'sudah' : 'belum';

                $anggota_tim->evaluasi_tw1 = $evaluasi_tw1;
                $anggota_tim->evaluasi_tw2 = $evaluasi_tw2;
                $anggota_tim->evaluasi_tw3 = $evaluasi_tw3;
                $anggota_tim->evaluasi_tw4 = $evaluasi_tw4;
                $anggota_tim->tahun_evaluasi = $tahun;

                $anggota_pemda->push($anggota_tim);
            }
        }

        // Pagination untuk K/L
        $perPage = 10;
        $currentPageKl = $request->input('page_kl', 1);
        $klPaginated = $anggota_kl->forPage($currentPageKl, $perPage);
        $klTotalPages = ceil($anggota_kl->count() / $perPage);

        // Pagination untuk Pemda
        $currentPagePemda = $request->input('page_pemda', 1);
        $pemdaPaginated = $anggota_pemda->forPage($currentPagePemda, $perPage);
        $pemdaTotalPages = ceil($anggota_pemda->count() / $perPage);

        return view('akip.evaluasi.index', compact(
            'tim',
            'anggota_kl',
            'anggota_pemda',
            'klPaginated',
            'pemdaPaginated',
            'klTotalPages',
            'pemdaTotalPages',
            'currentPageKl',
            'currentPagePemda',
            'tahun',
            'search_kl',
            'search_pemda'
        ));
    }

    /**
     * Display KL view - their own institution's Final evaluations only
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

            return view('akip.evaluasi.index_kl', compact(
                'errorMessage'
            ));
        }

        // Get all Final evaluations for this institution
        $evaluasiList = EvaluasiSakip::where('instansi_id', $instansiId)
            ->where('periode', 'Final')
            ->orderBy('tahun', 'desc')
            ->get();

        return view('akip.evaluasi.index_kl', compact(
            'instansi',
            'evaluasiList'
        ));
    }

    /**
     * Display Pemda view - their own institution's Final evaluations only
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

            return view('akip.evaluasi.index_pemda', compact(
                'errorMessage'
            ));
        }

        // Get all Final evaluations for this institution
        $evaluasiList = EvaluasiSakip::where('instansi_id', $instansiId)
            ->where('periode', 'Final')
            ->orderBy('tahun', 'desc')
            ->get();

        return view('akip.evaluasi.index_pemda', compact(
            'instansi',
            'evaluasiList'
        ));
    }

    /**
     * Show evaluasi for specific instansi (TPN/Admin view - all periods)
     */
    public function show($instansi_id)
    {
        // Hapus pengecekan anggota tim - semua user bisa akses
        // $cek = $this->currentUser->anggota ? $this->currentUser->anggota->tim->instansi_tim->where('instansi_id', $instansi_id)->first() : false;
        // if (!$cek && $this->currentUser->level != 'admin') {
        //     abort('404');
        // }

        $instansi = KlpdInstansi::find($instansi_id);
        if (!$instansi) {
            \Log::error('Instansi tidak ditemukan', [
                'user_id' => $this->currentUser->id,
                'instansi_id' => $instansi_id
            ]);
            return response()->json([
                'success' => false,
                'message' => 'Instansi tidak ditemukan'
            ], 404);
        }

        $evaluasi_sakip = EvaluasiSakip::where('instansi_id', $instansi_id)->orderBy('tahun')->orderBy('periode')->get();

        return view('akip.evaluasi.instansi.show', compact('instansi', 'evaluasi_sakip'));
    }

    /**
     * Show Final evaluation for KL/Pemda users
     */
    public function showFinal($id)
    {
        // Get the specific evaluation record
        $evaluasi_sakip = EvaluasiSakip::find($id);

        if (!$evaluasi_sakip) {
            \Log::error('Evaluasi tidak ditemukan', [
                'user_id' => $this->currentUser->id,
                'evaluasi_id' => $id
            ]);
            return response()->json([
                'success' => false,
                'message' => 'Evaluasi tidak ditemukan'
            ], 404);
        }

        // Verify this is a Final period evaluation
        if ($evaluasi_sakip->periode != 'Final') {
            \Log::error('Bukan periode Final', [
                'user_id' => $this->currentUser->id,
                'evaluasi_id' => $id,
                'periode' => $evaluasi_sakip->periode
            ]);
            return response()->json([
                'success' => false,
                'message' => 'Hanya periode Final yang dapat ditampilkan'
            ], 403);
        }

        // Verify the user belongs to the same institution
        $userInstansiId = $this->currentUser->instansi_id;
        if ($evaluasi_sakip->instansi_id != $userInstansiId) {
            \Log::error('User tidak memiliki akses ke evaluasi instansi lain', [
                'user_id' => $this->currentUser->id,
                'user_instansi_id' => $userInstansiId,
                'evaluasi_instansi_id' => $evaluasi_sakip->instansi_id
            ]);
            return response()->json([
                'success' => false,
                'message' => 'Anda tidak memiliki akses ke evaluasi ini'
            ], 403);
        }

        $instansi = $evaluasi_sakip->instansi;

        return view('akip.evaluasi.show_final', compact('evaluasi_sakip', 'instansi'));
    }

    /**
     * Get data for specific evaluasi
     */
    public function getData($instansi_id, $id)
    {
        $cek = $this->currentUser->anggota ? $this->currentUser->anggota->tim->instansi_tim->where('instansi_id', $instansi_id)->first() : false;
        if (!$cek) {
            \Log::error('User tidak memiliki akses ke instansi', [
                'user_id' => $this->currentUser->id,
                'instansi_id' => $instansi_id
            ]);
            return response()->json([
                'success' => false,
                'message' => 'User tidak memiliki akses ke instansi ini'
            ], 404);
        }
        $evaluasi_sakip = EvaluasiSakip::find($id);
        if ($evaluasi_sakip) {
            return response()->json(['evaluasi_sakip' => $evaluasi_sakip])
                ->header('Cache-Control', 'no-cache, no-store, must-revalidate')
                ->header('Pragma', 'no-cache')
                ->header('Expires', '0');
        } else {
            \Log::error('Evaluasi tidak ditemukan', [
                'user_id' => $this->currentUser->id,
                'instansi_id' => $instansi_id,
                'evaluasi_id' => $id
            ]);
            return response()->json([
                'success' => false,
                'message' => 'Evaluasi tidak ditemukan'
            ], 404);
        }
    }

    /**
     * Store evaluasi data (Create new)
     */
    public function store(Request $request, $instansi_id)
    {
        \Log::info('Starting process simpan evaluasi', [
            'user_id' => $this->currentUser->id,
            'user_name' => $this->currentUser->name ?? 'N/A',
            'instansi_id' => $instansi_id
        ]);

        $cek = $this->currentUser->anggota ? $this->currentUser->anggota->tim->instansi_tim->where('instansi_id', $instansi_id)->first() : false;
        if (!$cek) {
            \Log::error('User tidak memiliki akses ke instansi', ['user_id' => $this->currentUser->id, 'instansi_id' => $instansi_id]);
            return response()->json([
                'success' => false,
                'message' => 'User tidak memiliki akses ke instansi ini'
            ], 404);
        }

        $instansi = KlpdInstansi::find($instansi_id);
        if (!$instansi) {
            \Log::error('Instansi tidak ditemukan', ['user_id' => $this->currentUser->id, 'instansi_id' => $instansi_id]);
            return response()->json([
                'success' => false,
                'message' => 'Instansi tidak ditemukan'
            ], 404);
        }

        try {
            // Validate required fields
            // For K/L, periode is not required (it's set to 'Final' automatically)
            $requiredFields = [
                'tahun',
                'penanggung_jawab',
                'pic_lke',
                'link_lke',
                'nilai_komponen_perencanaan_kinerja',
                'nilai_komponen_pengukuran_kinerja',
                'nilai_komponen_pelaporan_kinerja',
                'nilai_komponen_evaluasi_internal',
                'nilai_total_evaluasi_akip',
                'nilai_komponen_perencanaan_kinerja_tahun_lalu',
                'nilai_komponen_pengukuran_kinerja_tahun_lalu',
                'nilai_komponen_pelaporan_kinerja_tahun_lalu',
                'nilai_komponen_evaluasi_internal_tahun_lalu',
                'nilai_total_evaluasi_akip_tahun_lalu'
            ];

            // Add periode validation only for non-K/L instances
            if ($instansi->group != 'kl') {
                $requiredFields[] = 'periode';
            }

            \Log::info('Validating required fields', [
                'instansi_id' => $instansi_id,
                'instansi_group' => $instansi->group,
                'required_fields' => $requiredFields
            ]);

            $missingFields = [];
            foreach ($requiredFields as $field) {
                if (!$request->has($field) || $request->$field === null || $request->$field === '') {
                    $missingFields[] = $field;
                }
            }

            if (!empty($missingFields)) {
                \Log::error('Missing required fields untuk simpan evaluasi', [
                    'user_id' => $this->currentUser->id,
                    'instansi_id' => $instansi_id,
                    'missing_fields' => $missingFields
                ]);
                return response()->json([
                    'success' => false,
                    'message' => 'Gagal simpan evaluasi: Field wajib tidak lengkap: ' . implode(', ', $missingFields)
                ])
                    ->header('Cache-Control', 'no-cache, no-store, must-revalidate')
                    ->header('Pragma', 'no-cache')
                    ->header('Expires', '0');
            }

            \Log::info('Creating new evaluasi record', [
                'user_id' => $this->currentUser->id,
                'instansi_id' => $instansi_id,
                'tahun' => $request->tahun,
                'periode' => $instansi->group == 'kl' ? 'Final' : $request->periode
            ]);

            $evaluasi_sakip = new EvaluasiSakip();
            $evaluasi_sakip->instansi_id = $instansi_id;
            $evaluasi_sakip->tahun = $request->tahun;
            $evaluasi_sakip->periode = $instansi->group == 'kl' ? 'Final' : $request->periode;
            $evaluasi_sakip->penanggung_jawab = $request->penanggung_jawab;
            $evaluasi_sakip->pic_lke = $request->pic_lke;
            $evaluasi_sakip->link_lke = $request->link_lke;
            $evaluasi_sakip->input_user_id = $this->currentUser->id;
            $evaluasi_sakip->last_update_user_id = $this->currentUser->id;

            // Handle file upload
            if ($request->hasFile('file_evaluasi')) {
                \Log::info('Processing file upload untuk simpan evaluasi', [
                    'user_id' => $this->currentUser->id,
                    'instansi_id' => $instansi_id,
                    'original_filename' => $request->file('file_evaluasi')->getClientOriginalName()
                ]);

                $file = $request->file('file_evaluasi');

                // Normalisasi nama file: ganti spasi dan karakter khusus jadi underscore
                $original = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);
                $ext = $file->getClientOriginalExtension();
                $safeName = Str::slug($original, '_') . '.' . $ext;

                $filename = time() . '_' . $safeName;
                $file->storeAs('akip', $filename, 'public');
                $evaluasi_sakip->file_evaluasi = $filename;

                \Log::info('File uploaded successfully', [
                    'user_id' => $this->currentUser->id,
                    'instansi_id' => $instansi_id,
                    'filename' => $filename
                ]);
            }

            // Set all evaluation data
            // Convert comma to dot for decimal separator (MySQL requires dot)
            $evaluasi_sakip->nilai_komponen_perencanaan_kinerja_tahun_lalu = str_replace(',', '.', $request->nilai_komponen_perencanaan_kinerja_tahun_lalu);
            $evaluasi_sakip->nilai_komponen_perencanaan_kinerja = str_replace(',', '.', $request->nilai_komponen_perencanaan_kinerja);
            $evaluasi_sakip->catatan_komponen_perencanaan_kinerja = $request->catatan_komponen_perencanaan_kinerja;
            $evaluasi_sakip->rekomendasi_komponen_perencanaan_kinerja = $request->rekomendasi_komponen_perencanaan_kinerja;

            $evaluasi_sakip->nilai_komponen_pengukuran_kinerja_tahun_lalu = str_replace(',', '.', $request->nilai_komponen_pengukuran_kinerja_tahun_lalu);
            $evaluasi_sakip->nilai_komponen_pengukuran_kinerja = str_replace(',', '.', $request->nilai_komponen_pengukuran_kinerja);
            $evaluasi_sakip->catatan_komponen_pengukuran_kinerja = $request->catatan_komponen_pengukuran_kinerja;
            $evaluasi_sakip->rekomendasi_komponen_pengukuran_kinerja = $request->rekomendasi_komponen_pengukuran_kinerja;

            $evaluasi_sakip->nilai_komponen_pelaporan_kinerja_tahun_lalu = str_replace(',', '.', $request->nilai_komponen_pelaporan_kinerja_tahun_lalu);
            $evaluasi_sakip->nilai_komponen_pelaporan_kinerja = str_replace(',', '.', $request->nilai_komponen_pelaporan_kinerja);
            $evaluasi_sakip->catatan_komponen_pelaporan_kinerja = $request->catatan_komponen_pelaporan_kinerja;
            $evaluasi_sakip->rekomendasi_komponen_pelaporan_kinerja = $request->rekomendasi_komponen_pelaporan_kinerja;

            $evaluasi_sakip->nilai_komponen_evaluasi_internal_tahun_lalu = str_replace(',', '.', $request->nilai_komponen_evaluasi_internal_tahun_lalu);
            $evaluasi_sakip->nilai_komponen_evaluasi_internal = str_replace(',', '.', $request->nilai_komponen_evaluasi_internal);
            $evaluasi_sakip->catatan_komponen_evaluasi_internal = $request->catatan_komponen_evaluasi_internal;
            $evaluasi_sakip->rekomendasi_komponen_evaluasi_internal = $request->rekomendasi_komponen_evaluasi_internal;

            $evaluasi_sakip->nilai_total_evaluasi_akip_tahun_lalu = str_replace(',', '.', $request->nilai_total_evaluasi_akip_tahun_lalu);
            $evaluasi_sakip->nilai_total_evaluasi_akip = str_replace(',', '.', $request->nilai_total_evaluasi_akip);

            // For Pemda only
            if ($instansi->group != 'kl') {
                $evaluasi_sakip->angka_kemiskinan_tahun_lalu = str_replace(',', '.', $request->angka_kemiskinan_tahun_lalu);
                $evaluasi_sakip->angka_kemiskinan = str_replace(',', '.', $request->angka_kemiskinan);
                $evaluasi_sakip->laju_pertumbuhan_ekonomi_tahun_lalu = str_replace(',', '.', $request->laju_pertumbuhan_ekonomi_tahun_lalu);
                $evaluasi_sakip->laju_pertumbuhan_ekonomi = str_replace(',', '.', $request->laju_pertumbuhan_ekonomi);
                $evaluasi_sakip->tingkat_pengangguran_terbuka_tahun_lalu = str_replace(',', '.', $request->tingkat_pengangguran_terbuka_tahun_lalu);
                $evaluasi_sakip->tingkat_pengangguran_terbuka = str_replace(',', '.', $request->tingkat_pengangguran_terbuka);
                $evaluasi_sakip->penurunan_emisi_grk_tahun_lalu = str_replace(',', '.', $request->penurunan_emisi_grk_tahun_lalu);
                $evaluasi_sakip->penurunan_emisi_grk = str_replace(',', '.', $request->penurunan_emisi_grk);
                $evaluasi_sakip->indeks_pembangunan_manusia_tahun_lalu = str_replace(',', '.', $request->indeks_pembangunan_manusia_tahun_lalu);
                $evaluasi_sakip->indeks_pembangunan_manusia = str_replace(',', '.', $request->indeks_pembangunan_manusia);
                $evaluasi_sakip->indeks_gini_ratio_tahun_lalu = str_replace(',', '.', $request->indeks_gini_ratio_tahun_lalu);
                $evaluasi_sakip->indeks_gini_ratio = str_replace(',', '.', $request->indeks_gini_ratio);
                $evaluasi_sakip->pendapatan_perkapita_tahun_lalu = $this->formatCurrencyForDatabase($request->pendapatan_perkapita_tahun_lalu);
                $evaluasi_sakip->pendapatan_perkapita = $this->formatCurrencyForDatabase($request->pendapatan_perkapita);
            }

            \Log::info('Saving evaluasi record', [
                'user_id' => $this->currentUser->id,
                'instansi_id' => $instansi_id,
                'tahun' => $evaluasi_sakip->tahun,
                'periode' => $evaluasi_sakip->periode
            ]);

            $evaluasi_sakip->save();

            \Log::info('Evaluasi berhasil disimpan', [
                'user_id' => $this->currentUser->id,
                'instansi_id' => $instansi_id,
                'evaluasi_id' => $evaluasi_sakip->id,
                'tahun' => $evaluasi_sakip->tahun,
                'periode' => $evaluasi_sakip->periode,
                'nilai_total' => $evaluasi_sakip->nilai_total_evaluasi_akip
            ]);

            return response()->json(['success' => true])
                ->header('Cache-Control', 'no-cache, no-store, must-revalidate')
                ->header('Pragma', 'no-cache')
                ->header('Expires', '0');
        } catch (\Exception $e) {
            \Log::error('Error simpan evaluasi', [
                'user_id' => $this->currentUser->id,
                'instansi_id' => $instansi_id,
                'error_message' => $e->getMessage(),
                'stack_trace' => $e->getTraceAsString()
            ]);

            return response()->json([
                'success' => false,
                'message' => 'Gagal simpan evaluasi: ' . $e->getMessage()
            ])
                ->header('Cache-Control', 'no-cache, no-store, must-revalidate')
                ->header('Pragma', 'no-cache')
                ->header('Expires', '0');
        }
    }

    /**
     * Update evaluasi data (Edit existing)
     */
    public function update(Request $request, $instansi_id, $id)
    {
        \Log::info('Starting process edit evaluasi', [
            'user_id' => $this->currentUser->id,
            'user_name' => $this->currentUser->name ?? 'N/A',
            'instansi_id' => $instansi_id,
            'evaluasi_id' => $id
        ]);

        $cek = $this->currentUser->anggota ? $this->currentUser->anggota->tim->instansi_tim->where('instansi_id', $instansi_id)->first() : false;
        if (!$cek) {
            \Log::error('User tidak memiliki akses ke instansi', ['user_id' => $this->currentUser->id, 'instansi_id' => $instansi_id]);
            return response()->json([
                'success' => false,
                'message' => 'User tidak memiliki akses ke instansi ini'
            ], 404);
        }

        $instansi = KlpdInstansi::find($instansi_id);
        if (!$instansi) {
            \Log::error('Instansi tidak ditemukan', ['user_id' => $this->currentUser->id, 'instansi_id' => $instansi_id]);
            return response()->json([
                'success' => false,
                'message' => 'Instansi tidak ditemukan'
            ], 404);
        }

        try {
            // Validate required fields for edit mode
            $requiredFields = [
                'penanggung_jawab',
                'pic_lke',
                'link_lke',
                'nilai_komponen_perencanaan_kinerja',
                'nilai_komponen_pengukuran_kinerja',
                'nilai_komponen_pelaporan_kinerja',
                'nilai_komponen_evaluasi_internal',
                'nilai_total_evaluasi_akip',
                'nilai_komponen_perencanaan_kinerja_tahun_lalu',
                'nilai_komponen_pengukuran_kinerja_tahun_lalu',
                'nilai_komponen_pelaporan_kinerja_tahun_lalu',
                'nilai_komponen_evaluasi_internal_tahun_lalu',
                'nilai_total_evaluasi_akip_tahun_lalu',
                'catatan_komponen_perencanaan_kinerja',
                'rekomendasi_komponen_perencanaan_kinerja',
                'catatan_komponen_pengukuran_kinerja',
                'rekomendasi_komponen_pengukuran_kinerja',
                'catatan_komponen_pelaporan_kinerja',
                'rekomendasi_komponen_pelaporan_kinerja',
                'catatan_komponen_evaluasi_internal',
                'rekomendasi_komponen_evaluasi_internal'
            ];

            // Add macro indicators for Pemda only
            if ($instansi->group != 'kl') {
                $requiredFields = array_merge($requiredFields, [
                    'angka_kemiskinan_tahun_lalu',
                    'angka_kemiskinan',
                    'laju_pertumbuhan_ekonomi_tahun_lalu',
                    'laju_pertumbuhan_ekonomi',
                    'tingkat_pengangguran_terbuka_tahun_lalu',
                    'tingkat_pengangguran_terbuka',
                    'penurunan_emisi_grk_tahun_lalu',
                    'penurunan_emisi_grk',
                    'indeks_pembangunan_manusia_tahun_lalu',
                    'indeks_pembangunan_manusia',
                    'indeks_gini_ratio_tahun_lalu',
                    'indeks_gini_ratio',
                    'pendapatan_perkapita_tahun_lalu',
                    'pendapatan_perkapita'
                ]);
            }

            \Log::info('Validating required fields untuk edit evaluasi', [
                'user_id' => $this->currentUser->id,
                'instansi_id' => $instansi_id,
                'evaluasi_id' => $id,
                'instansi_group' => $instansi->group,
                'required_fields' => $requiredFields
            ]);

            $missingFields = [];
            foreach ($requiredFields as $field) {
                if (!$request->has($field) || $request->$field === null || $request->$field === '') {
                    $missingFields[] = $field;
                }
            }

            if (!empty($missingFields)) {
                \Log::error('Missing required fields untuk edit evaluasi', [
                    'user_id' => $this->currentUser->id,
                    'instansi_id' => $instansi_id,
                    'evaluasi_id' => $id,
                    'missing_fields' => $missingFields
                ]);
                return response()->json([
                    'success' => false,
                    'message' => 'Gagal edit evaluasi: Field wajib tidak lengkap: ' . implode(', ', $missingFields)
                ])
                    ->header('Cache-Control', 'no-cache, no-store, must-revalidate')
                    ->header('Pragma', 'no-cache')
                    ->header('Expires', '0');
            }

            \Log::info('Finding evaluasi record untuk diupdate', [
                'user_id' => $this->currentUser->id,
                'instansi_id' => $instansi_id,
                'evaluasi_id' => $id
            ]);

            $evaluasi_sakip = EvaluasiSakip::find($id);
            if (!$evaluasi_sakip) {
                \Log::warning('Evaluasi tidak ditemukan', [
                    'user_id' => $this->currentUser->id,
                    'instansi_id' => $instansi_id,
                    'evaluasi_id' => $id
                ]);
                return response()->json([
                    'success' => false,
                    'message' => 'Gagal edit evaluasi: Data evaluasi tidak ditemukan'
                ])
                    ->header('Cache-Control', 'no-cache, no-store, must-revalidate')
                    ->header('Pragma', 'no-cache')
                    ->header('Expires', '0');
            }

            \Log::info('Updating evaluasi record', [
                'user_id' => $this->currentUser->id,
                'instansi_id' => $instansi_id,
                'evaluasi_id' => $id,
                'tahun' => $evaluasi_sakip->tahun,
                'periode' => $evaluasi_sakip->periode
            ]);

            // Update existing record
            $evaluasi_sakip->penanggung_jawab = $request->penanggung_jawab;
            $evaluasi_sakip->pic_lke = $request->pic_lke;
            $evaluasi_sakip->link_lke = $request->link_lke;
            $evaluasi_sakip->last_update_user_id = $this->currentUser->id;

            // Handle file upload for update
            if ($request->hasFile('file_evaluasi')) {
                \Log::info('Processing file upload untuk edit evaluasi', [
                    'user_id' => $this->currentUser->id,
                    'instansi_id' => $instansi_id,
                    'evaluasi_id' => $id,
                    'original_filename' => $request->file('file_evaluasi')->getClientOriginalName(),
                    'old_filename' => $evaluasi_sakip->file_evaluasi
                ]);

                // Hapus file lama jika ada
                if (!empty($evaluasi_sakip->file_evaluasi)) {
                    Storage::disk('public')->delete('akip/' . $evaluasi_sakip->file_evaluasi);
                    \Log::info('Old file deleted', [
                        'user_id' => $this->currentUser->id,
                        'instansi_id' => $instansi_id,
                        'evaluasi_id' => $id,
                        'deleted_filename' => $evaluasi_sakip->file_evaluasi
                    ]);
                }

                $file = $request->file('file_evaluasi');
                $original = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);
                $ext = $file->getClientOriginalExtension();
                $safeName = Str::slug($original, '_') . '.' . $ext;

                $filename = time() . '_' . $safeName;
                $file->storeAs('akip', $filename, 'public');
                $evaluasi_sakip->file_evaluasi = $filename;

                \Log::info('New file uploaded successfully', [
                    'user_id' => $this->currentUser->id,
                    'instansi_id' => $instansi_id,
                    'evaluasi_id' => $id,
                    'new_filename' => $filename
                ]);
            }

            // Update all evaluation data
            // Convert comma to dot for decimal separator (MySQL requires dot)
            $evaluasi_sakip->nilai_komponen_perencanaan_kinerja_tahun_lalu = str_replace(',', '.', $request->nilai_komponen_perencanaan_kinerja_tahun_lalu);
            $evaluasi_sakip->nilai_komponen_perencanaan_kinerja = str_replace(',', '.', $request->nilai_komponen_perencanaan_kinerja);
            $evaluasi_sakip->catatan_komponen_perencanaan_kinerja = $request->catatan_komponen_perencanaan_kinerja;
            $evaluasi_sakip->rekomendasi_komponen_perencanaan_kinerja = $request->rekomendasi_komponen_perencanaan_kinerja;

            $evaluasi_sakip->nilai_komponen_pengukuran_kinerja_tahun_lalu = str_replace(',', '.', $request->nilai_komponen_pengukuran_kinerja_tahun_lalu);
            $evaluasi_sakip->nilai_komponen_pengukuran_kinerja = str_replace(',', '.', $request->nilai_komponen_pengukuran_kinerja);
            $evaluasi_sakip->catatan_komponen_pengukuran_kinerja = $request->catatan_komponen_pengukuran_kinerja;
            $evaluasi_sakip->rekomendasi_komponen_pengukuran_kinerja = $request->rekomendasi_komponen_pengukuran_kinerja;

            $evaluasi_sakip->nilai_komponen_pelaporan_kinerja_tahun_lalu = str_replace(',', '.', $request->nilai_komponen_pelaporan_kinerja_tahun_lalu);
            $evaluasi_sakip->nilai_komponen_pelaporan_kinerja = str_replace(',', '.', $request->nilai_komponen_pelaporan_kinerja);
            $evaluasi_sakip->catatan_komponen_pelaporan_kinerja = $request->catatan_komponen_pelaporan_kinerja;
            $evaluasi_sakip->rekomendasi_komponen_pelaporan_kinerja = $request->rekomendasi_komponen_pelaporan_kinerja;

            $evaluasi_sakip->nilai_komponen_evaluasi_internal_tahun_lalu = str_replace(',', '.', $request->nilai_komponen_evaluasi_internal_tahun_lalu);
            $evaluasi_sakip->nilai_komponen_evaluasi_internal = str_replace(',', '.', $request->nilai_komponen_evaluasi_internal);
            $evaluasi_sakip->catatan_komponen_evaluasi_internal = $request->catatan_komponen_evaluasi_internal;
            $evaluasi_sakip->rekomendasi_komponen_evaluasi_internal = $request->rekomendasi_komponen_evaluasi_internal;

            $evaluasi_sakip->nilai_total_evaluasi_akip_tahun_lalu = str_replace(',', '.', $request->nilai_total_evaluasi_akip_tahun_lalu);
            $evaluasi_sakip->nilai_total_evaluasi_akip = str_replace(',', '.', $request->nilai_total_evaluasi_akip);

            // For Pemda only
            if ($instansi->group != 'kl') {
                $evaluasi_sakip->angka_kemiskinan_tahun_lalu = str_replace(',', '.', $request->angka_kemiskinan_tahun_lalu);
                $evaluasi_sakip->angka_kemiskinan = str_replace(',', '.', $request->angka_kemiskinan);
                $evaluasi_sakip->laju_pertumbuhan_ekonomi_tahun_lalu = str_replace(',', '.', $request->laju_pertumbuhan_ekonomi_tahun_lalu);
                $evaluasi_sakip->laju_pertumbuhan_ekonomi = str_replace(',', '.', $request->laju_pertumbuhan_ekonomi);
                $evaluasi_sakip->tingkat_pengangguran_terbuka_tahun_lalu = str_replace(',', '.', $request->tingkat_pengangguran_terbuka_tahun_lalu);
                $evaluasi_sakip->tingkat_pengangguran_terbuka = str_replace(',', '.', $request->tingkat_pengangguran_terbuka);
                $evaluasi_sakip->penurunan_emisi_grk_tahun_lalu = str_replace(',', '.', $request->penurunan_emisi_grk_tahun_lalu);
                $evaluasi_sakip->penurunan_emisi_grk = str_replace(',', '.', $request->penurunan_emisi_grk);
                $evaluasi_sakip->indeks_pembangunan_manusia_tahun_lalu = str_replace(',', '.', $request->indeks_pembangunan_manusia_tahun_lalu);
                $evaluasi_sakip->indeks_pembangunan_manusia = str_replace(',', '.', $request->indeks_pembangunan_manusia);
                $evaluasi_sakip->indeks_gini_ratio_tahun_lalu = str_replace(',', '.', $request->indeks_gini_ratio_tahun_lalu);
                $evaluasi_sakip->indeks_gini_ratio = str_replace(',', '.', $request->indeks_gini_ratio);
                $evaluasi_sakip->pendapatan_perkapita_tahun_lalu = $this->formatCurrencyForDatabase($request->pendapatan_perkapita_tahun_lalu);
                $evaluasi_sakip->pendapatan_perkapita = $this->formatCurrencyForDatabase($request->pendapatan_perkapita);
            }

            \Log::info('Saving updated evaluasi record', [
                'user_id' => $this->currentUser->id,
                'instansi_id' => $instansi_id,
                'evaluasi_id' => $id
            ]);

            $evaluasi_sakip->save();

            \Log::info('Evaluasi berhasil diupdate', [
                'user_id' => $this->currentUser->id,
                'instansi_id' => $instansi_id,
                'evaluasi_id' => $id,
                'tahun' => $evaluasi_sakip->tahun,
                'periode' => $evaluasi_sakip->periode,
                'nilai_total' => $evaluasi_sakip->nilai_total_evaluasi_akip
            ]);

            return response()->json(['success' => true])
                ->header('Cache-Control', 'no-cache, no-store, must-revalidate')
                ->header('Pragma', 'no-cache')
                ->header('Expires', '0');
        } catch (\Exception $e) {
            \Log::error('Error edit evaluasi', [
                'user_id' => $this->currentUser->id,
                'instansi_id' => $instansi_id,
                'evaluasi_id' => $id,
                'error_message' => $e->getMessage(),
                'stack_trace' => $e->getTraceAsString()
            ]);

            return response()->json([
                'success' => false,
                'message' => 'Gagal edit evaluasi: ' . $e->getMessage()
            ])
                ->header('Cache-Control', 'no-cache, no-store, must-revalidate')
                ->header('Pragma', 'no-cache')
                ->header('Expires', '0');
        }
    }

    /**
     * Check periode for evaluasi
     */
    public function checkPeriode(Request $request, $instansi_id)
    {
        $cek = $this->currentUser->anggota ? $this->currentUser->anggota->tim->instansi_tim->where('instansi_id', $instansi_id)->first() : false;
        if (!$cek) {
            \Log::error('User tidak memiliki akses ke instansi', [
                'user_id' => $this->currentUser->id,
                'instansi_id' => $instansi_id
            ]);
            return response()->json([
                'success' => false,
                'message' => 'User tidak memiliki akses ke instansi ini'
            ], 404);
        }

        // Get all filled periods for the selected year
        $filled_periods = EvaluasiSakip::where('instansi_id', $instansi_id)
            ->where('tahun', $request->tahun)
            ->pluck('periode')
            ->toArray();

        // Check if specific periode is already filled
        $exists = in_array($request->periode, $filled_periods);

        // Get last evaluasi for pre-filling data
        $evaluasi_sakip = EvaluasiSakip::where('instansi_id', $instansi_id)
            ->where('tahun', $request->tahun)
            ->orderBy('periode', 'desc')
            ->first();

        return response()->json([
            'exists' => $exists,
            'filled_periods' => $filled_periods,
            'evaluasi_sakip' => $evaluasi_sakip
        ])
            ->header('Cache-Control', 'no-cache, no-store, must-revalidate')
            ->header('Pragma', 'no-cache')
            ->header('Expires', '0');
    }

    /**
     * Delete evaluasi
     */
    public function destroy($instansi_id, $id)
    {
        try {
            $cek = $this->currentUser->anggota ? $this->currentUser->anggota->tim->instansi_tim->where('instansi_id', $instansi_id)->first() : false;
            if (!$cek) {
                \Log::error('Delete evaluasi: User not authorized for instansi_id: ' . $instansi_id);
                return response()->json(['success' => false, 'message' => 'Unauthorized'], 403)
                    ->header('Cache-Control', 'no-cache, no-store, must-revalidate')
                    ->header('Pragma', 'no-cache')
                    ->header('Expires', '0');
            }

            $evaluasi_sakip = EvaluasiSakip::find($id);
            if (!$evaluasi_sakip) {
                \Log::error('Delete evaluasi: Evaluasi not found with id: ' . $id);
                return response()->json(['success' => false, 'message' => 'Evaluasi not found'], 404)
                    ->header('Cache-Control', 'no-cache, no-store, must-revalidate')
                    ->header('Pragma', 'no-cache')
                    ->header('Expires', '0');
            }

            // Verify that the evaluasi belongs to the correct instansi
            if ($evaluasi_sakip->instansi_id != $instansi_id) {
                \Log::error('Delete evaluasi: Instansi mismatch. Evaluasi instansi_id: ' . $evaluasi_sakip->instansi_id . ', Request instansi_id: ' . $instansi_id);
                return response()->json(['success' => false, 'message' => 'Instansi mismatch'], 400)
                    ->header('Cache-Control', 'no-cache, no-store, must-revalidate')
                    ->header('Pragma', 'no-cache')
                    ->header('Expires', '0');
            }

            $evaluasi_sakip->delete();
            \Log::info('Delete evaluasi: Successfully deleted evaluasi id: ' . $id);
            return response()->json(['success' => true, 'message' => 'Evaluasi berhasil dihapus'])
                ->header('Cache-Control', 'no-cache, no-store, must-revalidate')
                ->header('Pragma', 'no-cache')
                ->header('Expires', '0');

        } catch (\Exception $e) {
            \Log::error('Delete evaluasi error: ' . $e->getMessage());
            \Log::error('Stack trace: ' . $e->getTraceAsString());
            return response()->json(['success' => false, 'message' => 'Terjadi kesalahan saat menghapus evaluasi'], 500)
                ->header('Cache-Control', 'no-cache, no-store, must-revalidate')
                ->header('Pragma', 'no-cache')
                ->header('Expires', '0');
        }
    }

    /**
     * Search evaluasi
     */
    public function search(Request $request)
    {
        try {
            // Validate request
            $request->validate([
                'tahun' => 'required|integer|min:2020|max:' . date('Y'),
                'search_kl' => 'nullable|string|max:255',
                'search_pemda' => 'nullable|string|max:255',
                'page_kl' => 'nullable|integer|min:1',
                'page_pemda' => 'nullable|integer|min:1'
            ]);

            if (!in_array($this->currentUser->level, ['tpn', 'admin'])) {
                return response()->json(['success' => false, 'message' => 'Unauthorized'], 403);
            }

            $tim = $this->currentUser->anggota ? $this->currentUser->anggota->tim : false;

            if ($this->currentUser->level == 'admin') {
                $anggota_tims = InstansiTimEvaluasi::with('instansi')->whereHas('instansi', function ($query) {
                    $query->whereIn('group', ['kl', 'provinsi', 'kabupaten'])->whereNull('deleted_at');
                })->get();
            } else {
                // Load the relationship for non-admin users - relasi instansi_tim() sudah filter deleted_at
                $anggota_tims = $tim ? $tim->instansi_tim()->with('instansi')->get() : collect();
            }

            // Get parameters with proper validation
            $tahun = (int) $request->input('tahun');
            $search_kl = trim($request->input('search_kl', ''));
            $search_pemda = trim($request->input('search_pemda', ''));
            $currentPageKl = max(1, (int) $request->input('page_kl', 1));
            $currentPagePemda = max(1, (int) $request->input('page_pemda', 1));

            // Pisahkan data K/L dan Pemda
            $anggota_kl = collect();
            $anggota_pemda = collect();

            foreach ($anggota_tims as $anggota_tim) {
                $instansi = $anggota_tim->instansi;

                // Skip if instansi is null or deleted (shouldn't happen due to whereHas, but safety check)
                if (!$instansi || $instansi->deleted_at) {
                    continue;
                }

                if ($instansi->group == 'kl') {
                    // Apply search filter for K/L
                    if (!empty($search_kl) && stripos($instansi->name, $search_kl) === false) {
                        continue;
                    }

                    // Untuk K/L, cek status evaluasi Final
                    $evaluasi_final = EvaluasiSakip::where('instansi_id', $instansi->id)
                        ->where('tahun', $tahun)
                        ->where('periode', 'Final')
                        ->first();

                    $anggota_tim->status_evaluasi = $evaluasi_final ? 'sudah' : 'belum';
                    $anggota_tim->evaluasi_data = $evaluasi_final;
                    $anggota_tim->tahun_evaluasi = $tahun;

                    $anggota_kl->push($anggota_tim);
                } else {
                    // Apply search filter for Pemda
                    if (!empty($search_pemda) && stripos($instansi->name, $search_pemda) === false) {
                        continue;
                    }

                    // Untuk Pemda, cek status evaluasi per TW
                    $evaluasi_tw1 = EvaluasiSakip::where('instansi_id', $instansi->id)
                        ->where('tahun', $tahun)
                        ->where('periode', 'TW 1')
                        ->first();

                    $evaluasi_tw2 = EvaluasiSakip::where('instansi_id', $instansi->id)
                        ->where('tahun', $tahun)
                        ->where('periode', 'TW 2')
                        ->first();

                    $evaluasi_tw3 = EvaluasiSakip::where('instansi_id', $instansi->id)
                        ->where('tahun', $tahun)
                        ->where('periode', 'TW 3')
                        ->first();

                    $evaluasi_tw4 = EvaluasiSakip::where('instansi_id', $instansi->id)
                        ->where('tahun', $tahun)
                        ->where('periode', 'Final')
                        ->first();

                    $anggota_tim->status_tw1 = $evaluasi_tw1 ? 'sudah' : 'belum';
                    $anggota_tim->status_tw2 = $evaluasi_tw2 ? 'sudah' : 'belum';
                    $anggota_tim->status_tw3 = $evaluasi_tw3 ? 'sudah' : 'belum';
                    $anggota_tim->status_tw4 = $evaluasi_tw4 ? 'sudah' : 'belum';

                    $anggota_tim->evaluasi_tw1 = $evaluasi_tw1;
                    $anggota_tim->evaluasi_tw2 = $evaluasi_tw2;
                    $anggota_tim->evaluasi_tw3 = $evaluasi_tw3;
                    $anggota_tim->evaluasi_tw4 = $evaluasi_tw4;
                    $anggota_tim->tahun_evaluasi = $tahun;

                    $anggota_pemda->push($anggota_tim);
                }
            }

            // Pagination untuk K/L
            $perPage = 10;
            $klPaginated = $anggota_kl->forPage($currentPageKl, $perPage);
            $klTotalPages = ceil($anggota_kl->count() / $perPage);

            // Pagination untuk Pemda
            $pemdaPaginated = $anggota_pemda->forPage($currentPagePemda, $perPage);
            $pemdaTotalPages = ceil($anggota_pemda->count() / $perPage);

            return response()->json([
                'success' => true,
                'data' => [
                    'anggota_kl' => $klPaginated->values(),
                    'anggota_pemda' => $pemdaPaginated->values(),
                    'klTotalPages' => $klTotalPages,
                    'pemdaTotalPages' => $pemdaTotalPages,
                    'currentPageKl' => $currentPageKl,
                    'currentPagePemda' => $currentPagePemda,
                    'tahun' => $tahun,
                    'search_kl' => $search_kl,
                    'search_pemda' => $search_pemda
                ]
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Terjadi kesalahan: ' . $e->getMessage()
            ], 500);
        }
    }

    /**
     * Format currency from Indonesian format to database format
     * Converts "6.000.000" to "6000000" for database storage
     */
    private function formatCurrencyForDatabase($value)
    {
        if (empty($value)) {
            return null;
        }

        // Remove all dots (thousand separators) and replace comma with dot for decimal
        $value = str_replace('.', '', $value); // Remove thousand separators
        $value = str_replace(',', '.', $value); // Replace decimal separator

        return $value;
    }
}
