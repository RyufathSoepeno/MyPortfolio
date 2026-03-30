/**
 * DataTable Initialization Component
 * Handles DataTable setup and configuration for AKIP
 */

class AKIPDataTable {
    constructor(options = {}) {
        this.table = null;
        this.options = {
            ajaxUrl: options.ajaxUrl || '',
            columns: options.columns || [],
            ...options
        };
    }

    /**
     * Initialize DataTable
     */
    init() {
        this.table = $('#tabel-tim').DataTable({
            responsive: true,
            processing: true,
            serverSide: false,
            ajax: {
                url: this.options.ajaxUrl,
                type: 'GET',
                dataSrc: (json) => {
                    console.log('DataTable dataSrc function called with:', json);
                    // Update chart with the data
                    if (json && json.data && window.akipChart) {
                        window.akipChart.updateChart(json.data);
                    }
                    return json.data;
                },
                error: (xhr, error, thrown) => {
                    console.error('DataTables error:', error);
                    console.error('Response:', xhr.responseText);

                    // Show error message to user
                    $('#tabel-tim tbody').html(`
                        <tr>
                            <td colspan="4" class="text-center py-8">
                                <div class="flex flex-col items-center justify-center">
                                    <svg class="h-12 w-12 text-red-400 mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-2.5L13.732 4c-.77-.833-1.964-.833-2.732 0L3.732 16.5c-.77.833.192 2.5 1.732 2.5z"></path>
                                    </svg>
                                    <p class="text-red-600 font-medium">Terjadi kesalahan saat memuat data</p>
                                    <p class="text-gray-500 text-sm">Silakan refresh halaman atau hubungi administrator</p>
                                </div>
                            </td>
                        </tr>
                    `);
                }
            },
            columns: this.options.columns,
            order: [[1, 'asc']], // Sort by nama anggota
            pageLength: 25,
            lengthMenu: [[10, 25, 50, 100], [10, 25, 50, 100]],
            language: {
                processing: "Memproses data...",
                lengthMenu: "Tampilkan _MENU_ data per halaman",
                zeroRecords: "Tidak ada data anggota tim",
                info: "Menampilkan _START_ sampai _END_ dari _TOTAL_ data",
                infoEmpty: "Menampilkan 0 sampai 0 dari 0 data",
                infoFiltered: "(disaring dari _MAX_ total data)",
                search: "Cari:",
                paginate: {
                    first: "Pertama",
                    last: "Terakhir",
                    next: "Selanjutnya",
                    previous: "Sebelumnya"
                }
            },
            dom: '<"flex flex-row items-center justify-between mb-4"<"flex items-center"l><"flex items-center"f>>rt<"flex flex-row items-center justify-between mt-4"<"flex items-center"i><"flex items-center"p>>',
            initComplete: (settings, json) => {
                console.log('DataTable initComplete called');
                console.log('JSON data received:', json);
                
                // Add custom styling after initialization
                $('.dataTables_wrapper').addClass('mt-4');

                // Style the search input
                $('.dataTables_filter input').addClass('form-control');

                // Style the length select
                $('.dataTables_length select').addClass('form-control');

                // Ensure proper alignment
                $('.dataTables_length').css({
                    'display': 'flex',
                    'align-items': 'center'
                });

                $('.dataTables_filter').css({
                    'display': 'flex',
                    'align-items': 'center'
                });
            }
        });

        this.setupEventHandlers();
    }

    /**
     * Setup event handlers
     */
    setupEventHandlers() {
        // Add loading state
        this.table.on('processing.dt', (e, settings, processing) => {
            if (processing) {
                $('#tabel-tim tbody').html(`
                    <tr>
                        <td colspan="4" class="text-center py-8">
                            <div class="flex flex-col items-center justify-center">
                                <div class="animate-spin rounded-full h-8 w-8 border-b-2 border-blue-600 mb-2"></div>
                                <p class="text-gray-600">Memuat data...</p>
                            </div>
                        </td>
                    </tr>
                `);
            }
        });

        // Handle empty data
        this.table.on('draw.dt', () => {
            if (this.table.data().count() === 0) {
                $('#tabel-tim tbody').html(`
                    <tr>
                    <td colspan="4" class="text-center py-8">
                        <div class="flex flex-col items-center justify-center">
                            <svg class="h-12 w-12 text-gray-400 mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"></path>
                            </svg>
                            <p class="text-gray-600">Tidak ada data anggota tim</p>
                        </div>
                    </td>
                    </tr>
                `);
            }
        });

        // Handle detail button click
        $(document).on('click', '.btn-detail', (e) => {
            const userId = $(e.currentTarget).data('user-id');
            const nama = $(e.currentTarget).data('nama');

            // Update modal title dengan nama anggota
            $('.bw-modal-detail-instansi .bw-modal-title').text('Daftar Instansi yang Dievaluasi - ' + nama);
            $('#modal-content').html('<div class="text-center py-4">Memuat data...</div>');

            // Ensure modal content has proper height and scroll
            $('#modal-content').css({
                'max-height': '16rem',
                'overflow-y': 'auto'
            });

            // Show BladewindUI modal
            showModal('detail-instansi');

            // Force modal to appear on top with maximum z-index
            setTimeout(() => {
                // Set z-index for modal elements with maximum value
                $('[data-modal="detail-instansi"]').css({
                    'z-index': '2147483647',
                    'position': 'fixed'
                });
                $('[data-modal="detail-instansi"] .bw-modal-backdrop').css({
                    'z-index': '2147483646',
                    'position': 'fixed'
                });
                $('[data-modal="detail-instansi"] .bw-modal-container').css({
                    'z-index': '2147483647',
                    'position': 'relative'
                });

                // Also target by class name
                $('.bw-modal-detail-instansi').css({
                    'z-index': '2147483647',
                    'position': 'fixed'
                });
                $('.bw-modal-detail-instansi .bw-modal-backdrop').css({
                    'z-index': '2147483646',
                    'position': 'fixed'
                });
                $('.bw-modal-detail-instansi .bw-modal-container').css({
                    'z-index': '2147483647',
                    'position': 'relative'
                });

                // Force all modals to be on top
                $('.bw-modal').css('z-index', '2147483647');
                $('.bw-modal .bw-modal-backdrop').css('z-index', '2147483646');
                $('.bw-modal .bw-modal-container').css('z-index', '2147483647');
            }, 50);

            // Additional attempt after modal is fully rendered
            setTimeout(() => {
                $('[data-modal="detail-instansi"]').css('z-index', '2147483647');
                $('.bw-modal').css('z-index', '2147483647');
            }, 200);

            // Monitor and force modal to stay on top
            const modalInterval = setInterval(() => {
                if ($('[data-modal="detail-instansi"]').is(':visible')) {
                    $('[data-modal="detail-instansi"]').css('z-index', '2147483647');
                    $('.bw-modal').css('z-index', '2147483647');
                    $('.bw-modal .bw-modal-backdrop').css('z-index', '2147483646');
                    $('.bw-modal .bw-modal-container').css('z-index', '2147483647');
                } else {
                    clearInterval(modalInterval);
                }
            }, 100);

            // Fetch instansi data
            $.ajax({
                url: `/akip/tim/${userId}/instansi`,
                type: 'GET',
                success: (response) => {
                    if (response.success && response.data.length > 0) {
                        let html = '<div class="space-y-2">';
                        response.data.forEach((item, index) => {
                            html += `
                                <a href="${item.url}" class="block p-3 border rounded hover:bg-blue-50 hover:border-blue-500 transition">
                                    <div class="flex justify-between items-start">
                                        <div class="flex-1">
                                            <h4 class="font-medium text-gray-900">${item.nama_instansi}</h4>
                                            <p class="text-sm text-gray-600 mb-1">
                                                <span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium bg-blue-100 text-blue-800">${item.group}</span>
                                                <span class="ml-2">${item.tahun} - ${item.periode}</span>
                                            </p>
                                            <p class="text-xs text-gray-500">
                                                <svg class="w-3 h-3 inline mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                                </svg>
                                                Terakhir update: ${item.last_updated}
                                            </p>
                                        </div>
                                        <svg class="w-5 h-5 text-gray-400 mt-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path>
                                        </svg>
                                    </div>
                                </a>
                            `;
                        });
                        html += '</div>';
                        $('#modal-content').html(html);

                        // Ensure scroll is enabled after content is loaded
                        $('#modal-content').css({
                            'max-height': '16rem',
                            'overflow-y': 'auto'
                        });
                    } else {
                        $('#modal-content').html('<div class="text-center py-4 text-gray-500">Tidak ada instansi yang dievaluasi</div>');
                    }
                },
                error: () => {
                    $('#modal-content').html('<div class="text-center py-4 text-red-500">Terjadi kesalahan saat memuat data</div>');
                }
            });
        });
    }

    /**
     * Get DataTable instance
     */
    getTable() {
        return this.table;
    }

    /**
     * Destroy DataTable
     */
    destroy() {
        if (this.table) {
            this.table.destroy();
            this.table = null;
        }
    }
}

// Global instance
window.AKIPDataTable = AKIPDataTable;
