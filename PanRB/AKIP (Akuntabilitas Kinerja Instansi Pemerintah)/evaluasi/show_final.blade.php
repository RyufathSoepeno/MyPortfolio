@extends('layout.midone', ['akip' => true])
@section('title', 'Hasil Evaluasi SAKIP')

@section('content')
    <div class="intro-y flex items-center">
        <h2 class="text-lg mr-auto">
            Hasil Evaluasi SAKIP Final - <span class="font-medium">{!! $instansi->name !!}</span>
        </h2>
        <a href="{{ route('akip.evaluasi.index') }}" class="flex items-center gap-2 button border text-gray-700">
            <i data-feather="arrow-left" class="w-4 h-4 mr-2"></i> Kembali
        </a>
    </div>

    @include('common.status_midone')

    <div class="intro-y box mt-5">
        <div class="flex items-center p-5 border-b border-gray-200">
            <h2 class="font-medium text-base mr-auto">
                Hasil Evaluasi SAKIP {!! $evaluasi_sakip->instansi->name !!}
            </h2>
        </div>

        <div class="intro-y p-5 flex items-start justify-between flex-col sm:flex-row">
            <div class="flex-1">
                <div class="w-full">
                    <span class="font-medium">Tahun : </span>{{ $evaluasi_sakip->tahun }}
                </div>
                <div class="w-full">
                    <span class="font-medium">Periode : </span>{{ $evaluasi_sakip->periode }}
                </div>
                <div class="w-full">
                    <span class="font-medium">Penanggung Jawab : </span>{{ $evaluasi_sakip->penanggung_jawab }}
                </div>
                <div class="w-full">
                    <span class="font-medium">PIC LKE : </span>{{ $evaluasi_sakip->pic_lke }}
                </div>
            </div>
            @if ($instansi->group == 'kl' && !empty($evaluasi_sakip->file_evaluasi))
                <div>
                    <a href="{{ asset('storage/akip/' . $evaluasi_sakip->file_evaluasi) }}" target="_blank"
                        class="button border items-center text-gray-700 flex"> <i data-feather="file" class="w-4 h-4 mr-2"></i>
                        Download File Surat Pengantar LHE</a>
                </div>
            @endif
        </div>
    </div>

    <hr class="my-5">

    <div class="intro-y box grid grid-cols-12 gap-5 p-5">
        <div class="intro-y col-span-12 {{ $instansi->group != 'kl' ? 'lg:col-span-7' : '' }}">
            <table class="table table-report table-report--bordered display datatable w-full table-fixed">
                <thead>
                    <tr>
                        <th class="border-b-2 p-5">Nilai Evaluasi</th>
                        <th class="border-b-2 p-5 w-24">Tahun lalu</th>
                        <th class="border-b-2 p-5 w-24">Tahun ini</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div class="font-medium">Nilai Komponen Perencanaan Kinerja</div>
                        </td>
                        <td>
                            {{ fnumber2($evaluasi_sakip->nilai_komponen_perencanaan_kinerja_tahun_lalu, 2) }}
                        </td>
                        <td>
                            {{ fnumber2($evaluasi_sakip->nilai_komponen_perencanaan_kinerja, 2) }}
                        </td>
                    </tr>
                    <tr>
                        <td class="text-justify">
                            <div class="font-medium">Catatan :</div>
                            <span class="text-gray-600">
                                {!! $evaluasi_sakip->catatan_komponen_perencanaan_kinerja !!}
                            </span>
                            <div class="font-medium pt-2">Rekomendasi :</div>
                            <span class="text-gray-600">
                                {!! $evaluasi_sakip->rekomendasi_komponen_perencanaan_kinerja !!}
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="border-t-1">
                            <div class="font-medium">Nilai Komponen Pengukuran Kinerja</div>
                        </td>
                        <td class="border-t-1">
                            {{ fnumber2($evaluasi_sakip->nilai_komponen_pengukuran_kinerja_tahun_lalu, 2) }}
                        </td>
                        <td class="border-t-1">
                            {{ fnumber2($evaluasi_sakip->nilai_komponen_pengukuran_kinerja, 2) }}
                        </td>
                    </tr>
                    <tr>
                        <td class="text-justify">
                            <div class="font-medium">Catatan :</div>
                            <span class="text-gray-600">
                                {!! $evaluasi_sakip->catatan_komponen_pengukuran_kinerja !!}
                            </span>
                            <div class="font-medium pt-2">Rekomendasi :</div>
                            <span class="text-gray-600">
                                {!! $evaluasi_sakip->rekomendasi_komponen_pengukuran_kinerja !!}
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="border-t-1">
                            <div class="font-medium">Nilai Komponen Pelaporan Kinerja</div>
                        </td>
                        <td class="border-t-1">
                            {{ fnumber2($evaluasi_sakip->nilai_komponen_pelaporan_kinerja_tahun_lalu, 2) }}
                        </td>
                        <td class="border-t-1">
                            {{ fnumber2($evaluasi_sakip->nilai_komponen_pelaporan_kinerja, 2) }}
                        </td>
                    </tr>
                    <tr>
                        <td class="text-justify">
                            <div class="font-medium">Catatan :</div>
                            <span class="text-gray-600">
                                {!! $evaluasi_sakip->catatan_komponen_pelaporan_kinerja !!}
                            </span>
                            <div class="font-medium pt-2">Rekomendasi :</div>
                            <span class="text-gray-600">
                                {!! $evaluasi_sakip->rekomendasi_komponen_pelaporan_kinerja !!}
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="border-t-1">
                            <div class="font-medium">Nilai Komponen Evaluasi Internal</div>
                        </td>
                        <td class="border-t-1">
                            {{ fnumber2($evaluasi_sakip->nilai_komponen_evaluasi_internal_tahun_lalu, 2) }}
                        </td>
                        <td class="border-t-1">
                            {{ fnumber2($evaluasi_sakip->nilai_komponen_evaluasi_internal, 2) }}
                        </td>
                    </tr>
                    <tr>
                        <td class="text-justify">
                            <div class="font-medium">Catatan :</div>
                            <span class="text-gray-600">
                                {!! $evaluasi_sakip->catatan_komponen_evaluasi_internal !!}
                            </span>
                            <div class="font-medium pt-2">Rekomendasi :</div>
                            <span class="text-gray-600">
                                {!! $evaluasi_sakip->rekomendasi_komponen_evaluasi_internal !!}
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="border-t-2">
                            <div class="font-medium">Nilai Total Evaluasi AKIP {{ $evaluasi_sakip->periode }}</div>
                        </td>
                        <td class="border-t-2">
                            {{ fnumber2($evaluasi_sakip->nilai_total_evaluasi_akip_tahun_lalu, 2) }}
                        </td>
                        <td class="border-t-2">
                            {{ fnumber2($evaluasi_sakip->nilai_total_evaluasi_akip, 2) }}
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        @if ($instansi->group != 'kl')
            <div class="intro-y col-span-12 lg:col-span-5 border-l-2 border-theme-2">
                <table class="table table-report table-report--bordered display datatable w-full table-fixed">
                    <thead>
                        <tr>
                            <th class="border-b-2 p-5">Hasil Capaian Indikator Makro</th>
                            <th class="border-b-2 p-5 w-28">Tahun lalu</th>
                            <th class="border-b-2 p-5 w-28">Tahun ini</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Angka Kemiskinan</td>
                            <td>{{ fnumber2($evaluasi_sakip->angka_kemiskinan_tahun_lalu, 2) }}</td>
                            <td>{{ fnumber2($evaluasi_sakip->angka_kemiskinan, 2) }}</td>
                        </tr>
                        <tr>
                            <td>Laju Pertumbuhan Ekonomi</td>
                            <td>{{ fnumber2($evaluasi_sakip->laju_pertumbuhan_ekonomi_tahun_lalu, 2) }}</td>
                            <td>{{ fnumber2($evaluasi_sakip->laju_pertumbuhan_ekonomi, 2) }}</td>
                        </tr>
                        <tr>
                            <td>Tingkat Pengangguran terbuka</td>
                            <td>{{ fnumber2($evaluasi_sakip->tingkat_pengangguran_terbuka_tahun_lalu, 2) }}</td>
                            <td>{{ fnumber2($evaluasi_sakip->tingkat_pengangguran_terbuka, 2) }}</td>
                        </tr>
                        <tr>
                            <td>Penurunan emisi GRK</td>
                            <td>{{ fnumber2($evaluasi_sakip->penurunan_emisi_grk_tahun_lalu, 2) }}</td>
                            <td>{{ fnumber2($evaluasi_sakip->penurunan_emisi_grk, 2) }}</td>
                        </tr>
                        <tr>
                            <td>Indeks Pembangunan Manusia</td>
                            <td>{{ fnumber2($evaluasi_sakip->indeks_pembangunan_manusia_tahun_lalu, 2) }}</td>
                            <td>{{ fnumber2($evaluasi_sakip->indeks_pembangunan_manusia, 2) }}</td>
                        </tr>
                        <tr>
                            <td>Indeks Gini Ratio</td>
                            <td>{{ fnumber2($evaluasi_sakip->indeks_gini_ratio_tahun_lalu, 2) }}</td>
                            <td>{{ fnumber2($evaluasi_sakip->indeks_gini_ratio, 2) }}</td>
                        </tr>
                        <tr>
                            <td>Pendapatan Perkapita</td>
                            <td>{{ fnumber2($evaluasi_sakip->pendapatan_perkapita_tahun_lalu, 2) }}</td>
                            <td>{{ fnumber2($evaluasi_sakip->pendapatan_perkapita, 2) }}</td>
                        </tr>
                    </tbody>
                </table>
                <hr class="my-5">
                @if (!empty($evaluasi_sakip->file_evaluasi))
                    <a href="{{ asset('storage/akip/' . $evaluasi_sakip->file_evaluasi) }}" target="_blank"
                        class="button border items-center text-gray-700 flex ml-3"> <i data-feather="file" class="w-4 h-4 mr-2"></i>
                        Download File Surat Pengantar LHE</a>
                @endif
            </div>
        @endif
    </div>
@endsection

@push('js')
    <script>
        $(document).ready(function () {
            feather.replace();
        });
    </script>
@endpush