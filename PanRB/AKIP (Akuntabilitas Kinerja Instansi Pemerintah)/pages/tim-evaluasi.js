/**
 * Tim Evaluasi Page JavaScript
 * Main initialization for Tim Evaluasi page
 */

$(document).ready(function() {
    // Initialize chart
    window.akipChart = new AKIPChart();

    // Define columns for DataTable
    const columns = [
        {
            data: 'nama',
            name: 'nama',
            className: 'font-medium'
        },
        {
            data: 'email',
            name: 'email',
            className: 'text-gray-600'
        },
        {
            data: 'jumlah_instansi',
            name: 'jumlah_instansi',
            className: 'text-center font-semibold',
            render: function(data, type, row) {
                if (type === 'display') {
                    // Format jumlah instansi dengan badge
                    var badgeClass = data > 0 ? 'bg-blue-100 text-blue-800' : 'bg-gray-100 text-gray-800';
                    return '<span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium ' + badgeClass + '">' + data + '</span>';
                }
                return data;
            }
        },
        {
            data: null,
            orderable: false,
            searchable: false,
            className: 'text-center',
            render: function(data, type, row) {
                return `<button class="btn-detail inline-flex items-center px-3 py-1.5 border border-transparent text-xs font-medium rounded-md text-white bg-blue-600 hover:bg-blue-700" data-user-id="${row.user_id}" data-nama="${row.nama}">
                    <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path>
                    </svg>
                    Detail
                </button>`;
            }
        }
    ];

    // Initialize DataTable
    window.akipDataTable = new AKIPDataTable({
        ajaxUrl: '/akip/tim/data',
        columns: columns
    });

    window.akipDataTable.init();
});
