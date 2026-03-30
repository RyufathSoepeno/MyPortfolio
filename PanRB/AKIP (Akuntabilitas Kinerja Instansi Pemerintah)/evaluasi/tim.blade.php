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
        <form method="GET" action="{{ url('akip/evaluasi/sakip') }}" id="filterForm" class="flex items-center gap-4">
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

        <!-- Search Box untuk K/L -->
        <div class="mb-4">
            <div class="relative">
                <input
                    type="text"
                    id="searchKlInput"
                    placeholder="Cari nama instansi K/L..."
                    value="{{ $search_kl ?? '' }}"
                    class="w-full px-4 py-2 pl-10 pr-4 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
                >
            </div>
        </div>

        <x-bladewind::table
            striped="true"
            has_border="true"
            has_shadow="true"
            compact="true"
            divider="thin"
            has_hover="true"
            id="tableKl"
        >
            <x-slot name="header">
                <th>No</th>
                <th>Nama Instansi</th>
                <th>Group</th>
                <th>Status Evaluasi</th>
                <th>Aksi</th>
            </x-slot>

            <tbody id="tbodyKl">
                @if($anggota_kl->count() > 0)
                    @foreach($klPaginated as $index => $anggota)
                        <tr class="kl-row">
                            <td>{{ ($currentPageKl - 1) * 10 + $index + 1 }}</td>
                            <td>{!! $anggota->instansi->nama_instansi !!}</td>
                            <td>
                                <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-blue-100 text-blue-800">
                                    {{ ucfirst($anggota->instansi->group) }}
                                </span>
                            </td>
                            <td>
                                @if(isset($anggota->status_evaluasi))
                                    @if($anggota->status_evaluasi == 'sudah')
                                        <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800">
                                            Sudah Dinilai
                                        </span>
                                    @else
                                        <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
                                            Belum Dinilai
                                        </span>
                                    @endif
                                @else
                                    <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-gray-100 text-gray-800">
                                        -
                                    </span>
                                @endif
                            </td>
                            <td>
                                <a href="{{ url('akip/evaluasi/sakip/' . $anggota->instansi_id) }}"
                                    class="inline-flex items-center px-3 py-1.5 border border-transparent text-xs font-medium rounded-md text-white bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500">
                                    <i data-feather="eye" class="w-4 h-4 mr-1"></i>
                                    Lihat Detail
                                </a>
                            </td>
                        </tr>
                    @endforeach
                @else
                    <tr>
                        <td colspan="5" class="text-center py-8">
                            <div class="flex flex-col items-center justify-center">
                                <svg class="h-12 w-12 text-gray-400 mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.172 16.172a4 4 0 015.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                </svg>
                                <p class="text-gray-600">Data tidak ditemukan</p>
                            </div>
                        </td>
                    </tr>
                @endif
            </tbody>
        </x-bladewind::table>

        <!-- Pagination untuk K/L -->
        <div id="klPaginationContainer" class="mt-4">
            @if($klTotalPages > 1)
                <div class="flex items-center justify-between">
                    <div class="text-sm text-gray-700">
                        Menampilkan <span id="klShowingStart">{{ $anggota_kl->count() > 0 ? ($currentPageKl - 1) * 10 + 1 : 0 }}</span> sampai <span id="klShowingEnd">{{ $anggota_kl->count() > 0 ? min($currentPageKl * 10, $anggota_kl->count()) : 0 }}</span> dari <span id="klTotal">{{ $anggota_kl->count() }}</span> hasil
                    </div>
                    <div class="flex space-x-2" id="klPaginationLinks">
                        @if($currentPageKl > 1)
                            <button type="button"
                                onclick="changePage('kl', {{ $currentPageKl - 1 }})"
                                class="px-3 py-2 text-sm font-medium text-gray-500 bg-white border border-gray-300 rounded-md hover:bg-gray-50">
                                Sebelumnya
                            </button>
                        @endif

                        @for($i = max(1, $currentPageKl - 2); $i <= min($klTotalPages, $currentPageKl + 2); $i++)
                            <button type="button"
                                onclick="changePage('kl', {{ $i }})"
                                class="px-3 py-2 text-sm font-medium {{ $i == $currentPageKl ? 'text-white bg-blue-600 border-blue-600' : 'text-gray-500 bg-white border-gray-300 hover:bg-gray-50' }} border rounded-md">
                                {{ $i }}
                            </button>
                        @endfor

                        @if($currentPageKl < $klTotalPages)
                            <button type="button"
                                onclick="changePage('kl', {{ $currentPageKl + 1 }})"
                                class="px-3 py-2 text-sm font-medium text-gray-500 bg-white border border-gray-300 rounded-md hover:bg-gray-50">
                                Selanjutnya
                            </button>
                        @endif
                    </div>
                </div>
            @endif
        </div>
    </div>

    <!-- Tabel Pemerintah Daerah - Selalu tampilkan, tidak bergantung pada count -->
    <div class="intro-y box p-5 mt-5">
        <div class="flex items-center mb-5 pb-5 border-b border-gray-200">
            <h3 class="font-medium text-base mr-auto">
                Pemerintah Daerah ({{ $anggota_pemda->count() }} instansi) - Tahun {{ $tahun }}
            </h3>
        </div>

        <!-- Search Box untuk Pemda -->
        <div class="mb-4">
            <div class="relative">
                <input
                    type="text"
                    id="searchPemdaInput"
                    placeholder="Cari nama instansi Pemda..."
                    value="{{ $search_pemda ?? '' }}"
                    class="w-full px-4 py-2 pl-10 pr-4 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
                >
            </div>
        </div>

        <x-bladewind::table
            striped="true"
            has_border="true"
            has_shadow="true"
            compact="true"
            divider="thin"
            has_hover="true"
            id="tablePemda"
        >
            <x-slot name="header">
                <th>No</th>
                <th>Nama Instansi</th>
                <th>Group</th>
                <th>TW 1</th>
                <th>TW 2</th>
                <th>TW 3</th>
                <th>TW 4</th>
                <th>Aksi</th>
            </x-slot>

            <tbody id="tbodyPemda">
                @if($anggota_pemda->count() > 0)
                    @foreach($pemdaPaginated as $index => $anggota)
                        <tr class="pemda-row">
                            <td>{{ ($currentPagePemda - 1) * 10 + $index + 1 }}</td>
                            <td>{!! $anggota->instansi->nama_instansi !!}</td>
                            <td>
                                <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-blue-100 text-blue-800">
                                    {{ ucfirst($anggota->instansi->group) }}
                                </span>
                            </td>
                            <td>
                                @if(isset($anggota->status_tw1))
                                    @if($anggota->status_tw1 == 'sudah')
                                        <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800">
                                            Sudah
                                        </span>
                                    @else
                                        <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
                                            Belum
                                        </span>
                                    @endif
                                @else
                                    <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-gray-100 text-gray-800">
                                        -
                                    </span>
                                @endif
                            </td>
                            <td>
                                @if(isset($anggota->status_tw2))
                                    @if($anggota->status_tw2 == 'sudah')
                                        <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800">
                                            Sudah
                                        </span>
                                    @else
                                        <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
                                            Belum
                                        </span>
                                    @endif
                                @else
                                    <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-gray-100 text-gray-800">
                                        -
                                    </span>
                                @endif
                            </td>
                            <td>
                                @if(isset($anggota->status_tw3))
                                    @if($anggota->status_tw3 == 'sudah')
                                        <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800">
                                            Sudah
                                        </span>
                                    @else
                                        <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
                                            Belum
                                        </span>
                                    @endif
                                @else
                                    <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-gray-100 text-gray-800">
                                        -
                                    </span>
                                @endif
                            </td>
                            <td>
                                @if(isset($anggota->status_tw4))
                                    @if($anggota->status_tw4 == 'sudah')
                                        <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800">
                                            Sudah
                                        </span>
                                    @else
                                        <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
                                            Belum
                                        </span>
                                    @endif
                                @else
                                    <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-gray-100 text-gray-800">
                                        -
                                    </span>
                                @endif
                            </td>
                            <td>
                                <a href="{{ url('akip/evaluasi/sakip/' . $anggota->instansi_id) }}"
                                    class="inline-flex items-center px-3 py-1.5 border border-transparent text-xs font-medium rounded-md text-white bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500">
                                    <i data-feather="eye" class="w-4 h-4 mr-1"></i>
                                    Lihat Detail
                                </a>
                            </td>
                        </tr>
                    @endforeach
                @else
                    <tr>
                        <td colspan="8" class="text-center py-8">
                            <div class="flex flex-col items-center justify-center">
                                <svg class="h-12 w-12 text-gray-400 mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.172 16.172a4 4 0 015.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                </svg>
                                <p class="text-gray-600">Data tidak ditemukan</p>
                            </div>
                        </td>
                    </tr>
                @endif
            </tbody>
        </x-bladewind::table>

        <!-- Pagination untuk Pemda -->
        <div id="pemdaPaginationContainer" class="mt-4">
            @if($pemdaTotalPages > 1)
                <div class="flex items-center justify-between">
                    <div class="text-sm text-gray-700">
                        Menampilkan <span id="pemdaShowingStart">{{ $anggota_pemda->count() > 0 ? ($currentPagePemda - 1) * 10 + 1 : 0 }}</span> sampai <span id="pemdaShowingEnd">{{ $anggota_pemda->count() > 0 ? min($currentPagePemda * 10, $anggota_pemda->count()) : 0 }}</span> dari <span id="pemdaTotal">{{ $anggota_pemda->count() }}</span> hasil
                    </div>
                    <div class="flex space-x-2" id="pemdaPaginationLinks">
                        @if($currentPagePemda > 1)
                            <button type="button"
                                onclick="changePage('pemda', {{ $currentPagePemda - 1 }})"
                                class="px-3 py-2 text-sm font-medium text-gray-500 bg-white border border-gray-300 rounded-md hover:bg-gray-50">
                                Sebelumnya
                            </button>
                        @endif

                        @for($i = max(1, $currentPagePemda - 2); $i <= min($pemdaTotalPages, $currentPagePemda + 2); $i++)
                            <button type="button"
                                onclick="changePage('pemda', {{ $i }})"
                                class="px-3 py-2 text-sm font-medium {{ $i == $currentPagePemda ? 'text-white bg-blue-600 border-blue-600' : 'text-gray-500 bg-white border-gray-300 hover:bg-gray-50' }} border rounded-md">
                                {{ $i }}
                            </button>
                        @endfor

                        @if($currentPagePemda < $pemdaTotalPages)
                            <button type="button"
                                onclick="changePage('pemda', {{ $currentPagePemda + 1 }})"
                                class="px-3 py-2 text-sm font-medium text-gray-500 bg-white border border-gray-300 rounded-md hover:bg-gray-50">
                                Selanjutnya
                            </button>
                        @endif
                    </div>
                </div>
            @endif
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
        .badge {
            padding: 0.25rem 0.5rem;
            font-size: 0.75rem;
            font-weight: 500;
            border-radius: 0.25rem;
        }

        .badge-success {
            background-color: #10b981;
            color: white;
        }

        .badge-warning {
            background-color: #f59e0b;
            color: white;
        }

        .badge-info {
            background-color: #3b82f6;
            color: white;
        }

        .badge-secondary {
            background-color: #6b7280;
            color: white;
        }

        .loading-overlay {
            position: relative;
            pointer-events: none;
        }

        .loading-overlay::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(255, 255, 255, 0.8);
            z-index: 10;
        }
    </style>
@endpush

@push('js')
    <script>
        // Global state management
        let searchState = {
            tahun: '{{ $tahun }}',
            searchKl: '{{ $search_kl ?? "" }}',
            searchPemda: '{{ $search_pemda ?? "" }}',
            pageKl: {{ $currentPageKl ?? 1 }},
            pagePemda: {{ $currentPagePemda ?? 1 }},
            isLoadingKl: false,
            isLoadingPemda: false,
            searchTimeout: null
        };

        // Wait for DOM to be fully loaded
        document.addEventListener('DOMContentLoaded', function() {
            // Re-initialize feather icons
            feather.replace();

            // Initialize search functionality
            initializeSearch();

            // Handle form submission for tahun filter
            const filterForm = document.getElementById('filterForm');
            if (filterForm) {
                filterForm.addEventListener('submit', function(e) {
                    e.preventDefault();
                    const tahun = getTahunValue();
                    if (!tahun) {
                        alert('Silakan pilih tahun terlebih dahulu.');
                        return;
                    }
                    // Reset pagination when changing year
                    searchState.pageKl = 1;
                    searchState.pagePemda = 1;
                    searchState.tahun = tahun;
                    this.submit();
                });
            }

            // Auto-submit when tahun changes
            setTimeout(function() {
                const tahunInputs = document.querySelectorAll('input[name="tahun"], select[name="tahun"]');
                tahunInputs.forEach(function(input) {
                    input.addEventListener('change', function() {
                        const form = document.getElementById('filterForm');
                        if (form && this.value) {
                            // Reset pagination when changing year
                            searchState.pageKl = 1;
                            searchState.pagePemda = 1;
                            searchState.tahun = this.value;
                            form.submit();
                        }
                    });
                });
            }, 1000);
        });

        // Initialize search functionality
        function initializeSearch() {
            const searchKlInput = document.getElementById('searchKlInput');
            const searchPemdaInput = document.getElementById('searchPemdaInput');

            if (searchKlInput) {
                searchKlInput.addEventListener('input', function() {
                    handleSearch('kl', this.value);
                });
            }

            if (searchPemdaInput) {
                searchPemdaInput.addEventListener('input', function() {
                    handleSearch('pemda', this.value);
                });
            }
        }

        // Handle search with debouncing - PERBAIKAN: Loading terpisah per type
        function handleSearch(type, value) {
            // Clear existing timeout
            if (searchState.searchTimeout) {
                clearTimeout(searchState.searchTimeout);
            }

            // Update search state
            if (type === 'kl') {
                searchState.searchKl = value;
                searchState.pageKl = 1; // Reset to first page when searching
            } else {
                searchState.searchPemda = value;
                searchState.pagePemda = 1; // Reset to first page when searching
            }

            // Debounce search
            searchState.searchTimeout = setTimeout(() => {
                performSearch(type); // PERBAIKAN: Pass type parameter
            }, 500);
        }

        // Handle page changes - PERBAIKAN: Loading terpisah per type
        function changePage(type, page) {
            if ((type === 'kl' && searchState.isLoadingKl) || (type === 'pemda' && searchState.isLoadingPemda)) {
                return;
            }

            if (type === 'kl') {
                searchState.pageKl = page;
            } else {
                searchState.pagePemda = page;
            }

            performSearch(type); // PERBAIKAN: Pass type parameter
        }

        // Function to get tahun value safely
        function getTahunValue() {
            const selectors = [
                'input[name="tahun"]',
                '#tahun',
                'select[name="tahun"]',
                '.bw-select input[name="tahun"]'
            ];

            for (let selector of selectors) {
                const element = document.querySelector(selector);
                if (element && element.value) {
                    return element.value;
                }
            }
            return searchState.tahun;
        }

        // Function to show loading state for specific table
        function showLoadingState(tableId) {
            const tbody = document.getElementById(tableId);
            if (tbody) {
                const colspan = tableId === 'tbodyKl' ? '5' : '8';
                tbody.innerHTML = `
                    <tr>
                        <td colspan="${colspan}" class="text-center py-8">
                            <div class="flex flex-col items-center justify-center">
                                <svg class="animate-spin h-8 w-8 text-blue-600 mb-2" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                    <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                                    <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                                </svg>
                                <p class="text-gray-600">Memuat data...</p>
                            </div>
                        </td>
                    </tr>
                `;
            }
        }

        // Function to show empty state
        function showEmptyState(tableId, message) {
            const tbody = document.getElementById(tableId);
            if (tbody) {
                // Get the correct colspan based on table type
                const colspan = tableId === 'tbodyKl' ? '5' : '8';
                tbody.innerHTML = `
                    <tr>
                        <td colspan="${colspan}" class="text-center py-8">
                            <div class="flex flex-col items-center justify-center">
                                <svg class="h-12 w-12 text-gray-400 mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.172 16.172a4 4 0 015.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                </svg>
                                <p class="text-gray-600">${message}</p>
                            </div>
                        </td>
                    </tr>
                `;
            }
        }

        // Function to update pagination with proper numbering
        function updatePagination(type, paginationInfo) {
            const container = document.getElementById(type + 'PaginationContainer');
            const showingStart = document.getElementById(type + 'ShowingStart');
            const showingEnd = document.getElementById(type + 'ShowingEnd');
            const total = document.getElementById(type + 'Total');

            // Update pagination info
            if (showingStart) showingStart.textContent = paginationInfo.showingStart;
            if (showingEnd) showingEnd.textContent = paginationInfo.showingEnd;
            if (total) total.textContent = paginationInfo.total;

            // Update pagination links
            if (container && paginationInfo.totalPages > 1) {
                const currentPage = type === 'kl' ? searchState.pageKl : searchState.pagePemda;
                const totalPages = paginationInfo.totalPages;

                let paginationHtml = `
                    <div class="flex items-center justify-between">
                        <div class="text-sm text-gray-700">
                            Menampilkan ${paginationInfo.showingStart} sampai ${paginationInfo.showingEnd} dari ${paginationInfo.total} hasil
                        </div>
                        <div class="flex space-x-2">
                `;

                // Previous button
                if (currentPage > 1) {
                    paginationHtml += `
                        <button type="button"
                            onclick="changePage('${type}', ${currentPage - 1})"
                            class="px-3 py-2 text-sm font-medium text-gray-500 bg-white border border-gray-300 rounded-md hover:bg-gray-50">
                            Sebelumnya
                        </button>
                    `;
                }

                // Page numbers - show more pages for better navigation
                const startPage = Math.max(1, currentPage - 2);
                const endPage = Math.min(totalPages, currentPage + 2);

                // Show first page if not in range
                if (startPage > 1) {
                    paginationHtml += `
                        <button type="button"
                            onclick="changePage('${type}', 1)"
                            class="px-3 py-2 text-sm font-medium text-gray-500 bg-white border border-gray-300 hover:bg-gray-50 border rounded-md">
                            1
                        </button>
                    `;
                    if (startPage > 2) {
                        paginationHtml += `<span class="px-3 py-2 text-sm text-gray-500">...</span>`;
                    }
                }

                // Show pages in range
                for (let i = startPage; i <= endPage; i++) {
                    const isActive = i === currentPage;
                    paginationHtml += `
                        <button type="button"
                            onclick="changePage('${type}', ${i})"
                            class="px-3 py-2 text-sm font-medium ${isActive ? 'text-white bg-blue-600 border-blue-600' : 'text-gray-500 bg-white border-gray-300 hover:bg-gray-50'} border rounded-md">
                            ${i}
                        </button>
                    `;
                }

                // Show last page if not in range
                if (endPage < totalPages) {
                    if (endPage < totalPages - 1) {
                        paginationHtml += `<span class="px-3 py-2 text-sm text-gray-500">...</span>`;
                    }
                    paginationHtml += `
                        <button type="button"
                            onclick="changePage('${type}', ${totalPages})"
                            class="px-3 py-2 text-sm font-medium text-gray-500 bg-white border border-gray-300 hover:bg-gray-50 border rounded-md">
                            ${totalPages}
                        </button>
                    `;
                }

                // Next button
                if (currentPage < totalPages) {
                    paginationHtml += `
                        <button type="button"
                            onclick="changePage('${type}', ${currentPage + 1})"
                            class="px-3 py-2 text-sm font-medium text-gray-500 bg-white border border-gray-300 rounded-md hover:bg-gray-50">
                            Selanjutnya
                        </button>
                    `;
                }

                paginationHtml += `
                        </div>
                    </div>
                `;

                container.innerHTML = paginationHtml;
            } else if (container) {
                container.innerHTML = `
                    <div class="text-sm text-gray-700">
                        Menampilkan ${paginationInfo.showingStart} sampai ${paginationInfo.showingEnd} dari ${paginationInfo.total} hasil
                    </div>
                `;
            }
        }

        // PERBAIKAN: Main search function dengan loading benar-benar terpisah
        function performSearch(searchType = null) {
            // Determine which tables need to be loaded - PERBAIKAN LOGIKA
            let shouldLoadKl = false;
            let shouldLoadPemda = false;

            if (searchType === 'kl') {
                // HANYA load table K/L saat search K/L
                shouldLoadKl = true;
                shouldLoadPemda = false; // JANGAN load Pemda
            } else if (searchType === 'pemda') {
                // HANYA load table Pemda saat search Pemda
                shouldLoadPemda = true;
                shouldLoadKl = false; // JANGAN load K/L
            } else {
                // Load both tables (for initial load or year change)
                shouldLoadKl = true;
                shouldLoadPemda = true;
            }

            // Prevent multiple simultaneous requests for the same table
            if (shouldLoadKl && searchState.isLoadingKl) return;
            if (shouldLoadPemda && searchState.isLoadingPemda) return;

            // Set loading states only for tables that will be loaded
            if (shouldLoadKl) {
                searchState.isLoadingKl = true;
                showLoadingState('tbodyKl');
            }
            if (shouldLoadPemda) {
                searchState.isLoadingPemda = true;
                showLoadingState('tbodyPemda');
            }

            // Get current tahun
            const tahun = getTahunValue();

            // Prepare request data
            const requestData = {
                tahun: tahun,
                search_kl: searchState.searchKl,
                search_pemda: searchState.searchPemda,
                page_kl: searchState.pageKl,
                page_pemda: searchState.pagePemda
            };

            // Perform AJAX request
            fetch('{{ url("akip/evaluasi/sakip/search") }}', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').content
                },
                body: JSON.stringify(requestData)
            })
            .then(response => {
                if (!response.ok) {
                    throw new Error(`HTTP error! status: ${response.status}`);
                }
                return response.json();
            })
            .then(data => {
                if (data.success) {
                    // Update K/L table only if it was being loaded
                    if (shouldLoadKl) {
                        const tbodyKl = document.getElementById('tbodyKl');
                        if (tbodyKl) {
                            if (data.klTableContent && data.klTableContent.trim() !== '') {
                                tbodyKl.innerHTML = data.klTableContent;
                            } else {
                                showEmptyState('tbodyKl', 'Data tidak ditemukan');
                            }
                            updatePagination('kl', data.klPaginationInfo);
                        }
                    }

                    // Update Pemda table only if it was being loaded
                    if (shouldLoadPemda) {
                        const tbodyPemda = document.getElementById('tbodyPemda');
                        if (tbodyPemda) {
                            if (data.pemdaTableContent && data.pemdaTableContent.trim() !== '') {
                                tbodyPemda.innerHTML = data.pemdaTableContent;
                            } else {
                                showEmptyState('tbodyPemda', 'Data tidak ditemukan');
                            }
                            updatePagination('pemda', data.pemdaPaginationInfo);
                        }
                    }

                    // Re-initialize feather icons
                    feather.replace();
                } else {
                    console.error('Search failed:', data.message);
                    if (shouldLoadKl) {
                        showEmptyState('tbodyKl', 'Terjadi kesalahan saat mencari data');
                    }
                    if (shouldLoadPemda) {
                        showEmptyState('tbodyPemda', 'Terjadi kesalahan saat mencari data');
                    }
                }
            })
            .catch(error => {
                console.error('Error:', error);
                if (shouldLoadKl) {
                    showEmptyState('tbodyKl', 'Terjadi kesalahan saat mencari data');
                }
                if (shouldLoadPemda) {
                    showEmptyState('tbodyPemda', 'Terjadi kesalahan saat mencari data');
                }
            })
            .finally(() => {
                // Clear loading states only for tables that were being loaded
                if (shouldLoadKl) {
                    searchState.isLoadingKl = false;
                }
                if (shouldLoadPemda) {
                    searchState.isLoadingPemda = false;
                }
            });
        }
    </script>
@endpush
