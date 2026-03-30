@extends('layout.midone', ['akip' => true])
@section('title', 'Hasil Evaluasi SAKIP')

@section('content')
    <div class="intro-y flex items-center">
        <h2 class="text-lg mr-auto">
            Hasil Evaluasi SAKIP - <span class="font-medium">{!! $instansi->nama_instansi !!}</span>
        </h2>
        @if (auth()->user()->level == 'tpn' && hasAksesEvaluasiAkip())
            <a href="javascript:;" data-toggle="modal" data-target="#modal-form-evaluasi" class="button inline-block bg-theme-1 text-white" onclick="resetForm();">Tambah Penilaian</a>
        @endif
    </div>
    @include('common.status_midone')
    @if (count($evaluasi_sakip) == 0)
        <div class="intro-y box p-5 mt-5">
            <div class="text-center">
                @if (auth()->user()->level == 'tpn')
                    <p class="text-gray-600">Belum ada penilaian SAKIP untuk instansi ini.</p>
                    <p class="text-gray-600">Silakan tambahkan penilaian SAKIP terlebih dahulu.</p>
                @else
                    <p class="text-gray-600">Belum ada penilaian SAKIP.</p>
                @endif
            </div>
        </div>
    @else
        @foreach ($evaluasi_sakip as $evaluasi)
            {{-- Card Penilaian Provinsi --}}
            <div class="intro-y box mt-5">
                <div class="flex items-center p-5 border-b border-gray-200">
                    <h2 class="font-medium text-base mr-auto">
                        Hasil sementara evaluasi SAKIP {!! $evaluasi->instansi->nama_instansi !!}
                    </h2>
                    @if (auth()->user()->level == 'tpn')
                        <button type="button" class="button button--sm block bg-theme-6 text-white mr-3" onclick="hapusEvaluasi('{{ $evaluasi->id }}');">Hapus Hasil Evaluasi</button>
                        <button type="button" class="button button--sm block bg-theme-12 text-white" onclick="editEvaluasi('{{ $evaluasi->id }}');">Edit Penilaian</button>
                    @endif
                </div>
                @if ($instansi->group == 'kl')
                    <div class="intro-y p-5 flex items-center justify-between flex-col sm:flex-row">
                        <div>
                        @else
                            <div class="intro-y p-5">
                @endif
                <div class="w-full">
                    <span class="font-medium">Tahun : </span>{{ $evaluasi->tahun }}
                </div>
                <div class="w-full">
                    <span class="font-medium">Periode : </span>{{ $evaluasi->periode }}
                </div>
                <div class="w-full">
                    <span class="font-medium">Penanggung Jawab : </span>{{ $evaluasi->penanggung_jawab }}
                </div>
                <div class="w-full">
                    <span class="font-medium">PIC LKE : </span>{{ $evaluasi->pic_lke }}
                </div>
                @if (auth()->user()->level == 'tpn')
                    <div class="w-full">
                        <span class="font-medium">Link LKE : </span><a href="{{ $evaluasi->link_lke }}" target="_blank" class="text-blue-500">{{ $evaluasi->link_lke }}</a>
                    </div>
                @endif
                @if ($instansi->group == 'kl')
            </div>
            @if (!empty($evaluasi->file_evaluasi))
                <a href="{{ asset('storage/akip/' . $evaluasi->file_evaluasi) }}" target="_blank" class="button border items-center text-gray-700 flex"> <i data-feather="file" class="w-4 h-4 mr-2"></i>
                    Download File Surat Pengantar LHE</a>
            @endif
        @endif
        </div>
        <hr>
        <div class="intro-y grid grid-cols-12 gap-5 p-5">
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
                                {{ fnumber2($evaluasi->nilai_komponen_perencanaan_kinerja_tahun_lalu, 2) }}
                            </td>
                            <td>
                                {{ fnumber2($evaluasi->nilai_komponen_perencanaan_kinerja, 2) }}
                            </td>
                        </tr>
                        <tr>
                            <td class="text-justify">
                                <div class="font-medium">Catatan :</div>
                                <span class="text-gray-600">
                                    {!! $evaluasi->catatan_komponen_perencanaan_kinerja !!}
                                </span>
                                <div class="font-medium pt-2">Rekomendasi :</div>
                                <span class="text-gray-600">
                                    {!! $evaluasi->rekomendasi_komponen_perencanaan_kinerja !!}
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td class="border-t-1">
                                <div class="font-medium">Nilai Komponen Pengukuran Kinerja</div>
                            </td>
                            <td class="border-t-1">
                                {{ fnumber2($evaluasi->nilai_komponen_pengukuran_kinerja_tahun_lalu, 2) }}
                            </td>
                            <td class="border-t-1">
                                {{ fnumber2($evaluasi->nilai_komponen_pengukuran_kinerja, 2) }}
                            </td>
                        </tr>
                        <tr>
                            <td class="text-justify">
                                <div class="font-medium">Catatan :</div>
                                <span class="text-gray-600">
                                    {!! $evaluasi->catatan_komponen_pengukuran_kinerja !!}
                                </span>
                                <div class="font-medium pt-2">Rekomendasi :</div>
                                <span class="text-gray-600">
                                    {!! $evaluasi->rekomendasi_komponen_pengukuran_kinerja !!}
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td class="border-t-1">
                                <div class="font-medium">Nilai Komponen Pelaporan Kinerja</div>
                            </td>
                            <td class="border-t-1">
                                {{ fnumber2($evaluasi->nilai_komponen_pelaporan_kinerja_tahun_lalu, 2) }}
                            </td>
                            <td class="border-t-1">
                                {{ fnumber2($evaluasi->nilai_komponen_pelaporan_kinerja, 2) }}
                            </td>
                        </tr>
                        <tr>
                            <td class="text-justify">
                                <div class="font-medium">Catatan :</div>
                                <span class="text-gray-600">
                                    {!! $evaluasi->catatan_komponen_pelaporan_kinerja !!}
                                </span>
                                <div class="font-medium pt-2">Rekomendasi :</div>
                                <span class="text-gray-600">
                                    {!! $evaluasi->rekomendasi_komponen_pelaporan_kinerja !!}
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td class="border-t-1">
                                <div class="font-medium">Nilai Komponen Evaluasi Internal</div>
                            </td>
                            <td class="border-t-1">
                                {{ fnumber2($evaluasi->nilai_komponen_evaluasi_internal_tahun_lalu, 2) }}
                            </td>
                            <td class="border-t-1">
                                {{ fnumber2($evaluasi->nilai_komponen_evaluasi_internal, 2) }}
                            </td>
                        </tr>
                        <tr>
                            <td class="text-justify">
                                <div class="font-medium">Catatan :</div>
                                <span class="text-gray-600">
                                    {!! $evaluasi->catatan_komponen_evaluasi_internal !!}
                                </span>
                                <div class="font-medium pt-2">Rekomendasi :</div>
                                <span class="text-gray-600">
                                    {!! $evaluasi->rekomendasi_komponen_evaluasi_internal !!}
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td class="border-t-2">
                                <div class="font-medium">Nilai Total Evaluasi AKIP TW 2</div>
                            </td>
                            <td class="border-t-2">
                                {{ fnumber2($evaluasi->nilai_total_evaluasi_akip_tahun_lalu, 2) }}
                            </td>
                            <td class="border-t-2">
                                {{ fnumber2($evaluasi->nilai_total_evaluasi_akip, 2) }}
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
                                <td>{{ fnumber2($evaluasi->angka_kemiskinan_tahun_lalu, 2) }}</td>
                                <td>{{ fnumber2($evaluasi->angka_kemiskinan, 2) }}</td>
                            </tr>
                            <tr>
                                <td>Laju Pertumbuhan Ekonomi</td>
                                <td>{{ fnumber2($evaluasi->laju_pertumbuhan_ekonomi_tahun_lalu, 2) }}</td>
                                <td>{{ fnumber2($evaluasi->laju_pertumbuhan_ekonomi, 2) }}</td>
                            </tr>
                            <tr>
                                <td>Tingkat Pengangguran terbuka</td>
                                <td>{{ fnumber2($evaluasi->tingkat_pengangguran_terbuka_tahun_lalu, 2) }}</td>
                                <td>{{ fnumber2($evaluasi->tingkat_pengangguran_terbuka, 2) }}</td>
                            </tr>
                            <tr>
                                <td>Penurunan emisi GRK</td>
                                <td>{{ fnumber2($evaluasi->penurunan_emisi_grk_tahun_lalu, 2) }}</td>
                                <td>{{ fnumber2($evaluasi->penurunan_emisi_grk, 2) }}</td>
                            </tr>
                            <tr>
                                <td>Indeks Pembangunan Manusia</td>
                                <td>{{ fnumber2($evaluasi->indeks_pembangunan_manusia_tahun_lalu, 2) }}</td>
                                <td>{{ fnumber2($evaluasi->indeks_pembangunan_manusia, 2) }}</td>
                            </tr>
                            <tr>
                                <td>Indeks Gini Ratio</td>
                                <td>{{ fnumber2($evaluasi->indeks_gini_ratio_tahun_lalu, 2) }}</td>
                                <td>{{ fnumber2($evaluasi->indeks_gini_ratio, 2) }}</td>
                            </tr>
                            <tr>
                                <td>Pendapatan Perkapita</td>
                                <td>{{ fnumber2($evaluasi->pendapatan_perkapita_tahun_lalu, 2) }}</td>
                                <td>{{ fnumber2($evaluasi->pendapatan_perkapita, 2) }}</td>
                            </tr>
                        </tbody>
                    </table>
                    <hr class="my-5">
                    {{-- @if (!empty($evaluasi->file_evaluasi))
                        <a href="{{ asset('storage/akip/' . $evaluasi->file_evaluasi) }}" target="_blank" class="button border items-center text-gray-700 hidden sm:flex ml-3"> <i data-feather="file" class="w-4 h-4 mr-2"></i>
                            {{ $evaluasi->periode != 'Final' ? 'Download File Catatan Evaluasi' : 'Download File Surat Pengantar LHE' }}</a>
                    @endif --}}
                    @if (!empty($evaluasi->file_evaluasi))
                        <a href="{{ asset('storage/akip/' . $evaluasi->file_evaluasi) }}" target="_blank" class="button border items-center text-gray-700 flex ml-3"> <i data-feather="file" class="w-4 h-4 mr-2"></i>
                            {{ $evaluasi->periode != 'Final' ? 'Download File Catatan Evaluasi' : 'Download File Surat Pengantar LHE' }}</a>
                    @endif
                </div>
            @endif
        </div>
        </div>
        {{-- End Card Penilaian Provinsi --}}
    @endforeach
    @endif

    @if (auth()->user()->level == 'tpn' && hasAksesEvaluasiAkip())
        {{-- Modal Tambah --}}
        <div class="modal" id="modal-form-evaluasi">
            <div class="modal__content modal__content--xl">
                <div class="flex items-center px-5 py-5 sm:py-3 border-b border-gray-200">
                    <h2 class="font-medium text-base mr-auto" id="modal-title-evaluasi">
                        Tambah Penilaian
                    </h2>
                </div>
                {{ html()->form('POST', route('akip.evaluasi.store', $instansi->id))->id('form-sakip')->class('validate-form')->acceptsFiles()->open() }}
                {{ html()->hidden('id_evaluasi')->id('id_evaluasi') }}
                <div class="p-5 grid grid-cols-12 gap-4 row-gap-3">
                    <div class="col-span-12 lg:col-span-6">
                        <div class="input-group">
                            {{ html()->label('Tahun')->for('tahun') }} <span class="text-theme-6">*</span>
                            <div class="mt-2">
                                {{ html()->select('tahun', ['2025' => '2025'], 2025)->id('tahun')->class('select2 w-full hide-search')->placeholder('Pilih Tahun')->attributes(['onchange' => 'cekPeriode();'])->required() }}
                            </div>
                        </div>
                    </div>
                    @if ($instansi->group != 'kl')
                        <div class="col-span-12 lg:col-span-6">
                            <div class="input-group">
                                {{ html()->label('Periode')->for('periode') }} <span class="text-theme-6">*</span>
                                <div class="mt-2">
                                    {{ html()->select('periode', ['TW 1' => 'TW 1', 'TW 2' => 'TW 2', 'TW 3' => 'TW 3', 'Final' => 'Final'], null)->id('periode')->class('select2 w-full no-search')->placeholder('Pilih Periode')->required()->attributes(['onchange' => 'cekPeriode();']) }}
                                </div>
                            </div>
                        </div>
                    @endif
                    <div class="col-span-12 lg:col-span-6">
                        <div class="input-group">
                            {{ html()->label('Penanggung Jawab')->for('penanggung_jawab') }} <span class="text-theme-6">*</span>
                            <input type="text" name="penanggung_jawab" id="penanggung_jawab" class="input w-full border mt-2 flex-1" placeholder="Nama Penanggung Jawab" required>
                        </div>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="input-group">
                            {{ html()->label('PIC LKE')->for('pic_lke') }} <span class="text-theme-6">*</span>
                            <input type="text" name="pic_lke" id="pic_lke" class="input w-full border mt-2 flex-1" placeholder="Nama PIC LKE" required>
                        </div>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="input-group">
                            {{ html()->label('Link LKE')->for('link_lke') }} <span class="text-theme-6">*</span>
                            <input type="url" name="link_lke" id="link_lke" class="input w-full border mt-2 flex-1" placeholder="Link LKE" required>
                        </div>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="input-group">
                            {{ html()->label('File Surat Pengantar LHE')->for('file_evaluasi')->id('label_file_evaluasi') }}
                            <span class="text-theme-6">*</span>
                            <input type="file" name="file_evaluasi" id="file_evaluasi" class="input w-full border mt-2 flex-1" placeholder="Link LKE" accept="application/pdf" required>
                        </div>
                        <span class="italic text-sm" id="note_file_evaluasi">Pilih file jika ingin mengganti file
                            tahun_lalu.</span>
                    </div>
                    <div class="col-span-12">
                        <hr>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="font-medium">Nilai Komponen Perencanaan Kinerja</div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun Lalu <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_perencanaan_kinerja_tahun_lalu" id="nilai_komponen_perencanaan_kinerja_tahun_lalu" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun Ini <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_perencanaan_kinerja" id="nilai_komponen_perencanaan_kinerja" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label>Catatan : </label> <span class="text-theme-6">*</span>
                            <textarea name="catatan_komponen_perencanaan_kinerja" id="catatan_komponen_perencanaan_kinerja" class="input editor w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Catatan Nilai Komponen Perencanaan Kinerja" required></textarea>
                        </div>
                        <div class="input-group mt-2">
                            <label>Rekomendasi : </label> <span class="text-theme-6">*</span>
                            <textarea name="rekomendasi_komponen_perencanaan_kinerja" id="rekomendasi_komponen_perencanaan_kinerja" class="input editor w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Rekomendasi Nilai Komponen Perencanaan Kinerja" required></textarea>
                        </div>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="font-medium">Nilai Komponen Pengukuran Kinerja</div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun lalu <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_pengukuran_kinerja_tahun_lalu" id="nilai_komponen_pengukuran_kinerja_tahun_lalu" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun ini <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_pengukuran_kinerja" id="nilai_komponen_pengukuran_kinerja" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label>Catatan : </label> <span class="text-theme-6">*</span>
                            <textarea name="catatan_komponen_pengukuran_kinerja" id="catatan_komponen_pengukuran_kinerja" class="input editor w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Catatan Nilai Komponen Pengukuran Kinerja" required></textarea>
                        </div>
                        <div class="input-group mt-2">
                            <label>Rekomendasi : </label> <span class="text-theme-6">*</span>
                            <textarea name="rekomendasi_komponen_pengukuran_kinerja" id="rekomendasi_komponen_pengukuran_kinerja" class="input editor w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Rekomendasi Nilai Komponen Pengukuran Kinerja" required></textarea>
                        </div>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="font-medium">Nilai Komponen Pelaporan Kinerja</div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun lalu <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_pelaporan_kinerja_tahun_lalu" id="nilai_komponen_pelaporan_kinerja_tahun_lalu" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun ini <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_pelaporan_kinerja" id="nilai_komponen_pelaporan_kinerja" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label>Catatan : </label> <span class="text-theme-6">*</span>
                            <textarea name="catatan_komponen_pelaporan_kinerja" id="catatan_komponen_pelaporan_kinerja" class="input editor w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Catatan Nilai Komponen Pelaporan Kinerja" required></textarea>
                        </div>
                        <div class="input-group mt-2">
                            <label>Rekomendasi : </label> <span class="text-theme-6">*</span>
                            <textarea name="rekomendasi_komponen_pelaporan_kinerja" id="rekomendasi_komponen_pelaporan_kinerja" class="input editor w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Rekomendasi Nilai Komponen Pelaporan Kinerja" required></textarea>
                        </div>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="font-medium">Nilai Komponen Evaluasi Internal</div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun lalu <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_evaluasi_internal_tahun_lalu" id="nilai_komponen_evaluasi_internal_tahun_lalu" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun ini <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_evaluasi_internal" id="nilai_komponen_evaluasi_internal" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label>Catatan : </label> <span class="text-theme-6">*</span>
                            <textarea name="catatan_komponen_evaluasi_internal" id="catatan_komponen_evaluasi_internal" class="input editor w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Catatan Nilai Komponen Evaluasi Internal" required></textarea>
                        </div>
                        <div class="input-group mt-2">
                            <label>Rekomendasi : </label> <span class="text-theme-6">*</span>
                            <textarea name="rekomendasi_komponen_evaluasi_internal" id="rekomendasi_komponen_evaluasi_internal" class="input editor w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Rekomendasi Nilai Komponen Evaluasi Internal" required></textarea>
                        </div>
                    </div>
                    <div class="col-span-12">
                        <div class="font-medium">Nilai Total Evaluasi AKIP <span class="text-theme-6">*</span>
                        </div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun lalu <span class="text-theme-6">*</span>
                                </div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_total_evaluasi_akip_tahun_lalu" id="nilai_total_evaluasi_akip_tahun_lalu" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun ini <span class="text-theme-6">*</span>
                                </div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_total_evaluasi_akip" id="nilai_total_evaluasi_akip" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                    </div>
                    @if ($instansi->group != 'kl')
                        <div class="col-span-12">
                            <hr>
                        </div>
                        <div class="col-span-12">
                            <table class="table table-report table-report--bordered display datatable w-full table-fixed table-p-0">
                                <thead>
                                    <tr>
                                        <th class="border-b-2 p-5">Input Hasil Capaian Indikator Makro</th>
                                        <th class="border-b-2 p-5 w-32">Tahun lalu</th>
                                        <th class="border-b-2 p-5 w-32">Tahun ini</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Angka Kemiskinan <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="angka_kemiskinan_tahun_lalu" id="angka_kemiskinan_tahun_lalu" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="angka_kemiskinan" id="angka_kemiskinan" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Laju Pertumbuhan Ekonomi <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="laju_pertumbuhan_ekonomi_tahun_lalu" id="laju_pertumbuhan_ekonomi_tahun_lalu" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="laju_pertumbuhan_ekonomi" id="laju_pertumbuhan_ekonomi" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Tingkat Pengangguran terbuka <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="tingkat_pengangguran_terbuka_tahun_lalu" id="tingkat_pengangguran_terbuka_tahun_lalu" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="tingkat_pengangguran_terbuka" id="tingkat_pengangguran_terbuka" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Penurunan emisi GRK <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="penurunan_emisi_grk_tahun_lalu" id="penurunan_emisi_grk_tahun_lalu" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="penurunan_emisi_grk" id="penurunan_emisi_grk" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Indeks Pembangunan Manusia <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="indeks_pembangunan_manusia_tahun_lalu" id="indeks_pembangunan_manusia_tahun_lalu" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="indeks_pembangunan_manusia" id="indeks_pembangunan_manusia" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Indeks Gini Ratio <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="indeks_gini_ratio_tahun_lalu" id="indeks_gini_ratio_tahun_lalu" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="indeks_gini_ratio" id="indeks_gini_ratio" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Pendapatan Perkapita <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="pendapatan_perkapita_tahun_lalu" id="pendapatan_perkapita_tahun_lalu" class="input w-28 currency border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="pendapatan_perkapita" id="pendapatan_perkapita" class="input w-28 currency border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    @endif
                </div>
                <div class="px-5 py-3 text-right border-t border-gray-200">
                    <button type="button" data-dismiss="modal" class="button w-20 border text-gray-700 mr-1">Cancel</button>
                    <button type="submit" class="button w-20 bg-theme-1 text-white saveButton">
                        <span class="button-text">Simpan</span>
                        <span class="button-spinner" style="display: none;">
                            <svg class="animate-spin h-4 w-4 inline-block" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                                <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                            </svg>
                        </span>
                    </button>
                </div>
                {{ html()->form()->close() }}
            </div>
        </div>
        {{-- End Modal Tambah --}}
    @endif
@endsection

@push('css')
    <style>
        .table-p-0 td {
            padding: 0px !important;
        }

        .table-p-0 th {
            padding: 10px 0px !important;
        }
    </style>
    <link rel="stylesheet" href="{{ asset('ext') }}/summernote/summernote-lite.min.css" />
@endpush

@push('js_file')
    @if (auth()->user()->level == 'tpn' && hasAksesEvaluasiAkip())
        <script src="{{ asset('ext/jquery-validation/jquery.validate.min.js') }}"></script>
        <script src="{{ asset('ext/jquery-validation/localization/messages_id.min.js') }}"></script>
        <script src="{{ asset('ext') }}/jquery-inputmask/jquery.inputmask.bundle.js"></script>
        <script src="{{ asset('ext') }}/summernote/summernote-lite.min.js"></script>
        <script>
            $(document).ready(function() {
                $('.editor').each(function() {
                    var $this = $(this);
                    $this.summernote({
                        placeholder: $this.attr('placeholder'),
                        toolbar: [
                            ['style', ['bold', 'italic', 'underline', 'clear']],
                            ['font', ['strikethrough', 'superscript', 'subscript']]
                        ],
                        height: 100,
                        callbacks: {
                            onPaste: function(e) {
                                e.preventDefault();

                                const clipboardData = (e.originalEvent || e).clipboardData;
                                const text = clipboardData.getData('text/plain');

                                // Sisipkan sebagai teks biasa
                                document.execCommand('insertText', false, text);
                            }
                        }
                    });
                });
            });

            $(".digit").inputmask("decimal", {
                radixPoint: ",", // koma sebagai pemisah desimal
                groupSeparator: ".", // titik sebagai pemisah ribuan
                digits: 2, // maksimal 2 digit di belakang koma
                autoGroup: false, // otomatis group (misal ribuan)
                rightAlign: false,
                min: 0, // minimal 0
                max: 100, // maksimal 100
                allowMinus: false, // tidak boleh angka negatif
                allowPlus: false, // tidak boleh tanda plus
                placeholder: '0', // placeholder angka nol
                showMaskOnHover: false, // tidak tampil mask saat hover
                showMaskOnFocus: false, // tidak tampil mask saat focus
                inputmode: "numeric", // membantu di mobile (keyboard angka)
                onBeforePaste: function(pastedValue) {
                    // Cegah paste selain angka dan titik
                    this.value = this.value.replace(/[^0-9.,]/g, '');
                }
            });

            $(".currency").inputmask("decimal", {
                radixPoint: ",", // koma sebagai pemisah desimal
                groupSeparator: ".", // titik sebagai pemisah ribuan
                digits: 2, // tidak ada angka di belakang koma
                autoGroup: true, // aktifkan grup ribuan
                rightAlign: false,
                min: 0, // minimal nilai 0
                allowMinus: false, // tidak boleh nilai negatif
                allowPlus: false, // tidak boleh tanda plus
                inputmode: "numeric", // memunculkan keypad angka di mobile
                showMaskOnHover: false,
                showMaskOnFocus: false,
                placeholder: '0',
                onBeforePaste: function(pastedValue) {
                    // Hapus semua karakter selain angka
                    return pastedValue.replace(/[^\d]/g, '');
                }
            });

            resetForm = function() {
                $('#form-sakip').trigger('reset');
                $('#form-sakip').find('.select2').val(2025).trigger('change');
                $('#id_evaluasi').val('');
                $('#file_evaluasi').prop('required', true);
                $('#note_file_evaluasi').hide();
                $('#tahun').prop('disabled', false);
                $('#periode').prop('disabled', false);
                
                // Reset button state
                var $saveButton = $('.saveButton');
                $saveButton.prop('disabled', false);
                $saveButton.find('.button-text').text('Simpan');
                $saveButton.find('.button-spinner').hide();
                
                $('.editor').each(function() {
                    $(this).summernote('code', '');
                });
                validator.resetForm();
                // Set form to create mode
                $('#form-sakip').attr('action', '{{ route("akip.evaluasi.store", $instansi->id) }}');
                $('#form-sakip').attr('method', 'POST');
                // Remove _method field if exists
                $('#form-sakip').find('input[name="_method"]').remove();
            }

            cekPeriode = function() {
                var tahun = $('#tahun').val();
                var periode = $('#periode').val();
                var id_evaluasi = $('#id_evaluasi').val();
                if (periode && periode != "Final") {
                    $("#label_file_evaluasi").text("File Catatan Evaluasi");
                } else {
                    $("#label_file_evaluasi").text("File Surat Pengantar LHE");
                }
                if (tahun && periode && !id_evaluasi) {
                    $.ajax({
                        url: "{{ url('akip/evaluasi/sakip/' . $instansi->id . '/cekPeriode') }}",
                        type: 'POST',
                        data: {
                            tahun: tahun,
                            periode: periode,
                            _token: '{{ csrf_token() }}'
                        },
                        success: function(response) {
                            if (response.exists) {
                                Swal.fire('Error!', 'Penilaian untuk tahun ' + tahun + ' dan periode ' +
                                    periode +
                                    ' sudah ada.', 'error');
                                $('.saveButton').prop('disabled', true);
                            } else {
                                $('.saveButton').prop('disabled', false);
                                if (response.evaluasi_sakip) {
                                    $('#penanggung_jawab').val(response.evaluasi_sakip.penanggung_jawab);
                                    $('#pic_lke').val(response.evaluasi_sakip.pic_lke);
                                    $('#link_lke').val(response.evaluasi_sakip.link_lke);
                                    $('#catatan_komponen_perencanaan_kinerja').summernote('code', response.evaluasi_sakip.catatan_komponen_perencanaan_kinerja);
                                    $('#catatan_komponen_pengukuran_kinerja').summernote('code', response.evaluasi_sakip.catatan_komponen_pengukuran_kinerja);
                                    $('#catatan_komponen_pelaporan_kinerja').summernote('code', response.evaluasi_sakip.catatan_komponen_pelaporan_kinerja);
                                    $('#catatan_komponen_evaluasi_internal').summernote('code', response.evaluasi_sakip.catatan_komponen_evaluasi_internal);
                                    $('#rekomendasi_komponen_perencanaan_kinerja').sumernote('code', response.evaluasi_sakip.rekomendasi_komponen_perencanaan_kinerja);
                                    $('#rekomendasi_komponen_pengukuran_kinerja').sumernote('code', response.evaluasi_sakip.rekomendasi_komponen_pengukuran_kinerja);
                                    $('#rekomendasi_komponen_pelaporan_kinerja').sumernote('code', response.evaluasi_sakip.rekomendasi_komponen_pelaporan_kinerja);
                                    $('#rekomendasi_komponen_evaluasi_internal').sumernote('code', response.evaluasi_sakip.rekomendasi_komponen_evaluasi_internal);
                                    $('#nilai_komponen_perencanaan_kinerja_tahun_lalu').val(response.evaluasi_sakip.nilai_komponen_perencanaan_kinerja_tahun_lalu);
                                    $('#nilai_komponen_pengukuran_kinerja_tahun_lalu').val(response.evaluasi_sakip.nilai_komponen_pengukuran_kinerja_tahun_lalu);
                                    $('#nilai_komponen_pelaporan_kinerja_tahun_lalu').val(response.evaluasi_sakip.nilai_komponen_pelaporan_kinerja_tahun_lalu);
                                    $('#nilai_komponen_evaluasi_internal_tahun_lalu').val(response.evaluasi_sakip.nilai_komponen_evaluasi_internal_tahun_lalu);
                                    $('#nilai_total_evaluasi_akip_tahun_lalu').val(response.evaluasi_sakip.nilai_total_evaluasi_akip_tahun_lalu);
                                    $('#angka_kemiskinan').val(response.evaluasi_sakip.angka_kemiskinan);
                                    $('#laju_pertumbuhan_ekonomi').val(response.evaluasi_sakip.laju_pertumbuhan_ekonomi);
                                    $('#tingkat_pengangguran_terbuka').val(response.evaluasi_sakip.tingkat_pengangguran_terbuka);
                                    $('#penurunan_emisi_grk').val(response.evaluasi_sakip.penurunan_emisi_grk);
                                    $('#indeks_pembangunan_manusia').val(response.evaluasi_sakip.indeks_pembangunan_manusia);
                                    $('#indeks_gini_ratio').val(response.evaluasi_sakip.indeks_gini_ratio);
                                    $('#pendapatan_perkapita').val(response.evaluasi_sakip.pendapatan_perkapita);
                                    $('#angka_kemiskinan_tahun_lalu').val(response.evaluasi_sakip.angka_kemiskinan_tahun_lalu);
                                    $('#laju_pertumbuhan_ekonomi_tahun_lalu').val(response.evaluasi_sakip.laju_pertumbuhan_ekonomi_tahun_lalu);
                                    $('#tingkat_pengangguran_terbuka_tahun_lalu').val(response.evaluasi_sakip.tingkat_pengangguran_terbuka_tahun_lalu);
                                    $('#penurunan_emisi_grk_tahun_lalu').val(response.evaluasi_sakip.penurunan_emisi_grk_tahun_lalu);
                                    $('#indeks_pembangunan_manusia_tahun_lalu').val(response.evaluasi_sakip.indeks_pembangunan_manusia_tahun_lalu);
                                    $('#indeks_gini_ratio_tahun_lalu').val(response.evaluasi_sakip.indeks_gini_ratio_tahun_lalu);
                                    $('#pendapatan_perkapita_tahun_lalu').val(response.evaluasi_sakip.pendapatan_perkapita_tahun_lalu);
                                }
                            }
                        }
                    });
                }
            }

            var validator = $('#form-sakip').validate({
                ignore: [],
                errorPlacement: function(error, element) {
                    if (element.hasClass('select2-hidden-accessible')) {
                        error.insertAfter(element.next('.select2-container'));
                    } else {
                        error.insertAfter(element.closest('.input-group'));
                    }
                },
                highlight: function(element) {
                    if ($(element).hasClass('select2-hidden-accessible')) {
                        $(element).next('.select2-container')
                            .find('.select2-selection')
                            .addClass('border border-red-500');
                    } else {
                        $(element).addClass('border-red-500');
                    }
                },
                unhighlight: function(element) {
                    if ($(element).hasClass('select2-hidden-accessible')) {
                        $(element).next('.select2-container')
                            .find('.select2-selection')
                            .removeClass('border border-red-500');
                    } else {
                        $(element).removeClass('border-red-500');
                    }
                },
                submitHandler: function(form) {
                    var $saveButton = $('.saveButton');
                    var $buttonText = $saveButton.find('.button-text');
                    var $buttonSpinner = $saveButton.find('.button-spinner');
                    var id_evaluasi = $('#id_evaluasi').val();
                    
                    // Show loading state
                    $saveButton.prop('disabled', true);
                    $buttonText.text(id_evaluasi && id_evaluasi !== '' ? 'Mengupdate...' : 'Menyimpan...');
                    $buttonSpinner.show();
                    
                    // Determine if create or edit mode
                    if (id_evaluasi && id_evaluasi !== '') {
                        // Edit mode - use PUT method
                        var updateUrl = '{{ route("akip.evaluasi.update", [$instansi->id, ":id"]) }}'.replace(':id', id_evaluasi);
                        $('#form-sakip').attr('action', updateUrl);
                        $('#form-sakip').attr('method', 'POST');
                        // Add _method field for PUT request
                        if ($('#form-sakip').find('input[name="_method"]').length === 0) {
                            $('#form-sakip').append('<input type="hidden" name="_method" value="PUT">');
                        }
                    } else {
                        // Create mode - use POST method
                        $('#form-sakip').attr('action', '{{ route("akip.evaluasi.store", $instansi->id) }}');
                        $('#form-sakip').attr('method', 'POST');
                        // Remove _method field if exists
                        $('#form-sakip').find('input[name="_method"]').remove();
                    }
                    
                    form.submit();
                }
            });

            editEvaluasi = function(id) {
                resetForm();
                $('#modal-title-evaluasi').text('Edit Penilaian');
                $('#id_evaluasi').val(id);
                $('#note_file_evaluasi').show();
                $('#file_evaluasi').prop('required', false);
                // Set form to edit mode
                var updateUrl = '{{ route("akip.evaluasi.update", [$instansi->id, ":id"]) }}'.replace(':id', id);
                $('#form-sakip').attr('action', updateUrl);
                $('#form-sakip').attr('method', 'POST');
                // Add _method field for PUT request
                if ($('#form-sakip').find('input[name="_method"]').length === 0) {
                    $('#form-sakip').append('<input type="hidden" name="_method" value="PUT">');
                }
                $.ajax({
                    url: "{{ url('akip/evaluasi/sakip/' . $instansi->id . '/getData') }}/" + id,
                    type: 'GET',
                    success: function(response) {
                        $('#form-sakip').trigger('reset');
                        $('#form-sakip').find('.select2').val(null).trigger('change');
                        $('#tahun').val(response.evaluasi_sakip.tahun).trigger('change');
                        $('#tahun').prop('disabled', true);
                        $('#periode').val(response.evaluasi_sakip.periode).trigger('change');
                        $('#periode').prop('disabled', true);
                        $('#penanggung_jawab').val(response.evaluasi_sakip.penanggung_jawab);
                        $('#pic_lke').val(response.evaluasi_sakip.pic_lke);
                        $('#link_lke').val(response.evaluasi_sakip.link_lke);
                        $('#nilai_komponen_perencanaan_kinerja').val(response.evaluasi_sakip.nilai_komponen_perencanaan_kinerja);
                        $('#nilai_komponen_perencanaan_kinerja_tahun_lalu').val(response.evaluasi_sakip.nilai_komponen_perencanaan_kinerja_tahun_lalu);
                        $('#catatan_komponen_perencanaan_kinerja').summernote('code', response.evaluasi_sakip.catatan_komponen_perencanaan_kinerja);
                        $('#rekomendasi_komponen_perencanaan_kinerja').summernote('code', response.evaluasi_sakip.rekomendasi_komponen_perencanaan_kinerja);
                        $('#nilai_komponen_pengukuran_kinerja').val(response.evaluasi_sakip.nilai_komponen_pengukuran_kinerja);
                        $('#nilai_komponen_pengukuran_kinerja_tahun_lalu').val(response.evaluasi_sakip.nilai_komponen_pengukuran_kinerja_tahun_lalu);
                        $('#catatan_komponen_pengukuran_kinerja').summernote('code', response.evaluasi_sakip.catatan_komponen_pengukuran_kinerja);
                        $('#rekomendasi_komponen_pengukuran_kinerja').summernote('code', response.evaluasi_sakip.rekomendasi_komponen_pengukuran_kinerja);
                        $('#nilai_komponen_pelaporan_kinerja').val(response.evaluasi_sakip.nilai_komponen_pelaporan_kinerja);
                        $('#nilai_komponen_pelaporan_kinerja_tahun_lalu').val(response.evaluasi_sakip.nilai_komponen_pelaporan_kinerja_tahun_lalu);
                        $('#catatan_komponen_pelaporan_kinerja').summernote('code', response.evaluasi_sakip.catatan_komponen_pelaporan_kinerja);
                        $('#rekomendasi_komponen_pelaporan_kinerja').summernote('code', response.evaluasi_sakip.rekomendasi_komponen_pelaporan_kinerja);
                        $('#nilai_komponen_evaluasi_internal').val(response.evaluasi_sakip.nilai_komponen_evaluasi_internal);
                        $('#nilai_komponen_evaluasi_internal_tahun_lalu').val(response.evaluasi_sakip.nilai_komponen_evaluasi_internal_tahun_lalu);
                        $('#catatan_komponen_evaluasi_internal').summernote('code', response.evaluasi_sakip.catatan_komponen_evaluasi_internal);
                        $('#rekomendasi_komponen_evaluasi_internal').summernote('code', response.evaluasi_sakip.rekomendasi_komponen_evaluasi_internal);
                        $('#nilai_total_evaluasi_akip').val(response.evaluasi_sakip.nilai_total_evaluasi_akip);
                        $('#nilai_total_evaluasi_akip_tahun_lalu').val(response.evaluasi_sakip.nilai_total_evaluasi_akip_tahun_lalu);
                        $('#angka_kemiskinan_tahun_lalu').val(response.evaluasi_sakip.angka_kemiskinan_tahun_lalu);
                        $('#laju_pertumbuhan_ekonomi_tahun_lalu').val(response.evaluasi_sakip.laju_pertumbuhan_ekonomi_tahun_lalu);
                        $('#tingkat_pengangguran_terbuka_tahun_lalu').val(response.evaluasi_sakip.tingkat_pengangguran_terbuka_tahun_lalu);
                        $('#penurunan_emisi_grk_tahun_lalu').val(response.evaluasi_sakip.penurunan_emisi_grk_tahun_lalu);
                        $('#indeks_pembangunan_manusia_tahun_lalu').val(response.evaluasi_sakip.indeks_pembangunan_manusia_tahun_lalu);
                        $('#indeks_gini_ratio_tahun_lalu').val(response.evaluasi_sakip.indeks_gini_ratio_tahun_lalu);
                        $('#pendapatan_perkapita_tahun_lalu').val(response.evaluasi_sakip.pendapatan_perkapita_tahun_lalu);
                        $('#angka_kemiskinan').val(response.evaluasi_sakip.angka_kemiskinan);
                        $('#laju_pertumbuhan_ekonomi').val(response.evaluasi_sakip.laju_pertumbuhan_ekonomi);
                        $('#tingkat_pengangguran_terbuka').val(response.evaluasi_sakip.tingkat_pengangguran_terbuka);
                        $('#penurunan_emisi_grk').val(response.evaluasi_sakip.penurunan_emisi_grk);
                        $('#indeks_pembangunan_manusia').val(response.evaluasi_sakip.indeks_pembangunan_manusia);
                        $('#indeks_gini_ratio').val(response.evaluasi_sakip.indeks_gini_ratio);
                        $('#pendapatan_perkapita').val(response.evaluasi_sakip.pendapatan_perkapita);
                    }
                });
                $('#modal-form-evaluasi').modal('show');
            }

            hapusEvaluasi = function(id) {
                Swal.fire({
                    title: "Yakin?",
                    text: "Hapus hasil evaluasi ini?",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "Ya, hapus aja!"
                }).then((result) => {
                    if (result.isConfirmed) {
                        $.ajax({
                            url: "{{ url('akip/evaluasi/sakip/' . $instansi->id) }}/" + id,
                            type: 'DELETE',
                            data: {
                                _token: '{{ csrf_token() }}'
                            },
                            success: function(response) {
                                if (response.success) {
                                    Swal.fire('Berhasil!', response.message || 'Hasil evaluasi berhasil dihapus.', 'success')
                                        .then(() => {
                                            location.reload();
                                        });
                                } else {
                                    Swal.fire('Error!', response.message || 'Gagal menghapus hasil evaluasi.', 'error');
                                }
                            },
                            error: function(xhr) {
                                var errorMessage = 'Gagal menghapus hasil evaluasi.';
                                if (xhr.responseJSON && xhr.responseJSON.message) {
                                    errorMessage = xhr.responseJSON.message;
                                }
                                Swal.fire('Error!', errorMessage, 'error');
                            }
                        });
                    }
                });
            }
        </script>
    @endif
@endpush
