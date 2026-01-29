@extends('layout.rubick')
@section('title', 'LKE Utama')

@section('content')
<div class="intro-y col-span-12 lg:col-span-12">
    @include('common.status')
    <div class="intro-y box">
        <div class="flex flex-col sm:flex-row items-center p-5 border-b border-slate-200/60">
            <h2 class="font-medium text-base mr-auto">Lembar Kerja Evaluasi {{ $parameter->nama }}</h2>
            <a href="{{ url('evaluasi/lke-utama/'.$parameter->id.'/downloadTemplate') }}"
                class="btn btn-success btn-sm mr-2"><svg width="16px" height="16px" viewBox="0 0 24 24"
                    xmlns="http://www.w3.org/2000/svg" fill="#000000">
                    <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                    <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                    <g id="SVGRepo_iconCarrier">
                        <title></title>
                        <g id="Complete">
                            <g id="download">
                                <g>
                                    <path d="M3,12.3v7a2,2,0,0,0,2,2H19a2,2,0,0,0,2-2v-7" fill="none" stroke="#000000"
                                        stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></path>
                                    <g>
                                        <polyline data-name="Right" fill="none" id="Right-2"
                                            points="7.9 12.3 12 16.3 16.1 12.3" stroke="#000000" stroke-linecap="round"
                                            stroke-linejoin="round" stroke-width="2"></polyline>
                                        <line fill="none" stroke="#000000" stroke-linecap="round"
                                            stroke-linejoin="round" stroke-width="2" x1="12" x2="12" y1="2.7" y2="14.2">
                                        </line>
                                    </g>
                                </g>
                            </g>
                        </g>
                    </g>
                </svg>&nbsp;Template</a>
            <button class="btn btn-success btn-sm mr-2" onclick="importLke();"><svg xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 50 50" width="18px" height="18px">
                    <path
                        d="M 28.875 0 C 28.855469 0.0078125 28.832031 0.0195313 28.8125 0.03125 L 0.8125 5.34375 C 0.335938 5.433594 -0.0078125 5.855469 0 6.34375 L 0 43.65625 C -0.0078125 44.144531 0.335938 44.566406 0.8125 44.65625 L 28.8125 49.96875 C 29.101563 50.023438 29.402344 49.949219 29.632813 49.761719 C 29.859375 49.574219 29.996094 49.296875 30 49 L 30 44 L 47 44 C 48.09375 44 49 43.09375 49 42 L 49 8 C 49 6.90625 48.09375 6 47 6 L 30 6 L 30 1 C 30.003906 0.710938 29.878906 0.4375 29.664063 0.246094 C 29.449219 0.0546875 29.160156 -0.0351563 28.875 0 Z M 28 2.1875 L 28 6.53125 C 27.867188 6.808594 27.867188 7.128906 28 7.40625 L 28 42.8125 C 27.972656 42.945313 27.972656 43.085938 28 43.21875 L 28 47.8125 L 2 42.84375 L 2 7.15625 Z M 30 8 L 47 8 L 47 42 L 30 42 L 30 37 L 34 37 L 34 35 L 30 35 L 30 29 L 34 29 L 34 27 L 30 27 L 30 22 L 34 22 L 34 20 L 30 20 L 30 15 L 34 15 L 34 13 L 30 13 Z M 36 13 L 36 15 L 44 15 L 44 13 Z M 6.6875 15.6875 L 12.15625 25.03125 L 6.1875 34.375 L 11.1875 34.375 L 14.4375 28.34375 C 14.664063 27.761719 14.8125 27.316406 14.875 27.03125 L 14.90625 27.03125 C 15.035156 27.640625 15.160156 28.054688 15.28125 28.28125 L 18.53125 34.375 L 23.5 34.375 L 17.75 24.9375 L 23.34375 15.6875 L 18.65625 15.6875 L 15.6875 21.21875 C 15.402344 21.941406 15.199219 22.511719 15.09375 22.875 L 15.0625 22.875 C 14.898438 22.265625 14.710938 21.722656 14.5 21.28125 L 11.8125 15.6875 Z M 36 20 L 36 22 L 44 22 L 44 20 Z M 36 27 L 36 29 L 44 29 L 44 27 Z M 36 35 L 36 37 L 44 37 L 44 35 Z" />
                </svg>&nbsp;Import</button>
        </div>
        <div class="lg:col-span-12 p-5 border-b border-slate-200/60">
            <table class="table table-noborder">
                <tr>
                    <td class="w-32"><strong>Komponen</strong></td>
                    <td>: {{ $parameter->parent->parent->nama }}</td>
                </tr>
                <tr>
                    <td><strong>Sub Komponen</strong></td>
                    <td>: {{ $parameter->parent->nama }}</td>
                </tr>
                <tr>
                    <td><strong>Indikator</strong></td>
                    <td>: {{ $parameter->nama }}</td>
                </tr>
            </table>
            <br>
            <table id="lke_utama_score" class="table table-bordered table-striped table-hover" cellspacing="0"
                width="100%">
                <thead class="table-dark">
                    <tr>
                        <th class="w-5">No.</th>
                        <th class="w-32">Kelompok Instansi</th>
                        <th>Nama Instansi</th>
                        <th class="w-5">Bobot</th>
                        <th class="w-5">Target Baik</th>
                        <th class="w-5">Skor</th>
                        <th class="w-5">Index</th>
                        <th>Catatan</th>
                        <th>Rekomendasi</th>
                        <th class="w-5">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
</div>

@if ((in_array($user->level, ['tpn', 'tpm']) && $parameter->penilai_id == $user->penilai_id && hasAksesHasilEvaluasi()) || ($user->level ==
'admin'))
<div id="modal-lke_score" class="modal fade" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <!-- BEGIN: Modal Header -->
            <div class="modal-header">
                <h2 class="fw-medium fs-base me-auto" id="title">Perbaharui Skor Indikator {{ $parameter->nama }}</h2>
            </div> <!-- END: Modal Header -->
            <!-- BEGIN: Modal Body -->
            <form action="{{ url('evaluasi/lke-utama/'.$parameter->id.'/simpan') }}" id="form-lke-score" method="post">
                @csrf
                <div class="modal-body grid columns-12 gap-4 gap-y-3">
                    <div class="g-col-12">
                        <input type="hidden" name="lke_bobot_id" id="lke_bobot_id">
                        <input type="hidden" name="instansi_id" id="instansi_id">
                        <table class="table">
                            <tr>
                                <td class="w-32"><strong>Instansi</strong></td>
                                <td id="nama_instansi"></td>
                            </tr>
                        </table>
                        <div class="form-group">
                            <label for="score" class="form-label mt-2">Skor <span class="text-danger">*</span></label>
                            <input type="text" name="score" id="score" placeholder="Skor" class="form-control" required>
                            <span><b>Min: </b></span><span id="min"></span>, <span><b>Max: </b></span><span
                                id="max"></span>
                        </div>
                        <div class="form-group">
                            <label for="catatan" class="form-label mt-2">Catatan</label>
                            <textarea id="catatan" name="catatan" class="form-control" placeholder="Catatan"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="rekomendasi" class="form-label mt-2">Rekomendasi</label>
                            <textarea id="rekomendasi" name="rekomendasi" class="form-control"
                                placeholder="Rekomendasi"></textarea>
                        </div>

                        {{-- SANGGAH SECTION (DEV PURPOSE) --}}
                        <div class="form-group mt-4 border-t pt-4">
                            <label class="form-label font-bold">Dokumen Sanggah</label>

                            <div id="sanggah-dokumen" class="text-sm text-slate-600 mb-2">
                                Belum ada sanggah
                            </div>

                            <div class="flex gap-2 mt-2">
                                <button
                                    type="button"
                                    class="btn btn-success btn-sm"
                                    onclick="updateSanggahStatus('terima')"
                                >
                                    Terima
                                </button>

                                <button
                                    type="button"
                                    class="btn btn-danger btn-sm"
                                    onclick="updateSanggahStatus('tolak')"
                                >
                                    Tolak
                                </button>
                            </div>

                            <div class="mt-2 text-xs">
                                Status:
                                <span id="sanggah-status" class="font-medium text-slate-500">
                                    belum ada
                                </span>
                            </div>
                        </div>

                    </div>
                </div> <!-- END: Modal Body -->
                <!-- BEGIN: Modal Footer -->
                <div class="modal-footer text-end">
                    <button type="button" data-tw-dismiss="modal"
                        class="btn btn-outline-secondary w-20 me-1">Batal</button>
                    <button type="submit" class="btn btn-success w-20 saveButton">Simpan</button>
                </div> <!-- END: Modal Footer -->
            </form>
        </div>
    </div>
</div> <!-- END: Modal Content -->

{{-- Modal Form Import Rencana Aksi --}}
<div id="modal-import_lke" class="modal fade" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <!-- BEGIN: Modal Header -->
            <div class="darkbg modal-header">
                <h2 class="font-bold fw-medium fs-base me-auto" id="title">Import Rencana Aksi</h2>
            </div> <!-- END: Modal Header -->
            <!-- BEGIN: Modal Body -->
            <form action="{{ url('evaluasi/lke-utama/'.$parameter->id.'/import') }}" id="form-import_lke" method="post"
                enctype="multipart/form-data">
                @csrf
                <div class="modal-body grid columns-12 gap-4 gap-y-3">
                    <div class="g-col-12">
                        <input type="file" id="file_lke" name="file_lke"
                            accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" required>
                    </div>
                    <div class="g-col-12">
                        <span class="text-danger font-bold"><i>* File LKE yang diupload hanya untuk Indikator :
                                <strong>{{ $parameter->nama }}</strong>!</i></span>
                    </div>
                </div> <!-- END: Modal Body -->
                <!-- BEGIN: Modal Footer -->
                <div class="modal-footer text-end">
                    <button type="button" data-tw-dismiss="modal"
                        class="btn btn-outline-secondary w-20 me-1">Batal</button>
                    <button type="submit" class="btn btn-primary w-20 saveButton">Import</button>
                </div> <!-- END: Modal Footer -->
            </form>
        </div>
    </div>
</div> <!-- END: Modal Content -->
@endif
@endsection

@push('js')
<script src="{{ asset('ext/jquery-validation/jquery.validate.min.js') }}"></script>
<script src="{{ asset('ext/jquery-validation/localization/messages_id.min.js') }}"></script>
<script src="{{ asset('ext') }}/jquery-inputmask/jquery.inputmask.bundle.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script src="https://cdn.rawgit.com/ashl1/datatables-rowsgroup/v1.0.0/dataTables.rowsGroup.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.2.3/js/dataTables.buttons.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.html5.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    $(document).ready(function() {
        getData();

        @if ((in_array($user->level, ['tpn', 'tpm']) && $parameter->penilai_id == $user->penilai_id && hasAksesHasilEvaluasi()) || ($user->level == 'admin'))
        modal_lke_score = tailwind.Modal.getInstance(document.querySelector("#modal-lke_score"));
        modal_import_lke = tailwind.Modal.getInstance(document.querySelector("#modal-import_lke"));

        $('#form-lke-score').validate({
            highlight: function (input) {
                $(input).addClass('border-danger');
            },
            unhighlight: function (input) {
                $(input).removeClass('border-danger');
            },
            errorPlacement: function( error, element ) {
                var placement = element.closest('.form-group');
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
                $.ajax({
                    url: form.action,
                    type: form.method,
                    data: new FormData(form),
                    processData: false,
                    contentType: false,
                    dataType: "json",
                    success: function(data) {
                        $('.saveButton').prop('disabled', false);
                        if (data.success) {
                            Swal.fire('Selamat!', 'Data Skor berhasil disimpan!', 'success');
                            modal_lke_score.hide();
                        } else {
                            Swal.fire('Aduh!', 'Data Skor gagal disimpan!<br>'+data.message, 'error');
                            modal_lke_score.hide();
                        }
                        getData();
                    },
                    error: function(err) {
                        Swal.fire('Error!', 'Terjadi kesalahan!', 'error');
                        $('.saveButton').prop('disabled', false);
                    }
                });
            }
        });

        $('#file_lke').change(function() {
            cek_file(this);
        })
        @endif
    });

    var lke_utama_score = $('#lke_utama_score').DataTable( {
        responsive: true,
        processing: true,
        ordering: true,
        dom: 'Blfrtip',
        buttons: [
            {
                extend: 'pdf',
                text: '<button class="btn btn-danger w-32 mr-2 mb-2"><svg fill="#ffffff" height="24px" width="24px" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 482.14 482.14" xml:space="preserve" stroke="#ffffff"> <g id="SVGRepo_bgCarrier" stroke-width="0"/> <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"/> <g id="SVGRepo_iconCarrier"> <g> <path d="M142.024,310.194c0-8.007-5.556-12.782-15.359-12.782c-4.003,0-6.714,0.395-8.132,0.773v25.69 c1.679,0.378,3.743,0.504,6.588,0.504C135.57,324.379,142.024,319.1,142.024,310.194z"/> <path d="M202.709,297.681c-4.39,0-7.227,0.379-8.905,0.772v56.896c1.679,0.394,4.39,0.394,6.841,0.394 c17.809,0.126,29.424-9.677,29.424-30.449C230.195,307.231,219.611,297.681,202.709,297.681z"/> <path d="M315.458,0H121.811c-28.29,0-51.315,23.041-51.315,51.315v189.754h-5.012c-11.418,0-20.678,9.251-20.678,20.679v125.404 c0,11.427,9.259,20.677,20.678,20.677h5.012v22.995c0,28.305,23.025,51.315,51.315,51.315h264.223 c28.272,0,51.3-23.011,51.3-51.315V121.449L315.458,0z M99.053,284.379c6.06-1.024,14.578-1.796,26.579-1.796 c12.128,0,20.772,2.315,26.58,6.965c5.548,4.382,9.292,11.615,9.292,20.127c0,8.51-2.837,15.745-7.999,20.646 c-6.714,6.32-16.643,9.157-28.258,9.157c-2.585,0-4.902-0.128-6.714-0.379v31.096H99.053V284.379z M386.034,450.713H121.811 c-10.954,0-19.874-8.92-19.874-19.889v-22.995h246.31c11.42,0,20.679-9.25,20.679-20.677V261.748 c0-11.428-9.259-20.679-20.679-20.679h-246.31V51.315c0-10.938,8.921-19.858,19.874-19.858l181.89-0.19v67.233 c0,19.638,15.934,35.587,35.587,35.587l65.862-0.189l0.741,296.925C405.891,441.793,396.987,450.713,386.034,450.713z M174.065,369.801v-85.422c7.225-1.15,16.642-1.796,26.58-1.796c16.516,0,27.226,2.963,35.618,9.282 c9.031,6.714,14.704,17.416,14.704,32.781c0,16.643-6.06,28.133-14.453,35.224c-9.157,7.612-23.096,11.222-40.125,11.222 C186.191,371.092,178.966,370.446,174.065,369.801z M314.892,319.226v15.996h-31.23v34.973h-19.74v-86.966h53.16v16.122h-33.42 v19.875H314.892z"/> </g> </g> </svg> &nbsp;PDF </button>',
                titleAttr: 'Download PDF',
                exportOptions: {
                    columns: [0, 1, 2, 3, 4, 5]
                },
                orientation: 'landscape',
                pageSize: 'A4'
            },
            {
                extend: 'excel',
                text: '<button class="btn btn-warning w-32 mr-2 mb-2"> <svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 50 50" width="24px" height="24px"><path d="M 28.875 0 C 28.855469 0.0078125 28.832031 0.0195313 28.8125 0.03125 L 0.8125 5.34375 C 0.335938 5.433594 -0.0078125 5.855469 0 6.34375 L 0 43.65625 C -0.0078125 44.144531 0.335938 44.566406 0.8125 44.65625 L 28.8125 49.96875 C 29.101563 50.023438 29.402344 49.949219 29.632813 49.761719 C 29.859375 49.574219 29.996094 49.296875 30 49 L 30 44 L 47 44 C 48.09375 44 49 43.09375 49 42 L 49 8 C 49 6.90625 48.09375 6 47 6 L 30 6 L 30 1 C 30.003906 0.710938 29.878906 0.4375 29.664063 0.246094 C 29.449219 0.0546875 29.160156 -0.0351563 28.875 0 Z M 28 2.1875 L 28 6.53125 C 27.867188 6.808594 27.867188 7.128906 28 7.40625 L 28 42.8125 C 27.972656 42.945313 27.972656 43.085938 28 43.21875 L 28 47.8125 L 2 42.84375 L 2 7.15625 Z M 30 8 L 47 8 L 47 42 L 30 42 L 30 37 L 34 37 L 34 35 L 30 35 L 30 29 L 34 29 L 34 27 L 30 27 L 30 22 L 34 22 L 34 20 L 30 20 L 30 15 L 34 15 L 34 13 L 30 13 Z M 36 13 L 36 15 L 44 15 L 44 13 Z M 6.6875 15.6875 L 12.15625 25.03125 L 6.1875 34.375 L 11.1875 34.375 L 14.4375 28.34375 C 14.664063 27.761719 14.8125 27.316406 14.875 27.03125 L 14.90625 27.03125 C 15.035156 27.640625 15.160156 28.054688 15.28125 28.28125 L 18.53125 34.375 L 23.5 34.375 L 17.75 24.9375 L 23.34375 15.6875 L 18.65625 15.6875 L 15.6875 21.21875 C 15.402344 21.941406 15.199219 22.511719 15.09375 22.875 L 15.0625 22.875 C 14.898438 22.265625 14.710938 21.722656 14.5 21.28125 L 11.8125 15.6875 Z M 36 20 L 36 22 L 44 22 L 44 20 Z M 36 27 L 36 29 L 44 29 L 44 27 Z M 36 35 L 36 37 L 44 37 L 44 35 Z"/></svg>  &nbsp;Excel </button>',
                titleAttr: 'Download Excel'
            }
        ],
        ajax: {
            url: "{{url('emptyDT')}}",
            data: function(d) {
                d.kegiatan_id = $('#kegiatan_id').val();
            }
        },
        columns: [
            {
                data: null,
                sortable: false, 
                searchable: false,
                render: function (data, type, row, meta) {
                    return meta.row + meta.settings._iDisplayStart + 1;
                }
            },
            { data: 'group_instansi' },
            { data: 'nama_instansi' },
            { data: 'bobot' },
            { data: 'target_baik' },
            { data: 'score' },
            { data: 'score_index' },
            { data: 'catatan' },
            { data: 'rekomendasi' },
            { 
                sortable: false, 
                searchable: false,
                render: function (data, type, row, meta) {
                    @if ((in_array($user->level, ['tpn', 'tpm']) && $parameter->penilai_id == $user->penilai_id && hasAksesHasilEvaluasi()) || ($user->level == 'admin'))
                    return '<button onclick="edit('+row.instansi_id+', '+row.lke_bobot_id+');" class="btn btn-warning btn-sm w-10">Edit</button>';
                    @else
                    return '';
                    @endif
                },
            },
        ],
		columnDefs: [
			{
				targets: [5, 6],
				render: $.fn.dataTable.render.number('.', ',', 2, '')
			}
		]
    }); 

    function getData() {
        lke_utama_score.ajax.url("{{url('evaluasi/lke-utama/'.$parameter->id.'/getDatas')}}").load(null, false);
    }

    @if ((in_array($user->level, ['tpn', 'tpm']) && $parameter->penilai_id == $user->penilai_id && hasAksesHasilEvaluasi()) || ($user->level == 'admin'))
    
    function edit(instansi_id, lke_bobot_id) {
        $.getJSON("{{url('evaluasi/lke-utama/'.$parameter->id.'/getData')}}/"+instansi_id+"/"+lke_bobot_id, function(data) {
            $('#instansi_id').val(instansi_id);
            $('#lke_bobot_id').val(lke_bobot_id);
            $('#nama_instansi').html(data.nama_instansi);
            $('#min').html(data.min);
            $('#max').html(data.max);
            $('#score').val(data.score);
            $('#rekomendasi').val(data.rekomendasi);
            $('#catatan').val(data.catatan);
            $("#score").inputmask("decimal",{
                radixPoint:",",
                groupSeparator: ".",
                digits: 2,
                autoGroup: true,
                rightAlign: false,
                min: data.min,
                max: data.max,
            });

            loadSanggah(data.id)

            modal_lke_score.show();
        });
    }

    let currentTpLineId = null;

    function loadSanggah(tpLineId) {
        currentTpLineId = tpLineId;

        $.getJSON(
            "{{ url('evaluasi/dev-sanggah') }}/" + tpLineId,
            function (res) {
                if (!res || !res.id) {
                    $('#sanggah-dokumen').text('Belum ada sanggah');
                    $('#sanggah-status').text('belum ada');
                    return;
                }

                if (res.dokumen) {
                    const url = "{{ asset('storage/app/public/sanggah') }}/" + res.dokumen;
                    $('#sanggah-dokumen').html(
                        `<a href="${url}" target="_blank" class="text-primary underline">
                            Download Dokumen
                        </a>`
                    );
                } else {
                    $('#sanggah-dokumen').text('Belum ada sanggah');
                }

                $('#sanggah-status').text(res.status);
            }
        );
    }

    function updateSanggahStatus(status) {
        if (!currentTpLineId) return;

        $.post(
            "{{ url('evaluasi/dev-sanggah/update') }}",
            {
                _token: "{{ csrf_token() }}",
                tp_line_id: currentTpLineId,
                status: status
            },
            function () {
                $('#sanggah-status').text(status);
                Swal.fire('OK', 'Status sanggah diperbarui', 'success');
            }
        );
    }


    function importLke() {
        modal_import_lke.show();
    }

    function cek_file(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                filename = $('#file_rencana_aksi').val();
                var parts = filename.split('.');
                var ext = parts[parts.length - 1];
                if (ext != 'xlsx') {
                    Swal.fire("Perhatian", "File yang di input tidak sesuai ketentuan (xlsx). Silahkan download template LKE {{ $parameter->nama }} terlebih dahulu!", "error");
                    $('#file_rencana_aksi').val('');
                }
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    @endif
</script>
@endpush