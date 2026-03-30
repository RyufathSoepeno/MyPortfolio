@extends('layout.midone', ['akip' => true])
@section('title', 'Hasil Evaluasi SAKIP')

@section('content')
    <div class="intro-y flex items-center">
        <h2 class="text-lg mr-auto">
            Hasil Evaluasi SAKIP - <span class="font-medium">{!! $instansi->name !!}</span>
        </h2>
        @php
            $isTpn = auth()->user()->level == 'tpn';
            $isAnggotaTim = false;
            if (auth()->user()->anggota && auth()->user()->anggota->tim) {
                $isAnggotaTim = auth()->user()->anggota->tim->instansi_tim->where('instansi_id', $instansi->id)->first() ? true : false;
            }
        @endphp
        @if ($isTpn && $isAnggotaTim && hasAksesEvaluasiAkip())
            <a href="javascript:;" data-toggle="modal" data-target="#modal-form-evaluasi-tambah" class="button inline-block bg-theme-1 text-white" onclick="openModalTambah();">Tambah Penilaian</a>
        @endif
    </div>
    @include('common.status_midone')
    @if (count($evaluasi_sakip) == 0)
        <div class="intro-y box p-5 mt-5">
            <div class="text-center">
                @if ($isTpn)
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
                        Hasil sementara evaluasi SAKIP {!! $evaluasi->instansi->name !!}
                    </h2>
                    @if ($isTpn && $isAnggotaTim)
                        <button type="button" class="button button--sm block bg-theme-6 text-white mr-3" onclick="hapusEvaluasi('{{ $evaluasi->id }}');">Hapus Hasil Evaluasi</button>
                        <button type="button" class="button button--sm block bg-theme-12 text-white" onclick="editEvaluasi('{{ $evaluasi->id }}');">Edit Penilaian</button>
                    @endif
                </div>
                @if ($instansi->group == 'kl')
                    <div class="intro-y p-5 flex items-start justify-between flex-col sm:flex-row">
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
                @if ($isTpn)
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
                                    <div class="font-medium">Nilai Total Evaluasi AKIP {{ $evaluasi->periode }}</div>
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
                        <!-- @if (!empty($evaluasi->file_evaluasi))
                            <a href="{{ asset('storage/akip/' . $evaluasi->file_evaluasi) }}" target="_blank" class="button border items-center text-gray-700 hidden sm:flex ml-3"> <i data-feather="file" class="w-4 h-4 mr-2"></i>
                                {{ $evaluasi->periode != 'Final' ? 'Download File Catatan Evaluasi' : 'Download File Surat Pengantar LHE' }}</a>
                        @endif -->
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

    @if ($isTpn && hasAksesEvaluasiAkip())
        {{-- Modal Tambah --}}
        <div class="modal" id="modal-form-evaluasi-tambah">
            <div class="modal__content modal__content--xl" style="position: relative;">
                <div class="flex items-center px-5 py-5 sm:py-3 border-b border-gray-200">
                    <h2 class="font-medium text-base mr-auto">
                        Tambah Penilaian
                    </h2>
                </div>
                {{ html()->form('POST', route('akip.evaluasi.store', $instansi->id))->id('form-sakip-tambah')->class('validate-form')->acceptsFiles()->open() }}
                @csrf
                <div class="p-5 grid grid-cols-12 gap-4 row-gap-3">
                    <div class="col-span-12 lg:col-span-6">
                        <div class="input-group">
                            {{ html()->label('Tahun')->for('tahun-tambah') }} <span class="text-theme-6">*</span>
                            <div class="mt-2">
                                {{ html()->select('tahun', ['2025' => '2025'], 2025)->id('tahun-tambah')->class('select2 w-full hide-search')->placeholder('Pilih Tahun')->attributes(['onchange' => 'cekPeriode("tambah");'])->required() }}
                            </div>
                        </div>
                    </div>
                    @if ($instansi->group != 'kl')
                        <div class="col-span-12 lg:col-span-6">
                            <div class="input-group">
                                {{ html()->label('Periode')->for('periode-tambah') }} <span class="text-theme-6">*</span>
                                <div class="mt-2">
                                    {{ html()->select('periode', ['TW 1' => 'TW 1', 'TW 2' => 'TW 2', 'TW 3' => 'TW 3', 'Final' => 'Final'], null)->id('periode-tambah')->class('select2 w-full no-search')->placeholder('Pilih Periode')->required()->attributes(['onchange' => 'cekPeriode("tambah");']) }}
                                </div>
                            </div>
                        </div>
                    @endif
                    <div class="col-span-12 lg:col-span-6">
                        <div class="input-group">
                            {{ html()->label('Penanggung Jawab')->for('penanggung_jawab-tambah') }} <span class="text-theme-6">*</span>
                            <input type="text" name="penanggung_jawab" id="penanggung_jawab-tambah" class="input w-full border mt-2 flex-1" placeholder="Nama Penanggung Jawab" required>
                        </div>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="input-group">
                            {{ html()->label('PIC LKE')->for('pic_lke-tambah') }} <span class="text-theme-6">*</span>
                            <input type="text" name="pic_lke" id="pic_lke-tambah" class="input w-full border mt-2 flex-1" placeholder="Nama PIC LKE" required>
                        </div>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="input-group">
                            {{ html()->label('Link LKE')->for('link_lke-tambah') }} <span class="text-theme-6">*</span>
                            <input type="url" name="link_lke" id="link_lke-tambah" class="input w-full border mt-2 flex-1" placeholder="Link LKE" required>
                        </div>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="input-group">
                            {{ html()->label('File Surat Pengantar LHE')->for('file_evaluasi-tambah')->id('label_file_evaluasi-tambah') }}
                            <span class="text-theme-6">*</span>
                            <input type="file" name="file_evaluasi" id="file_evaluasi-tambah" class="input w-full border mt-2 flex-1" placeholder="Link LKE" accept="application/pdf" required>
                        </div>
                        <span class="italic text-sm" id="note_file_evaluasi-tambah" style="display: none;">Pilih file jika ingin mengganti file
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
                                    <input type="text" name="nilai_komponen_perencanaan_kinerja_tahun_lalu" id="nilai_komponen_perencanaan_kinerja_tahun_lalu-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun Ini <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_perencanaan_kinerja" id="nilai_komponen_perencanaan_kinerja-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label>Catatan : </label> <span class="text-theme-6">*</span>
                            <textarea name="catatan_komponen_perencanaan_kinerja" id="catatan_komponen_perencanaan_kinerja-tambah" class="input editor-tambah w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Catatan Nilai Komponen Perencanaan Kinerja" required></textarea>
                        </div>
                        <div class="input-group mt-2">
                            <label>Rekomendasi : </label> <span class="text-theme-6">*</span>
                            <textarea name="rekomendasi_komponen_perencanaan_kinerja" id="rekomendasi_komponen_perencanaan_kinerja-tambah" class="input editor-tambah w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Rekomendasi Nilai Komponen Perencanaan Kinerja" required></textarea>
                        </div>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="font-medium">Nilai Komponen Pengukuran Kinerja</div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun lalu <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_pengukuran_kinerja_tahun_lalu" id="nilai_komponen_pengukuran_kinerja_tahun_lalu-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun ini <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_pengukuran_kinerja" id="nilai_komponen_pengukuran_kinerja-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label>Catatan : </label> <span class="text-theme-6">*</span>
                            <textarea name="catatan_komponen_pengukuran_kinerja" id="catatan_komponen_pengukuran_kinerja-tambah" class="input editor-tambah w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Catatan Nilai Komponen Pengukuran Kinerja" required></textarea>
                        </div>
                        <div class="input-group mt-2">
                            <label>Rekomendasi : </label> <span class="text-theme-6">*</span>
                            <textarea name="rekomendasi_komponen_pengukuran_kinerja" id="rekomendasi_komponen_pengukuran_kinerja-tambah" class="input editor-tambah w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Rekomendasi Nilai Komponen Pengukuran Kinerja" required></textarea>
                        </div>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="font-medium">Nilai Komponen Pelaporan Kinerja</div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun lalu <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_pelaporan_kinerja_tahun_lalu" id="nilai_komponen_pelaporan_kinerja_tahun_lalu-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun ini <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_pelaporan_kinerja" id="nilai_komponen_pelaporan_kinerja-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label>Catatan : </label> <span class="text-theme-6">*</span>
                            <textarea name="catatan_komponen_pelaporan_kinerja" id="catatan_komponen_pelaporan_kinerja-tambah" class="input editor-tambah w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Catatan Nilai Komponen Pelaporan Kinerja" required></textarea>
                        </div>
                        <div class="input-group mt-2">
                            <label>Rekomendasi : </label> <span class="text-theme-6">*</span>
                            <textarea name="rekomendasi_komponen_pelaporan_kinerja" id="rekomendasi_komponen_pelaporan_kinerja-tambah" class="input editor-tambah w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Rekomendasi Nilai Komponen Pelaporan Kinerja" required></textarea>
                        </div>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="font-medium">Nilai Komponen Evaluasi Internal</div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun lalu <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_evaluasi_internal_tahun_lalu" id="nilai_komponen_evaluasi_internal_tahun_lalu-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun ini <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_evaluasi_internal" id="nilai_komponen_evaluasi_internal-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label>Catatan : </label> <span class="text-theme-6">*</span>
                            <textarea name="catatan_komponen_evaluasi_internal" id="catatan_komponen_evaluasi_internal-tambah" class="input editor-tambah w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Catatan Nilai Komponen Evaluasi Internal" required></textarea>
                        </div>
                        <div class="input-group mt-2">
                            <label>Rekomendasi : </label> <span class="text-theme-6">*</span>
                            <textarea name="rekomendasi_komponen_evaluasi_internal" id="rekomendasi_komponen_evaluasi_internal-tambah" class="input editor-tambah w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Rekomendasi Nilai Komponen Evaluasi Internal" required></textarea>
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
                                    <input type="text" name="nilai_total_evaluasi_akip_tahun_lalu" id="nilai_total_evaluasi_akip_tahun_lalu-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun ini <span class="text-theme-6">*</span>
                                </div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_total_evaluasi_akip" id="nilai_total_evaluasi_akip-tambah" class="input w-20 digit border flex-1 mt-2" required>
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
                                            <input type="text" name="angka_kemiskinan_tahun_lalu" id="angka_kemiskinan_tahun_lalu-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="angka_kemiskinan" id="angka_kemiskinan-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Laju Pertumbuhan Ekonomi <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="laju_pertumbuhan_ekonomi_tahun_lalu" id="laju_pertumbuhan_ekonomi_tahun_lalu-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="laju_pertumbuhan_ekonomi" id="laju_pertumbuhan_ekonomi-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Tingkat Pengangguran terbuka <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="tingkat_pengangguran_terbuka_tahun_lalu" id="tingkat_pengangguran_terbuka_tahun_lalu-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="tingkat_pengangguran_terbuka" id="tingkat_pengangguran_terbuka-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Penurunan emisi GRK <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="penurunan_emisi_grk_tahun_lalu" id="penurunan_emisi_grk_tahun_lalu-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="penurunan_emisi_grk" id="penurunan_emisi_grk-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Indeks Pembangunan Manusia <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="indeks_pembangunan_manusia_tahun_lalu" id="indeks_pembangunan_manusia_tahun_lalu-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="indeks_pembangunan_manusia" id="indeks_pembangunan_manusia-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Indeks Gini Ratio <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="indeks_gini_ratio_tahun_lalu" id="indeks_gini_ratio_tahun_lalu-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="indeks_gini_ratio" id="indeks_gini_ratio-tambah" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Pendapatan Perkapita <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="pendapatan_perkapita_tahun_lalu" id="pendapatan_perkapita_tahun_lalu-tambah" class="input w-28 currency border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="pendapatan_perkapita" id="pendapatan_perkapita-tambah" class="input w-28 currency border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    @endif
                </div>
                <div class="px-5 py-3 text-right border-t border-gray-200">
                    <button type="button" data-dismiss="modal" class="button w-20 border text-gray-700 mr-1">Cancel</button>
                    <button type="submit" class="button w-20 bg-theme-1 text-white saveButton-tambah">
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

        {{-- Modal Edit --}}
        <div class="modal" id="modal-form-evaluasi-edit">
            <div class="modal__content modal__content--xl" style="position: relative;">
                {{-- Loading Overlay --}}
                <div id="loading-overlay-edit" style="display: none; position: absolute; top: 0; left: 0; right: 0; bottom: 0; background: rgba(255, 255, 255, 0.9); z-index: 1000; align-items: center; justify-content: center; border-radius: 0.375rem;" class="flex">
                    <div class="text-center">
                        <svg class="animate-spin h-12 w-12 text-theme-1 mx-auto mb-3" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                            <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                            <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                        </svg>
                        <p class="text-gray-600 font-medium">Memuat data evaluasi...</p>
                    </div>
                </div>
                <div class="flex items-center px-5 py-5 sm:py-3 border-b border-gray-200">
                    <h2 class="font-medium text-base mr-auto">
                        Edit Penilaian
                    </h2>
                </div>
                {{ html()->form('POST', '#')->id('form-sakip-edit')->class('validate-form')->acceptsFiles()->open() }}
                @csrf
                {{ html()->hidden('id_evaluasi')->id('id_evaluasi-edit') }}
                <div class="p-5 grid grid-cols-12 gap-4 row-gap-3">
                    <div class="col-span-12 lg:col-span-6">
                        <div class="input-group">
                            {{ html()->label('Tahun')->for('tahun-edit') }} <span class="text-theme-6">*</span>
                            <div class="mt-2">
                                {{ html()->select('tahun', ['2025' => '2025'], 2025)->id('tahun-edit')->class('select2 w-full hide-search')->placeholder('Pilih Tahun')->attributes(['disabled' => 'disabled'])->required() }}
                            </div>
                        </div>
                    </div>
                    @if ($instansi->group != 'kl')
                        <div class="col-span-12 lg:col-span-6">
                            <div class="input-group">
                                {{ html()->label('Periode')->for('periode-edit') }} <span class="text-theme-6">*</span>
                                <div class="mt-2">
                                    {{ html()->select('periode', ['TW 1' => 'TW 1', 'TW 2' => 'TW 2', 'TW 3' => 'TW 3', 'Final' => 'Final'], null)->id('periode-edit')->class('select2 w-full no-search')->placeholder('Pilih Periode')->attributes(['disabled' => 'disabled'])->required() }}
                                </div>
                            </div>
                        </div>
                    @endif
                    <div class="col-span-12 lg:col-span-6">
                        <div class="input-group">
                            {{ html()->label('Penanggung Jawab')->for('penanggung_jawab-edit') }} <span class="text-theme-6">*</span>
                            <input type="text" name="penanggung_jawab" id="penanggung_jawab-edit" class="input w-full border mt-2 flex-1" placeholder="Nama Penanggung Jawab" required>
                        </div>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="input-group">
                            {{ html()->label('PIC LKE')->for('pic_lke-edit') }} <span class="text-theme-6">*</span>
                            <input type="text" name="pic_lke" id="pic_lke-edit" class="input w-full border mt-2 flex-1" placeholder="Nama PIC LKE" required>
                        </div>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="input-group">
                            {{ html()->label('Link LKE')->for('link_lke-edit') }} <span class="text-theme-6">*</span>
                            <input type="url" name="link_lke" id="link_lke-edit" class="input w-full border mt-2 flex-1" placeholder="Link LKE" required>
                        </div>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="input-group">
                            {{ html()->label('File Surat Pengantar LHE')->for('file_evaluasi-edit')->id('label_file_evaluasi-edit') }}
                            <span class="text-theme-6"></span>
                            <input type="file" name="file_evaluasi" id="file_evaluasi-edit" class="input w-full border mt-2 flex-1" placeholder="Link LKE" accept="application/pdf">
                        </div>
                        <span class="italic text-sm" id="note_file_evaluasi-edit">Pilih file jika ingin mengganti file
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
                                    <input type="text" name="nilai_komponen_perencanaan_kinerja_tahun_lalu" id="nilai_komponen_perencanaan_kinerja_tahun_lalu-edit" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun Ini <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_perencanaan_kinerja" id="nilai_komponen_perencanaan_kinerja-edit" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label>Catatan : </label> <span class="text-theme-6">*</span>
                            <textarea name="catatan_komponen_perencanaan_kinerja" id="catatan_komponen_perencanaan_kinerja-edit" class="input editor-edit w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Catatan Nilai Komponen Perencanaan Kinerja" required></textarea>
                        </div>
                        <div class="input-group mt-2">
                            <label>Rekomendasi : </label> <span class="text-theme-6">*</span>
                            <textarea name="rekomendasi_komponen_perencanaan_kinerja" id="rekomendasi_komponen_perencanaan_kinerja-edit" class="input editor-edit w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Rekomendasi Nilai Komponen Perencanaan Kinerja" required></textarea>
                        </div>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="font-medium">Nilai Komponen Pengukuran Kinerja</div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun lalu <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_pengukuran_kinerja_tahun_lalu" id="nilai_komponen_pengukuran_kinerja_tahun_lalu-edit" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun ini <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_pengukuran_kinerja" id="nilai_komponen_pengukuran_kinerja-edit" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label>Catatan : </label> <span class="text-theme-6">*</span>
                            <textarea name="catatan_komponen_pengukuran_kinerja" id="catatan_komponen_pengukuran_kinerja-edit" class="input editor-edit w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Catatan Nilai Komponen Pengukuran Kinerja" required></textarea>
                        </div>
                        <div class="input-group mt-2">
                            <label>Rekomendasi : </label> <span class="text-theme-6">*</span>
                            <textarea name="rekomendasi_komponen_pengukuran_kinerja" id="rekomendasi_komponen_pengukuran_kinerja-edit" class="input editor-edit w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Rekomendasi Nilai Komponen Pengukuran Kinerja" required></textarea>
                        </div>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="font-medium">Nilai Komponen Pelaporan Kinerja</div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun lalu <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_pelaporan_kinerja_tahun_lalu" id="nilai_komponen_pelaporan_kinerja_tahun_lalu-edit" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun ini <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_pelaporan_kinerja" id="nilai_komponen_pelaporan_kinerja-edit" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label>Catatan : </label> <span class="text-theme-6">*</span>
                            <textarea name="catatan_komponen_pelaporan_kinerja" id="catatan_komponen_pelaporan_kinerja-edit" class="input editor-edit w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Catatan Nilai Komponen Pelaporan Kinerja" required></textarea>
                        </div>
                        <div class="input-group mt-2">
                            <label>Rekomendasi : </label> <span class="text-theme-6">*</span>
                            <textarea name="rekomendasi_komponen_pelaporan_kinerja" id="rekomendasi_komponen_pelaporan_kinerja-edit" class="input editor-edit w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Rekomendasi Nilai Komponen Pelaporan Kinerja" required></textarea>
                        </div>
                    </div>
                    <div class="col-span-12 lg:col-span-6">
                        <div class="font-medium">Nilai Komponen Evaluasi Internal</div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun lalu <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_evaluasi_internal_tahun_lalu" id="nilai_komponen_evaluasi_internal_tahun_lalu-edit" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun ini <span class="text-theme-6">*</span></div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_komponen_evaluasi_internal" id="nilai_komponen_evaluasi_internal-edit" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label>Catatan : </label> <span class="text-theme-6">*</span>
                            <textarea name="catatan_komponen_evaluasi_internal" id="catatan_komponen_evaluasi_internal-edit" class="input editor-edit w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Catatan Nilai Komponen Evaluasi Internal" required></textarea>
                        </div>
                        <div class="input-group mt-2">
                            <label>Rekomendasi : </label> <span class="text-theme-6">*</span>
                            <textarea name="rekomendasi_komponen_evaluasi_internal" id="rekomendasi_komponen_evaluasi_internal-edit" class="input editor-edit w-full border mt-2 flex-1" cols="30" rows="3" placeholder="Rekomendasi Nilai Komponen Evaluasi Internal" required></textarea>
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
                                    <input type="text" name="nilai_total_evaluasi_akip_tahun_lalu" id="nilai_total_evaluasi_akip_tahun_lalu-edit" class="input w-20 digit border flex-1 mt-2" required>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="flex items-center">
                                <div>Tahun ini <span class="text-theme-6">*</span>
                                </div>
                                <div class="ml-auto">
                                    <input type="text" name="nilai_total_evaluasi_akip" id="nilai_total_evaluasi_akip-edit" class="input w-20 digit border flex-1 mt-2" required>
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
                                            <input type="text" name="angka_kemiskinan_tahun_lalu" id="angka_kemiskinan_tahun_lalu-edit" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="angka_kemiskinan" id="angka_kemiskinan-edit" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Laju Pertumbuhan Ekonomi <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="laju_pertumbuhan_ekonomi_tahun_lalu" id="laju_pertumbuhan_ekonomi_tahun_lalu-edit" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="laju_pertumbuhan_ekonomi" id="laju_pertumbuhan_ekonomi-edit" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Tingkat Pengangguran terbuka <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="tingkat_pengangguran_terbuka_tahun_lalu" id="tingkat_pengangguran_terbuka_tahun_lalu-edit" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="tingkat_pengangguran_terbuka" id="tingkat_pengangguran_terbuka-edit" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Penurunan emisi GRK <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="penurunan_emisi_grk_tahun_lalu" id="penurunan_emisi_grk_tahun_lalu-edit" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="penurunan_emisi_grk" id="penurunan_emisi_grk-edit" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Indeks Pembangunan Manusia <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="indeks_pembangunan_manusia_tahun_lalu" id="indeks_pembangunan_manusia_tahun_lalu-edit" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="indeks_pembangunan_manusia" id="indeks_pembangunan_manusia-edit" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Indeks Gini Ratio <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="indeks_gini_ratio_tahun_lalu" id="indeks_gini_ratio_tahun_lalu-edit" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="indeks_gini_ratio" id="indeks_gini_ratio-edit" class="input w-20 digit border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group">
                                                Pendapatan Perkapita <span class="text-theme-6">*</span>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="pendapatan_perkapita_tahun_lalu" id="pendapatan_perkapita_tahun_lalu-edit" class="input w-28 currency border flex-1 mt-2" required>
                                        </td>
                                        <td>
                                            <input type="text" name="pendapatan_perkapita" id="pendapatan_perkapita-edit" class="input w-28 currency border flex-1 mt-2" required>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    @endif
                </div>
                <div class="px-5 py-3 text-right border-t border-gray-200">
                    <button type="button" data-dismiss="modal" class="button w-20 border text-gray-700 mr-1">Cancel</button>
                    <button type="submit" class="button w-20 bg-theme-1 text-white saveButton-edit">
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
        {{-- End Modal Edit --}}
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
                // Initialize summernote for tambah form
                $('.editor-tambah').each(function() {
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
                
                // Initialize summernote for edit form
                $('.editor-edit').each(function() {
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

            // Initialize input mask for both forms
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

            openModalTambah = function() {
                resetFormTambah();
                $('#modal-form-evaluasi-tambah').modal('show');
            }

            resetFormTambah = function() {
                $('#form-sakip-tambah').trigger('reset');
                $('#form-sakip-tambah').find('.select2').val(2025).trigger('change');
                $('#file_evaluasi-tambah').prop('required', true);
                $('#note_file_evaluasi-tambah').hide();
                $('#tahun-tambah').prop('disabled', false);
                $('#periode-tambah').prop('disabled', false);
                
                // Reset button state
                var $saveButton = $('.saveButton-tambah');
                $saveButton.prop('disabled', false);
                $saveButton.find('.button-text').text('Simpan');
                $saveButton.find('.button-spinner').hide();
                
                $('.editor-tambah').each(function() {
                    $(this).summernote('code', '');
                });
                if (typeof validatorTambah !== 'undefined') {
                    validatorTambah.resetForm();
                }
                
                // Reset period dropdown to enabled state
                $('#periode-tambah').find('option').each(function() {
                    $(this).prop('disabled', false);
                    $(this).removeClass('text-gray-400');
                });
                
                // Trigger cekPeriode to update dropdown based on current year
                cekPeriode('tambah');
            }

            cekPeriode = function(formType) {
                formType = formType || 'tambah';
                var suffix = formType === 'edit' ? '-edit' : '-tambah';
                var tahun = $('#tahun' + suffix).val();
                var periode = $('#periode' + suffix).val();
                var id_evaluasi = $('#id_evaluasi' + suffix).val();
                if (periode && periode != "Final") {
                    $("#label_file_evaluasi" + suffix).text("File Catatan Evaluasi");
                } else {
                    $("#label_file_evaluasi" + suffix).text("File Surat Pengantar LHE");
                }
                if (tahun && !id_evaluasi && formType === 'tambah') {
                    $.ajax({
                        url: "{{ route('akip.evaluasi.check', $instansi->id) }}",
                        type: 'POST',
                        cache: false,
                        data: {
                            tahun: tahun,
                            periode: periode || '',
                            _token: '{{ csrf_token() }}'
                        },
                        success: function(response) {
                            // Update period dropdown options based on filled periods
                            updatePeriodDropdown(response.filled_periods, formType);
                            
                            if (periode && response.exists) {
                                Swal.fire('Error!', 'Penilaian untuk tahun ' + tahun + ' dan periode ' +
                                    periode +
                                    ' sudah ada.', 'error');
                                $('.saveButton-' + formType).prop('disabled', true);
                            } else {
                                $('.saveButton-' + formType).prop('disabled', false);
                                if (response.evaluasi_sakip && formType === 'tambah') {
                                    $('#penanggung_jawab' + suffix).val(response.evaluasi_sakip.penanggung_jawab);
                                    $('#pic_lke' + suffix).val(response.evaluasi_sakip.pic_lke);
                                    $('#link_lke' + suffix).val(response.evaluasi_sakip.link_lke);
                                    $('#catatan_komponen_perencanaan_kinerja' + suffix).summernote('code', response.evaluasi_sakip.catatan_komponen_perencanaan_kinerja);
                                    $('#catatan_komponen_pengukuran_kinerja' + suffix).summernote('code', response.evaluasi_sakip.catatan_komponen_pengukuran_kinerja);
                                    $('#catatan_komponen_pelaporan_kinerja' + suffix).summernote('code', response.evaluasi_sakip.catatan_komponen_pelaporan_kinerja);
                                    $('#catatan_komponen_evaluasi_internal' + suffix).summernote('code', response.evaluasi_sakip.catatan_komponen_evaluasi_internal);
                                    $('#rekomendasi_komponen_perencanaan_kinerja' + suffix).summernote('code', response.evaluasi_sakip.rekomendasi_komponen_perencanaan_kinerja);
                                    $('#rekomendasi_komponen_pengukuran_kinerja' + suffix).summernote('code', response.evaluasi_sakip.rekomendasi_komponen_pengukuran_kinerja);
                                    $('#rekomendasi_komponen_pelaporan_kinerja' + suffix).summernote('code', response.evaluasi_sakip.rekomendasi_komponen_pelaporan_kinerja);
                                    $('#rekomendasi_komponen_evaluasi_internal' + suffix).summernote('code', response.evaluasi_sakip.rekomendasi_komponen_evaluasi_internal);
                                    $('#nilai_komponen_perencanaan_kinerja_tahun_lalu' + suffix).val(response.evaluasi_sakip.nilai_komponen_perencanaan_kinerja_tahun_lalu);
                                    $('#nilai_komponen_pengukuran_kinerja_tahun_lalu' + suffix).val(response.evaluasi_sakip.nilai_komponen_pengukuran_kinerja_tahun_lalu);
                                    $('#nilai_komponen_pelaporan_kinerja_tahun_lalu' + suffix).val(response.evaluasi_sakip.nilai_komponen_pelaporan_kinerja_tahun_lalu);
                                    $('#nilai_komponen_evaluasi_internal_tahun_lalu' + suffix).val(response.evaluasi_sakip.nilai_komponen_evaluasi_internal_tahun_lalu);
                                    $('#nilai_total_evaluasi_akip_tahun_lalu' + suffix).val(response.evaluasi_sakip.nilai_total_evaluasi_akip_tahun_lalu);
                                    $('#angka_kemiskinan' + suffix).val(response.evaluasi_sakip.angka_kemiskinan);
                                    $('#laju_pertumbuhan_ekonomi' + suffix).val(response.evaluasi_sakip.laju_pertumbuhan_ekonomi);
                                    $('#tingkat_pengangguran_terbuka' + suffix).val(response.evaluasi_sakip.tingkat_pengangguran_terbuka);
                                    $('#penurunan_emisi_grk' + suffix).val(response.evaluasi_sakip.penurunan_emisi_grk);
                                    $('#indeks_pembangunan_manusia' + suffix).val(response.evaluasi_sakip.indeks_pembangunan_manusia);
                                    $('#indeks_gini_ratio' + suffix).val(response.evaluasi_sakip.indeks_gini_ratio);
                                    $('#pendapatan_perkapita' + suffix).val(response.evaluasi_sakip.pendapatan_perkapita);
                                    $('#angka_kemiskinan_tahun_lalu' + suffix).val(response.evaluasi_sakip.angka_kemiskinan_tahun_lalu);
                                    $('#laju_pertumbuhan_ekonomi_tahun_lalu' + suffix).val(response.evaluasi_sakip.laju_pertumbuhan_ekonomi_tahun_lalu);
                                    $('#tingkat_pengangguran_terbuka_tahun_lalu' + suffix).val(response.evaluasi_sakip.tingkat_pengangguran_terbuka_tahun_lalu);
                                    $('#penurunan_emisi_grk_tahun_lalu' + suffix).val(response.evaluasi_sakip.penurunan_emisi_grk_tahun_lalu);
                                    $('#indeks_pembangunan_manusia_tahun_lalu' + suffix).val(response.evaluasi_sakip.indeks_pembangunan_manusia_tahun_lalu);
                                    $('#indeks_gini_ratio_tahun_lalu' + suffix).val(response.evaluasi_sakip.indeks_gini_ratio_tahun_lalu);
                                    $('#pendapatan_perkapita_tahun_lalu' + suffix).val(response.evaluasi_sakip.pendapatan_perkapita_tahun_lalu);
                                }
                            }
                        }
                    });
                }
            }

            // Function to update period dropdown based on filled periods
            updatePeriodDropdown = function(filledPeriods, formType) {
                formType = formType || 'tambah';
                var suffix = formType === 'edit' ? '-edit' : '-tambah';
                var $periodeSelect = $('#periode' + suffix);
                var currentValue = $periodeSelect.val();
                
                // Reset all options to enabled
                $periodeSelect.find('option').each(function() {
                    $(this).prop('disabled', false);
                    $(this).removeClass('text-gray-400');
                });
                
                // Disable filled periods
                if (filledPeriods && filledPeriods.length > 0) {
                    filledPeriods.forEach(function(period) {
                        $periodeSelect.find('option[value="' + period + '"]').prop('disabled', true).addClass('text-gray-400');
                    });
                }
                
                // If current selection is disabled, clear it
                if (currentValue && filledPeriods && filledPeriods.includes(currentValue)) {
                    $periodeSelect.val('').trigger('change');
                }
            }

            // Validator for Tambah Form
            var validatorTambah = $('#form-sakip-tambah').validate({
                ignore: [],
                errorPlacement: function(error, element) {
                    try {
                        if (element.hasClass('select2-hidden-accessible')) {
                            error.insertAfter(element.next('.select2-container'));
                        } else {
                            error.insertAfter(element.closest('.input-group'));
                        }
                    } catch (e) {
                        console.error('Error in errorPlacement:', e);
                        error.insertAfter(element);
                    }
                },
                highlight: function(element) {
                    try {
                        if ($(element).hasClass('select2-hidden-accessible')) {
                            $(element).next('.select2-container')
                                .find('.select2-selection')
                                .addClass('border border-red-500');
                        } else {
                            $(element).addClass('border-red-500');
                        }
                    } catch (e) {
                        console.error('Error in highlight:', e);
                    }
                },
                unhighlight: function(element) {
                    try {
                        if ($(element).hasClass('select2-hidden-accessible')) {
                            $(element).next('.select2-container')
                                .find('.select2-selection')
                                .removeClass('border border-red-500');
                        } else {
                            $(element).removeClass('border-red-500');
                        }
                    } catch (e) {
                        console.error('Error in unhighlight:', e);
                    }
                },
                submitHandler: function(form) {
                    var suffix = '-tambah';
                    var $saveButton = $('.saveButton-tambah');
                    var $buttonText = $saveButton.find('.button-text');
                    var $buttonSpinner = $saveButton.find('.button-spinner');
                    
                    // Show loading state
                    $saveButton.prop('disabled', true);
                    $buttonText.text('Menyimpan...');
                    $buttonSpinner.show();
                    
                    // Find the actual form element
                    var formElement = $('#form-sakip-tambah')[0];
                    
                    if (!formElement || formElement.tagName !== 'FORM') {
                        formElement = $('.saveButton-tambah').closest('form')[0];
                        if (!formElement || formElement.tagName !== 'FORM') {
                            $('.saveButton-tambah').prop('disabled', false);
                            return false;
                        }
                    }
                    
                    // Validate required fields before submission
                    var isKL = $('#periode' + suffix).length === 0;
                    var requiredFields = isKL 
                        ? ['tahun', 'penanggung_jawab', 'pic_lke', 'link_lke']
                        : ['tahun', 'periode', 'penanggung_jawab', 'pic_lke', 'link_lke'];
                    
                    var missingFields = [];
                    
                    requiredFields.forEach(function(field) {
                        var value = $('#' + field + suffix).val();
                        if (!value || value.trim() === '') {
                            missingFields.push(field);
                        }
                    });
                    
                    if (missingFields.length > 0) {
                        Swal.fire({
                            title: 'Error!',
                            text: 'Mohon lengkapi semua field yang wajib diisi.',
                            icon: 'error',
                            confirmButtonText: 'OK'
                        });
                        $saveButton.prop('disabled', false);
                        $saveButton.find('.button-text').text('Simpan');
                        $saveButton.find('.button-spinner').hide();
                        return false;
                    }
                    
                    var formData = new FormData(formElement);
                    
                    $.ajax({
                        url: '{{ route("akip.evaluasi.store", $instansi->id) }}',
                        type: 'POST',
                        cache: false,
                        data: formData,
                        processData: false,
                        contentType: false,
                        success: function(response) {
                            if (response.success) {
                                Swal.fire({
                                    title: 'Berhasil!',
                                    text: 'Data evaluasi SAKIP berhasil disimpan.',
                                    icon: 'success',
                                    confirmButtonText: 'OK'
                                }).then(() => {
                                    location.reload();
                                });
                            } else {
                                var errorMessage = response.message || 'Terjadi kesalahan saat menyimpan data evaluasi SAKIP.';
                                Swal.fire({
                                    title: 'Gagal!',
                                    text: errorMessage,
                                    icon: 'error',
                                    confirmButtonText: 'OK'
                                });
                                $saveButton.prop('disabled', false);
                                $saveButton.find('.button-text').text('Simpan');
                                $saveButton.find('.button-spinner').hide();
                            }
                        },
                        error: function(xhr, status, error) {
                            var errorMessage = 'Terjadi kesalahan server. Silakan coba lagi.';
                            if (xhr.responseText) {
                                try {
                                    var response = JSON.parse(xhr.responseText);
                                    if (response.message) {
                                        errorMessage = response.message;
                                    }
                                } catch (e) {
                                    // Could not parse error response
                                }
                            }
                            
                            Swal.fire({
                                title: 'Error!',
                                text: errorMessage,
                                icon: 'error',
                                confirmButtonText: 'OK'
                            });
                            $saveButton.prop('disabled', false);
                            $saveButton.find('.button-text').text('Simpan');
                            $saveButton.find('.button-spinner').hide();
                        }
                    });
                    
                    return false; // Prevent default form submission
                }
            });

            // Validator for Edit Form
            var validatorEdit = $('#form-sakip-edit').validate({
                ignore: [],
                errorPlacement: function(error, element) {
                    try {
                        if (element.hasClass('select2-hidden-accessible')) {
                            error.insertAfter(element.next('.select2-container'));
                        } else {
                            error.insertAfter(element.closest('.input-group'));
                        }
                    } catch (e) {
                        console.error('Error in errorPlacement:', e);
                        error.insertAfter(element);
                    }
                },
                highlight: function(element) {
                    try {
                        if ($(element).hasClass('select2-hidden-accessible')) {
                            $(element).next('.select2-container')
                                .find('.select2-selection')
                                .addClass('border border-red-500');
                        } else {
                            $(element).addClass('border-red-500');
                        }
                    } catch (e) {
                        console.error('Error in highlight:', e);
                    }
                },
                unhighlight: function(element) {
                    try {
                        if ($(element).hasClass('select2-hidden-accessible')) {
                            $(element).next('.select2-container')
                                .find('.select2-selection')
                                .removeClass('border border-red-500');
                        } else {
                            $(element).removeClass('border-red-500');
                        }
                    } catch (e) {
                        console.error('Error in unhighlight:', e);
                    }
                },
                submitHandler: function(form) {
                    var suffix = '-edit';
                    var $saveButton = $('.saveButton-edit');
                    var $buttonText = $saveButton.find('.button-text');
                    var $buttonSpinner = $saveButton.find('.button-spinner');
                    var id_evaluasi = $('#id_evaluasi-edit').val();
                    
                    // Show loading state
                    $saveButton.prop('disabled', true);
                    $buttonText.text('Mengupdate...');
                    $buttonSpinner.show();
                    
                    // Find the actual form element
                    var formElement = $('#form-sakip-edit')[0];
                    
                    if (!formElement || formElement.tagName !== 'FORM') {
                        formElement = $('.saveButton-edit').closest('form')[0];
                        if (!formElement || formElement.tagName !== 'FORM') {
                            $('.saveButton-edit').prop('disabled', false);
                            return false;
                        }
                    }
                    
                    // Set form action
                    var updateUrl = '{{ route("akip.evaluasi.update", [$instansi->id, ":id"]) }}'.replace(':id', id_evaluasi);
                    $('#form-sakip-edit').attr('action', updateUrl);
                    // Add _method field for PUT request
                    if ($('#form-sakip-edit').find('input[name="_method"]').length === 0) {
                        $('#form-sakip-edit').append('<input type="hidden" name="_method" value="PUT">');
                    }
                    
                    // Validate required fields before submission
                    var isKL = $('#periode' + suffix).length === 0;
                    var requiredFields = [
                        'penanggung_jawab', 'pic_lke', 'link_lke',
                        'nilai_komponen_perencanaan_kinerja', 'nilai_komponen_pengukuran_kinerja',
                        'nilai_komponen_pelaporan_kinerja', 'nilai_komponen_evaluasi_internal',
                        'nilai_total_evaluasi_akip', 'nilai_komponen_perencanaan_kinerja_tahun_lalu',
                        'nilai_komponen_pengukuran_kinerja_tahun_lalu', 'nilai_komponen_pelaporan_kinerja_tahun_lalu',
                        'nilai_komponen_evaluasi_internal_tahun_lalu', 'nilai_total_evaluasi_akip_tahun_lalu',
                        'catatan_komponen_perencanaan_kinerja', 'rekomendasi_komponen_perencanaan_kinerja',
                        'catatan_komponen_pengukuran_kinerja', 'rekomendasi_komponen_pengukuran_kinerja',
                        'catatan_komponen_pelaporan_kinerja', 'rekomendasi_komponen_pelaporan_kinerja',
                        'catatan_komponen_evaluasi_internal', 'rekomendasi_komponen_evaluasi_internal'
                    ];
                    
                    // Add macro indicators for Pemda only
                    if (!isKL) {
                        requiredFields = requiredFields.concat([
                            'angka_kemiskinan_tahun_lalu', 'angka_kemiskinan',
                            'laju_pertumbuhan_ekonomi_tahun_lalu', 'laju_pertumbuhan_ekonomi',
                            'tingkat_pengangguran_terbuka_tahun_lalu', 'tingkat_pengangguran_terbuka',
                            'penurunan_emisi_grk_tahun_lalu', 'penurunan_emisi_grk',
                            'indeks_pembangunan_manusia_tahun_lalu', 'indeks_pembangunan_manusia',
                            'indeks_gini_ratio_tahun_lalu', 'indeks_gini_ratio',
                            'pendapatan_perkapita_tahun_lalu', 'pendapatan_perkapita'
                        ]);
                    }
                    
                    var missingFields = [];
                    
                    requiredFields.forEach(function(field) {
                        var value;
                        
                        // Handle summernote fields differently
                        if (field.includes('catatan_') || field.includes('rekomendasi_')) {
                            value = $('#' + field + suffix).summernote('code');
                            // Remove HTML tags and check if content is empty
                            value = value.replace(/<[^>]*>/g, '').trim();
                        } else {
                            value = $('#' + field + suffix).val();
                        }
                        
                        if (!value || value.trim() === '') {
                            missingFields.push(field);
                        }
                    });
                    
                    if (missingFields.length > 0) {
                        Swal.fire({
                            title: 'Error!',
                            text: 'Mohon lengkapi semua field yang wajib diisi.',
                            icon: 'error',
                            confirmButtonText: 'OK'
                        });
                        $saveButton.prop('disabled', false);
                        $saveButton.find('.button-text').text('Simpan');
                        $saveButton.find('.button-spinner').hide();
                        return false;
                    }
                    
                    var formData = new FormData(formElement);
                    
                    $.ajax({
                        url: updateUrl,
                        type: 'POST',
                        cache: false,
                        data: formData,
                        processData: false,
                        contentType: false,
                        success: function(response) {
                            if (response.success) {
                                Swal.fire({
                                    title: 'Berhasil!',
                                    text: 'Data evaluasi SAKIP berhasil diupdate.',
                                    icon: 'success',
                                    confirmButtonText: 'OK'
                                }).then(() => {
                                    location.reload();
                                });
                            } else {
                                var errorMessage = response.message || 'Terjadi kesalahan saat mengupdate data evaluasi SAKIP.';
                                Swal.fire({
                                    title: 'Gagal!',
                                    text: errorMessage,
                                    icon: 'error',
                                    confirmButtonText: 'OK'
                                });
                                $saveButton.prop('disabled', false);
                                $saveButton.find('.button-text').text('Simpan');
                                $saveButton.find('.button-spinner').hide();
                            }
                        },
                        error: function(xhr, status, error) {
                            var errorMessage = 'Terjadi kesalahan server. Silakan coba lagi.';
                            if (xhr.responseText) {
                                try {
                                    var response = JSON.parse(xhr.responseText);
                                    if (response.message) {
                                        errorMessage = response.message;
                                    }
                                } catch (e) {
                                    // Could not parse error response
                                }
                            }
                            
                            Swal.fire({
                                title: 'Error!',
                                text: errorMessage,
                                icon: 'error',
                                confirmButtonText: 'OK'
                            });
                            $saveButton.prop('disabled', false);
                            $saveButton.find('.button-text').text('Simpan');
                            $saveButton.find('.button-spinner').hide();
                        }
                    });
                    
                    return false; // Prevent default form submission
                }
            });

            editEvaluasi = function(id) {
                var suffix = '-edit';
                
                // Show loading overlay
                $('#loading-overlay-edit').show();
                
                // Set form action
                var updateUrl = '{{ route("akip.evaluasi.update", [$instansi->id, ":id"]) }}'.replace(':id', id);
                $('#form-sakip-edit').attr('action', updateUrl);
                // Add _method field for PUT request
                if ($('#form-sakip-edit').find('input[name="_method"]').length === 0) {
                    $('#form-sakip-edit').append('<input type="hidden" name="_method" value="PUT">');
                }
                
                $.ajax({
                    url: "{{ url('akip/evaluasi/sakip/' . $instansi->id . '/data') }}/" + id,
                    type: 'GET',
                    cache: false,
                    success: function(response) {
                        // Hide loading overlay
                        $('#loading-overlay-edit').hide();
                        $('#form-sakip-edit').trigger('reset');
                        $('#form-sakip-edit').find('.select2').val(null).trigger('change');
                        $('#id_evaluasi-edit').val(id);
                        $('#tahun-edit').val(response.evaluasi_sakip.tahun).trigger('change');
                        $('#tahun-edit').prop('disabled', true);
                        $('#periode-edit').val(response.evaluasi_sakip.periode).trigger('change');
                        $('#periode-edit').prop('disabled', true);
                        
                        // For editing, disable all periods except the current one
                        $('#periode-edit').find('option').each(function() {
                            if ($(this).val() !== response.evaluasi_sakip.periode) {
                                $(this).prop('disabled', true).addClass('text-gray-400');
                            }
                        });
                        
                        $('#penanggung_jawab-edit').val(response.evaluasi_sakip.penanggung_jawab);
                        $('#pic_lke-edit').val(response.evaluasi_sakip.pic_lke);
                        $('#link_lke-edit').val(response.evaluasi_sakip.link_lke);
                        $('#nilai_komponen_perencanaan_kinerja-edit').val(response.evaluasi_sakip.nilai_komponen_perencanaan_kinerja);
                        $('#nilai_komponen_perencanaan_kinerja_tahun_lalu-edit').val(response.evaluasi_sakip.nilai_komponen_perencanaan_kinerja_tahun_lalu);
                        $('#catatan_komponen_perencanaan_kinerja-edit').summernote('code', response.evaluasi_sakip.catatan_komponen_perencanaan_kinerja);
                        $('#rekomendasi_komponen_perencanaan_kinerja-edit').summernote('code', response.evaluasi_sakip.rekomendasi_komponen_perencanaan_kinerja);
                        $('#nilai_komponen_pengukuran_kinerja-edit').val(response.evaluasi_sakip.nilai_komponen_pengukuran_kinerja);
                        $('#nilai_komponen_pengukuran_kinerja_tahun_lalu-edit').val(response.evaluasi_sakip.nilai_komponen_pengukuran_kinerja_tahun_lalu);
                        $('#catatan_komponen_pengukuran_kinerja-edit').summernote('code', response.evaluasi_sakip.catatan_komponen_pengukuran_kinerja);
                        $('#rekomendasi_komponen_pengukuran_kinerja-edit').summernote('code', response.evaluasi_sakip.rekomendasi_komponen_pengukuran_kinerja);
                        $('#nilai_komponen_pelaporan_kinerja-edit').val(response.evaluasi_sakip.nilai_komponen_pelaporan_kinerja);
                        $('#nilai_komponen_pelaporan_kinerja_tahun_lalu-edit').val(response.evaluasi_sakip.nilai_komponen_pelaporan_kinerja_tahun_lalu);
                        $('#catatan_komponen_pelaporan_kinerja-edit').summernote('code', response.evaluasi_sakip.catatan_komponen_pelaporan_kinerja);
                        $('#rekomendasi_komponen_pelaporan_kinerja-edit').summernote('code', response.evaluasi_sakip.rekomendasi_komponen_pelaporan_kinerja);
                        $('#nilai_komponen_evaluasi_internal-edit').val(response.evaluasi_sakip.nilai_komponen_evaluasi_internal);
                        $('#nilai_komponen_evaluasi_internal_tahun_lalu-edit').val(response.evaluasi_sakip.nilai_komponen_evaluasi_internal_tahun_lalu);
                        $('#catatan_komponen_evaluasi_internal-edit').summernote('code', response.evaluasi_sakip.catatan_komponen_evaluasi_internal);
                        $('#rekomendasi_komponen_evaluasi_internal-edit').summernote('code', response.evaluasi_sakip.rekomendasi_komponen_evaluasi_internal);
                        $('#nilai_total_evaluasi_akip-edit').val(response.evaluasi_sakip.nilai_total_evaluasi_akip);
                        $('#nilai_total_evaluasi_akip_tahun_lalu-edit').val(response.evaluasi_sakip.nilai_total_evaluasi_akip_tahun_lalu);
                        $('#angka_kemiskinan_tahun_lalu-edit').val(response.evaluasi_sakip.angka_kemiskinan_tahun_lalu);
                        $('#laju_pertumbuhan_ekonomi_tahun_lalu-edit').val(response.evaluasi_sakip.laju_pertumbuhan_ekonomi_tahun_lalu);
                        $('#tingkat_pengangguran_terbuka_tahun_lalu-edit').val(response.evaluasi_sakip.tingkat_pengangguran_terbuka_tahun_lalu);
                        $('#penurunan_emisi_grk_tahun_lalu-edit').val(response.evaluasi_sakip.penurunan_emisi_grk_tahun_lalu);
                        $('#indeks_pembangunan_manusia_tahun_lalu-edit').val(response.evaluasi_sakip.indeks_pembangunan_manusia_tahun_lalu);
                        $('#indeks_gini_ratio_tahun_lalu-edit').val(response.evaluasi_sakip.indeks_gini_ratio_tahun_lalu);
                        $('#pendapatan_perkapita_tahun_lalu-edit').val(response.evaluasi_sakip.pendapatan_perkapita_tahun_lalu);
                        $('#angka_kemiskinan-edit').val(response.evaluasi_sakip.angka_kemiskinan);
                        $('#laju_pertumbuhan_ekonomi-edit').val(response.evaluasi_sakip.laju_pertumbuhan_ekonomi);
                        $('#tingkat_pengangguran_terbuka-edit').val(response.evaluasi_sakip.tingkat_pengangguran_terbuka);
                        $('#penurunan_emisi_grk-edit').val(response.evaluasi_sakip.penurunan_emisi_grk);
                        $('#indeks_pembangunan_manusia-edit').val(response.evaluasi_sakip.indeks_pembangunan_manusia);
                        $('#indeks_gini_ratio-edit').val(response.evaluasi_sakip.indeks_gini_ratio);
                        $('#pendapatan_perkapita-edit').val(response.evaluasi_sakip.pendapatan_perkapita);
                    },
                    error: function(xhr, status, error) {
                        // Hide loading overlay on error
                        $('#loading-overlay-edit').hide();
                        
                        var errorMessage = 'Gagal memuat data evaluasi. Silakan coba lagi.';
                        if (xhr.responseText) {
                            try {
                                var response = JSON.parse(xhr.responseText);
                                if (response.message) {
                                    errorMessage = response.message;
                                }
                            } catch (e) {
                                // Could not parse error response
                            }
                        }
                        
                        Swal.fire({
                            title: 'Error!',
                            text: errorMessage,
                            icon: 'error',
                            confirmButtonText: 'OK'
                        });
                    }
                });
                $('#modal-form-evaluasi-edit').modal('show');
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
                            cache: false,
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
