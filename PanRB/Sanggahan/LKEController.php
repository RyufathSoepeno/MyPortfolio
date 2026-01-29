<?php

namespace App\Http\Controllers;

use App\Exports\ExportLkeTemplate;
use App\Imports\ImportExcel;
use App\Models\KlpdInstansi;
use App\Models\LKE\LkeBobot;
use App\Models\LKE\LkeKegiatan;
use App\Models\LKE\LkeParameter;
use App\Models\LKE\LkeTestTp;
use App\Models\LKE\LkeTestTpFile;
use App\Models\LKE\LkeTestTpLine;
use App\Models\OpenAccessSetting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Maatwebsite\Excel\Facades\Excel;
use Maatwebsite\Excel\HeadingRowImport;

class LKEController extends Controller
{
    /** public function __construct()
    {
        $this->middleware(function ($request, $next) {
            foreach (allowed_url() as $allowed) {
                if ($request->is($allowed)) {
                    return $next($request);
                }
            }
            abort('403');
        }); 
    } */

    public function lke_utama()
    {
        $user = Auth::User();
        if (in_array($user->level, ['kabupaten', 'provinsi', 'kl', 'tpm'])) {
            $access = OpenAccessSetting::where('user_level', $user->level)->where('fitur', 'hasil_evaluasi')->first();
            if ($access) {
                $today = date('Y-m-d');
                if ($access->waktu_awal > $today || $access->waktu_akhir < $today) {
                    return view('belumbuka');
                }
            }
        }
        return view('evaluasi.lke_utama');
    }

    public function lke_utama_getDatas(Request $request)
    {
        $user = Auth::User();
        if ($user->level == 'admin') {
            $datas = LkeParameter::where('lke_kegiatan_id', $request->kegiatan_id)->where('level', 'Indikator')->get();
        } else if (in_array($user->level, ['tpm', 'tpn'])) {
            $datas = LkeParameter::where('lke_kegiatan_id', $request->kegiatan_id)->where('rencana_aksi', 0)->where('penilai_id', $user->penilai_id)->where('level', 'Indikator')->get();
        }
        $kegiatan = LkeKegiatan::find($request->kegiatan_id);
        foreach ($datas as $data) {
            $data->indikator = $data->rencana_aksi ? $data->nama : '<a href="' . url('evaluasi/lke-utama/' . $data->id) . '" style="color:blue;">' . $data->nama . '</a>';
            $data->subkomponen = $data->parent->nama;
            $data->komponen = $data->parent->parent->nama;
            $bobotItems = LkeBobot::where('lke_parameter_id', $data->id)->get(['id', 'group', 'target_baik']);
            $bobot_ids = $bobotItems->pluck('id');
            $bobotGroups = $bobotItems->pluck('group')->filter()->unique()->values();
            if ($kegiatan->tahun == 2024) {
                $data->terisi = LkeTestTpLine::whereIn('lke_bobot_id', $bobot_ids)->count();
                $totalInstansiQuery = DB::table('klpd_instansi_new')->where('keterangan', '!=', 'baru')->whereNull('id_before');
                if ($bobotGroups->isNotEmpty()) {
                    $totalInstansiQuery->whereIn('group', $bobotGroups);
                } else {
                    $totalInstansiQuery->whereRaw('1 = 0');
                }
                $totalInstansi = $totalInstansiQuery->count();
            } else {
                $data->terisi = LkeTestTpLine::whereIn('lke_bobot_id', $bobot_ids)
                    ->join('klpd_instansi_new as ki', function($join) {
                        $join->on('lke_test_tp_line.instansi_id', '=', 'ki.id_before')
                            ->orOn('lke_test_tp_line.instansi_id', '=', 'ki.id');
                    })
                    ->whereNull('ki.deleted_at')
                    ->distinct('ki.id')
                    ->count('ki.id');
                $totalInstansiQuery = DB::table('klpd_instansi_new')->whereNull('deleted_at');
                if ($bobotGroups->isNotEmpty()) {
                    $totalInstansiQuery->whereIn('group', $bobotGroups);
                } else {
                    $totalInstansiQuery->whereRaw('1 = 0');
                }
                $totalInstansi = $totalInstansiQuery->count();
            }
            $data->belum = $totalInstansi - $data->terisi;
            $data->rata_rata_score = LkeTestTpLine::whereIn('lke_bobot_id', $bobot_ids)->avg('score');
            $data->rata_rata_score_index = LkeTestTpLine::whereIn('lke_bobot_id', $bobot_ids)->avg('score_index');
            $data->mencapai_target_baik = LkeTestTpLine::whereIn('lke_bobot_id', $bobot_ids)
                ->whereRaw('score >= (select target_baik from lke_bobot where lke_bobot.id = lke_test_tp_line.lke_bobot_id)')
                ->count();
            $hasTargetBaik = $bobotItems->pluck('target_baik')->contains(function ($value) {
                if ($value === null) {
                    return false;
                }
                if (is_string($value)) {
                    return trim($value) !== '';
                }
                return true;
            });
            $data->has_target_baik = $hasTargetBaik;
            if ($hasTargetBaik && $data->terisi > 0) {
                $persentase_target_baik = ($data->mencapai_target_baik / $data->terisi) * 100;
                $data->persentase_target_baik = round($persentase_target_baik, 2);
            } else {
                $data->persentase_target_baik = null;
            }
        }

        $chartData = $datas->filter(function ($item) {
            return $item->has_target_baik && $item->persentase_target_baik !== null && !empty($item->nama);
        })->map(function ($item) {
            return [
                'id' => $item->id,
                'label' => $item->nama,
                'value' => (float) $item->persentase_target_baik,
            ];
        });

        $limit = min(5, $chartData->count());
        $topIndicators = $chartData->sortByDesc('value')->take($limit)->values();
        $bottomIndicators = $chartData->sortBy('value')->take($limit)->values();

        return response()->json([
            'data' => $datas,
            'chart' => [
                'top' => $topIndicators,
                'bottom' => $bottomIndicators,
            ],
        ]);
    }

    public function lke_utama_score($parameter_id)
    {
        $user = Auth::User();
        if (in_array($user->level, ['kabupaten', 'provinsi', 'kl', 'tpm'])) {
            $access = OpenAccessSetting::where('user_level', $user->level)->where('fitur', 'hasil_evaluasi')->first();
            if ($access) {
                $today = date('Y-m-d');
                if ($access->waktu_awal > $today || $access->waktu_akhir < $today) {
                    return view('belumbuka');
                }
            }
        }
        if ($user->level == 'admin') {
            $parameter = LkeParameter::where('rencana_aksi', 0)->where('id', $parameter_id)->first();
        } else if (in_array($user->level, ['tpm', 'tpn'])) {
            $parameter = LkeParameter::where('rencana_aksi', 0)->where('id', $parameter_id)->where('penilai_id', $user->penilai_id)->first();
        }
        if (!$parameter) {
            abort('404');
        }
        return view('evaluasi.lke_utama_score', compact('parameter', 'user'));
    }

    public function lke_utama_score_getData($parameter_id, $instansi_id, $lke_bobot_id)
    {
        $bobot = LkeBobot::where('lke_parameter_id', $parameter_id)->where('id', $lke_bobot_id)->first();
        if (!$bobot) {
            abort('403');
        }
        $data = LkeTestTpLine::where('lke_bobot_id', $lke_bobot_id)->where('instansi_id', $instansi_id)->first();
        if (!$data) {
            $data = new LkeTestTpLine();
        }
        $instansi = KlpdInstansi::find($instansi_id);
        $data->nama_instansi = $instansi->name;
        $data->min = $bobot->min_value;
        $data->max = $bobot->max_value;
        return response()->json($data);
    }

    public function lke_utama_score_getDatas($parameter_id, $export = false)
    {
        $group_instansi = LkeBobot::where('lke_parameter_id', $parameter_id)->pluck('group')->toArray();

        $parameter = LkeParameter::find($parameter_id);
        if ($parameter->kegiatan->tahun == 2024) {
            $datas = DB::table('klpd_instansi_new as ki')
                ->select('ki.name as nama_instansi', 'ki.id as instansi_id', 'lb.id as lke_bobot_id', 'lb.bobot', 'lb.target_baik', 'lttl.score', 'lttl.score_index', 'lttl.catatan', 'lttl.rekomendasi', 'lb.min_value', 'lb.max_value')
                ->selectRaw("case when ki.group = 'kl' then 'Kementerian/Badan' when ki.group = 'provinsi' then 'Provinsi' when ki.group = 'kabupaten' then 'Kabupaten/Kota' end as group_instansi")
                ->leftJoin('lke_bobot as lb', function ($join) use ($parameter_id) {
                    $join->on('lb.group', '=', 'ki.group')
                        ->where('lb.lke_parameter_id', '=', $parameter_id);
                })
                ->leftJoin('lke_test_tp_line as lttl', function ($join) {
                    $join->on('lttl.instansi_id', '=', DB::raw('COALESCE(ki.id_before, ki.id)'))
                        ->on('lttl.lke_bobot_id', '=', 'lb.id');
                })
                ->whereIn('ki.group', $group_instansi)
                ->where('keterangan', '!=', 'baru')
                ->whereNull('id_before')
                ->orderByRaw("FIELD(ki.group , 'kl', 'provinsi', 'kabupaten') ASC")
                ->orderBy('ki.name')
                ->get();
        } else {
            $datas = DB::table('klpd_instansi_new as ki')
                ->select('ki.name as nama_instansi', 'ki.id as instansi_id', 'lb.id as lke_bobot_id', 'lb.bobot', 'lb.target_baik', 'lttl.score', 'lttl.score_index', 'lttl.catatan', 'lttl.rekomendasi', 'lb.min_value', 'lb.max_value')
                ->selectRaw("case when ki.group = 'kl' then 'Kementerian/Badan' when ki.group = 'provinsi' then 'Provinsi' when ki.group = 'kabupaten' then 'Kabupaten/Kota' end as group_instansi")
                ->leftJoin('lke_bobot as lb', function ($join) use ($parameter_id) {
                    $join->on('lb.group', '=', 'ki.group')
                        ->where('lb.lke_parameter_id', '=', $parameter_id);
                })
                ->leftJoin('lke_test_tp_line as lttl', function ($join) {
                    $join->on('lttl.instansi_id', '=', DB::raw('COALESCE(ki.id_before, ki.id)'))
                        ->on('lttl.lke_bobot_id', '=', 'lb.id');
                })
                ->whereIn('ki.group', $group_instansi)
                ->whereNull('deleted_at')
                ->orderByRaw("FIELD(ki.group , 'kl', 'provinsi', 'kabupaten') ASC")
                ->orderBy('ki.name')
                ->get();
        }

        return $export ? $datas : response()->json(['data' => $datas]);
    }

    public function lke_utama_score_simpan($parameter_id, Request $request)
    {
        $user = Auth::User();
        $bobot = LkeBobot::find($request->lke_bobot_id);
        $parameter = LkeParameter::find($parameter_id);
        $success = false;
        $message = 'Data Parameter tidak valid';
        if (!$bobot) {
            return response()->json(['success' => $success, 'message' => $message]);
        }
        if ($bobot->lke_parameter_id != $parameter_id || (in_array($user->level, ['kabupaten', 'provinsi', 'kl', 'tpn', 'tpm']) && $parameter->penilai_id != $user->penilai_id)) {
            return response()->json(['success' => $success, 'message' => $message]);
        }
        $test_tp_line = LkeTestTpLine::where('lke_bobot_id', $request->lke_bobot_id)->where('instansi_id', $request->instansi_id)->first();
        if (!$test_tp_line) {
            $test_tp_line = new LkeTestTpLine();
            $test_tp_line->penilai_user_id = $user->id;
        }
        $test_tp_line->score = str_replace(',', '.', str_replace('.', '', $request->score));
        $test_tp_line->lke_bobot_id = $request->lke_bobot_id;
        $test_tp_line->instansi_id = $request->instansi_id;
        $test_tp_line->catatan = $request->catatan;
        $test_tp_line->rekomendasi = $request->rekomendasi;
        $test_tp_line->update_user_id = $user->id;
        $test_tp_line->score_index = !empty($test_tp_line->lke_bobot->max_value) ? ($test_tp_line->score / $test_tp_line->lke_bobot->max_value) * $test_tp_line->lke_bobot->bobot : $test_tp_line->score;
        if ($pengali_id = $test_tp_line->lke_bobot->lke_parameter->indikator_pengali_id) {
            $bobot_pengali_id = LkeBobot::where('lke_parameter_id', $pengali_id)->where('group', $test_tp_line->lke_bobot->group)->first()->id;
            $test_tp_line_pengali = LkeTestTpLine::where('lke_bobot_id', $bobot_pengali_id)->where('instansi_id', $test_tp_line->instansi_id)->first();
            if ($test_tp_line_pengali) {
                if ($test_tp_line_pengali->score_index) {
                    $test_tp_line->score_index = $test_tp_line->score_index * ($test_tp_line_pengali->score_index / $test_tp_line_pengali->lke_bobot->bobot);
                }
            }
        }
        $test_tp_line->capaian_index = ($test_tp_line->score_index / $bobot->bobot) * 100;
        if ($test_tp_line->save()) {
            calculateTestTp($test_tp_line->instansi_id, $test_tp_line->lke_bobot->lke_parameter->lke_kegiatan_id);
            $success = true;
        } else {
            $success = false;
        }
        return response()->json(['success' => $success]);
    }

    public function lke_utama_score_downloadTemplate($parameter_id)
    {
        $parameter = LkeParameter::find($parameter_id);
        $datas = $this->lke_utama_score_getDatas($parameter_id, true);

        $template = new ExportLkeTemplate($parameter, $datas);

        return Excel::download($template, $parameter->nama . '.xlsx');
    }

    public function lke_utama_score_import($parameter_id, Request $request)
    {
        $user = Auth::User();
        $parameter = LkeParameter::find($parameter_id);
        if (!$parameter) {
            abort(404);
        }
        if (in_array($user->level, ['kabupaten', 'provinsi', 'kl', 'tpn', 'tpm']) && $parameter->penilai_id != $user->penilai_id) {
            abort(403);
        }
        $success = true;
        $error = false;
        $pesan = '';
        DB::beginTransaction();
        try {
            $headings = (new HeadingRowImport())->toArray($request->file('file_lke'));
            if ($headings[0][0] == heading_template_lke()) {
                $collections = Excel::toCollection(new ImportExcel, $request->file('file_lke'))[0];
                if ($collections[0]['instansi_id'] != $parameter_id) {
                    $success = false;
                    $pesan = 'File yang diimport tidak sesuai dengan Indikator yang dipilih! Periksa kembali halaman/file import!';
                    dd($pesan);
                }
                $collections = $collections->slice(3);
                foreach ($collections as $lke) {
                    if (preg_match("/[^0-9.]+/", $lke['score'])) {
                        $success = false;
                        $pesan = 'Terdapat Format Angka Skor tidak sesuai! Harap perbaiki terlebih dahulu!';
                    } else if ($success) {
                        if ($lke['score'] != '') {
                            $test_tp_line = LkeTestTpLine::where('instansi_id', $lke['instansi_id'])->where('lke_bobot_id', $lke['lke_bobot_id'])->first();
                            if (!$test_tp_line) {
                                $test_tp_line = new LkeTestTpLine();
                                $test_tp_line->penilai_user_id = $user->id;
                            }
                            $test_tp_line->score = $lke['score'];
                            $test_tp_line->lke_bobot_id = $lke['lke_bobot_id'];
                            $test_tp_line->instansi_id = $lke['instansi_id'];
                            $test_tp_line->catatan = $lke['catatan'];
                            $test_tp_line->rekomendasi = $lke['rekomendasi'];
                            $test_tp_line->update_user_id = $user->id;
                            if ((!empty($test_tp_line->lke_bobot->min_value) && $lke['score'] < $test_tp_line->lke_bobot->min_value) || (!empty($test_tp_line->lke_bobot->max_value) && $lke['score'] > $test_tp_line->lke_bobot->max_value)) {
                                $error = true;
                                $pesan = 'Terdapat nilai skor yang tidak sesuai dengan ketentuan minimal/maksimal. Sebagian data tidak tersimpan!';
                            } else {
                                $test_tp_line->score_index = !empty($test_tp_line->lke_bobot->max_value) ? ($test_tp_line->score / $test_tp_line->lke_bobot->max_value) * $test_tp_line->lke_bobot->bobot : $test_tp_line->score;
                                if ($pengali_id = $test_tp_line->lke_bobot->lke_parameter->indikator_pengali_id) {
                                    $bobot_pengali_id = LkeBobot::where('lke_parameter_id', $pengali_id)->where('group', $test_tp_line->lke_bobot->group)->first()->id;
                                    $test_tp_line_pengali = LkeTestTpLine::where('lke_bobot_id', $bobot_pengali_id)->where('instansi_id', $test_tp_line->instansi_id)->first();
                                    if ($test_tp_line_pengali) {
                                        if ($test_tp_line_pengali->score_index) {
                                            $test_tp_line->score_index = $test_tp_line->score_index * ($test_tp_line_pengali->score_index / $test_tp_line_pengali->lke_bobot->bobot);
                                        }
                                    }
                                }
                                if ($test_tp_line->save()) {
                                    calculateTestTp($test_tp_line->instansi_id, $test_tp_line->lke_bobot->lke_parameter->lke_kegiatan_id);
                                } else {
                                    $success = false;
                                    $pesan = 'Periksa kembali file yang diimport!';
                                }
                            }
                        }
                    }
                }
            } else {
                $success = false;
                $pesan = 'File yang di upload tidak sesuai dengan template. Silahkan gunakan template yang telah disedikan!';
            }
        } catch (\Throwable $th) {
            $success = false;
            throw $th;
        }

        if ($success) {
            DB::commit();
            session()->flash('success', 'Data LKE berhasil diimport!');
            if ($error) {
                session()->flash('error', $pesan);
            }
        } else {
            DB::rollBack();
            session()->flash('error', 'Data LKE gagal diimport! ' . $pesan);
        }

        return redirect('evaluasi/lke-utama/' . $parameter_id);
    }

    public function database()
    {
        $user = Auth::User();
        if (in_array($user->level, ['kabupaten', 'provinsi', 'kl', 'tpm'])) {
            $access = OpenAccessSetting::where('user_level', $user->level)->where('fitur', 'hasil_evaluasi')->first();
            if ($access) {
                $today = date('Y-m-d');
                if ($access->waktu_awal > $today || $access->waktu_akhir < $today) {
                    return view('belumbuka');
                }
            }
        }
        return view('evaluasi.database');
    }

    public function database_getDatas(Request $request)
    {
        $datas = LkeParameter::where('lke_kegiatan_id', $request->kegiatan_id)->where('level', 'Indikator')->get();
        $kegiatan = LkeKegiatan::find($request->kegiatan_id);
        foreach ($datas as $data) {
            $data->indikator = $data->nama;
            $data->subkomponen = $data->parent->nama;
            $data->komponen = $data->parent->parent->nama;
            $bobotItems = LkeBobot::where('lke_parameter_id', $data->id)->get(['id', 'group', 'target_baik']);
            $bobot_ids = $bobotItems->pluck('id');
            $bobotGroups = $bobotItems->pluck('group')->filter()->unique()->values();
            if ($kegiatan->tahun == 2024) {
                $data->terisi = LkeTestTpLine::whereIn('lke_bobot_id', $bobot_ids)->count();
                $totalInstansiQuery = DB::table('klpd_instansi_new')->where('keterangan', '!=', 'baru')->whereNull('id_before');
                if ($bobotGroups->isNotEmpty()) {
                    $totalInstansiQuery->whereIn('group', $bobotGroups);
                } else {
                    $totalInstansiQuery->whereRaw('1 = 0');
                }
                $totalInstansi = $totalInstansiQuery->count();
            } else {
                $data->terisi = LkeTestTpLine::whereIn('lke_bobot_id', $bobot_ids)
                    ->join('klpd_instansi_new as ki', function($join) {
                        $join->on('lke_test_tp_line.instansi_id', '=', 'ki.id_before')
                            ->orOn('lke_test_tp_line.instansi_id', '=', 'ki.id');
                    })
                    ->whereNull('ki.deleted_at')
                    ->distinct('ki.id')
                    ->count('ki.id');
                $totalInstansiQuery = DB::table('klpd_instansi_new')->whereNull('deleted_at');
                if ($bobotGroups->isNotEmpty()) {
                    $totalInstansiQuery->whereIn('group', $bobotGroups);
                } else {
                    $totalInstansiQuery->whereRaw('1 = 0');
                }
                $totalInstansi = $totalInstansiQuery->count();
            }
            $data->belum = $totalInstansi - $data->terisi;
            $data->rata_rata_score = LkeTestTpLine::whereIn('lke_bobot_id', $bobot_ids)->avg('score');
            $data->rata_rata_score_index = LkeTestTpLine::whereIn('lke_bobot_id', $bobot_ids)->avg('score_index');
            $data->mencapai_target_baik = LkeTestTpLine::whereIn('lke_bobot_id', $bobot_ids)
                ->whereRaw('score >= (select target_baik from lke_bobot where lke_bobot.id = lke_test_tp_line.lke_bobot_id)')
                ->count();
            $hasTargetBaik = $bobotItems->pluck('target_baik')->contains(function ($value) {
                if ($value === null) {
                    return false;
                }
                if (is_string($value)) {
                    return trim($value) !== '';
                }
                return true;
            });
            $data->has_target_baik = $hasTargetBaik;
            if ($hasTargetBaik && $data->terisi > 0) {
                $persentase_target_baik = ($data->mencapai_target_baik / $data->terisi) * 100;
                $data->persentase_target_baik = round($persentase_target_baik, 2);
            } else {
                $data->persentase_target_baik = null;
            }
        }
        $chartData = $datas->filter(function ($item) {
            return $item->has_target_baik && $item->persentase_target_baik !== null && !empty($item->nama);
        })->map(function ($item) {
            return [
                'id' => $item->id,
                'label' => $item->nama,
                'value' => (float) $item->persentase_target_baik,
            ];
        });

        $limit = min(5, $chartData->count());
        $topIndicators = $chartData->sortByDesc('value')->take($limit)->values();
        $bottomIndicators = $chartData->sortBy('value')->take($limit)->values();

        return response()->json([
            'data' => $datas,
            'chart' => [
                'top' => $topIndicators,
                'bottom' => $bottomIndicators,
            ],
        ]);
    }

    public function hasil_evaluasi()
    {
        $user = Auth::User();
        if (in_array($user->level, ['kabupaten', 'provinsi', 'kl', 'tpm'])) {
            $access = OpenAccessSetting::where('user_level', $user->level)->where('fitur', 'hasil_evaluasi')->first();
            if ($access) {
                $today = date('Y-m-d');
                #if ($access->waktu_awal > $today || $access->waktu_akhir < $today) {
                #    return view('belumbuka');
                #}
            }
        }
        if (!in_array($user->level, ['admin', 'tpn', 'tpm'])) {
            return view('evaluasi.lke_kegiatan');
        } else {
            return view('evaluasi.hasil_evaluasi');
        }
    }

    public function hasil_evaluasi_getKegiatan()
    {
        $user = Auth::User();
        $kegiatans = LkeKegiatan::all();
        foreach ($kegiatans as $kegiatan) {
            $kegiatan->nama_kegiatan = '<a href="' . url('evaluasi/hasil-evaluasi/' . $user->instansi_id . '/' . $kegiatan->id) . '" style="color:blue;">' . $kegiatan->nama_tahun . '</a>';
        }
        return response()->json(['data' => $kegiatans]);
    }

    public function hasil_evaluasi_getDatas(Request $request)
    {
        $kegiatan_id = $request->kegiatan_id;
        $datas = DB::table('klpd_instansi_new as ki')
            ->selectRaw("CASE 
                            WHEN ltt.rb_general IS NOT NULL THEN 100 
                            ELSE NULL 
                        END as bobot_rb_general, 
                        CASE 
                            WHEN ltt.koefisien IS NOT NULL THEN ltt.rb_general + ltt.koefisien 
                            ELSE ltt.rb_general 
                        END as rb_general_koefisien, 
                        ki.name, 
                        ki.name_before, 
                        ki.id as klpd_instansi_id, 
                        ltt.*, 
                        CASE 
                            WHEN ki.group = 'kl' THEN 'Kementerian/Badan' 
                            WHEN ki.group = 'provinsi' THEN 'Provinsi' 
                            WHEN ki.group = 'kabupaten' THEN 'Kabupaten/Kota' 
                        END as group_instansi")
            ->leftJoin('lke_test_tp as ltt', function ($join) use ($kegiatan_id) {
                $join->on('ltt.instansi_id', '=', DB::raw('COALESCE(ki.id_before, ki.id)'))
                    ->where('ltt.lke_kegiatan_id', '=', $kegiatan_id);
            })
            ->whereIn('ki.group', ['kl', 'provinsi', 'kabupaten'])
            ->orderByRaw("FIELD(ki.group , 'kl', 'provinsi', 'kabupaten') ASC")
            ->orderBy('ki.name')
            ->get();

        foreach ($datas as $data) {
            $before = $data->name_before ? ' [<span class="font-italic text-danger">' . $data->name_before . '</span>]' : '';
            $data->nama_instansi = '<a href="' . url('evaluasi/hasil-evaluasi/' . $data->klpd_instansi_id . '/' . $kegiatan_id) . '" style="color: blue;">' . $data->name . $before . '</a>';
        }

        return response()->json(['data' => $datas]);
    }

    public function hasil_evaluasi_instansi($instansi_id, $kegiatan_id)
    {
        $user = Auth::User();
        if (!in_array($user->level, ['admin', 'tpn', 'tpm'])) {
            if ($user->instansi_id != $instansi_id) {
                abort(403);
            }
        }

        $instansi = KlpdInstansi::withTrashed()->find($instansi_id);
        $kegiatan = LkeKegiatan::find($kegiatan_id);
        if (!$instansi || !$kegiatan) {
            abort(404);
        }
        $test_tp = LkeTestTp::where('instansi_id', $instansi_id)->where('lke_kegiatan_id', $kegiatan_id)->first();
        if (!$test_tp) {
            $test_tp = new LkeTestTp();
            $test_tp->lke_kegiatan_id = $kegiatan_id;
            $test_tp->instansi_id = $instansi_id;
        }
        $test_tp->berkas_list = '';

        if ($test_tp->files) {
            foreach ($test_tp->files as $berkas) {
                $ext = pathinfo($berkas->file, PATHINFO_EXTENSION);
                $src = exts(strtolower($ext));
                $test_tp->berkas_list .= '<div class="col-span-12 lg:col-span-4" id="berkasdiv' . $berkas->id . '" style="position:relative;">
                    <div style="height: 100px;">
                        <img class="img-fluid card-img-top" src="' . asset('images') . '/' . $src . '" alt="Berkas' . $berkas->id . '" style="max-height: 100px; max-width:100%; padding: 5px 0;">
                    </div>
                    <div class="form-group mb-0">
                        <input type="text" name="deskripsi_existing[' . $berkas->id . ']" class="form-control" id="deskripsi' . $berkas->id . '" placeholder="Deskripsi" value="' . $berkas->deskripsi . '">
                        <input type="hidden" name="berkas_existing[' . $berkas->id . ']" value="' . $berkas->file . '">
                    </div>
                    <a href="javascript:void(0);" onclick="removeBerkas(' . $berkas->id . ')" class="remove-button text-danger">
                        <div class="tooltip w-5 h-5 flex items-center justify-center absolute rounded-full text-white bg-danger right-0 top-0 -mr-2 -mt-2"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="x" data-lucide="x" class="lucide lucide-x w-4 h-4"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg> </div>
                    </a>
                </div>';
            }
        }

        $parameters = LkeBobot::where('group', $instansi->group)->orderBy('lke_parameter_id')->get();
        $nationalStats = collect();
        if ($parameters->isNotEmpty()) {
            $nationalStats = LkeTestTpLine::whereIn('lke_bobot_id', $parameters->pluck('id'))
                ->select('lke_bobot_id', DB::raw('SUM(capaian_index) as total_capaian_index'), DB::raw('COUNT(capaian_index) as capaian_count'))
                ->groupBy('lke_bobot_id')
                ->get()
                ->keyBy('lke_bobot_id');
        }
        foreach ($parameters as $parameter) {
            $parameter->komponen = $parameter->lke_parameter->parent->parent->nama;
            $parameter->subkomponen = $parameter->lke_parameter->parent->nama;
            $parameter->indikator = $parameter->lke_parameter->nama;
            $parameter->bobot = $parameter->bobot;
            $parameter->target_baik = $parameter->target_baik;
            $tp_line = LkeTestTpLine::where('lke_bobot_id', $parameter->id)->where('instansi_id', $instansi_id)->first();
            if (!$tp_line) {
                $tp_line = new LkeTestTpLine();
            }
            $parameter->score = $tp_line->score;
            $parameter->score_index = $tp_line->score_index;
            $parameter->capaian_index = $tp_line->capaian_index;
            $parameter->catatan = $tp_line->catatan;
            $parameter->rekomendasi = $tp_line->rekomendasi;
            
            // ===== SANGGAH DATA =====
            $sanggah = DB::table('lke_sanggah')
                ->where('lke_test_tp_line_id', $tp_line->id ?? 0)
                ->orderByDesc('id') // latest sanggah
                ->first();

            $parameter->sanggah_status = $sanggah->status ?? null;
            $parameter->sanggah_dokumen = $sanggah->dokumen ?? null;
        }

        $targetSubcomponents = [
            'Capaian Pelaksanaan Kebijakan Reformasi Birokrasi',
            'Capaian Sasaran Strategis Reformasi Birokrasi',
        ];

        $normalizeNumber = function ($value) {
            if ($value === null || $value === '') {
                return null;
            }

            if (is_numeric($value)) {
                return (float) $value;
            }

            if (is_string($value)) {
                $normalized = trim(str_replace(["\xc2\xa0", ' '], '', $value));
                if (strpos($normalized, ',') !== false && strpos($normalized, '.') !== false) {
                    $normalized = str_replace('.', '', $normalized);
                }
                $normalized = str_replace(',', '.', $normalized);

                if (is_numeric($normalized)) {
                    return (float) $normalized;
                }
            }

            return null;
        };

        $targetAchievementSummary = collect($targetSubcomponents)->map(function ($subcomponentName) use ($parameters, $normalizeNumber) {
            $indicators = $parameters->filter(function ($parameter) use ($subcomponentName) {
                return trim((string) $parameter->subkomponen) === $subcomponentName;
            });

            $indicatorsWithTarget = $indicators->filter(function ($parameter) use ($normalizeNumber) {
                return $normalizeNumber($parameter->target_baik) !== null;
            });

            $indicatorsWithScores = $indicators->map(function ($parameter) use ($normalizeNumber) {
                return [
                    'indikator' => $parameter->indikator,
                    'capaian_index' => $normalizeNumber($parameter->capaian_index),
                ];
            })->filter(function ($item) {
                return $item['capaian_index'] !== null;
            });

            $limit = $subcomponentName === 'Capaian Sasaran Strategis Reformasi Birokrasi' ? 3 : 5;
            $topIndicators = $indicatorsWithScores->sortByDesc('capaian_index')->take($limit)->values();
            $bottomIndicators = $indicatorsWithScores->sortBy('capaian_index')->take($limit)->values();

            $achievedCount = $indicatorsWithTarget->filter(function ($parameter) use ($normalizeNumber) {
                $score = $normalizeNumber($parameter->score);
                $target = $normalizeNumber($parameter->target_baik);

                return $score !== null && $target !== null && $score >= $target;
            })->count();

            $withTargetCount = $indicatorsWithTarget->count();
            $percentage = $withTargetCount > 0 ? round(($achievedCount / $withTargetCount) * 100, 2) : null;

            return [
                'subkomponen' => $subcomponentName,
                'total_indikator' => $indicators->count(),
                'indikator_target' => $withTargetCount,
                'indikator_mencapai' => $achievedCount,
                'persentase' => $percentage,
                'top_indicators' => $topIndicators,
                'bottom_indicators' => $bottomIndicators,
            ];
        });

        $kabkotaDatas = collect();
        if ($instansi->group === 'provinsi') {
            $kabkotaDatas = DB::table('klpd_instansi_new as ki')
                ->select('ki.id', 'ki.name', 'ki.name_before')
                ->selectRaw("'Kabupaten/Kota' as group_instansi")
                ->selectRaw("CASE WHEN ltt.rb_general IS NOT NULL THEN 100 ELSE NULL END as bobot_rb_general")
                ->selectRaw("CASE WHEN ltt.koefisien IS NOT NULL THEN ltt.rb_general + ltt.koefisien ELSE ltt.rb_general END as rb_general_koefisien")
                ->addSelect(
                    'ltt.rb_general',
                    'ltt.koefisien',
                    'ltt.bobot_rb_general_penyesuaian',
                    'ltt.rb_general_penyesuaian',
                    'ltt.rb_tematik',
                    'ltt.index_rb'
                )
                ->leftJoin('lke_test_tp as ltt', function ($join) use ($kegiatan_id) {
                    $join->on('ltt.instansi_id', '=', DB::raw('COALESCE(ki.id_before, ki.id)'))
                        ->where('ltt.lke_kegiatan_id', '=', $kegiatan_id);
                })
                ->where('ki.prov_id', $instansi_id)
                ->where('ki.group', 'kabupaten')
                ->whereNull('ki.deleted_at')
                ->orderBy('ki.name')
                ->get()
                ->transform(function ($child) use ($kegiatan_id) {
                    $before = $child->name_before ? ' [<span class="font-italic text-danger">' . $child->name_before . '</span>]' : '';
                    $child->nama_instansi = '<a href="' . url('evaluasi/hasil-evaluasi/' . $child->id . '/' . $kegiatan_id) . '" style="color: blue;">' . $child->name . $before . '</a>';
                    return $child;
                });
        }

        $subcomponentSummaries = [];
        foreach ($parameters as $parameter) {
            $komponenName = $parameter->komponen ?: 'Tanpa Komponen';
            $subkomponenName = $parameter->subkomponen ?: 'Tanpa Sub Komponen';
            $subkomponenId = optional($parameter->lke_parameter->parent)->id;
            $subcomponentKey = $subkomponenId ?: $subkomponenName;
            $scoreIndex = (float) ($parameter->score_index ?? 0);
            $bobot = (float) ($parameter->bobot ?? 0);
            $stat = $nationalStats->get($parameter->id);
            $nationalTotal = $stat ? (float) $stat->total_capaian_index : 0;
            $nationalCount = $stat ? (int) $stat->capaian_count : 0;

            if (!isset($subcomponentSummaries[$komponenName])) {
                $subcomponentSummaries[$komponenName] = [];
            }
            if (!isset($subcomponentSummaries[$komponenName][$subcomponentKey])) {
                $subcomponentSummaries[$komponenName][$subcomponentKey] = [
                    'subkomponen' => $subkomponenName,
                    'total_score_index' => 0,
                    'total_bobot' => 0,
                    'national_total' => 0,
                    'national_count' => 0,
                ];
            }

            $subcomponentSummaries[$komponenName][$subcomponentKey]['total_score_index'] += $scoreIndex;
            $subcomponentSummaries[$komponenName][$subcomponentKey]['total_bobot'] += $bobot;
            $subcomponentSummaries[$komponenName][$subcomponentKey]['national_total'] += $nationalTotal;
            $subcomponentSummaries[$komponenName][$subcomponentKey]['national_count'] += $nationalCount;
        }

        $subcomponentSummaries = collect($subcomponentSummaries)->map(function ($subcomponents, $komponenName) {
            $items = collect($subcomponents)->map(function ($values) {
                $totalScoreIndex = (float) ($values['total_score_index'] ?? 0);
                $totalBobot = (float) ($values['total_bobot'] ?? 0);
                $ratio = $totalBobot > 0 ? $totalScoreIndex / $totalBobot : null;
                $nationalAverage = ($values['national_count'] ?? 0) > 0
                    ? ($values['national_total'] ?? 0) / $values['national_count']
                    : null;

                return [
                    'subkomponen' => $values['subkomponen'] ?? 'Tanpa Sub Komponen',
                    'total_score_index' => round($totalScoreIndex, 2),
                    'total_bobot' => round($totalBobot, 2),
                    'nilai' => $ratio !== null ? round($ratio, 2) : null,
                    'persentase' => $ratio !== null ? round($ratio * 100, 2) : null,
                    'rata_rata_nasional' => $nationalAverage !== null ? round($nationalAverage, 2) : null,
                ];
            })->sortByDesc('nilai')->values();

            return [
                'komponen' => $komponenName,
                'items' => $items,
            ];
        })->values();

        return view('evaluasi.hasil_evaluasi_instansi', compact('instansi', 'test_tp', 'parameters', 'subcomponentSummaries', 'targetAchievementSummary', 'kabkotaDatas'));
    }

    public function hasil_evaluasi_instansi_simpan($instansi_id, $kegiatan_id, Request $request)
    {
        $instansi = KlpdInstansi::withTrashed()->find($instansi_id);
        $kegiatan = LkeKegiatan::find($kegiatan_id);
        if (!$instansi || !$kegiatan) {
            abort(404);
        }

        $test_tp = LkeTestTp::where('instansi_id', $instansi_id)->where('lke_kegiatan_id', $kegiatan_id)->first();
        if (!$test_tp) {
            abort(404);
        }
        DB::beginTransaction();
        try {
            $success = false;
            $test_tp->koefisien = $request->koefisien;
            $test_tp->bobot_rb_general_penyesuaian = $request->bobot_rb_general_penyesuaian;
            if ($test_tp->save()) {
                calculateTestTp($instansi_id, $kegiatan_id);
                $success = true;
                foreach ($test_tp->files as $berkas) {
                    if (!isset($request->berkas_existing[$berkas->id])) {
                        Storage::disk('public')->delete('berkas/' . $berkas->file);
                        $berkas->delete();
                    } else {
                        $berkas->deskripsi = $request->deskripsi_existing[$berkas->id];
                        $berkas->save();
                    }
                }
                if ($request->hasFile('berkas')) {
                    foreach ($request->file('berkas') as $key => $file_berkas) {
                        $berkas = new LkeTestTpFile();
                        $berkas->test_tp_id = $test_tp->id;
                        $berkas->deskripsi = $request->deskripsi[$key];
                        $time = time();
                        $filename = $berkas->deskripsi . "_$time." . $file_berkas->getClientOriginalExtension();
                        $file_berkas->storeAs('berkas', $filename, 'public');
                        $berkas->file = $filename;
                        if ($berkas->save()) {
                            $success = true;
                        } else {
                            $success = false;
                        }
                    }
                }
            }
        } catch (\Throwable $th) {
            $success = false;
            throw $th;
        }

        if ($success) {
            DB::commit();
            session()->flash('success', 'Data Test TP berhasil disimpan.');
        } else {
            DB::rollBack();
            session()->flash('error', 'Data Test TP gagal disimpan! Silahkan dicoba kembali.');
        }
        return redirect('evaluasi/hasil-evaluasi/' . $instansi_id . '/' . $kegiatan_id);
    }
}
