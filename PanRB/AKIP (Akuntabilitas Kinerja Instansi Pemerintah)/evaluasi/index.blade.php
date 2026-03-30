@extends('layout.midone', ['akip' => true])
@section('title', 'Hasil Evaluasi SAKIP')

@section('content')
    <!-- END: Top Bar -->
    <div class="intro-y flex flex-col sm:flex-row items-center mt-8">
        <h2 class="text-lg font-medium mr-auto">
            Hasil Evaluasi SAKIP {{ $tim ? $tim->nama . ' (' . $tim->keterangan . ')' : '' }}
        </h2>
    </div>

    <!-- Filter Tahun -->
    <div class="intro-y box p-5 mt-5">
        <div class="flex items-center mb-5 pb-5 border-b border-gray-200">
            <h3 class="font-medium text-base mr-auto">Filter Data</h3>
        </div>
        <form method="GET" action="{{ route('akip.evaluasi.index') }}" id="filterForm" class="flex items-center gap-4">
            <div class="flex-1 min-w-[200px]">
                @php
                    $tahunOptions = [];
                    for ($year = date('Y'); $year >= 2020; $year--) {
                        $tahunOptions[] = ['label' => $year, 'value' => $year];
                    }
                @endphp

                <x-bladewind::select
                    name="tahun"
                    id="tahun"
                    label="Tahun"
                    placeholder="Pilih Tahun"
                    :data="$tahunOptions"
                    selected_value="{{ $tahun }}"
                    searchable="true"
                    size="medium"
                    class="shadow-sm"
                />
            </div>
            <!-- Hidden inputs to preserve search terms -->
            <input type="hidden" name="search_kl" value="{{ $search_kl ?? '' }}">
            <input type="hidden" name="search_pemda" value="{{ $search_pemda ?? '' }}">
        </form>
    </div>

    <!-- Tabel Kementerian/Lembaga - Selalu tampilkan, tidak bergantung pada count -->
    <div class="intro-y box p-5 mt-5">
        <div class="flex items-center mb-5 pb-5 border-b border-gray-200">
            <h3 class="font-medium text-base mr-auto">
                Kementerian/Lembaga ({{ $anggota_kl->count() }} instansi) - Tahun {{ $tahun }}
            </h3>
        </div>

        <!-- DataTables will provide its own search -->
        <div class="table-container overflow-x-auto">
            <table id="table-kl" class="table table-bordered table-striped table-hover" cellspacing="0" width="100%">
                <thead>
                    <tr>
                <th>No</th>
                <th>Nama Instansi</th>
                <th>Group</th>
                <th>Status Evaluasi</th>
                <th class="text-center">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- DataTables will handle rendering -->
            </tbody>
            </table>
        </div>
    </div>

    <!-- Tabel Pemerintah Daerah - Selalu tampilkan, tidak bergantung pada count -->
    <div class="intro-y box p-5 mt-5">
        <div class="flex items-center mb-5 pb-5 border-b border-gray-200">
            <h3 class="font-medium text-base mr-auto">
                Pemerintah Daerah ({{ $anggota_pemda->count() }} instansi) - Tahun {{ $tahun }}
            </h3>
        </div>

        <!-- DataTables will provide its own search -->
        <div class="table-container overflow-x-auto">
            <table id="table-pemda" class="table table-bordered table-striped table-hover" cellspacing="0" width="100%">
                <thead>
                    <tr>
                <th>No</th>
                <th>Nama Instansi</th>
                <th>Group</th>
                        <th>Status Evaluasi TW1</th>
                        <th>Status Evaluasi TW2</th>
                        <th>Status Evaluasi TW3</th>
                        <th>Status Evaluasi TW4</th>
                <th class="text-center">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- DataTables will handle rendering -->
            </tbody>
            </table>
        </div>
    </div>

    <!-- Pesan jika tidak ada data -->
    @if($anggota_kl->count() == 0 && $anggota_pemda->count() == 0)
        <div class="intro-y box p-5 mt-5">
            <div class="text-center">
                <p class="text-gray-600">Tidak ada data instansi untuk tahun {{ $tahun }}.</p>
            </div>
        </div>
    @endif
@endsection

@push('css')
    <style>
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
        
        /* DataTables styling */
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

        /* Remove overflow-y and make card adjust to content */
        .overflow-x-auto {
            overflow-y: visible !important;
        }
        
        /* Make card containers adjust to table content */
        .intro-y.box {
            overflow: visible !important;
        }
        
        /* Ensure table containers don't have fixed heights */
        .table-container {
            overflow: visible !important;
            height: auto !important;
        }
    </style>
@endpush

@push('js')
    <script>
        $(document).ready(function() {
            // Helper function for status badges
            function renderStatusBadge(data, type, row) {
                if (data == 'sudah') {
                    return '<span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800">Sudah</span>';
                } else {
                    return '<span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">Belum</span>';
                }
            }

            // Initialize K/L DataTable
            var tableKl = $('#table-kl').DataTable({
                data: @json($anggota_kl->values()),
                columns: [
                    { 
                        data: null,
                        render: function(data, type, row, meta) {
                            return meta.row + 1;
                        }
                    },
                    { 
                        data: null,
                        render: function(data, type, row) {
                            return data.instansi ? data.instansi.name : 'No data';
                        }
                    },
                    { 
                        data: null,
                        render: function(data, type, row) {
                            if (data.instansi && data.instansi.group) {
                                return '<span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-blue-100 text-blue-800">' +
                                       data.instansi.group.charAt(0).toUpperCase() + data.instansi.group.slice(1) + '</span>';
                            }
                            return '';
                        }
                    },
                    { 
                        data: 'status_evaluasi',
                        render: function(data, type, row) {
                            if (data == 'sudah') {
                                return '<span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800">Sudah Dinilai</span>';
            } else {
                                return '<span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">Belum Dinilai</span>';
                            }
                        }
                    },
                    { 
                        data: 'instansi_id',
                        orderable: false,
                        render: function(data, type, row) {
                            return '<a href="{{ url("akip/evaluasi/sakip") }}/' + data + '" class="flex justify-center items-center px-3 py-1.5 border border-transparent text-xs font-medium rounded-md text-white bg-blue-600 hover:bg-blue-700">' +
                                   '<i data-feather="eye" class="w-4 h-4 mr-1"></i> Lihat Detail</a>';
                        }
                    }
                ],
                pageLength: 10,
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
                drawCallback: function() {
                    feather.replace();
                }
            });

            // Initialize Pemda DataTable
            var tablePemda = $('#table-pemda').DataTable({
                data: @json($anggota_pemda->values()),
                columns: [
                    { 
                        data: null,
                        render: function(data, type, row, meta) {
                            return meta.row + 1;
                        }
                    },
                    { 
                        data: null,
                        render: function(data, type, row) {
                            return data.instansi ? data.instansi.name : 'No data';
                        }
                    },
                    { 
                        data: null,
                        render: function(data, type, row) {
                            if (data.instansi && data.instansi.group) {
                                return '<span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-purple-100 text-purple-800">' +
                                       data.instansi.group.charAt(0).toUpperCase() + data.instansi.group.slice(1) + '</span>';
                            }
                            return '';
                        }
                    },
                    { data: 'status_tw1', render: renderStatusBadge },
                    { data: 'status_tw2', render: renderStatusBadge },
                    { data: 'status_tw3', render: renderStatusBadge },
                    { data: 'status_tw4', render: renderStatusBadge },
                    { 
                        data: 'instansi_id',
                        orderable: false,
                        width: '200px',
                        render: function(data, type, row) {
                            return '<a href="{{ url("akip/evaluasi/sakip") }}/' + data + '" class="flex justify-center items-center px-3 py-1.5 border border-transparent text-xs font-medium rounded-md text-white bg-blue-600 hover:bg-blue-700">' +
                                   '<i data-feather="eye" class="w-4 h-4 mr-1"></i> Lihat Detail</a>';
                        }
                    }
                ],
                pageLength: 10,
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
                drawCallback: function() {
                    feather.replace();
                }
            });

            // Handle year filter form submission
            // Multiple approaches to handle BladewindUI select component
            
            // Method 1: Direct select element change
            $(document).on('change', 'select[name="tahun"]', function() {
                console.log('Year changed via select[name="tahun"]:', $(this).val());
                $('#filterForm').submit();
            });
            
            // Method 2: BladewindUI specific selectors
            $(document).on('change', '.bw-select[name="tahun"] select, .bw-select select[name="tahun"]', function() {
                console.log('Year changed via BladewindUI select:', $(this).val());
                $('#filterForm').submit();
            });
            
            // Method 3: Listen for any select change in the form
            $(document).on('change', '#filterForm select', function() {
                console.log('Year changed via form select:', $(this).val());
                $('#filterForm').submit();
            });
            
            // Method 4: Listen for input changes (in case it's rendered as input)
            $(document).on('change', 'input[name="tahun"]', function() {
                console.log('Year changed via input[name="tahun"]:', $(this).val());
                $('#filterForm').submit();
            });
            
            // Method 5: Listen for BladewindUI custom events
            $(document).on('bw-select:change', function(e) {
                if ($(e.target).attr('name') === 'tahun') {
                    console.log('Year changed via BladewindUI event:', $(e.target).val());
                    $('#filterForm').submit();
                }
            });
            
            
            // Method 7: Check if BladewindUI has loaded and attach events
            $(document).ready(function() {
                // Wait a bit for BladewindUI to initialize
                setTimeout(function() {
                    // Try to find the actual select element
                    var tahunSelect = $('select[name="tahun"], .bw-select[name="tahun"] select, input[name="tahun"]');
                    console.log('Found tahun elements:', tahunSelect.length);
                    
                    if (tahunSelect.length > 0) {
                        tahunSelect.on('change', function() {
                            console.log('Year changed via found element:', $(this).val());
                            $('#filterForm').submit();
                        });
                    }
                }, 500);
            });
        });
    </script>
@endpush
