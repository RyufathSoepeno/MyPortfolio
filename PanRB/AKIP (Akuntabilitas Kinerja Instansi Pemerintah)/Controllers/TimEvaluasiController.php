<?php

namespace App\Http\Controllers\Akip;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\TimEvaluasiRB;
use App\Models\InstansiTimEvaluasi;

class TimEvaluasiController extends Controller
{
    protected $currentUser;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->currentUser = auth()->user();
            foreach (allowed_url('akip') as $allowed) {
                if ($request->is($allowed)) {
                    return $next($request);
                }
            }
            abort('403');
        });
    }

    /**
     * Display the our team evaluasi page
     */
    public function ourTeam()
    {
        // Check akses hanya untuk TPN
        if ($this->currentUser->level !== 'tpn') {
            abort(403, 'Akses ditolak. Hanya TPN yang dapat mengakses halaman ini.');
        }

        $anggota = $this->currentUser->anggota;

        if (!$anggota || !$anggota->tim) {
            return view('akip.team-evaluasi.index', [
                'tim' => null,
                'message' => 'Anda belum terdaftar sebagai anggota tim evaluasi.'
            ]);
        }

        $tim = $anggota->tim;

        return view('akip.tim-evaluasi.index', compact('tim'));
    }

    /**
     * Get data our team evaluasi untuk DataTables
     */
    public function getDatas()
    {
        // Check akses hanya untuk TPN
        if ($this->currentUser->level !== 'tpn') {
            abort(403, 'Akses ditolak. Hanya TPN yang dapat mengakses data ini.');
        }

        try {
            $anggota = $this->currentUser->anggota;

            if (!$anggota || !$anggota->tim) {
                return response()->json([
                    'data' => [],
                    'recordsTotal' => 0,
                    'recordsFiltered' => 0,
                    'debug' => 'No anggota or tim found'
                ]);
            }

            $tim_id = $anggota->tim->id;

            // Query anggota tim dari tim user yang login
            $anggota_tim = \App\Models\AnggotaTimEvaluasiRB::where('tim_id', $tim_id)
                ->with('user')
                ->get();

            // Debug: Log the count
            \Log::info('Anggota tim count: ' . $anggota_tim->count());

            $data = [];
            foreach ($anggota_tim as $anggota) {
                // Get user data directly
                $user_data = \App\Models\User::where('id', $anggota->user_id)->first();

                // Use user_data if available
                if ($user_data) {
                    $nama = $user_data->nama ?? '-';
                    $email = $user_data->email ?? '-';
                } else {
                    // Fallback: use user_id as name if user not found
                    $nama = 'User ID: ' . $anggota->user_id;
                    $email = '-';
                }

                // Count instansi yang dipegang oleh anggota ini
                // Berdasarkan input_user_id di evaluasi_sakip
                $jumlah_instansi = \App\Models\Akip\EvaluasiSakip::where('input_user_id', $anggota->user_id)
                    ->distinct('instansi_id')
                    ->count('instansi_id');

                $data[] = [
                    'user_id' => $anggota->user_id,
                    'nama' => $nama,
                    'email' => $email,
                    'jumlah_instansi' => $jumlah_instansi
                ];
            }

            return response()->json([
                'data' => $data,
                'recordsTotal' => count($data),
                'recordsFiltered' => count($data)
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'data' => [],
                'recordsTotal' => 0,
                'recordsFiltered' => 0,
                'error' => 'Terjadi kesalahan saat mengambil data: ' . $e->getMessage()
            ], 500);
        }
    }

    /**
     * Get daftar instansi yang dievaluasi oleh anggota tim
     */
    public function getInstansi($user_id)
    {
        // Check akses hanya untuk TPN
        if ($this->currentUser->level !== 'tpn') {
            abort(403, 'Akses ditolak.');
        }

        try {
            // Get daftar instansi yang dievaluasi oleh user dengan informasi update terakhir
            $evaluasi = \App\Models\Akip\EvaluasiSakip::where('input_user_id', $user_id)
                ->with('instansi')
                ->select('instansi_id', 'tahun', 'periode', 'updated_at')
                ->distinct()
                ->orderBy('updated_at', 'desc')  // Urutkan dari yang paling terbaru
                ->get();

            $data = [];
            foreach ($evaluasi as $eval) {
                if ($eval->instansi) {
                    // Format tanggal dan waktu terakhir update
                    $last_updated = $eval->updated_at ?
                        \Carbon\Carbon::parse($eval->updated_at)->format('d F Y H:i') :
                        '-';

                    $data[] = [
                        'instansi_id' => $eval->instansi_id,
                        'nama_instansi' => $eval->instansi->nama_instansi ?? '-',
                        'group' => $eval->instansi->group ?? '-',
                        'tahun' => $eval->tahun,
                        'periode' => $eval->periode,
                        'last_updated' => $last_updated,
                        'url' => url('akip/evaluasi/sakip/' . $eval->instansi_id)
                    ];
                }
            }

            return response()->json([
                'success' => true,
                'data' => $data
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Terjadi kesalahan: ' . $e->getMessage()
            ], 500);
        }
    }

    /**
     * Get daftar instansi yang dievaluasi oleh tim
     */
    public function getInstansiByTim($tim_id, Request $request)
    {
        try {
            // Get parameters
            $search = $request->input('search', '');
            $page = max(1, (int) $request->input('page', 1));
            $perPage = max(10, min(100, (int) $request->input('per_page', 10)));

            // Query instansi tim berdasarkan tim_id
            $query = InstansiTimEvaluasi::where('tim_id', $tim_id)
                ->with(['instansi' => function($q) {
                    $q->whereNull('deleted_at');
                }])
                ->whereHas('instansi', function($q) {
                    $q->whereNull('deleted_at');
                });

            // Apply search filter
            if (!empty($search)) {
                $query->whereHas('instansi', function($q) use ($search) {
                    $q->where('name', 'LIKE', '%' . $search . '%')
                      ->orWhere('name_before', 'LIKE', '%' . $search . '%');
                });
            }

            // Get total count before pagination
            $total = $query->count();

            // Apply pagination
            $instansiTims = $query->orderBy('id', 'asc')
                ->skip(($page - 1) * $perPage)
                ->take($perPage)
                ->get();

            // Format data
            $data = [];
            foreach ($instansiTims as $instansiTim) {
                if ($instansiTim->instansi) {
                    $group = $instansiTim->instansi->group ?? '';
                    $kategori = '';
                    
                    // Format kategori berdasarkan group
                    switch ($group) {
                        case 'kl':
                            $kategori = 'Kementerian/Badan';
                            break;
                        case 'provinsi':
                            $kategori = 'Provinsi';
                            break;
                        case 'kabupaten':
                            $kategori = 'Kabupaten/Kota';
                            break;
                        default:
                            $kategori = ucfirst($group);
                    }

                    $data[] = [
                        'instansi_id' => $instansiTim->instansi_id,
                        'nama_instansi' => $instansiTim->instansi->name ?? '-',
                        'group' => $group,
                        'kategori' => $kategori,
                        'url' => url('akip/evaluasi/sakip/' . $instansiTim->instansi_id)
                    ];
                }
            }

            // Calculate pagination info
            $lastPage = ceil($total / $perPage);
            $from = $total > 0 ? (($page - 1) * $perPage) + 1 : 0;
            $to = min($page * $perPage, $total);

            return response()->json([
                'success' => true,
                'data' => $data,
                'pagination' => [
                    'current_page' => $page,
                    'last_page' => $lastPage,
                    'per_page' => $perPage,
                    'total' => $total,
                    'from' => $from,
                    'to' => $to
                ]
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Terjadi kesalahan: ' . $e->getMessage(),
                'data' => [],
                'pagination' => [
                    'current_page' => 1,
                    'last_page' => 1,
                    'per_page' => 10,
                    'total' => 0,
                    'from' => 0,
                    'to' => 0
                ]
            ], 500);
        }
    }

    public function allTeams()
    {
        // Query semua tim dengan anggota
        $tims = TimEvaluasiRB::with(['anggota.user'])
            ->get()
            ->map(function($tim) {
                return [
                    'id' => $tim->id,
                    'nama' => $tim->nama,
                    'keterangan' => $tim->keterangan ?? '',
                    'total_anggota' => $tim->anggota->count(),
                    'anggota_list' => $tim->anggota->map(function($anggota) {
                        return [
                            'id' => $anggota->user_id,
                            'nama' => $anggota->user->nama ?? '-'
                        ];
                    })->toArray()
                ];
            });

        return view('akip.all-team-evaluasi.index', compact('tims'));
    }
}
