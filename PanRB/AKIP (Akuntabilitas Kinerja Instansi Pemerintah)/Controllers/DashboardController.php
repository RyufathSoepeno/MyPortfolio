<?php

namespace App\Http\Controllers\Akip;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
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
     * Display the AKIP dashboard
     */
    public function index(Request $request)
    {
        // Get level user
        $level = $this->currentUser->level;

        if ($level == 'tpn') {
            // Use distinct names to pass into view
            $selectedYear = $request->input('tahun', date('Y'));
            $selectedPeriode = $request->input('tw') ?? 1;
            $selectedYearK = $request->input('tahunK', date('Y'));

            // Get all tims and their evaluasi status in klpd group (provinsi, kabupaten)
            $tims = $this->getTimsPemda($selectedYear, $selectedPeriode);

            // Get all tims and their evaluasi status in klpd group (kl, lain)
            $tims_kl = $this->getTimsKl($selectedYearK);

            return view('akip.dashboard.index', compact('tims_kl', 'tims', 'selectedYear', 'selectedPeriode', 'selectedYearK', 'level'));
        } else {
            return view('akip.dashboard.index', compact('level'));
        }
    }

    /**
     * Get tims data for Pemda (provinsi, kabupaten)
     * Using same logic as getTimsPemdaDetail for consistency
     */
    private function getTimsPemda($tahun, $periode)
    {
        $periodeCondition = $periode == 4 ? 'Final' : 'TW ' . $periode;
        
        $instansi_list = DB::table('instansi_tim')
            ->join('tim_evaluasi', 'instansi_tim.tim_id', '=', 'tim_evaluasi.id')
            ->join('klpd_instansi_new', function($join) {
                $join->on('instansi_tim.instansi_id', '=', 'klpd_instansi_new.id')
                     ->whereNull('klpd_instansi_new.deleted_at')
                     ->whereIn('klpd_instansi_new.group', ['provinsi', 'kabupaten']);
            })
            ->leftJoin('evaluasi_sakip', function ($join) use ($tahun, $periodeCondition) {
                $join->on('evaluasi_sakip.instansi_id', '=', 'instansi_tim.instansi_id')
                    ->where('evaluasi_sakip.tahun', $tahun)
                    ->where('evaluasi_sakip.periode', $periodeCondition);
            })
            ->select(
                'instansi_tim.tim_id',
                'tim_evaluasi.nama',
                'tim_evaluasi.keterangan',
                'instansi_tim.instansi_id',
                'evaluasi_sakip.id as evaluasi_id'
            )
            ->get()
            ->groupBy('tim_id')
            ->map(function($items) {
                $first = $items->first();
                $total_instansi = $items->unique('instansi_id')->count();
                $total_instansi_filled = $items->whereNotNull('evaluasi_id')->unique('instansi_id')->count();
                
                return (object) [
                    'tim_id' => $first->tim_id,
                    'nama' => $first->nama,
                    'keterangan' => $first->keterangan,
                    'total_instansi' => $total_instansi,
                    'total_instansi_filled' => $total_instansi_filled
                ];
            })
            ->values();
        
        return $instansi_list;
    }

    /**
     * Get tims data for K/L (kl, lain)
     * Using same logic as getTimsKlDetail for consistency
     */
    private function getTimsKl($tahun)
    {
        $instansi_list = DB::table('instansi_tim')
            ->join('tim_evaluasi', 'instansi_tim.tim_id', '=', 'tim_evaluasi.id')
            ->join('klpd_instansi_new', function($join) {
                $join->on('instansi_tim.instansi_id', '=', 'klpd_instansi_new.id')
                     ->whereNull('klpd_instansi_new.deleted_at')
                     ->whereIn('klpd_instansi_new.group', ['kl', 'lain']);
            })
            ->leftJoin('evaluasi_sakip', function ($join) use ($tahun) {
                $join->on('evaluasi_sakip.instansi_id', '=', 'instansi_tim.instansi_id')
                    ->where('evaluasi_sakip.tahun', $tahun)
                    ->where('evaluasi_sakip.periode', 'Final');
            })
            ->select(
                'instansi_tim.tim_id',
                'tim_evaluasi.nama',
                'tim_evaluasi.keterangan',
                'instansi_tim.instansi_id',
                'evaluasi_sakip.id as evaluasi_id'
            )
            ->get()
            ->groupBy('tim_id')
            ->map(function($items) {
                $first = $items->first();
                $total_instansi = $items->unique('instansi_id')->count();
                $total_instansi_filled = $items->whereNotNull('evaluasi_id')->unique('instansi_id')->count();
                
                return (object) [
                    'tim_id' => $first->tim_id,
                    'nama' => $first->nama,
                    'keterangan' => $first->keterangan,
                    'total_instansi' => $total_instansi,
                    'total_instansi_filled' => $total_instansi_filled
                ];
            })
            ->values();
        
        return $instansi_list;
    }

    /**
     * Get detail instansi K/L per tim
     */
    private function getTimsKlDetail($tahun, $tim_id)
    {
        // Get tim info first
        $tim_info = DB::table('tim_evaluasi')
            ->where('id', $tim_id)
            ->first();
        
        $instansi_list = DB::table('instansi_tim')
            ->join('tim_evaluasi', 'instansi_tim.tim_id', '=', 'tim_evaluasi.id')
            ->join('klpd_instansi_new', function($join) {
                $join->on('instansi_tim.instansi_id', '=', 'klpd_instansi_new.id')
                     ->whereNull('klpd_instansi_new.deleted_at')
                     ->whereIn('klpd_instansi_new.group', ['kl', 'lain']);
            })
            ->leftJoin('evaluasi_sakip', function ($join) use ($tahun) {
                $join->on('evaluasi_sakip.instansi_id', '=', 'instansi_tim.instansi_id')
                    ->where('evaluasi_sakip.tahun', $tahun)
                    ->where('evaluasi_sakip.periode', 'Final');
            })
            ->where('instansi_tim.tim_id', $tim_id)
            ->select(
                'instansi_tim.tim_id',
                'tim_evaluasi.nama as tim_nama',
                'tim_evaluasi.keterangan as tim_keterangan',
                'instansi_tim.instansi_id',
                'klpd_instansi_new.name as instansi_name',
                'klpd_instansi_new.group as instansi_group',
                DB::raw('CASE WHEN evaluasi_sakip.id IS NOT NULL THEN "Sudah" ELSE "Belum" END as status_evaluasi')
            )
            ->orderBy('klpd_instansi_new.name')
            ->get();

        return [
            'tim_id' => $tim_id,
            'tim_nama' => $tim_info->nama ?? ($instansi_list->first()->tim_nama ?? ''),
            'tim_keterangan' => $tim_info->keterangan ?? ($instansi_list->first()->tim_keterangan ?? ''),
            'total_instansi' => $instansi_list->count(),
            'instansi_list' => $instansi_list->map(function($item) {
                return [
                    'instansi_id' => $item->instansi_id,
                    'instansi_name' => $item->instansi_name,
                    'instansi_group' => $item->instansi_group,
                    'status_evaluasi' => $item->status_evaluasi
                ];
            })->values()
        ];
    }

    /**
     * Get detail instansi Pemda per tim
     */
    private function getTimsPemdaDetail($tahun, $periode, $tim_id)
    {
        $periodeCondition = $periode == 4 ? 'Final' : 'TW ' . $periode;
        
        // Get tim info first
        $tim_info = DB::table('tim_evaluasi')
            ->where('id', $tim_id)
            ->first();
        
        $instansi_list = DB::table('instansi_tim')
            ->join('tim_evaluasi', 'instansi_tim.tim_id', '=', 'tim_evaluasi.id')
            ->join('klpd_instansi_new', function($join) {
                $join->on('instansi_tim.instansi_id', '=', 'klpd_instansi_new.id')
                     ->whereNull('klpd_instansi_new.deleted_at')
                     ->whereIn('klpd_instansi_new.group', ['provinsi', 'kabupaten']);
            })
            ->leftJoin('evaluasi_sakip', function ($join) use ($tahun, $periodeCondition) {
                $join->on('evaluasi_sakip.instansi_id', '=', 'instansi_tim.instansi_id')
                    ->where('evaluasi_sakip.tahun', $tahun)
                    ->where('evaluasi_sakip.periode', $periodeCondition);
            })
            ->where('instansi_tim.tim_id', $tim_id)
            ->select(
                'instansi_tim.tim_id',
                'tim_evaluasi.nama as tim_nama',
                'tim_evaluasi.keterangan as tim_keterangan',
                'instansi_tim.instansi_id',
                'klpd_instansi_new.name as instansi_name',
                'klpd_instansi_new.group as instansi_group',
                DB::raw('CASE WHEN evaluasi_sakip.id IS NOT NULL THEN "Sudah" ELSE "Belum" END as status_evaluasi')
            )
            ->orderBy('klpd_instansi_new.name')
            ->get();

        return [
            'tim_id' => $tim_id,
            'tim_nama' => $tim_info->nama ?? ($instansi_list->first()->tim_nama ?? ''),
            'tim_keterangan' => $tim_info->keterangan ?? ($instansi_list->first()->tim_keterangan ?? ''),
            'total_instansi' => $instansi_list->count(),
            'instansi_list' => $instansi_list->map(function($item) {
                return [
                    'instansi_id' => $item->instansi_id,
                    'instansi_name' => $item->instansi_name,
                    'instansi_group' => $item->instansi_group,
                    'status_evaluasi' => $item->status_evaluasi
                ];
            })->values()
        ];
    }

    /**
     * Get detail instansi per tim - Endpoint AJAX
     */
    public function getDetailInstansi(Request $request)
    {
        try {
            $request->validate([
                'tim_id' => 'required|integer',
                'tahun' => 'required|integer|min:2020|max:' . date('Y'),
                'type' => 'required|in:kl,pemda',
                'periode' => 'nullable|integer|min:1|max:4'
            ]);

            $tim_id = $request->tim_id;
            $tahun = $request->tahun;
            $type = $request->type;
            $periode = $request->periode ?? 1;

            if ($type == 'kl') {
                $data = $this->getTimsKlDetail($tahun, $tim_id);
            } else {
                $data = $this->getTimsPemdaDetail($tahun, $periode, $tim_id);
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
     * Filter dashboard data
     */
    public function filter(Request $request)
    {
        $request->validate([
            'tahun' => 'required|integer|min:2020|max:' . date('Y'),
            'periode' => 'required|integer|min:1|max:4'
        ]);

        $tahun = $request->tahun;
        $periode = $request->periode;

        $tims = $this->getTimsPemda($tahun, $periode);

        return response()->json([
            'tims' => $tims,
            'tahun' => $tahun,
            'periode' => $periode
        ]);
    }

    /**
     * Filter dashboard data for K/L
     */
    public function filterKl(Request $request)
    {
        $request->validate([
            'tahun' => 'required|integer|min:2020|max:' . date('Y')
        ]);

        $tahun = $request->tahun;

        $tims_kl = $this->getTimsKl($tahun);

        return response()->json([
            'tims_kl' => $tims_kl,
            'tahun' => $tahun
        ]);
    }
}
