<?php

namespace App\Http\Controllers;

use App\Exports\ExportGeneralRencanaAksiTemplate;
use App\Imports\ImportGeneralRencanaAksi;
use App\Models\GeneralPerencanaan;
use App\Models\GeneralPerencanaanTarget;
use App\Models\GeneralPerencanaanTargetDokumen;
use App\Models\GeneralRencanaAksi;
use App\Models\GeneralRencanaAksiOutput;
use App\Models\Indikator;
use App\Models\KlpdInstansi;
use App\Models\OpenAccessSetting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Maatwebsite\Excel\Facades\Excel;
use Maatwebsite\Excel\HeadingRowImport;

class RBGeneralController extends Controller
{
    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            foreach (allowed_url() as $allowed) {
                if ($request->is($allowed)) {
                    return $next($request);
                }
            }
            abort('403');
        });
    }

    public function perencanaan(Request $request)
    {
        $user = Auth::User();
        if (in_array($user->level, ['kabupaten', 'provinsi', 'kl'])) {
            $access = OpenAccessSetting::where('user_level', $user->level)->where('fitur', 'rencana_aksi')->first();
            if ($access) {
                $today = date('Y-m-d');
                /** 
                * if ($access->waktu_awal > $today || $access->waktu_akhir < $today) {
                *    return view('belumbuka');
                * } */
            }
        }
        if ($request->indikator_id) {
            $indikator_id = $request->indikator_id;
        } else {
            $indikator_id = [];
        }
        $model = Indikator::where($user->level, '1')->orderBy('kegiatan_utama_id');
        if (count($indikator_id)) {
            $model = $model->whereIn('id', $indikator_id);
        }
        $indikators = $model->get();
        foreach ($indikators as $indikator) {
            $perencanaan = GeneralPerencanaan::where('instansi_id', $user->instansi_id)->where('kegiatan_utama_id', $indikator->kegiatan_utama_id)->where('indikator_id', $indikator->id)->first();
            $indikator->target = [];
            if ($perencanaan) {
                $indikator->perencanaan_id = $perencanaan->id;
                $indikator->baseline_tahun = $perencanaan->baseline_tahun;
                $indikator->baseline_target = $perencanaan->baseline_target;
                $indikator->baseline_realisasi = $perencanaan->baseline_realisasi;
                $indikator->realisasi_indikator = $perencanaan->realisasi_indikator;
                $indikator->capaian_indikator = $perencanaan->capaian_indikator;
                $indikator->catatan = $perencanaan->catatan;
                $target = GeneralPerencanaanTarget::where('general_perencanaan_id', $perencanaan->id)->get();
                $indikator->target = $target ? $target : [];
            }
        }
        return view('rb-general.perencanaan', compact('indikators', 'indikator_id'));
    }

    public function perencanaan_getData($kegiatan_utama_id, $indikator_id)
    {
        $user = Auth::User();
        $perencanaan = GeneralPerencanaan::where('instansi_id', $user->instansi_id)->where('kegiatan_utama_id', $kegiatan_utama_id)->where('indikator_id', $indikator_id)->first();
        dd($perencanaan, $kegiatan_utama_id, $indikator_id);
        $perencanaan->tipe = $perencanaan->indikator->tipe;
        return response()->json($perencanaan);
    }

    public function perencanaan_getIndikator($kegiatan_utama_id, $indikator_id)
    {
        $indikator = Indikator::where('kegiatan_utama_id', $kegiatan_utama_id)->where('id', $indikator_id)->first();
        if (!$indikator) {
            abort(404);
        }
        return response()->json($indikator);
    }

    public function perencanaan_getTarget($kegiatan_utama_id, $indikator_id, $target_id)
    {
        $user = Auth::User();
        $perencanaan = GeneralPerencanaan::where('instansi_id', $user->instansi_id)->where('kegiatan_utama_id', $kegiatan_utama_id)->where('indikator_id', $indikator_id)->first();
        $target = GeneralPerencanaanTarget::where('general_perencanaan_id', $perencanaan->id)->where('id', $target_id)->first();
        $target->tipe = $perencanaan->indikator->tipe;
        return response()->json($target);
    }

    public function perencanaan_getTargetOld($kegiatan_utama_id, $indikator_id)
    {
        $user = Auth::User();
        $perencanaan = GeneralPerencanaan::where('instansi_id', $user->instansi_id)->where('kegiatan_utama_id', $kegiatan_utama_id)->where('indikator_id', $indikator_id)->first();
        $success = true;
        $input = '';
        if ($perencanaan) {
            if (count($perencanaan->target)) {
                $idx = 0;
                foreach ($perencanaan->target as $target) {
                    $input .= '<tr id="target' . $idx . '" data-index="' . $idx . '">
                                <td><input type="text" name="tahun[' . $idx . ']" id="target_tahun' . $idx . '" class="form-control w-full tahun" value="' . $target->tahun . '" required></td>
                                <td><input type="text" name="target[' . $idx . ']" id="target_target' . $idx . '" class="form-control w-full ' . $perencanaan->indikator->tipe . '" value="' . $target->target . '" required></td>
                                <td><a href="javascript:;" class="btn btn-danger btn-sm" id="hapus-target" onclick="hapus_target(' . $idx . ')"><i data-lucide="trash-2" class="w-4 h-4 mr-1"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="trash-2" data-lucide="trash-2" class="lucide lucide-trash-2 block mx-auto"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 01-2 2H7a2 2 0 01-2-2V6m3 0V4a2 2 0 012-2h4a2 2 0 012 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg></i></a></td>
                            </tr>';
                    $idx++;
                }
            } else {
                $input .= '<tr>
                            <td><input type="text" name="tahun[0]" id="target_tahun0" class="form-control w-full tahun" value="' . date('Y') . '" required></td>
                            <td><input type="text" name="target[0]" id="target_target0" class="form-control w-full ' . $perencanaan->indikator->tipe . '" required></td>
                            <td></td>
                        </tr>';
            }
        } else {
            $success = false;
        }
        return response()->json(['success' => $success, 'input' => $input, 'perencanaan' => $perencanaan]);
    }

    public function perencanaan_simpanBaselineTarget(Request $request)
    {
        $user = Auth::User();
        $success = true;
        $pesan = '';
        $perencanaan = GeneralPerencanaan::where('instansi_id', $user->instansi_id)->where('kegiatan_utama_id', $request->kegiatan_utama_id)->where('indikator_id', $request->indikator_id)->first();
        if (!$perencanaan) {
            $perencanaan = new GeneralPerencanaan();
            $perencanaan->instansi_id = $user->instansi_id;
            $perencanaan->kegiatan_utama_id = $request->kegiatan_utama_id;
            $perencanaan->indikator_id = $request->indikator_id;
            $perencanaan->save();
        }
        $target = GeneralPerencanaanTarget::where('general_perencanaan_id', $perencanaan->id)->where('baseline_tahun', $request->baseline_tahun)->where('tahun', $request->tahun)->first();
        if ($target) {
            $success = false;
            $pesan .= 'Data Target untuk baseline tahun ' . $request->baseline_tahun . ' dan target tahun ' . $request->tahun . ' sudah ada!';
        }
        $target = new GeneralPerencanaanTarget();
        $target->general_perencanaan_id = $perencanaan->id;
        $target->baseline_tahun = $request->baseline_tahun;
        $target->baseline_realisasi = $request->baseline_realisasi;
        $target->tahun = $request->tahun;
        $target->target = $request->target;
        if ($perencanaan->indikator->tipe == 'Kuantitatif') {
            // Cek Baseline Realisasi
            if ($perencanaan->indikator->min != null && $request->baseline_realisasi < $perencanaan->indikator->min) {
                $success = false;
                $pesan .= 'Baseline tidak boleh kurang dari ' . $perencanaan->indikator->min . '!!';
            } else if ($perencanaan->indikator->max != null && $request->baseline_realisasi > $perencanaan->indikator->max) {
                $success = false;
                $pesan .= 'Baseline tidak boleh lebih dari ' . $perencanaan->indikator->max . '!!';
            }
            // Cek Target
            // if ($target->target < $target->baseline_realisasi) {
            //     $success = false;
            //     $pesan .= 'Target tidak boleh kurang dari Baseline Realisasi!!';
            // } else 
            if ($perencanaan->indikator->min != null && $target->target < $perencanaan->indikator->min) {
                $success = false;
                $pesan .= 'Target tidak boleh kurang dari ' . $perencanaan->indikator->min . '!!';
            } else if ($perencanaan->indikator->max != null && $target->target > $perencanaan->indikator->max) {
                $success = false;
                $pesan .= 'Target tidak boleh lebih dari ' . $perencanaan->indikator->max . '!!';
            }
        }

        if ($success) {
            $target->save();
            session()->flash('success', 'Data Baseline / Target Perencanaan General berhasil disimpan.');
        } else {
            session()->flash('error', 'Data Baseline / Target Perencanaan General gagal disimpan! ' . $pesan);
        }
        return redirect('rencana_aksi/rb-general/perencanaan');
    }

    public function perencanaan_simpanBaseline(Request $request)
    {
        $user = Auth::User();
        $success = true;
        $pesan = '';
        $perencanaan = GeneralPerencanaan::where('instansi_id', $user->instansi_id)->where('kegiatan_utama_id', $request->kegiatan_utama_id)->where('indikator_id', $request->indikator_id)->first();
        if (!$perencanaan) {
            $success = false;
            $pesan .= 'Data Perencanaan tidak ditemukan!';
        }
        $target = GeneralPerencanaanTarget::where('general_perencanaan_id', $perencanaan->id)->where('id', $request->id)->first();
        if (!$target) {
            $success = false;
            $pesan .= 'Data Perencanaan Target tidak ditemukan!';
        }
        $target->general_perencanaan_id = $perencanaan->id;
        $target->baseline_tahun = $request->baseline_tahun;
        $target->baseline_realisasi = $request->baseline_realisasi;
        if ($perencanaan->indikator->tipe == 'Kuantitatif') {
            if ($perencanaan->indikator->min != null && $request->baseline_realisasi < $perencanaan->indikator->min) {
                $success = false;
                $pesan .= 'Baseline tidak boleh kurang dari ' . $perencanaan->indikator->min . '!!';
            } else if ($perencanaan->indikator->max != null && $request->baseline_realisasi > $perencanaan->indikator->max) {
                $success = false;
                $pesan .= 'Baseline tidak boleh lebih dari ' . $perencanaan->indikator->max . '!!';
            }
        }

        if ($success) {
            $target->save();
            session()->flash('success', 'Data Baseline Perencanaan General berhasil disimpan.');
        } else {
            session()->flash('error', 'Data Baseline Perencanaan General gagal disimpan! ' . $pesan);
        }
        return redirect('rencana_aksi/rb-general/perencanaan');
    }

    public function perencanaan_hapusTarget(Request $request)
    {
        $user = Auth::User();
        $perencanaan = GeneralPerencanaan::where('instansi_id', $user->instansi_id)->where('kegiatan_utama_id', $request->kegiatan_utama_id)->where('indikator_id', $request->indikator_id)->first();
        $target = GeneralPerencanaanTarget::where('general_perencanaan_id', $perencanaan->id)->where('id', $request->target_id)->first();
        if (!$target) {
            session()->flash('error', 'Data Baseline Perencanaan General tidak ditemukan!');
        } else {
            if ($target->delete()) {
                session()->flash('success', 'Data Baseline Perencanaan General berhasil dihapus.');
            } else {
                session()->flash('error', 'Data Baseline Perencanaan General gagal dihapus! Silahkan dicoba kembali.');
            }
        }
        return redirect('rencana_aksi/rb-general/perencanaan');
    }

    public function perencanaan_simpanTarget(Request $request)
    {
        $user = Auth::User();
        $perencanaan = GeneralPerencanaan::where('instansi_id', $user->instansi_id)->where('kegiatan_utama_id', $request->kegiatan_utama_id)->where('indikator_id', $request->indikator_id)->first();
        $pesan = '';
        if ($perencanaan) {
            $success = true;
            DB::beginTransaction();
            try {
                $target = GeneralPerencanaanTarget::where('general_perencanaan_id', $perencanaan->id)->where('id', $request->id)->first();
                if (!$target) {
                    $target = new GeneralPerencanaanTarget();
                    $target->general_perencanaan_id = $perencanaan->id;
                }
                $target->tahun = $request->tahun;
                $target->target = $request->target;
                if (!$target->save()) {
                    $success = false;
                }
                if ($perencanaan->indikator->tipe == 'Kuantitatif') {
                    // if ($target->target < $target->baseline_realisasi) {
                    //     $success = false;
                    //     $pesan .= 'Target tidak boleh kurang dari Baseline Realisasi!!';
                    // } else 
                    if ($perencanaan->indikator->min != null && $target->target < $perencanaan->indikator->min) {
                        $success = false;
                        $pesan .= 'Target tidak boleh kurang dari ' . $perencanaan->indikator->min . '!!';
                    } else if ($perencanaan->indikator->max != null && $target->target > $perencanaan->indikator->max) {
                        $success = false;
                        $pesan .= 'Target tidak boleh lebih dari ' . $perencanaan->indikator->max . '!!';
                    }
                }
                if ($request->tahun <= $perencanaan->baseline_tahun) {
                    $success = false;
                    $pesan .= 'Tahun yang di-input tidak boleh sama atau kurang dari tahun baseline!';
                }
            } catch (\Throwable $th) {
                throw $th;
            }
            if ($success) {
                DB::commit();
                session()->flash('success', 'Data Target Perencanaan General berhasil disimpan.');
            } else {
                DB::rollBack();
                session()->flash('error', 'Data Target Perencanaan General gagal disimpan! ' . $pesan);
            }
        } else {
            session()->flash('error', 'Data Target Perencanaan General gagal disimpan! Data General Perencanaan tidak ditemukan.');
        }
        return redirect('rencana_aksi/rb-general/perencanaan');
    }

    public function perencanaan_simpanMonev(Request $request)
    {
        $user = Auth::User();
        $perencanaan = GeneralPerencanaan::where('instansi_id', $user->instansi_id)->where('kegiatan_utama_id', $request->kegiatan_utama_id)->where('indikator_id', $request->indikator_id)->first();
        if (!$perencanaan) {
            $perencanaan = new GeneralPerencanaan();
            $perencanaan->instansi_id = $user->instansi_id;
            $perencanaan->kegiatan_utama_id = $request->kegiatan_utama_id;
            $perencanaan->indikator_id = $request->indikator_id;
        }
        $perencanaan->realisasi_indikator = $request->realisasi_indikator;
        $perencanaan->capaian_indikator = $request->capaian_indikator;
        $perencanaan->catatan = $request->catatan;
        if ($perencanaan->save()) {
            session()->flash('success', 'Data Baseline Perencanaan General berhasil disimpan.');
        } else {
            session()->flash('error', 'Data Baseline Perencanaan General gagal disimpan! Silahkan dicoba kembali.');
        }
        return redirect('rencana_aksi/rb-general/perencanaan');
    }

    public function perencanaan_getDokumen($id)
    {
        $target = GeneralPerencanaanTarget::find($id);
        $target->dokumen_list = '';
        foreach ($target->dokumens as $dokumen) {
            $ext = pathinfo($dokumen->filename, PATHINFO_EXTENSION);
            $src = exts(strtolower($ext));
            $target->dokumen_list .= '<div class="col-span-12 lg:col-span-6" id="dokumendiv' . $dokumen->id . '" style="position:relative;">
                <div style="height: 100px;">
                    <img class="img-fluid card-img-top" src="' . asset('images') . '/' . $src . '" alt="Dokumen' . $dokumen->id . '" style="max-height: 100px; max-width:100%; padding: 5px 0;">
                </div>
                <div class="form-group mb-0">
                    <input type="text" name="deskripsi_existing[' . $dokumen->id . ']" class="form-control" id="deskripsi' . $dokumen->id . '" placeholder="Deskripsi" value="' . $dokumen->dokumen . '">
                    <input type="hidden" name="dokumen_existing[' . $dokumen->id . ']" value="' . $dokumen->filename . '">
                </div>
                <a href="javascript:void(0);" onclick="removeDokumen(' . $dokumen->id . ')" class="remove-button text-danger">
                    <div class="tooltip w-5 h-5 flex items-center justify-center absolute rounded-full text-white bg-danger right-0 top-0 -mr-2 -mt-2"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="x" data-lucide="x" class="lucide lucide-x w-4 h-4"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg> </div>
                </a>
            </div>';
        }
        return response()->json($target);
    }

    public function perencanaan_simpanDokumen(Request $request)
    {
        $target = GeneralPerencanaanTarget::find($request->general_perencanaan_target_id);
        if (!$target) {
            abort(404);
        }
        $success = false;
        foreach ($target->dokumens as $dokumen) {
            if (!isset($request->dokumen_existing[$dokumen->id])) {
                Storage::disk('public')->delete('dokumen/' . $dokumen->file);
                $dokumen->delete();
            } else {
                $dokumen->dokumen = $request->deskripsi_existing[$dokumen->id];
                $dokumen->save();
            }
        }
        if ($request->hasFile('dokumen')) {
            foreach ($request->file('dokumen') as $key => $file_dokumen) {
                $dokumen = new GeneralPerencanaanTargetDokumen();
                $dokumen->general_perencanaan_target_id = $target->id;
                $dokumen->dokumen = $request->deskripsi[$key];
                $time = time();
                $filename = $dokumen->dokumen . "_$time." . $file_dokumen->getClientOriginalExtension();
                $file_dokumen->storeAs('target/dokumen', $filename, 'public');
                $dokumen->filename = $filename;
                if ($dokumen->save()) {
                    $success = true;
                } else {
                    $success = false;
                }
            }
        }
        if ($success) {
            session()->flash('success', 'Data Test TP berhasil disimpan.');
        } else {
            session()->flash('error', 'Data Test TP gagal disimpan! Silahkan dicoba kembali.');
        }
        return redirect('rencana_aksi/rb-general/perencanaan');
    }

    public function rencana_aksi($perencanaan_id, $target_id)
    {
        $user = Auth::User();
        if (in_array($user->level, ['kabupaten', 'provinsi', 'kl'])) {
            $access = OpenAccessSetting::where('user_level', $user->level)->where('fitur', 'rencana_aksi')->first();
             if ($access) {
                $today = date('Y-m-d');
                /* if ($access->waktu_awal > $today || $access->waktu_akhir < $today) {
                *    return view('belumbuka');
                } */
            } 
        }
        $target = GeneralPerencanaanTarget::where('id', $target_id)->where('general_perencanaan_id', $perencanaan_id)
            ->whereHas('perencanaan', function ($q) use ($user) {
                $q->where('instansi_id', $user->instansi_id);
            })->first();
        if (!$target) {
            abort(404);
        }
        return view('rb-general.rencana_aksi', compact('target'));
    }

    public function rencana_aksi_downloadTemplate()
    {
        $template = new ExportGeneralRencanaAksiTemplate();

        return Excel::download($template, 'template_rb_general_rencana_aksi.xlsx');
    }

    public function rencana_aksi_import($perencanaan_id, $target_id, Request $request)
    {
        $user = Auth::User();
        $target = GeneralPerencanaanTarget::where('id', $target_id)->where('general_perencanaan_id', $perencanaan_id)
            ->whereHas('perencanaan', function ($q) use ($user) {
                $q->where('instansi_id', $user->instansi_id);
            })->first();
        if (!$target) {
            abort(404);
        }
        $success = true;
        $pesan = '';
        DB::beginTransaction();
        try {
            $headings = (new HeadingRowImport())->toArray($request->file('file_rencana_aksi'));
            if ($headings[0][0] == heading_template_rb_general_rencana_aksi()) {
                $collections = Excel::toCollection(new ImportGeneralRencanaAksi, $request->file('file_rencana_aksi'))[0];
                $collections = $collections->slice(2);
                $collections = $collections->groupBy('rencana_aksi');
                foreach ($collections as $key => $collection) {
                    if ($key != '') {
                        $rencana_aksi = GeneralRencanaAksi::where('general_perencanaan_target_id', $target_id)->where('rencana_aksi', $key)->first();
                        if (!$rencana_aksi) {
                            $rencana_aksi = new GeneralRencanaAksi();
                            $rencana_aksi->general_perencanaan_target_id = $target->id;
                        }
                        $rencana_aksi->rencana_aksi = $key;
                        if ($rencana_aksi->save()) {
                            foreach ($collection as $output) {
                                if (preg_match("/[^0-9.]+/", $output['target_tw1']) || preg_match("/[^0-9.]+/", $output['target_tw2']) || preg_match("/[^0-9.]+/", $output['target_tw3']) || preg_match("/[^0-9.]+/", $output['target_tw4']) || preg_match("/[^0-9.]+/", $output['target_total']) || preg_match("/[^0-9.]+/", $output['anggaran_total'])) {
                                    $success = false;
                                    $pesan = 'Format Angka tidak sesuai! Harap perbaiki terlebih dahulu!';
                                } else {
                                    $rencana_aksi_output = new GeneralRencanaAksiOutput();
                                    $rencana_aksi_output->general_rencana_aksi_id = $rencana_aksi->id;
                                    $rencana_aksi_output->satuan_output = $output['satuan_output'];
                                    $rencana_aksi_output->indikator_output = $output['indikator_output'];
                                    $rencana_aksi_output->target_tw1 = preg_replace('/[^0-9.]+/', '', $output['target_tw1']);
                                    $rencana_aksi_output->target_tw2 = preg_replace('/[^0-9.]+/', '', $output['target_tw2']);
                                    $rencana_aksi_output->target_tw3 = preg_replace('/[^0-9.]+/', '', $output['target_tw3']);
                                    $rencana_aksi_output->target_tw4 = preg_replace('/[^0-9.]+/', '', $output['target_tw4']);
                                    $rencana_aksi_output->target_total = preg_replace('/[^0-9.]+/', '', $output['target_total']);
                                    $rencana_aksi_output->anggaran_tw1 = 0;
                                    $rencana_aksi_output->anggaran_tw2 = 0;
                                    $rencana_aksi_output->anggaran_tw3 = 0;
                                    $rencana_aksi_output->anggaran_tw4 = 0;
                                    $rencana_aksi_output->anggaran_total = preg_replace('/[^0-9.]+/', '', $output['anggaran_total']);
                                    $rencana_aksi_output->pelaksana = $output['pelaksana'];
                                    $rencana_aksi_output->koordinator = $output['koordinator'];
                                    if (!$rencana_aksi_output->save()) {
                                        $success = false;
                                    }
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
            session()->flash('success', 'Data RB General Rencana Aksi berhasil diimport!');
        } else {
            DB::rollBack();
            session()->flash('error', 'Data RB General Rencana Aksi gagal diimport! ' . $pesan);
        }

        return redirect('rencana_aksi/rb-general/perencanaan/' . $perencanaan_id . '/' . $target_id . '/rencana_aksi');
    }

    public function rencana_aksi_getDatas($perencanaan_id, $target_id)
    {
        $user = Auth::User();
        $target = GeneralPerencanaanTarget::where('id', $target_id)->where('general_perencanaan_id', $perencanaan_id)
            ->whereHas('perencanaan', function ($q) use ($user) {
                $q->where('instansi_id', $user->instansi_id);
            })->first();
        $rencana_aksis = GeneralRencanaAksi::where('general_perencanaan_target_id', $target->id)->get();
        $outputs = [];
        $no = 1;
        foreach ($rencana_aksis as $rencana_aksi) {
            foreach ($rencana_aksi->output as $output) {
                $output->no = $no;
                $output->nama_rencana_aksi = $output->rencana_aksi->rencana_aksi;
                $output->anggaran_total = currency($output->anggaran_total);
                $output->realisasi_anggaran_total = currency((int) $output->realisasi_anggaran_total);
                $output->capaian_anggaran_total = $output->capaian_anggaran_total ? $output->capaian_anggaran_total . '%' : '';
                $outputs[] = $output;
            }
            $no++;
        }
        return response()->json(['data' => $outputs]);
    }

    public function rencana_aksi_getData($perencanaan_id, $target_id, $id)
    {
        $user = Auth::User();
        $target = GeneralPerencanaanTarget::where('id', $target_id)->where('general_perencanaan_id', $perencanaan_id)
            ->whereHas('perencanaan', function ($q) use ($user) {
                $q->where('instansi_id', $user->instansi_id);
            })->first();
        if (!$target) {
            abort(404);
        }
        $output = GeneralRencanaAksiOutput::find($id);
        $output->rencana_aksi = $output->rencana_aksi;
        return response()->json($output);
    }

    public function rencana_aksi_simpan($perencanaan_id, $target_id, Request $request)
    {
        $user = Auth::User();
        $target = GeneralPerencanaanTarget::where('id', $target_id)->where('general_perencanaan_id', $perencanaan_id)
            ->whereHas('perencanaan', function ($q) use ($user) {
                $q->where('instansi_id', $user->instansi_id);
            })->first();
        if (!$target) {
            abort(403);
        }
        $success = true;
        DB::beginTransaction();
        try {
            $rencana_aksi = GeneralRencanaAksi::where('general_perencanaan_target_id', $target_id)->where('rencana_aksi', $request->rencana_aksi)->first();
            if (!$rencana_aksi) {
                $rencana_aksi = new GeneralRencanaAksi();
                $rencana_aksi->general_perencanaan_target_id = $target->id;
                if ($request->rencana_aksi_id) {
                    $rencana_aksi = GeneralRencanaAksi::where('general_perencanaan_target_id', $target->id)->where('id', $request->rencana_aksi_id)->first();
                }
            }
            $rencana_aksi->rencana_aksi = $request->rencana_aksi;
            if ($rencana_aksi->save()) {
                foreach ($request->target_output as $target_output) {
                    $rencana_aksi_output = new GeneralRencanaAksiOutput();
                    if (isset($target_output['rencana_aksi_output_id'])) {
                        $rencana_aksi_output = GeneralRencanaAksiOutput::find($target_output['rencana_aksi_output_id']);
                    }
                    $rencana_aksi_output->general_rencana_aksi_id = $rencana_aksi->id;
                    $rencana_aksi_output->satuan_output = $target_output['satuan_output'];
                    $rencana_aksi_output->indikator_output = $target_output['indikator_output'];
                    $rencana_aksi_output->target_tw1 = $target_output['target_tw1'];
                    $rencana_aksi_output->target_tw2 = $target_output['target_tw2'];
                    $rencana_aksi_output->target_tw3 = $target_output['target_tw3'];
                    $rencana_aksi_output->target_tw4 = $target_output['target_tw4'];
                    $rencana_aksi_output->target_total = $target_output['target_total'];
                    $rencana_aksi_output->anggaran_tw1 = 0;
                    $rencana_aksi_output->anggaran_tw2 = 0;
                    $rencana_aksi_output->anggaran_tw3 = 0;
                    $rencana_aksi_output->anggaran_tw4 = 0;
                    $rencana_aksi_output->anggaran_total = str_replace('.', '', $target_output['anggaran_total']);
                    $rencana_aksi_output->pelaksana = $target_output['pelaksana'];
                    $rencana_aksi_output->koordinator = $target_output['koordinator'];
                    if (!$rencana_aksi_output->save()) {
                        $success = false;
                    }
                }
            }
        } catch (\Throwable $th) {
            $success = false;
            throw $th;
        }
        if ($success) {
            DB::commit();
        } else {
            DB::rollBack();
        }
        return response()->json(['success' => $success]);
    }

    public function rencana_aksi_hapus($perencanaan_id, $target_id, Request $request)
    {
        $user = Auth::User();
        $target = GeneralPerencanaanTarget::where('id', $target_id)->where('general_perencanaan_id', $perencanaan_id)
            ->whereHas('perencanaan', function ($q) use ($user) {
                $q->where('instansi_id', $user->instansi_id);
            })->first();
        if (!$target) {
            abort(403);
        }
        $success = false;
        DB::beginTransaction();
        try {
            $output = GeneralRencanaAksiOutput::find($request->id);
            $rencana_aksi = $output->rencana_aksi;
            if ($output->delete()) {
                $success = true;
                if (count($rencana_aksi->output) == 0) {
                    if (!$rencana_aksi->delete()) {
                        $success = false;
                    }
                }
            }
        } catch (\Throwable $th) {
            DB::rollBack();
            throw $th;
        }
        if ($success) {
            DB::commit();
        } else {
            DB::rollBack();
        }
        return response()->json(['success' => $success]);
    }

    public function monev($perencanaan_id, $target_id)
    {
        $user = Auth::User();
        if (in_array($user->level, ['kabupaten', 'provinsi', 'kl'])) {
            $access = OpenAccessSetting::where('user_level', $user->level)->where('fitur', 'rencana_aksi')->first();
            if ($access) {
                $today = date('Y-m-d');
                /* if ($access->waktu_awal > $today || $access->waktu_akhir < $today) {
                *    return view('belumbuka');
                } */ 
            }
        }
        $target = GeneralPerencanaanTarget::where('id', $target_id)->where('general_perencanaan_id', $perencanaan_id)
            ->whereHas('perencanaan', function ($q) use ($user) {
                $q->where('instansi_id', $user->instansi_id);
            })->first();
        if (!$target) {
            abort(404);
        }
        return view('rb-general.monev', compact('target'));
    }

    public function monev_getTarget($perencanaan_id, $target_id)
    {
        $user = Auth::User();
        $target = GeneralPerencanaanTarget::where('id', $target_id)->where('general_perencanaan_id', $perencanaan_id)
            ->whereHas('perencanaan', function ($q) use ($user) {
                $q->where('instansi_id', $user->instansi_id);
            })->first();
        if (!$target) {
            abort(404);
        }
        return response()->json($target);
    }

    public function monev_simpanTarget($perencanaan_id, $target_id, Request $request)
    {
        $user = Auth::User();
        $target = GeneralPerencanaanTarget::where('id', $target_id)->where('general_perencanaan_id', $perencanaan_id)
            ->whereHas('perencanaan', function ($q) use ($user) {
                $q->where('instansi_id', $user->instansi_id);
            })->first();
        if (!$target) {
            abort(403);
        }
        $success = false;
        $target->realisasi_indikator = $request->realisasi_indikator;
        $target->capaian_indikator = $request->capaian_indikator;
        $target->catatan = $request->catatan;
        if ($target->save()) {
            $success = true;
        }
        return response()->json(compact('success', 'target'));
    }

    public function monev_simpan($perencanaan_id, $target_id, Request $request)
    {
        $user = Auth::User();
        $target = GeneralPerencanaanTarget::where('id', $target_id)->where('general_perencanaan_id', $perencanaan_id)
            ->whereHas('perencanaan', function ($q) use ($user) {
                $q->where('instansi_id', $user->instansi_id);
            })->first();
        if (!$target) {
            abort(403);
        }
        $success = false;
        $output = GeneralRencanaAksiOutput::find($request->output_id);
        if (!$output) {
            abort(404);
        }
        $output->realisasi_output_tw1 = $request->realisasi_output_tw1;
        $output->realisasi_output_tw2 = $request->realisasi_output_tw2;
        $output->realisasi_output_tw3 = $request->realisasi_output_tw3;
        $output->realisasi_output_tw4 = $request->realisasi_output_tw4;
        $output->realisasi_output_total = $request->realisasi_output_total;
        $output->realisasi_anggaran_total = str_replace('.', '', $request->realisasi_anggaran_total);
        $output->capaian_output_tw1 = $request->capaian_output_tw1;
        $output->capaian_output_tw2 = $request->capaian_output_tw2;
        $output->capaian_output_tw3 = $request->capaian_output_tw3;
        $output->capaian_output_tw4 = $request->capaian_output_tw4;
        $output->capaian_output_total = $request->capaian_output_total;
        $output->capaian_anggaran_total = $request->capaian_anggaran_total;
        $output->catatan = $request->catatan;
        if ($output->save()) {
            $success = true;
        }
        return response()->json(['success' => $success]);
    }

    public function rekap_data(Request $request)
    {
        $user = Auth::User();
        if (in_array($user->level, ['kabupaten', 'provinsi', 'kl'])) {
            $access = OpenAccessSetting::where('user_level', $user->level)->where('fitur', 'rencana_aksi')->first();
             if ($access) {
                $today = date('Y-m-d');
                /* if ($access->waktu_awal > $today || $access->waktu_akhir < $today) {
                *    return view('belumbuka');
                } */ 
            }
        }
        $tahun = $request->get('tahun', date('Y'));

        if ($request->instansi_id && in_array($user->level, ['admin', 'tpn', 'viewer'])) {
            $instansi_ids = (array) $request->instansi_id;
        } else if (isset($user->instansi_id)) {
            $instansi_ids = [$user->instansi_id];
        } else {
            $instansi_ids = [KlpdInstansi::orderBy('id')->first()->id];
        }

        // Mapping instansi_id ke id_before (jika tahun < 2025 dan id_before tersedia)
        $mapped_instansi = [];
        foreach ($instansi_ids as $instansi_id) {
            $instansi = KlpdInstansi::find($instansi_id);
            if ($instansi) {
                $mapped_instansi[$instansi_id] = ($tahun < 2025 && $instansi->id_before) ? $instansi->id_before : $instansi->id;
            }
        }

        // Ambil data perencanaan berdasarkan mapped id_before
        $used_ids = array_values($mapped_instansi);
        $model = GeneralPerencanaan::whereIn('instansi_id', $used_ids)
            ->orderBy('kegiatan_utama_id')
            ->orderBy('indikator_id');

        if ($request->indikator_id) {
            $indikator_id = $request->indikator_id;
            $model = $model->whereIn('indikator_id', $indikator_id);
        } else {
            $indikator_id = [];
        }

        $perencanaans = $model->get();

        // Simpan data instansi berdasarkan ID asli (bukan id_before)
        $instansi_map = KlpdInstansi::whereIn('id', $instansi_ids)->get()->keyBy('id');

        $key = 0;
        $datas = [];
        foreach ($perencanaans as $perencanaan) {
            // Cari instansi_id asli dari mapped_instansi
            $instansi_id_asli = array_search($perencanaan->instansi_id, $mapped_instansi);
            $instansi_asli = $instansi_map[$instansi_id_asli] ?? null;

            $targets = $perencanaan->target()->where('tahun', $tahun)->get();
            if (count($targets)) {
                foreach ($targets as $target) {
                    if (count($target->rencana_aksi)) {
                        foreach ($target->rencana_aksi as $rencana_aksi) {
                            if (count($rencana_aksi->output)) {
                                foreach ($rencana_aksi->output as $output) {
                                    $datas[$key] = compact('perencanaan', 'target', 'rencana_aksi', 'output');
                                    $datas[$key]['instansi'] = $instansi_asli;
                                    $key++;
                                }
                            } else {
                                $datas[$key] = compact('perencanaan', 'target', 'rencana_aksi');
                                $datas[$key]['output'] = new GeneralRencanaAksiOutput();
                                $datas[$key]['instansi'] = $instansi_asli;
                                $key++;
                            }
                        }
                    } else {
                        $datas[$key] = compact('perencanaan', 'target');
                        $datas[$key]['rencana_aksi'] = new GeneralRencanaAksi();
                        $datas[$key]['output'] = new GeneralRencanaAksiOutput();
                        $datas[$key]['instansi'] = $instansi_asli;
                        $key++;
                    }
                }
            } else {
                $datas[$key] = compact('perencanaan');
                $datas[$key]['target'] = new GeneralPerencanaanTarget();
                $datas[$key]['rencana_aksi'] = new GeneralRencanaAksi();
                $datas[$key]['output'] = new GeneralRencanaAksiOutput();
                $datas[$key]['instansi'] = $instansi_asli;
                $key++;
            }
        }

        return view('rb-general.rekap_data', compact('tahun', 'datas', 'instansi_ids', 'indikator_id'));
    }

    public function rekap_data_getTarget($id)
    {
        $perencanaan = GeneralPerencanaanTarget::find($id);
        return response()->json($perencanaan);
    }

    public function rekap_data_simpanCatatanEvaluator(Request $request)
    {
        $perencanaan = GeneralPerencanaanTarget::find($request->target_id);
        $perencanaan->catatan_evaluator = $request->catatan_evaluator;
        $perencanaan->save();
        return redirect()->back();
    }
}
