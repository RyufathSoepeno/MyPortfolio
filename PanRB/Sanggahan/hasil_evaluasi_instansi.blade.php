@extends('layout.rubick')
@section('title', 'Hasil Evaluasi ' . $instansi->name)

@section('content')
    <div class="intro-y col-span-12 lg:col-span-12">
        @include('common.status')
        <div class="intro-y box">
            <div class="flex flex-col sm:flex-row items-center p-5 border-b border-slate-200/60">
                <h2 class="font-medium text-base mr-auto">Hasil Evaluasi {{ $instansi->name }}</h2>
            </div>
            <div class="lg:col-span-12 p-5 border-b border-slate-200/60">
                <table class="table table-bordered table-striped mt-5 mb-5">
                    <tr>
                        <td class="font-bold" width="220">RB General Awal</td>
                        <td>{{ round($test_tp->rb_general, 2) }}</td>
                    </tr>
                    <tr>
                        <td class="font-bold">Koefisien</td>
                        <td>{{ round($test_tp->koefisien, 2) }}</td>
                    </tr>
                    <tr>
                        <td class="font-bold">RB General</td>
                        <td>{{ round($test_tp->rb_general + $test_tp->koefisien, 2) }}</td>
                    </tr>
                    <tr>
                        <td class="font-bold">Total Bobot RB General</td>
                        <td>100</td>
                    </tr>
                    <tr>
                        <td class="font-bold">Bobot RB General Penyesuaian</td>
                        <td>{{ $test_tp->bobot_rb_general_penyesuaian }}</td>
                    </tr>
                    <tr>
                        <td class="font-bold">RB General Penyesuaian</td>
                        <td>{{ round($test_tp->rb_general_penyesuaian, 2) }}</td>
                    </tr>
                    <tr>
                        <td class="font-bold">RB Tematik</td>
                        <td>{{ round($test_tp->rb_tematik, 2) }}</td>
                    </tr>
                    <tr>
                        <td class="font-bold">Index RB</td>
                        <td>{{ round($test_tp->index_rb, 2) }}</td>
                    </tr>
                    @php
                        $idx = 0;
                    @endphp
                    @if (auth()->user()->level != 'tpm')
                        <tr>
                            <td class="font-bold">File Berkas</td>
                            <td>
                                @php
                                    $idx = $test_tp->files ? $test_tp->files->max('id') + 1 : 0;
                                    $berkas_list = '';
                                    if ($test_tp->files) {
                                        foreach ($test_tp->files as $berkas) {
                                            $ext = pathinfo($berkas->file, PATHINFO_EXTENSION);
                                            $src = asset('storage/berkas/' . $berkas->file);
                                            $berkas_list .= '<a href="' . $src . '" target="_blank" title="' . $berkas->deskripsi . '" class="inline-block"><img src="' . asset('images') . '/' . exts($ext) . '" style="width: 50px; margin-right: 5px; margin-top: 5px;"></a>';
                                        }
                                    }
                                @endphp
                                {!! $berkas_list !!}
                            </td>
                        </tr>
                    @endif
                    @if (in_array(auth()->user()->level, ['admin', 'tpn']) && $test_tp->rb_general && hasAksesHasilEvaluasi())
                        <tr>
                            <td class="font-bold">Aksi</td>
                            <td>
                                <button onclick="edit_test_tp();" class="btn btn-warning btn-sm"><i data-lucide="edit" class="w-4 h-4 mr-1"></i> Perbaharui Data TP</button>
                            </td>
                        </tr>
                    @endif
                </table>

                <div class="preview">
                    <ul class="nav nav-tabs" role="tablist">
                        <li id="example-1-tab" class="nav-item flex-1" role="presentation">
                            <button class="nav-link w-full py-2 active" data-tw-toggle="pill" data-tw-target="#overview" type="button" role="tab" aria-controls="overview" aria-selected="true"> Overview </button>
                        </li>
                        <li id="example-2-tab" class="nav-item flex-1" role="presentation">
                            <button class="nav-link w-full py-2" data-tw-toggle="pill" data-tw-target="#kertas-kerja" type="button" role="tab" aria-controls="kertas-kerja" aria-selected="false"> Kertas Kerja </button>
                        </li>
                        @if ($instansi->group === 'provinsi')
                            <li id="example-3-tab" class="nav-item flex-1" role="presentation">
                                <button class="nav-link w-full py-2" data-tw-toggle="pill" data-tw-target="#kabkota" type="button" role="tab" aria-controls="kabkota" aria-selected="false"> Data Kabupaten/Kota </button>
                            </li>
                        @endif
                    </ul>
                    <div class="tab-content border-l border-r border-b">
                        <div id="overview" class="tab-pane leading-relaxed p-5 active" role="tabpanel" aria-labelledby="overview-tab">
                            @if ($targetAchievementSummary->count())
                                <div class="intro-y bg-white border border-slate-200 rounded-md p-5 mb-6">
                                    <div class="flex flex-col lg:flex-row lg:items-center lg:justify-between mb-4">
                                        <h3 class="text-lg font-semibold text-slate-800">Persentase Indikator Mencapai Target Baik</h3>
                                    </div>
                                    <div class="grid grid-cols-12 gap-5">
                                        @foreach ($targetAchievementSummary as $summary)
                                            <div class="col-span-12 md:col-span-6">
                                                <div class="intro-y box h-full">
                                                    <div class="p-5">
                                                        <div class="text-sm font-medium text-primary mb-3">{{ $summary['subkomponen'] }}</div>
                                                        <div class="text-3xl font-semibold text-slate-800">
                                                            {{ $summary['persentase'] !== null ? number_format($summary['persentase'], 2, ',', '.') . '%' : '-' }}
                                                        </div>
                                                        <div class="mt-4 text-xs text-slate-500 space-y-1">
                                                            <div>Indikator mencapai target baik: {{ $summary['indikator_mencapai'] }}</div>
                                                            <div>Indikator dengan target baik: {{ $summary['indikator_target'] }}</div>
                                                            <div>Total indikator: {{ $summary['total_indikator'] }}</div>
                                                        </div>
                                                        @php
                                                            $topCount = $summary['top_indicators']->count();
                                                            $bottomCount = $summary['bottom_indicators']->count();
                                                        @endphp
                                                        @if ($summary['top_indicators']->isNotEmpty())
                                                            <div class="mt-5">
                                                                <div class="text-xs uppercase tracking-wide text-slate-500 mb-2">{{ $topCount }} indikator dengan capaian bobot tertinggi</div>
                                                                <ul class="space-y-2 text-sm text-slate-700">
                                                                    @foreach ($summary['top_indicators'] as $indicator)
                                                                        <li class="flex justify-between gap-3">
                                                                            <span class="flex-1">{{ $indicator['indikator'] }}</span>
                                                                            <span class="font-semibold text-slate-800">{{ number_format($indicator['capaian_index'], 2, ',', '.') }}%</span>
                                                                        </li>
                                                                    @endforeach
                                                                </ul>
                                                            </div>
                                                        @endif
                                                        @if ($summary['bottom_indicators']->isNotEmpty())
                                                            <div class="mt-5">
                                                                <div class="text-xs uppercase tracking-wide text-slate-500 mb-2">{{ $bottomCount }} indikator dengan capaian bobot terendah</div>
                                                                <ul class="space-y-2 text-sm text-slate-700">
                                                                    @foreach ($summary['bottom_indicators'] as $indicator)
                                                                        <li class="flex justify-between gap-3">
                                                                            <span class="flex-1">{{ $indicator['indikator'] }}</span>
                                                                            <span class="font-semibold text-slate-800">{{ number_format($indicator['capaian_index'], 2, ',', '.') }}%</span>
                                                                        </li>
                                                                    @endforeach
                                                                </ul>
                                                            </div>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            @endif
                            @forelse ($subcomponentSummaries as $group)
                                <div class="intro-y bg-slate-50 border border-slate-200 rounded-md p-5 mb-6">
                                    <div class="flex flex-col lg:flex-row lg:items-center lg:justify-between mb-4">
                                        <h3 class="text-lg font-semibold text-slate-800">{{ $group['komponen'] }}</h3>
                                    </div>
                                    @if ($group['items']->isEmpty())
                                        <div class="intro-y box p-5">
                                            <div class="text-slate-500 text-sm">Belum ada data sub komponen untuk komponen {{ $group['komponen'] }}.</div>
                                        </div>
                                    @else
                                        <div class="grid grid-cols-12 gap-5">
                                            @foreach ($group['items'] as $item)
                                                <div class="col-span-12 md:col-span-6 xl:col-span-4">
                                                    <div class="intro-y box h-full">
                                                        <div class="p-5 border-b border-slate-100">
                                                            <div class="text-sm font-medium text-primary mb-1">{{ $item['subkomponen'] }}</div>
                                                        </div>
                                                        <div class="p-5 space-y-3 text-sm">
                                                            <div class="flex justify-between">
                                                                <span class="text-slate-500">Total Score Index</span>
                                                                <span class="font-semibold text-slate-800 ml-3">{{ number_format($item['total_score_index'], 2, ',', '.') }}</span>
                                                            </div>
                                                            <div class="flex justify-between">
                                                                <span class="text-slate-500">Total Bobot</span>
                                                                <span class="font-semibold text-slate-800 ml-3">{{ number_format($item['total_bobot'], 2, ',', '.') }}</span>
                                                            </div>
                                                            <div class="flex justify-between">
                                                                <span class="text-slate-500">Nilai</span>
                                                                <span class="font-semibold text-slate-800 ml-3">{{ $item['nilai'] !== null ? number_format($item['nilai'], 2, ',', '.') : '-' }}</span>
                                                            </div>
                                                            <div class="flex justify-between">
                                                                <span class="text-slate-500">Persentase</span>
                                                                <span class="font-semibold text-slate-800 ml-3">{{ $item['persentase'] !== null ? number_format($item['persentase'], 2, ',', '.') . '%' : '-' }}</span>
                                                            </div>
                                                            <div class="flex justify-between">
                                                                <span class="text-slate-500">Rata-rata Nasional</span>
                                                                <span class="font-semibold text-slate-800 ml-3">{{ $item['rata_rata_nasional'] !== null ? number_format($item['rata_rata_nasional'], 2, ',', '.').'%' : '-' }}</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            @endforeach
                                        </div>
                                    @endif
                                </div>
                            @empty
                                <div class="intro-y box p-5">
                                    <div class="text-slate-500 text-sm">Belum ada data indikator untuk ditampilkan.</div>
                                </div>
                            @endforelse
                        </div>
                        <div id="kertas-kerja" class="tab-pane leading-relaxed p-5" role="tabpanel" aria-labelledby="kertas-kerja-tab">
                            <table id="hasil_evaluasi_instansi" class="table table-bordered table-striped table-hover" cellspacing="0" width="100%">
                                <thead class="table-dark">
                                    <tr>
                                        <th class="w-5">No.</th>
                                        <th class="w100">Komponen</th>
                                        <th class="w200">Sub Komponen</th>
                                        <th class="w200">Indikator Penilaian</th>
                                        <th class="w200">Bobot</th>
                                        <th class="w200">Target Baik</th>
                                        <th class="w200">Skor</th>
                                        <th class="w200">Skor Index</th>
                                        <th class="w200">Capaian Index</th>
                                        <th class="w200">Catatan </th>
                                        <th class="w200">Rekomendasi </th>
                                        <th class="w-5">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($parameters as $parameter)
                                        <tr>
                                            <td></td>
                                            <td>{{ $parameter->komponen }}</td>
                                            <td>{{ $parameter->subkomponen }}</td>
                                            <td>{{ $parameter->indikator }}</td>
                                            <td>{{ $parameter->bobot }}</td>
                                            <td>{{ $parameter->target_baik }}</td>
                                            <td>{{ $parameter->score }}</td>
                                            <td>{{ $parameter->score_index }}</td>
                                            <td>{{ $parameter->capaian_index }}%</td>
                                            <td>{{ $parameter->catatan }}</td>
                                            <td>{{ $parameter->rekomendasi }}</td>
                                            <td>
                                                <button
                                                    class="btn btn-warning btn-sm w-10"
                                                    onclick="openSanggahModal(this)"
                                                    data-parameter-id="{{ $parameter->id }}"
                                                    data-komponen="{{ $parameter->komponen }}"
                                                    data-subkomponen="{{ $parameter->subkomponen }}"
                                                    data-indikator="{{ $parameter->indikator }}"
                                                    data-bobot="{{ $parameter->bobot }}"
                                                    data-target="{{ $parameter->target_baik }}"
                                                    data-skor="{{ $parameter->score }}"
                                                    data-skor-index="{{ $parameter->score_index }}"
                                                    data-capaian="{{ $parameter->capaian_index }}"
                                                    data-catatan="{{ $parameter->catatan }}"
                                                    data-rekomendasi="{{ $parameter->rekomendasi }}"
                                                    data-sanggah-status="{{ $parameter->sanggah_status }}"
                                                >
                                                    Edit
                                                </button>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        @if ($instansi->group === 'provinsi')
                            <div id="kabkota" class="tab-pane leading-relaxed p-5" role="tabpanel" aria-labelledby="kabkota-tab">
                                <table class="table table-bordered table-striped table-hover">
                                    <thead class="table-dark">
                                        <tr>
                                            <th class="w-5">No.</th>
                                            <th class="w-32">Kelompok Instansi</th>
                                            <th class="w200">Nama Instansi</th>
                                            <th class="w-5">RB General Awal</th>
                                            <th class="w-5">Koefisien</th>
                                            <th class="w-5">RB General</th>
                                            <th class="w-5">Bobot RB General</th>
                                            <th class="w-5">Bobot RB General Penyesuaian</th>
                                            <th class="w-5">RB General Penyesuaian</th>
                                            <th class="w-5">RB Tematik</th>
                                            <th class="w-5">Index RB</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($kabkotaDatas as $index => $kabkota)
                                            <tr>
                                                <td>{{ $index + 1 }}</td>
                                                <td>{{ $kabkota->group_instansi }}</td>
                                                <td>{!! $kabkota->nama_instansi !!}</td>
                                                <td>{{ $kabkota->rb_general !== null ? number_format($kabkota->rb_general, 2, ',', '.') : '-' }}</td>
                                                <td>{{ $kabkota->koefisien !== null ? number_format($kabkota->koefisien, 2, ',', '.') : '-' }}</td>
                                                <td>{{ $kabkota->rb_general_koefisien !== null ? number_format($kabkota->rb_general_koefisien, 2, ',', '.') : '-' }}</td>
                                                <td>{{ $kabkota->bobot_rb_general !== null ? number_format($kabkota->bobot_rb_general, 2, ',', '.') : '-' }}</td>
                                                <td>{{ $kabkota->bobot_rb_general_penyesuaian !== null ? number_format($kabkota->bobot_rb_general_penyesuaian, 2, ',', '.') : '-' }}</td>
                                                <td>{{ $kabkota->rb_general_penyesuaian !== null ? number_format($kabkota->rb_general_penyesuaian, 2, ',', '.') : '-' }}</td>
                                                <td>{{ $kabkota->rb_tematik !== null ? number_format($kabkota->rb_tematik, 2, ',', '.') : '-' }}</td>
                                                <td>{{ $kabkota->index_rb !== null ? number_format($kabkota->index_rb, 2, ',', '.') : '-' }}</td>
                                                <td class="text-center space-y-1">
                                                    <button
                                                        onclick="openSanggahModal(this)"
                                                        class="btn btn-warning btn-sm w-10"
                                                        data-parameter-id="{{ $parameter->lke_parameter->id }}"
                                                        ...
                                                    >
                                                        Edit
                                                    </button>
                                                    
                                                    <!-- Status sanggah -->
                                                    @if ($parameter->sanggah_status)
                                                        <div class="text-xs font-medium
                                                            @if($parameter->sanggah_status === 'terima') text-success
                                                            @elseif($parameter->sanggah_status === 'tolak') text-danger
                                                            @else text-warning
                                                            @endif
                                                        ">
                                                            @if ($parameter->sanggah_status === 'terima')
                                                                Sanggah diterima
                                                            @elseif ($parameter->sanggah_status === 'tolak')
                                                                Sanggah ditolak
                                                            @else
                                                                Dalam proses
                                                            @endif
                                                        </div>
                                                    @endif


                                                </td>
                                            </tr>
                                        @empty
                                            <tr>
                                                <td colspan="11" class="text-center text-slate-500">Belum ada data kabupaten/kota untuk ditampilkan.</td>
                                            </tr>
                                        @endforelse
                                    </tbody>
                                </table>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Modal Form RB General Penyesuaian --}}
    <div id="modal-penyesuaian" class="modal fade" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <!-- BEGIN: Modal Header -->
                <div class="darkbg modal-header">
                    <h2 class="font-bold fw-medium fs-base me-auto" id="title-penyesuaian">Perbaharui Data TP
                    </h2>
                </div> <!-- END: Modal Header -->
                <!-- BEGIN: Modal Body -->
                <form action="{{ url('evaluasi/hasil-evaluasi/' . $instansi->id . '/' . $test_tp->lke_kegiatan_id . '/simpan') }}" id="form-penyesuaian" method="post" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="test_tp_id" id="test_tp_id">
                    <div class="modal-body grid columns-12 gap-4 gap-y-3">
                        <div class="g-col-12">
                            <table class="table">
                                <tr>
                                    <td class="font-bold" width="230">Koefisien</td>
                                    <td>
                                        <input type="text" name="koefisien" id="koefisien" placeholder="Koefisien" class="form-control digit">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="font-bold">Bobot RB General Penyesuaian</td>
                                    <td>
                                        <input type="text" name="bobot_rb_general_penyesuaian" id="bobot_rb_general_penyesuaian" placeholder="Bobot RB General Penyesuaian" class="form-control numeric">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="font-bold w-44">Berkas <span class="text-danger">*</span></td>
                                    <td>
                                        <button type="button" class="btn btn-info btn-sm" onclick="pilih_berkas();"><i class="fa fa-plus"></i> Tambah Berkas</button>
                                        <input type="file" id="berkas" style="display: none;">
                                        <div id="berkas_list" class="intro-y grid grid-cols-12 gap-6 mt-5">
                                            {!! $test_tp->berkas_list !!}
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div> <!-- END: Modal Body -->
                    <!-- BEGIN: Modal Footer -->
                    <div class="modal-footer text-end">
                        <button type="button" data-tw-dismiss="modal" class="btn btn-outline-secondary w-20 me-1">Batal</button>
                        <button type="submit" class="btn btn-primary w-20 saveButton">Simpan</button>
                    </div> <!-- END: Modal Footer -->
                </form>
            </div>
        </div>
    </div> <!-- END: Modal Content -->

    <div id="modal-sanggah" class="modal fade" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <!-- Header -->
            <div class="modal-header darkbg">
                <h2 class="font-bold text-base">Pengajuan Dokumen Sanggah</h2>
            </div>

            <!-- Form -->
            <form
                action="{{ url('evaluasi/sanggah/simpan') }}"
                method="POST"
                enctype="multipart/form-data"
                id="form-sanggah"
            >

                @csrf
                <input type="hidden" name="tp_line_id" id="sanggah_tp_line_id">

                <div class="modal-body p-0">
                    <!-- SCROLLABLE CONTENT -->
                    <div class="max-h-[70vh] overflow-y-auto p-5 space-y-6">

                        <!-- DETAIL PENILAIAN (FULL WIDTH) -->
                        <div class="intro-y box">
                            <div class="p-5 border-b border-slate-200">
                                <h3 class="font-semibold text-base">Detail Penilaian</h3>
                            </div>

                            <div class="p-5">
                                <table class="table table-bordered w-full">
                                    <tbody>
                                        <tr>
                                            <td class="font-bold w-56">Komponen</td>
                                            <td id="sanggah-komponen"></td>
                                        </tr>
                                        <tr>
                                            <td class="font-bold">Sub Komponen</td>
                                            <td id="sanggah-subkomponen"></td>
                                        </tr>
                                        <tr>
                                            <td class="font-bold">Indikator Penilaian</td>
                                            <td id="sanggah-indikator"></td>
                                        </tr>
                                        <tr>
                                            <td class="font-bold">Bobot</td>
                                            <td id="sanggah-bobot"></td>
                                        </tr>
                                        <tr>
                                            <td class="font-bold">Target Baik</td>
                                            <td id="sanggah-target"></td>
                                        </tr>
                                        <tr>
                                            <td class="font-bold">Skor</td>
                                            <td id="sanggah-skor"></td>
                                        </tr>
                                        <tr>
                                            <td class="font-bold">Skor Index</td>
                                            <td id="sanggah-skor-index"></td>
                                        </tr>
                                        <tr>
                                            <td class="font-bold">Capaian Index</td>
                                            <td id="sanggah-capaian"></td>
                                        </tr>
                                        <tr>
                                            <td class="font-bold">Catatan</td>
                                            <td id="sanggah-catatan"></td>
                                        </tr>
                                        <tr>
                                            <td class="font-bold">Rekomendasi</td>
                                            <td id="sanggah-rekomendasi"></td>
                                        </tr>
                                        <tr>
                                            <td class="font-bold">Status Sanggah</td>
                                            <td>
                                                <span id="sanggah-status" class="text-slate-500">
                                                    Belum ada sanggah
                                                </span>
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <!-- DOKUMEN SANGGAH -->
                        <div class="intro-y box">
                            <div class="p-5 border-b border-slate-200">
                                <h3 class="font-semibold text-base">Dokumen Sanggah</h3>
                            </div>

                            <div class="p-5 grid grid-cols-12 gap-4">

                                <!-- Upload -->
                                <div class="col-span-12 lg:col-span-5">
                                    <label class="form-label font-bold">
                                        Upload Dokumen <span class="text-danger">*</span>
                                    </label>
                                    <input
                                        type="file"
                                        name="dokumen_sanggah"
                                        class="form-control"
                                        required
                                        accept=".pdf,.doc,.docx,.xls,.xlsx"
                                    >
                                    <small class="text-slate-500">
                                        PDF / Word / Excel
                                    </small>
                                </div>

                                <!-- Uraian -->
                                <div class="col-span-12 lg:col-span-7">
                                    <label class="form-label font-bold">Uraian Sanggah</label>
                                    <textarea
                                        name="uraian"
                                        class="form-control min-h-[160px]"
                                        placeholder="Tuliskan alasan sanggahan secara rinci..."
                                        required
                                    ></textarea>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>


                <!-- Footer -->
                <div class="modal-footer">
                    <button type="button" data-tw-dismiss="modal" class="btn btn-outline-secondary">
                        Batal
                    </button>
                    <button type="submit" class="btn btn-primary">
                        Kirim Sanggah
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

@endsection

@push('js')
    <script src="{{ asset('ext') }}/jquery-inputmask/jquery.inputmask.bundle.js"></script>
    <script src="{{ asset('ext/jquery-validation/jquery.validate.min.js') }}"></script>
    <script src="{{ asset('ext/jquery-validation/localization/messages_id.min.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="https://cdn.rawgit.com/ashl1/datatables-rowsgroup/v1.0.0/dataTables.rowsGroup.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.html5.min.js"></script>
    <script>
        @if (in_array(auth()->user()->level, ['admin', 'tpn', 'tpm']) && hasAksesHasilEvaluasi())
            var idx = {{ $idx }};
            $(document).ready(function() {
                modal_penyesuaian = tailwind.Modal.getInstance(document.querySelector("#modal-penyesuaian"));

                $(".numeric").inputmask("decimal", {
                    radixPoint: ".",
                    digits: 2,
                    autoGroup: true,
                    rightAlign: false,
                    min: 1,
                    max: 100,
                });

                $(".digit").inputmask("decimal", {
                    radixPoint: ".",
                    digits: 2,
                    autoGroup: true,
                    rightAlign: false,
                    min: -100,
                    max: 100,
                });

                $('#form-penyesuaian').validate({
                    highlight: function(input) {
                        $(input).addClass('border-danger');
                    },
                    unhighlight: function(input) {
                        $(input).removeClass('border-danger');
                    },
                    errorPlacement: function(error, element) {
                        var placement = element.closest('td');
                        if (!placement.get(0)) {
                            placement = element;
                        }
                        if (error.text() !== '') {
                            placement.append(error);
                        }
                        console.log(error, placement);
                    },
                    submitHandler: function(form) {
                        $('.saveButton').prop('disabled', true);
                        form.submit();
                    }
                });

                $('#berkas').change(function() {
                    cek_berkas(this);
                })
            });

            function edit_test_tp() {
                $('#koefisien').val('{{ $test_tp->koefisien }}');
                $('#bobot_rb_general_penyesuaian').val('{{ $test_tp->bobot_rb_general_penyesuaian }}');
                modal_penyesuaian.show();
            }

            function pilih_berkas() {
                $('#berkas').trigger('click');
            }

            function isAllowed(ext) {
                switch (ext.toLowerCase()) {
                    case 'xlsx':
                    case 'xls':
                    case 'docx':
                    case 'doc':
                    case 'pptx':
                    case 'ppt':
                    case 'pdf':
                        return true;
                }
                return false;
            }

            function cek_berkas(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function(e) {
                        filename = $('#berkas').val();
                        newVal = $('#berkas').next().val();
                        var parts = filename.split('.');
                        var ext = parts[parts.length - 1];
                        var desc = filename.replace("C:\\fakepath\\", "");
                        var desc = desc.replace("." + ext, "");
                        if (!isAllowed(ext)) {
                            Swal.fire("Perhatian", "File yang di input tidak sesuai ketentuan (pdf, word, excel, power point).", "error");
                        } else {
                            src = ext.toLowerCase() == 'pdf' ? "{{ asset('images/pdf.png') }}" : (ext.toLowerCase() == 'xls' || ext.toLowerCase() == 'xlsx' ? "{{ asset('images/excel.png') }}" : (ext.toLowerCase() == 'doc' || ext.toLowerCase() == 'docx' ? "{{ asset('images/word.png') }}" : (ext.toLowerCase() == 'ppt' || ext.toLowerCase() == 'pptx' ? "{{ asset('images/ppt.png') }}" : e.target.result)));
                            console.log(src, ext.toLowerCase());
                            berkas = $('#berkas').clone();
                            berkas.attr('name', 'berkas[' + idx + ']');
                            berkas.attr('id', 'berkas' + idx);
                            berkas_div = '<div class="col-span-12 lg:col-span-4" id="berkasdiv' + idx + '" style="position:relative;">' +
                                '<div style="height: 100px;">' +
                                '<img class="img-fluid card-img-top" src="' + src + '" alt="Berkas' + idx + '" style="max-height: 100px; max-width:100%; padding: 5px 0;">' +
                                '</div>' +
                                '<div class="form-group mb-0">' +
                                '<input type="text" name="deskripsi[' + idx + ']" class="form-control" id="deskripsi' + idx + '" placeholder="Deskripsi" value="' + desc + '" required>' +
                                '</div>' +
                                '<a href="javascript:void(0);" onclick="removeBerkas(' + idx + ')" class="remove-button text-danger">' +
                                '<div class="tooltip w-5 h-5 flex items-center justify-center absolute rounded-full text-white bg-danger right-0 top-0 -mr-2 -mt-2"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="x" data-lucide="x" class="lucide lucide-x w-4 h-4"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg> </div>'
                            '</a>' +
                            '</div>';
                            $('#berkas_list').append(berkas_div);
                            $('#berkas_list').append(berkas);
                            idx++;
                        }
                    }
                    reader.readAsDataURL(input.files[0]);
                }
            }

            function removeBerkas(id) {
                Swal.fire({
                    title: "Yakin?",
                    text: "berkas-nya mau di hapus?",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "Ya, hapus aja!"
                }).then((result) => {
                    if (result.isConfirmed) {
                        $('#berkasdiv' + id).remove();
                        $('#berkas' + id).remove();
                    }
                });
            }
        @endif
    </script>
    <script>
        var hasil_evaluasi_instansi = $('#hasil_evaluasi_instansi').DataTable({
            responsive: true,
            dom: 'Blfrtip',
            buttons: [{
                    extend: 'pdf',
                    text: '<button class="btn btn-danger w-32 mr-2 mb-2"><svg fill="#ffffff" height="24px" width="24px" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 482.14 482.14" xml:space="preserve" stroke="#ffffff"> <g id="SVGRepo_bgCarrier" stroke-width="0"/> <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"/> <g id="SVGRepo_iconCarrier"> <g> <path d="M142.024,310.194c0-8.007-5.556-12.782-15.359-12.782c-4.003,0-6.714,0.395-8.132,0.773v25.69 c1.679,0.378,3.743,0.504,6.588,0.504C135.57,324.379,142.024,319.1,142.024,310.194z"/> <path d="M202.709,297.681c-4.39,0-7.227,0.379-8.905,0.772v56.896c1.679,0.394,4.39,0.394,6.841,0.394 c17.809,0.126,29.424-9.677,29.424-30.449C230.195,307.231,219.611,297.681,202.709,297.681z"/> <path d="M315.458,0H121.811c-28.29,0-51.315,23.041-51.315,51.315v189.754h-5.012c-11.418,0-20.678,9.251-20.678,20.679v125.404 c0,11.427,9.259,20.677,20.678,20.677h5.012v22.995c0,28.305,23.025,51.315,51.315,51.315h264.223 c28.272,0,51.3-23.011,51.3-51.315V121.449L315.458,0z M99.053,284.379c6.06-1.024,14.578-1.796,26.579-1.796 c12.128,0,20.772,2.315,26.58,6.965c5.548,4.382,9.292,11.615,9.292,20.127c0,8.51-2.837,15.745-7.999,20.646 c-6.714,6.32-16.643,9.157-28.258,9.157c-2.585,0-4.902-0.128-6.714-0.379v31.096H99.053V284.379z M386.034,450.713H121.811 c-10.954,0-19.874-8.92-19.874-19.889v-22.995h246.31c11.42,0,20.679-9.25,20.679-20.677V261.748 c0-11.428-9.259-20.679-20.679-20.679h-246.31V51.315c0-10.938,8.921-19.858,19.874-19.858l181.89-0.19v67.233 c0,19.638,15.934,35.587,35.587,35.587l65.862-0.189l0.741,296.925C405.891,441.793,396.987,450.713,386.034,450.713z M174.065,369.801v-85.422c7.225-1.15,16.642-1.796,26.58-1.796c16.516,0,27.226,2.963,35.618,9.282 c9.031,6.714,14.704,17.416,14.704,32.781c0,16.643-6.06,28.133-14.453,35.224c-9.157,7.612-23.096,11.222-40.125,11.222 C186.191,371.092,178.966,370.446,174.065,369.801z M314.892,319.226v15.996h-31.23v34.973h-19.74v-86.966h53.16v16.122h-33.42 v19.875H314.892z"/> </g> </g> </svg> &nbsp;PDF </button>',
                    titleAttr: 'Download PDF',
                    orientation: 'landscape',
                    pageSize: 'A4'
                },
                {
                    extend: 'excel',
                    text: '<button class="btn btn-warning w-32 mr-2 mb-2"> <svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 50 50" width="24px" height="24px"><path d="M 28.875 0 C 28.855469 0.0078125 28.832031 0.0195313 28.8125 0.03125 L 0.8125 5.34375 C 0.335938 5.433594 -0.0078125 5.855469 0 6.34375 L 0 43.65625 C -0.0078125 44.144531 0.335938 44.566406 0.8125 44.65625 L 28.8125 49.96875 C 29.101563 50.023438 29.402344 49.949219 29.632813 49.761719 C 29.859375 49.574219 29.996094 49.296875 30 49 L 30 44 L 47 44 C 48.09375 44 49 43.09375 49 42 L 49 8 C 49 6.90625 48.09375 6 47 6 L 30 6 L 30 1 C 30.003906 0.710938 29.878906 0.4375 29.664063 0.246094 C 29.449219 0.0546875 29.160156 -0.0351563 28.875 0 Z M 28 2.1875 L 28 6.53125 C 27.867188 6.808594 27.867188 7.128906 28 7.40625 L 28 42.8125 C 27.972656 42.945313 27.972656 43.085938 28 43.21875 L 28 47.8125 L 2 42.84375 L 2 7.15625 Z M 30 8 L 47 8 L 47 42 L 30 42 L 30 37 L 34 37 L 34 35 L 30 35 L 30 29 L 34 29 L 34 27 L 30 27 L 30 22 L 34 22 L 34 20 L 30 20 L 30 15 L 34 15 L 34 13 L 30 13 Z M 36 13 L 36 15 L 44 15 L 44 13 Z M 6.6875 15.6875 L 12.15625 25.03125 L 6.1875 34.375 L 11.1875 34.375 L 14.4375 28.34375 C 14.664063 27.761719 14.8125 27.316406 14.875 27.03125 L 14.90625 27.03125 C 15.035156 27.640625 15.160156 28.054688 15.28125 28.28125 L 18.53125 34.375 L 23.5 34.375 L 17.75 24.9375 L 23.34375 15.6875 L 18.65625 15.6875 L 15.6875 21.21875 C 15.402344 21.941406 15.199219 22.511719 15.09375 22.875 L 15.0625 22.875 C 14.898438 22.265625 14.710938 21.722656 14.5 21.28125 L 11.8125 15.6875 Z M 36 20 L 36 22 L 44 22 L 44 20 Z M 36 27 L 36 29 L 44 29 L 44 27 Z M 36 35 L 36 37 L 44 37 L 44 35 Z"/></svg>  &nbsp;Excel </button>',
                    titleAttr: 'Download Excel'
                }
            ],
            columnDefs: [{
                targets: [0],
                render: function(data, type, row, meta) {
                    return meta.row + meta.settings._iDisplayStart + 1;
                }
            }]
        });
    </script>

    <script>
        let modalSanggah;

        document.addEventListener("DOMContentLoaded", function () {
            modalSanggah = tailwind.Modal.getInstance(
                document.querySelector("#modal-sanggah")
            );
        });

        function openSanggahModal(btn) {
            const el = btn.dataset;

            $('#sanggah_tp_line_id').val(el.parameterId);
            $('#sanggah-komponen').text(el.komponen);
            $('#sanggah-subkomponen').text(el.subkomponen);
            $('#sanggah-indikator').text(el.indikator);
            $('#sanggah-bobot').text(el.bobot);
            $('#sanggah-target').text(el.target);
            $('#sanggah-skor').text(el.skor);
            $('#sanggah-skor-index').text(el.skorIndex);
            $('#sanggah-capaian').text(el.capaian + '%');
            $('#sanggah-catatan').text(el.catatan || '-');
            $('#sanggah-rekomendasi').text(el.rekomendasi || '-');

            const status = el.sanggahStatus;

            let html = '<span class="text-slate-500">Belum disanggah</span>';

            if (status === 'dalam proses') {
                html = '<span class="text-warning font-medium">Dalam proses</span>';
            } else if (status === 'terima') {
                html = '<span class="text-success font-medium">Sanggah diterima</span>';
            } else if (status === 'tolak') {
                html = '<span class="text-danger font-medium">Sanggah ditolak</span>';
            }

            $('#sanggah-status').html(html);

            /* Old status sanggah code 
            let status = el.sanggahStatus || 'belum ada sanggah';

            const map = {
                'terima': '<span class="text-success font-medium">Accepted</span>',
                'tolak': '<span class="text-danger font-medium">Rejected</span>',
                'dalam proses': '<span class="text-warning font-medium">In progress</span>',
                'belum ada sanggah': '<span class="text-slate-500">Belum ada sanggah</span>',
            };

            $('#sanggah-status').html(map[status]); */


            modalSanggah.show();
        }

    </script>

    <script>
    document.addEventListener('DOMContentLoaded', function () {

        const form = document.getElementById('form-sanggah');

        if (!form) return;

        form.addEventListener('submit', function () {

            // Update status text immediately
            const statusEl = document.getElementById('sanggah-status');

            if (statusEl) {
                statusEl.innerHTML =
                    '<span class="text-warning font-medium">Dalam proses</span>';
            }

            // OPTIONAL: disable submit button to prevent double submit
            const btn = form.querySelector('button[type="submit"]');
            if (btn) {
                btn.disabled = true;
                btn.innerText = 'Mengirim...';
            }

            // Let the form continue submitting normally
        });
    });
    </script>


@endpush
