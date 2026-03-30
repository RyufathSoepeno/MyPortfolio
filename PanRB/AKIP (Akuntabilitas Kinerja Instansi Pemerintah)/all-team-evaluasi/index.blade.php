@extends('layout.midone', ['akip' => true])
@section('title', 'Daftar Semua Tim Evaluasi')

@section('content')
<div class="col-span-12 xxl:col-span-9 grid grid-cols-12 gap-6">
    <!-- BEGIN: Evaluation Team Report -->
    <div class="col-span-12 mt-8">
        <div class="intro-y flex items-center h-10">
            <h2 class="text-lg font-medium truncate mr-5">
                Daftar Semua Tim Evaluasi
            </h2>
        <form method="GET" action="" class="ml-auto flex items-center">
            <label for="filter-tahun" class="mr-2 font-medium">Tahun:</label>
            <select name="tahun" id="filter-tahun" class="input w-32 border mr-2">
                <option value="2025" selected>2025</option>
                <option value="2024">2024</option>
                <option value="2023">2023</option>
                <option value="2022">2022</option>
                <option value="2021">2021</option>
                <option value="2020">2020</option>
            </select>
        </form>
        </div>
        <div class="grid grid-cols-12 gap-6 mt-5">
            @forelse($tims ?? [] as $index => $tim)
                @php
                    // Format team name
                    $teamName = $tim['nama'];
                    if (!empty($tim['keterangan'])) {
                        $teamName .= ' - (' . $tim['keterangan'] . ')';
                    }
                    
                    // Store anggota list as JSON
                    $anggotaJson = json_encode($tim['anggota_list']);
                @endphp
                <div class="col-span-12 sm:col-span-6 xl:col-span-2 intro-y selectable-card cursor-pointer transition-all duration-300" data-tim-id="{{ $tim['id'] }}" data-anggota-list='{{ $anggotaJson }}'>
                    <div class="report-box zoom-in">
                        <div class="box p-5 border-2 border-transparent hover:border-theme-1 transition-all duration-300">
                            <div class="flex">
                                <i data-feather="users" class="report-box__icon text-theme-9"></i> 
                            </div>
                            <div class="text-xl font-bold leading-8 mt-6">{{ $tim['total_anggota'] }} Anggota</div>
                            <div class="text-sm text-gray-600 mt-1">{{ $teamName }}</div>
                        </div>
                    </div>
                </div>
            @empty
                <div class="col-span-12">
                    <div class="box p-5 text-center">
                        <p class="text-gray-600">Tidak ada tim evaluasi yang ditemukan.</p>
                    </div>
                </div>
            @endforelse
        </div>
    </div>
    <!-- END: Evaluation Team Report -->
    
    <div class="col-span-12 grid grid-cols-12 gap-6 xl:mt-10">
        <!-- BEGIN: List Pemerintah Daerah yang Dievaluasi -->
        <div class="col-span-12 xxl:col-span-9 grid grid-cols-12 gap-6 xl:gap-1 self-start">
            <h2 class="intro-y text-lg font-medium col-span-12" id="instansi-title">
                List Instansi Pemerintah yang Dievaluasi
            </h2>
            <div class="grid grid-cols-12 gap-6 col-span-12 items-start">
                <div class="intro-y col-span-12 flex flex-wrap sm:flex-no-wrap items-center mt-2">
                    <div class="w-full sm:w-auto mt-3 sm:mt-0 sm:ml-auto md:ml-0">
                        <div class="w-56 relative text-gray-700">
                            <input type="text" id="search-instansi" class="input w-56 box pr-10 placeholder-theme-13" placeholder="Search...">
                            <i class="w-4 h-4 absolute my-auto inset-y-0 mr-3 right-0" data-feather="search"></i> 
                        </div>
                    </div>
                </div>
                <!-- BEGIN: Data List -->
                <div class="intro-y col-span-12 overflow-auto lg:overflow-visible">
                    <table class="table table-report -mt-2">
                        <thead>
                            <tr>
                                <th class="whitespace-no-wrap">Nama Instansi</th>
                                <th class="text-center whitespace-no-wrap">Kategori</th>
                                <th class="text-center whitespace-no-wrap">Aksi</th>
                            </tr>
                        </thead>
                        <tbody id="instansi-table-body">
                            <tr class="intro-x">
                                <td colspan="3" class="text-center py-8 text-gray-500">
                                    <i data-feather="search" class="w-12 h-12 mx-auto mb-2"></i>
                                    <p class="text-sm">Pilih tim evaluasi untuk melihat daftar instansi</p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- END: Data List -->
                <!-- BEGIN: Pagination -->
                <div class="intro-y col-span-12 flex sm:flex-col lg:flex-row lg:items-center lg:justify-between gap-4 mt-4" id="pagination-container" style="display: none;">
                    <!-- Pagination Controls - Mobile: col-span-12, Desktop: flex-1 -->
                    <div class="col-span-12 lg:col-span-auto bg-white p-1 rounded-lg flex justify-center lg:justify-start" id="pagination-controls">
                        <ul class="pagination" id="pagination-list">
                            <!-- Pagination will be rendered here -->
                        </ul>
                    </div>
                    <!-- Showing Records - Mobile: col-span-12, Desktop: flex-1 -->
                    <div class="col-span-12 lg:col-span-auto text-black text-center lg:text-left" id="pagination-info">Showing 0 to 0 of 0 entries</div>
                    <!-- Filter Count Data - Mobile: col-span-12, Desktop: flex-1 -->
                    <div class="col-span-12 lg:col-span-auto flex justify-center lg:justify-end">
                        <select id="per-page-select" class="w-20 input box">
                            <option value="10">10</option>
                            <option value="25">25</option>
                            <option value="35">35</option>
                            <option value="50">50</option>
                            <option value="100">100</option>
                        </select>
                    </div>
                </div>
                <!-- END: Pagination -->
            </div>
        </div> 
        <!-- END: List Pemerintah Daerah yang Dievaluasi -->          
        <div class="col-span-12 xxl:col-span-3 xxl:border-l border-theme-5 -mb-10 pb-10 px-4 self-start">
            <!-- BEGIN: Daftar Nama Anggota -->
            <div class="col-span-12 md:col-span-6 xl:col-span-4">
                <div class="intro-x flex items-center h-10">
                    <h2 class="text-lg font-medium truncate mr-5">
                        Daftar Nama Anggota
                    </h2>
                </div>
                <div class="mt-5" id="anggota-list-container">
                    <!-- Anggota list will be rendered here dynamically -->
                    <div class="text-center py-8 text-gray-500">
                        <i data-feather="users" class="w-12 h-12 mx-auto mb-2"></i>
                        <p class="text-sm">Pilih tim evaluasi untuk melihat daftar anggota</p>
                    </div>
                </div>
                <a href="javascript:;" id="view-more-btn" class="intro-x w-full block text-center rounded-md py-3 border border-dotted border-theme-15 text-theme-16 hidden">View More</a>
            </div>
            <!-- END: Daftar Nama Anggota -->
        </div>  
    </div>
</div>
       
@endsection

@push('js')
    <!-- BEGIN: JS Assets-->
    <script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=["your-google-map-api"]&libraries=places"></script>
    <script src="dist/js/app.js"></script>
    <!-- END: JS Assets-->
    
    <script>
        $(document).ready(function() {
            let currentAnggotaList = [];
            let currentDisplayIndex = 0;
            const itemsPerPage = 5;

            // Initialize feather icons
            if (typeof feather !== 'undefined') {
                feather.replace();
            }

            // Variables untuk instansi
            let currentTimId = null;
            let currentTimNama = '';
            let currentPage = 1;
            let currentPerPage = 10;
            let currentSearch = '';
            let searchTimeout = null;

            // Click handler untuk card selection
            $('.selectable-card').on('click', function() {
                // Remove selected state dari semua card
                $('.selectable-card').find('.box').removeClass('border-theme-1 border-2 shadow-lg scale-105').addClass('border-transparent');
                $('.selectable-card').removeClass('selected');

                // Add selected state ke card yang diklik (border color + zoom effect + shadow)
                $(this).addClass('selected');
                $(this).find('.box').removeClass('border-transparent').addClass('border-theme-1 border-2 shadow-lg scale-105');

                // Ambil data anggota dari data-anggota-list attribute
                const anggotaListJson = $(this).attr('data-anggota-list');
                if (anggotaListJson) {
                    try {
                        currentAnggotaList = JSON.parse(anggotaListJson);
                        currentDisplayIndex = 0;
                        renderAnggotaList(currentAnggotaList, currentDisplayIndex, itemsPerPage);
                    } catch (e) {
                        console.error('Error parsing anggota list:', e);
                        $('#anggota-list-container').html('<div class="text-center py-8 text-gray-500"><p class="text-sm">Error loading anggota data</p></div>');
                    }
                } else {
                    $('#anggota-list-container').html('<div class="text-center py-8 text-gray-500"><p class="text-sm">Tidak ada data anggota</p></div>');
                }

                // Fetch instansi untuk tim yang dipilih
                currentTimId = $(this).data('tim-id');
                const teamNameText = $(this).find('.text-sm').text();
                currentTimNama = teamNameText;
                currentPage = 1;
                currentSearch = '';
                $('#search-instansi').val('');
                fetchInstansiByTim(currentTimId, currentTimNama, currentPage, currentPerPage, currentSearch);
            });

            // Function untuk render list anggota
            function renderAnggotaList(anggotaList, startIndex, itemsPerPage) {
                const container = $('#anggota-list-container');
                const endIndex = Math.min(startIndex + itemsPerPage, anggotaList.length);
                const itemsToShow = anggotaList.slice(startIndex, endIndex);

                if (startIndex === 0) {
                    // Clear container jika mulai dari awal
                    container.empty();
                }

                if (itemsToShow.length === 0 && startIndex === 0) {
                    // Jika tidak ada anggota sama sekali
                    container.html('<div class="text-center py-8 text-gray-500"><i data-feather="users" class="w-12 h-12 mx-auto mb-2"></i><p class="text-sm">Tidak ada anggota dalam tim ini</p></div>');
                    if (typeof feather !== 'undefined') {
                        feather.replace();
                    }
                    $('#view-more-btn').addClass('hidden');
                    return;
                }

                // Render setiap anggota
                itemsToShow.forEach(function(anggota) {
                    const anggotaHtml = `
                        <div class="intro-x">
                            <div class="box px-5 py-3 mb-3 flex items-center zoom-in">
                                <i data-feather="user" class="w-10 h-10"></i>
                                <div class="ml-4 mr-auto">
                                    <div class="font-medium">${escapeHtml(anggota.nama || '-')}</div>
                                </div>
                            </div>
                        </div>
                    `;
                    container.append(anggotaHtml);
                });

                // Update feather icons
                if (typeof feather !== 'undefined') {
                    feather.replace();
                }

                // Update View More button visibility
                if (endIndex >= anggotaList.length) {
                    $('#view-more-btn').addClass('hidden');
                } else {
                    $('#view-more-btn').removeClass('hidden');
                }

                currentDisplayIndex = endIndex;
            }

            // View More handler
            $('#view-more-btn').on('click', function(e) {
                e.preventDefault();
                if (currentAnggotaList.length > 0) {
                    renderAnggotaList(currentAnggotaList, currentDisplayIndex, itemsPerPage);
                }
            });

            // Helper function untuk escape HTML
            function escapeHtml(text) {
                const map = {
                    '&': '&amp;',
                    '<': '&lt;',
                    '>': '&gt;',
                    '"': '&quot;',
                    "'": '&#039;'
                };
                return String(text).replace(/[&<>"']/g, function(m) { return map[m]; });
            }

            // Function untuk fetch instansi by tim
            function fetchInstansiByTim(timId, timNama, page = 1, perPage = 10, search = '') {
                if (!timId) {
                    return;
                }

                // Update global variables
                currentPage = page;
                currentPerPage = perPage;
                currentSearch = search;

                // Show loading state
                showLoadingState();

                // Update title
                $('#instansi-title').text('List Instansi Pemerintah yang Dievaluasi oleh ' + escapeHtml(timNama));

                // AJAX call
                $.ajax({
                    url: '/akip/tim/' + timId + '/instansi',
                    method: 'GET',
                    data: {
                        page: page,
                        per_page: perPage,
                        search: search
                    },
                    success: function(response) {
                        if (response.success) {
                            renderInstansiTable(response.data);
                            renderPagination(response.pagination);
                            updatePaginationInfo(response.pagination);
                        } else {
                            showErrorState('Gagal memuat data instansi');
                        }
                    },
                    error: function(xhr) {
                        console.error('Error fetching instansi:', xhr);
                        showErrorState('Terjadi kesalahan saat memuat data');
                    }
                });
            }

            // Function untuk show loading state
            function showLoadingState() {
                const loadingHtml = `
                    <tr class="intro-x">
                        <td colspan="3" class="text-center py-8">
                            <div class="flex flex-col items-center">
                                <div class="animate-spin rounded-full h-8 w-8 border-b-2 border-theme-1 mb-2"></div>
                                <p class="text-sm text-gray-500 mt-2">Memuat data...</p>
                            </div>
                        </td>
                    </tr>
                `;
                $('#instansi-table-body').html(loadingHtml);
            }

            // Function untuk show error state
            function showErrorState(message) {
                const errorHtml = `
                    <tr class="intro-x">
                        <td colspan="3" class="text-center py-8 text-gray-500">
                            <i data-feather="alert-circle" class="w-12 h-12 mx-auto mb-2"></i>
                            <p class="text-sm">${escapeHtml(message)}</p>
                        </td>
                    </tr>
                `;
                $('#instansi-table-body').html(errorHtml);
                if (typeof feather !== 'undefined') {
                    feather.replace();
                }
            }

            // Function untuk render instansi table
            function renderInstansiTable(data) {
                const tbody = $('#instansi-table-body');
                tbody.empty();

                if (data.length === 0) {
                    tbody.html(`
                        <tr class="intro-x">
                            <td colspan="3" class="text-center py-8 text-gray-500">
                                <i data-feather="inbox" class="w-12 h-12 mx-auto mb-2"></i>
                                <p class="text-sm">Tidak ada data instansi ditemukan</p>
                            </td>
                        </tr>
                    `);
                    if (typeof feather !== 'undefined') {
                        feather.replace();
                    }
                    return;
                }

                data.forEach(function(instansi) {
                    const row = `
                        <tr class="intro-x">
                            <td>
                                <a href="${escapeHtml(instansi.url)}" class="font-medium whitespace-no-wrap">${escapeHtml(instansi.nama_instansi)}</a> 
                            </td>
                            <td class="text-center">
                                ${escapeHtml(instansi.kategori)}
                            </td>
                            <td class="table-report__action w-56">
                                <div class="flex justify-center items-center">
                                    <a class="flex items-center mr-3" href="${escapeHtml(instansi.url)}"> 
                                        <i data-feather="eye" class="w-4 h-4 mr-1"></i> Detail 
                                    </a>
                                </div>
                            </td>
                        </tr>
                    `;
                    tbody.append(row);
                });

                if (typeof feather !== 'undefined') {
                    feather.replace();
                }
            }

            // Function untuk render pagination
            function renderPagination(pagination) {
                const paginationList = $('#pagination-list');
                paginationList.empty();

                if (pagination.last_page <= 1) {
                    $('#pagination-container').hide();
                    return;
                }

                $('#pagination-container').show();

                const currentPageNum = pagination.current_page;
                const lastPage = pagination.last_page;

                // Previous buttons - hanya tampil jika bukan page pertama
                if (currentPageNum > 1) {
                    paginationList.append(`
                        <li>
                            <a class="pagination__link" href="javascript:;" data-page="1">
                                <i class="w-4 h-4" data-feather="chevrons-left"></i>
                            </a>
                        </li>
                        <li>
                            <a class="pagination__link" href="javascript:;" data-page="${currentPageNum - 1}">
                                <i class="w-4 h-4" data-feather="chevron-left"></i>
                            </a>
                        </li>
                    `);
                }

                // Page numbers
                let startPage = Math.max(1, currentPageNum - 2);
                let endPage = Math.min(lastPage, currentPageNum + 2);

                if (startPage > 1) {
                    const isPage1Active = currentPageNum === 1;
                    const page1Style = isPage1Active ? 'style="border: 2px solid #1e40af; font-weight: 600; background-color: rgba(30, 64, 175, 0.1);"' : '';
                    paginationList.append(`<li><a class="pagination__link ${isPage1Active ? 'pagination__link--active' : ''}" href="javascript:;" data-page="1" ${page1Style}>1</a></li>`);
                    if (startPage > 2) {
                        paginationList.append(`<li><a class="pagination__link" href="javascript:;">...</a></li>`);
                    }
                }

                for (let i = startPage; i <= endPage; i++) {
                    const isActive = i === currentPageNum;
                    const activeStyle = isActive ? 'style="border: 2px solid #1e40af; font-weight: 600; background-color: rgba(30, 64, 175, 0.1);"' : '';
                    paginationList.append(`
                        <li>
                            <a class="pagination__link ${isActive ? 'pagination__link--active' : ''}" href="javascript:;" data-page="${i}" ${activeStyle}>${i}</a>
                        </li>
                    `);
                }

                if (endPage < lastPage) {
                    if (endPage < lastPage - 1) {
                        paginationList.append(`<li><a class="pagination__link" href="javascript:;">...</a></li>`);
                    }
                    const isLastPageActive = currentPageNum === lastPage;
                    const lastPageStyle = isLastPageActive ? 'style="border: 2px solid #1e40af; font-weight: 600; background-color: rgba(30, 64, 175, 0.1);"' : '';
                    paginationList.append(`<li><a class="pagination__link ${isLastPageActive ? 'pagination__link--active' : ''}" href="javascript:;" data-page="${lastPage}" ${lastPageStyle}>${lastPage}</a></li>`);
                }

                // Next buttons - hanya tampil jika bukan page terakhir
                if (currentPageNum < lastPage) {
                    paginationList.append(`
                        <li>
                            <a class="pagination__link" href="javascript:;" data-page="${currentPageNum + 1}">
                                <i class="w-4 h-4" data-feather="chevron-right"></i>
                            </a>
                        </li>
                        <li>
                            <a class="pagination__link" href="javascript:;" data-page="${lastPage}">
                                <i class="w-4 h-4" data-feather="chevrons-right"></i>
                            </a>
                        </li>
                    `);
                }

                if (typeof feather !== 'undefined') {
                    feather.replace();
                }
            }

            // Function untuk update pagination info
            function updatePaginationInfo(pagination) {
                const info = `Showing ${pagination.from} to ${pagination.to} of ${pagination.total} entries`;
                $('#pagination-info').text(info);
            }

            // Search handler dengan debounce
            $('#search-instansi').on('input', function() {
                clearTimeout(searchTimeout);
                const searchValue = $(this).val();
                searchTimeout = setTimeout(function() {
                    currentSearch = searchValue;
                    currentPage = 1;
                    if (currentTimId) {
                        fetchInstansiByTim(currentTimId, currentTimNama, currentPage, currentPerPage, currentSearch);
                    }
                }, 500);
            });

            // Per page filter handler
            $('#per-page-select').on('change', function() {
                currentPerPage = parseInt($(this).val());
                currentPage = 1;
                if (currentTimId) {
                    fetchInstansiByTim(currentTimId, currentTimNama, currentPage, currentPerPage, currentSearch);
                }
            });

            // Event delegation untuk pagination links (untuk elemen yang dibuat dinamis)
            $(document).on('click', '#pagination-list a[data-page]', function(e) {
                e.preventDefault();
                const page = parseInt($(this).data('page'));
                if (page && page >= 1 && currentTimId) {
                    currentPage = page;
                    fetchInstansiByTim(currentTimId, currentTimNama, currentPage, currentPerPage, currentSearch);
                }
            });
        });
    </script>
@endpush
