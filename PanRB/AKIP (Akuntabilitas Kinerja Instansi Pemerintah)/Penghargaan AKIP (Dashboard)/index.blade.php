@extends('layout.midone', ['akip' => true])
@section('title', 'Penghargaan AKIP')

@section('content')
    <div class="intro-y flex flex-col sm:flex-row items-center mt-8">
        <h2 class="text-lg font-medium mr-auto">
            Penghargaan AKIP
        </h2>
    </div>

    <!-- Overall Statistics -->
    <div class="grid grid-cols-1 md:grid-cols-4 gap-4 mt-5">
        <div class="intro-y box p-5">
            <div class="flex items-center">
                <div class="mr-4">
                    <div class="w-12 h-12 rounded-full bg-blue-100 flex items-center justify-center">
                        <i data-feather="layers" class="w-6 h-6 text-blue-600"></i>
                    </div>
                </div>
                <div>
                    <div class="text-gray-500 text-sm">Total Instansi</div>
                    <div class="text-2xl font-bold">{{ $overallStatistics['total_instansi'] }}</div>
                </div>
            </div>
        </div>
        <div class="intro-y box p-5">
            <div class="flex items-center">
                <div class="mr-4">
                    <div class="w-12 h-12 rounded-full bg-green-100 flex items-center justify-center">
                        <i data-feather="check-circle" class="w-6 h-6 text-green-600"></i>
                    </div>
                </div>
                <div>
                    <div class="text-gray-500 text-sm">Sudah Upload</div>
                    <div class="text-2xl font-bold text-green-600">{{ $overallStatistics['sudah_upload'] }}</div>
                </div>
            </div>
        </div>
        <div class="intro-y box p-5">
            <div class="flex items-center">
                <div class="mr-4">
                    <div class="w-12 h-12 rounded-full bg-red-100 flex items-center justify-center">
                        <i data-feather="alert-circle" class="w-6 h-6 text-red-600"></i>
                    </div>
                </div>
                <div>
                    <div class="text-gray-500 text-sm">Belum Upload</div>
                    <div class="text-2xl font-bold text-red-600">{{ $overallStatistics['belum_upload'] }}</div>
                </div>
            </div>
        </div>
        <div class="intro-y box p-5">
            <div class="flex items-center">
                <div class="mr-4">
                    <div class="w-12 h-12 rounded-full bg-purple-100 flex items-center justify-center">
                        <i data-feather="pie-chart" class="w-6 h-6 text-purple-600"></i>
                    </div>
                </div>
                <div>
                    <div class="text-gray-500 text-sm">Persentase</div>
                    <div class="text-2xl font-bold text-purple-600">{{ $overallStatistics['persentase'] }}%</div>
                </div>
            </div>
        </div>
    </div>

    <!-- Statistics per Tim -->
    @if(count($timStatistics) > 0)
        <div class="intro-y box p-5 mt-5">
            <div class="flex items-center mb-4 pb-4 border-b border-gray-200">
                <h3 class="font-medium text-base mr-auto">Statistik Per Tim</h3>
            </div>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                @foreach($timStatistics as $stat)
                    @if($stat['total_instansi'] > 0)
                        <div class="border border-gray-200 rounded-lg p-4">
                            <div class="flex justify-between items-center mb-3">
                                <h4 class="font-semibold text-sm">{{ $stat['tim_nama'] }}</h4>
                                <span
                                    class="text-xs font-medium px-2 py-1 rounded-full {{ $stat['persentase'] >= 80 ? 'bg-green-100 text-green-800' : ($stat['persentase'] >= 50 ? 'bg-yellow-100 text-yellow-800' : 'bg-red-100 text-red-800') }}">
                                    {{ $stat['persentase'] }}%
                                </span>
                            </div>
                            <div class="mb-3">
                                <div class="w-full bg-gray-200 rounded-full h-2">
                                    <div class="h-2 rounded-full {{ $stat['persentase'] >= 80 ? 'bg-green-500' : ($stat['persentase'] >= 50 ? 'bg-yellow-500' : 'bg-red-500') }}"
                                        style="width: {{ $stat['persentase'] }}%"></div>
                                </div>
                            </div>
                            <div class="flex justify-between text-xs text-gray-600">
                                <span><i data-feather="check-circle"
                                        class="w-3 h-3 inline mr-1 text-green-500"></i>{{ $stat['sudah_upload'] }} sudah</span>
                                <span><i data-feather="alert-circle"
                                        class="w-3 h-3 inline mr-1 text-red-500"></i>{{ $stat['belum_upload'] }} belum</span>
                            </div>
                        </div>
                    @endif
                @endforeach
            </div>
        </div>
    @endif

    <!-- Filter & Actions -->
    <div class="intro-y box p-5 mt-5">
        <div class="flex items-center justify-between gap-4 flex-wrap">
            <!-- Filter Tahun & Tim -->
            <form method="GET" action="{{ route('akip.penghargaan.index') }}" id="filterForm" class="w-full">
                <div class="flex items-center gap-4 flex-wrap">
                    <div class="flex flex-col">
                        <label class="block text-sm font-medium text-gray-700 mb-1">Tahun</label>
                        <select name="tahun" id="tahun"
                            class="px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 bg-white min-w-[150px]">
                            <option value="">Semua Tahun</option>
                            @for($year = date('Y'); $year >= 2020; $year--)
                                <option value="{{ $year }}" {{ $tahun == $year ? 'selected' : '' }}>{{ $year }}</option>
                            @endfor
                        </select>
                    </div>
                    <div class="flex flex-col">
                        <label class="block text-sm font-medium text-gray-700 mb-1">Tim</label>
                        <select name="tim_id" id="tim_id"
                            class="px-12 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 bg-white min-w-[200px]">
                            <option value="">Semua Tim</option>
                            @foreach($timOptions as $tim)
                                <option value="{{ $tim->id }}" {{ $tim_id == $tim->id ? 'selected' : '' }}>{{ $tim->nama }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <button type="submit"
                        class="flex items-center gap-2 px-4 py-2 mt-6 bg-blue-600 hover:bg-blue-700 text-white rounded-md">
                        <i data-feather="search" class="w-4 h-4"></i> Filter
                    </button>
                    <a href="{{ route('akip.penghargaan.index') }}"
                        class="flex items-center gap-2 px-4 py-2 mt-6 bg-gray-600 hover:bg-gray-700 text-white rounded-md">
                        <i data-feather="x-circle" class="w-4 h-4"></i> Reset
                    </a>
                </div>

                <!-- Hidden input to preserve search -->
                <input type="hidden" name="search" value="{{ $search ?? '' }}">
            </form>
        </div>
    </div>

    <!-- Tabel Penghargaan -->
    <div class="intro-y box p-5 mt-5">
        <div class="flex items-center mb-5 pb-5 border-b border-gray-200">
            <h3 class="font-medium text-base mr-auto">
                Daftar Penghargaan - Tahun {{ $tahun }}
            </h3>
        </div>

        <!-- DataTables -->
        <div class="table-container overflow-x-auto">
            <table id="table-penghargaan" class="table table-bordered table-striped table-hover" cellspacing="0"
                width="100%">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama Instansi</th>
                        <th>Group</th>
                        <th>Tim</th>
                        <th>Tahun</th>
                        <th>Status</th>
                        <th class="text-center">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- DataTables will handle rendering -->
                </tbody>
            </table>
        </div>
    </div>

    <!-- Modal Tambah/Edit Penghargaan -->
    <div class="modal fade" id="penghargaanModal" tabindex="-1" role="dialog" aria-labelledby="penghargaanModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header flex items-center justify-between">
                    <h5 class="modal-title" id="penghargaanModalLabel">Upload Penghargaan</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="penghargaanForm" enctype="multipart/form-data">
                        <input type="hidden" id="penghargaanId" name="penghargaan_id">
                        <input type="hidden" id="instansi_id" name="instansi_id">
                        <input type="hidden" id="modal_tahun" name="tahun">
                        <input type="hidden" id="isEdit" name="is_edit" value="0">

                        <div class="space-y-4">
                            <!-- Display Only - Nama Instansi -->
                            <div>
                                <label class="block text-sm font-medium text-gray-700 mb-1">Nama Instansi</label>
                                <div id="display_instansi"
                                    class="px-3 py-2 bg-gray-100 border border-gray-300 rounded-md font-semibold text-gray-800">
                                    -
                                </div>
                            </div>

                            <!-- Display Only - Tahun -->
                            <div>
                                <label class="block text-sm font-medium text-gray-700 mb-1">Tahun Penghargaan</label>
                                <div id="display_tahun"
                                    class="px-3 py-2 bg-gray-100 border border-gray-300 rounded-md font-semibold text-gray-800">
                                    -
                                </div>
                            </div>

                            <!-- File Sertifikat -->
                            <div>
                                <label class="block text-sm font-medium text-gray-700 mb-1">File Sertifikat <span
                                        class="text-red-500">*</span></label>
                                <input type="file" id="file_sertifikat" name="file_sertifikat"
                                    class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
                                    accept=".pdf,.jpg,.jpeg,.png">
                                <p class="mt-1 text-xs text-gray-500">Format: PDF, JPG, PNG (Maksimal 20MB)</p>
                                <p id="existingFile" class="mt-1 text-sm text-blue-600 hidden"></p>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button"
                        class="px-4 py-2 border border-gray-300 rounded-md text-gray-700 bg-white hover:bg-gray-50"
                        data-dismiss="modal">Batal</button>
                    <button type="button" id="submitBtn" onclick="submitForm()"
                        class="px-4 py-2 border border-transparent rounded-md text-white bg-blue-600 hover:bg-blue-700">
                        <i data-feather="save" class="w-4 h-4 inline mr-1"></i> Simpan
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- Success Modal -->
    <div class="modal fade" id="successModal" tabindex="-1" role="dialog" aria-labelledby="successModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body text-center py-8">
                    <div class="mx-auto flex items-center justify-center h-16 w-16 rounded-full bg-green-100 mb-4">
                        <i data-feather="check" class="w-8 h-8 text-green-600"></i>
                    </div>
                    <h5 class="text-xl font-semibold text-green-600 mb-2" id="successTitle">Berhasil!</h5>
                    <p class="text-sm text-gray-600" id="successMessage">Data penghargaan berhasil disimpan</p>
                </div>
                <div class="modal-footer">
                    <button type="button" onclick="closeSuccessModal()"
                        class="w-full px-4 py-2 border border-transparent rounded-md text-white bg-green-600 hover:bg-green-700">
                        OK
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- Error Modal -->
    <div class="modal fade" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="errorModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body text-center py-8">
                    <div class="mx-auto flex items-center justify-center h-16 w-16 rounded-full bg-red-100 mb-4">
                        <i data-feather="x" class="w-8 h-8 text-red-600"></i>
                    </div>
                    <h5 class="text-xl font-semibold text-red-600 mb-2">Gagal!</h5>
                    <p class="text-sm text-gray-600" id="errorMessage">Terjadi kesalahan saat menyimpan data</p>
                </div>
                <div class="modal-footer">
                    <button type="button" onclick="closeErrorModal()"
                        class="w-full px-4 py-2 border border-transparent rounded-md text-white bg-red-600 hover:bg-red-700">
                        OK
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- Delete Confirmation Modal -->
    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="deleteModalLabel">Hapus Penghargaan</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body text-center">
                    <div class="mx-auto flex items-center justify-center h-12 w-12 rounded-full bg-red-100">
                        <i data-feather="alert-triangle" class="w-6 h-6 text-red-600"></i>
                    </div>
                    <div class="mt-4">
                        <p class="text-sm text-gray-500">
                            Apakah Anda yakin ingin menghapus data penghargaan ini? Tindakan ini tidak dapat dibatalkan.
                        </p>
                    </div>
                    <input type="hidden" id="deletePenghargaanId">
                </div>
                <div class="modal-footer">
                    <button type="button"
                        class="px-4 py-2 border border-gray-300 rounded-md text-gray-700 bg-white hover:bg-gray-50"
                        data-dismiss="modal">Batal</button>
                    <button type="button" onclick="confirmDelete()"
                        class="px-4 py-2 border border-transparent rounded-md text-white bg-red-600 hover:bg-red-700">Hapus</button>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('css')
    <style>
        /* Bootstrap Modal z-index - Above ALL elements */
        #penghargaanModal,
        #deleteModal,
        #successModal,
        #errorModal {
            z-index: 99999 !important;
        }

        .modal-backdrop {
            z-index: 99998 !important;
            background-color: rgba(0, 0, 0, 0.5) !important;
        }

        #penghargaanModal .modal-content,
        #deleteModal .modal-content,
        #successModal .modal-content,
        #errorModal .modal-content {
            z-index: 100000 !important;
            max-width: 500px !important;
            width: 100% !important;
            margin: 0 auto !important;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2) !important;
            border-radius: 0.5rem !important;
        }

        #penghargaanModal .modal-dialog,
        #deleteModal .modal-dialog,
        #successModal .modal-dialog,
        #errorModal .modal-dialog {
            max-width: 500px !important;
            margin: 1.75rem auto !important;
        }

        .modal-header {
            border-bottom: 1px solid #dee2e6;
            padding: 1.25rem;
            background-color: #f8f9fa;
            border-top-left-radius: 0.5rem;
            border-top-right-radius: 0.5rem;
        }

        .modal-header h5 {
            font-weight: 600;
            color: #1f2937;
        }

        .modal-body {
            padding: 1.5rem;
            background-color: #fff;
        }

        .modal-footer {
            border-top: 1px solid #dee2e6;
            padding: 1.25rem;
            background-color: #f8f9fa;
            border-bottom-left-radius: 0.5rem;
            border-bottom-right-radius: 0.5rem;
        }

        .dataTables_wrapper .dataTables_length,
        .dataTables_wrapper .dataTables_filter {
            margin-bottom: 1rem;
            display: flex;
            align-items: center;
        }

        .dataTables_wrapper .dataTables_length {
            float: left;
        }

        .dataTables_wrapper .dataTables_filter {
            float: right;
        }

        .dataTables_wrapper .dataTables_paginate {
            margin-top: 1rem;
            text-align: center;
        }

        .table th {
            background-color: #1f2937;
            color: white;
            font-weight: 600;
            border: 1px solid #374151;
        }

        .table td {
            border: 1px solid #e5e7eb;
        }

        .table {
            border-collapse: collapse;
            border: 1px solid #e5e7eb;
        }

        .dataTables_wrapper .dataTables_filter input,
        .dataTables_wrapper .dataTables_length select {
            border: 1px solid #d1d5db;
            border-radius: 0.375rem;
            padding: 0.5rem 0.75rem;
        }

        .dataTables_wrapper .dataTables_paginate .paginate_button {
            border: 1px solid #d1d5db;
            border-radius: 0.375rem;
            padding: 0.5rem 0.75rem;
            margin: 0 0.125rem;
            background: white;
            color: #374151;
        }

        .dataTables_wrapper .dataTables_paginate .paginate_button:hover {
            background: #f3f4f6;
            border-color: #9ca3af;
        }

        .dataTables_wrapper .dataTables_paginate .paginate_button.current {
            background: #3b82f6;
            border-color: #3b82f6;
            color: white;
        }

        .dataTables_wrapper .dataTables_paginate .paginate_button.disabled {
            background: #f9fafb;
            color: #9ca3af;
            cursor: not-allowed;
        }

        .overflow-x-auto {
            overflow-y: visible !important;
        }

        .intro-y.box {
            overflow: visible !important;
        }

        .table-container {
            overflow: visible !important;
            height: auto !important;
        }

        /* Status badge styling */
        .badge-status {
            padding: 0.25rem 0.75rem;
            border-radius: 9999px;
            font-size: 0.75rem;
            font-weight: 600;
            display: inline-block;
        }

        .badge-success {
            background-color: #d1fae5;
            color: #065f46;
        }

        .badge-warning {
            background-color: #fef3c7;
            color: #92400e;
        }

        /* File input styling */
        input[type="file"]::file-selector-button {
            margin-right: 1rem;
            padding: 0.5rem 1rem;
            border-radius: 0.375rem;
            border: 1px solid #d1d5db;
            background-color: #f9fafb;
            color: #374151;
            cursor: pointer;
            transition: all 0.2s;
        }

        input[type="file"]::file-selector-button:hover {
            background-color: #e5e7eb;
        }
    </style>
@endpush

@push('js')
    <script>
        window.isTpn = {{ in_array(auth()->user()->level, ['tpn', 'admin']) ? 'true' : 'false' }};
        window.currentTahun = {{ $tahun }};

        $(document).ready(function () {
            // Function to submit filter form
            window.submitFilterForm = function () {
                console.log('submitFilterForm called, submitting filter form...');
                $('#filterForm').submit();
            };

            // Initialize DataTable
            var table = $('#table-penghargaan').DataTable({
                data: @json($instansiData),
                columns: [
                    {
                        data: null,
                        render: function (data, type, row, meta) {
                            return meta.row + 1;
                        }
                    },
                    {
                        data: 'name',
                        defaultContent: 'N/A'
                    },
                    {
                        data: 'group',
                        defaultContent: 'N/A',
                        render: function (data, type, row) {
                            if (!data) return 'N/A';
                            var group = data.toLowerCase();
                            var colorClass = 'bg-gray-100 text-gray-800';
                            if (group === 'kl') colorClass = 'bg-blue-100 text-blue-800';
                            else if (group === 'provinsi') colorClass = 'bg-purple-100 text-purple-800';
                            else if (group === 'kabupaten') colorClass = 'bg-green-100 text-green-800';

                            return '<span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium ' + colorClass + '">' +
                                data.toUpperCase() + '</span>';
                        }
                    },
                    {
                        data: 'tim_nama',
                        defaultContent: '-',
                        width: '180px',
                        render: function (data, type, row) {
                            return data ? data : '-';
                        }
                    },
                    { data: null, render: function () { return window.currentTahun; } },
                    {
                        data: 'penghargaan_id',
                        width: '180px',
                        render: function (data, type, row) {
                            if (data) {
                                return '<span class="badge-status badge-success">Sudah Upload</span>';
                            } else {
                                return '<span class="badge-status badge-warning">Belum Upload</span>';
                            }
                        }
                    },
                    {
                        data: null,
                        orderable: false,
                        width: '180px',
                        render: function (data, type, row) {
                            var actions = '';

                            if (row.penghargaan_id) {
                                // Sudah upload - tombol lihat dan edit
                                var downloadUrl = "{{ route('akip.penghargaan.download', ':id') }}".replace(':id', row.penghargaan_id);

                                actions += '<a href="' + downloadUrl + '" class="flex justify-center items-center px-2 py-1 border border-transparent text-xs font-medium rounded text-green-600 bg-green-100 hover:bg-green-200 mr-1" title="Lihat File">' +
                                    '<i data-feather="eye" class="w-4 h-4"></i></a>';

                                @if(in_array(auth()->user()->level, ['tpn', 'admin']))
                                    actions += '<button onclick="openModal(\'edit\', ' + row.penghargaan_id + ')" class="flex justify-center items-center px-2 py-1 border border-transparent text-xs font-medium rounded text-blue-600 bg-blue-100 hover:bg-blue-200 mr-1" title="Edit File">' +
                                        '<i data-feather="edit-2" class="w-4 h-4"></i></button>' +
                                        '<button onclick="openDeleteModal(' + row.penghargaan_id + ')" class="flex justify-center items-center px-2 py-1 border border-transparent text-xs font-medium rounded text-red-600 bg-red-100 hover:bg-red-200" title="Hapus">' +
                                        '<i data-feather="trash-2" class="w-4 h-4"></i></button>';
                                @endif
                                                                                            } else {
                                // Belum upload - tombol tambah
                                @if(in_array(auth()->user()->level, ['tpn', 'admin']))
                                    actions += '<button onclick="openModal(\'create\', null, ' + row.id + ')" class="flex justify-center items-center px-3 py-1 border border-transparent text-xs font-medium rounded text-blue-600 bg-blue-100 hover:bg-blue-200" title="Upload Penghargaan">' +
                                        '<i data-feather="upload" class="w-4 h-4 mr-1"></i> Upload</button>';
                                @endif
                                                                                            }

                            return '<div class="flex items-center">' + actions + '</div>';
                        }
                    }
                ],
                pageLength: 25,
                lengthMenu: [[10, 25, 50, -1], [10, 25, 50, "Semua"]],
                language: {
                    search: "Cari:",
                    lengthMenu: "Tampilkan _MENU_ data per halaman",
                    zeroRecords: "Data tidak ditemukan",
                    info: "Menampilkan _START_ sampai _END_ dari _TOTAL_ data",
                    infoEmpty: "Menampilkan 0 sampai 0 dari 0 data",
                    infoFiltered: "(disaring dari _MAX_ total data)",
                    paginate: {
                        first: "Pertama",
                        last: "Terakhir",
                        next: "Selanjutnya",
                        previous: "Sebelumnya"
                    }
                },
                drawCallback: function () {
                    feather.replace();
                }
            });

            // Handle year filter form submission
            $('#tahun').on('change', function (e) {
                $('#filterForm').submit();
            });

            // Handle tim filter form submission
            $('#tim_id').on('change', function (e) {
                $('#filterForm').submit();
            });
        });

        // Form submission handler
        function submitForm() {
            var id = $('#penghargaanId').val();
            var isEdit = $('#isEdit').val() === '1';
            var fileInput = document.getElementById('file_sertifikat');

            // Validasi file
            if (fileInput.files.length > 0) {
                var file = fileInput.files[0];
                var maxSize = 20 * 1024 * 1024; // 20MB
                if (file.size > maxSize) {
                    showErrorModal('Ukuran file terlalu besar. Maksimal 20MB.');
                    return;
                }
            } else if (!isEdit) {
                showErrorModal('Harap pilih file sertifikat.');
                return;
            }

            // Disable submit button and show loading
            var submitBtn = $('#submitBtn');
            submitBtn.prop('disabled', true).html('<i data-feather="loader" class="w-4 h-4 inline mr-1 animate-spin"></i> Menyimpan...');
            feather.replace();

            // URL dinamis
            var url = isEdit
                ? "{{ route('akip.penghargaan.update', ':id') }}".replace(':id', id)
                : "{{ route('akip.penghargaan.store') }}";

            // Gunakan FormData karena ada upload file sertifikat
            var formData = new FormData(document.getElementById('penghargaanForm'));
            if (isEdit) formData.append('_method', 'PUT');

            $.ajax({
                url: url,
                type: 'POST',
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                data: formData,
                processData: false,
                contentType: false,
                success: function (response) {
                    if (response.success) {
                        $('#penghargaanModal').modal('hide');
                        showSuccessModal(response.message);
                        setTimeout(function () {
                            location.reload();
                        }, 2000);
                    } else {
                        showErrorModal(response.message);
                        submitBtn.prop('disabled', false).html('<i data-feather="save" class="w-4 h-4 inline mr-1"></i> Simpan');
                        feather.replace();
                    }
                },
                error: function (xhr) {
                    var error = xhr.responseJSON ? xhr.responseJSON.message : 'Terjadi kesalahan';
                    showErrorModal(error);
                    submitBtn.prop('disabled', false).html('<i data-feather="save" class="w-4 h-4 inline mr-1"></i> Simpan');
                    feather.replace();
                }
            });
        }

        // Open modal (create or edit)
        function openModal(mode, id = null, instansiId = null) {
            var form = document.getElementById('penghargaanForm');
            var fileInput = document.getElementById('file_sertifikat');
            var existingFile = document.getElementById('existingFile');

            if (mode === 'create' && instansiId) {
                // Tambah mode
                $('#penghargaanModalLabel').text('Upload Penghargaan');
                $('#isEdit').val('0');
                $('#penghargaanId').val('');
                $('#instansi_id').val(instansiId);
                $('#modal_tahun').val(window.currentTahun);
                form.reset();
                fileInput.setAttribute('required', 'required');
                existingFile.classList.add('hidden');

                // Get instansi name
                var instansiData = $('#table-penghargaan').DataTable().rows().data().toArray();
                var instansi = instansiData.find(function (i) { return i.id === instansiId; });
                if (instansi) {
                    $('#display_instansi').text(instansi.name);
                    $('#display_tahun').text(window.currentTahun);
                }

            } else if (mode === 'edit' && id) {
                // Edit mode
                $('#penghargaanModalLabel').text('Edit Penghargaan');
                $('#isEdit').val('1');
                $('#penghargaanId').val(id);
                fileInput.removeAttribute('required');
                existingFile.classList.remove('hidden');

                // Load existing data
                $.get("/akip/penghargaan/" + id, function (data) {
                    if (data.success && data.data) {
                        var penghargaan = data.data;
                        $('#instansi_id').val(penghargaan.instansi_id);
                        $('#modal_tahun').val(penghargaan.tahun);

                        // Display instansi name
                        var instansiData = $('#table-penghargaan').DataTable().rows().data().toArray();
                        var instansi = instansiData.find(function (i) { return i.id === penghargaan.instansi_id; });
                        if (instansi) {
                            $('#display_instansi').text(instansi.name);
                        } else {
                            $('#display_instansi').text(penghargaan.instansi ? penghargaan.instansi.name : '-');
                        }
                        $('#display_tahun').text(penghargaan.tahun);
                        existingFile.text('File saat ini: ' + penghargaan.file_sertifikat);
                    }
                }).fail(function () {
                    showErrorModal('Gagal memuat data penghargaan');
                });
            }

            // Show Bootstrap modal
            $('#penghargaanModal').modal('show');
            feather.replace();
        }

        // Success modal functions
        function showSuccessModal(message) {
            $('#successMessage').text(message || 'Data penghargaan berhasil disimpan');
            $('#successModal').modal('show');
            feather.replace();
        }

        function closeSuccessModal() {
            $('#successModal').modal('hide');
        }

        // Error modal functions
        function showErrorModal(message) {
            $('#errorMessage').text(message || 'Terjadi kesalahan saat menyimpan data');
            $('#errorModal').modal('show');
            feather.replace();
        }

        function closeErrorModal() {
            $('#errorModal').modal('hide');
        }

        // Open delete modal
        function openDeleteModal(id) {
            $('#deletePenghargaanId').val(id);
            $('#deleteModal').modal('show');
            feather.replace();
        }

        // Confirm delete
        function confirmDelete() {
            var id = $('#deletePenghargaanId').val();
            var url = "{{ route('akip.penghargaan.destroy', ':id') }}".replace(':id', id);

            $.ajax({
                url: url,
                type: 'DELETE',
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                success: function (response) {
                    if (response.success) {
                        $('#deleteModal').modal('hide');
                        showSuccessModal('Data penghargaan berhasil dihapus');
                        setTimeout(function () {
                            location.reload();
                        }, 2000);
                    } else {
                        showErrorModal(response.message);
                    }
                },
                error: function (xhr) {
                    var error = xhr.responseJSON ? xhr.responseJSON.message : 'Terjadi kesalahan';
                    showErrorModal(error);
                }
            });
        }
    </script>
@endpush