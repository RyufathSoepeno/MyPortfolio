@extends('layout.midone', ['akip' => true])
@section('title', 'Penghargaan AKIP')

@section('content')
    <div class="intro-y flex flex-col sm:flex-row items-center mt-8">
        <h2 class="text-lg font-medium mr-auto">
            Penghargaan AKIP
        </h2>
    </div>

    @if(isset($instansi))
        <!-- Instansi Info -->
        <div class="intro-y box p-5 mt-5">
            <div class="flex items-center">
                <div class="mr-4">
                    <div class="w-12 h-12 rounded-full bg-blue-100 flex items-center justify-center">
                        <i data-feather="building" class="w-6 h-6 text-blue-600"></i>
                    </div>
                </div>
                <div>
                    <div class="text-gray-500 text-sm">Nama Instansi</div>
                    <div class="text-xl font-bold text-gray-800">{{ $instansi->name }}</div>
                </div>
            </div>
        </div>

        <!-- Tabel Penghargaan -->
        <div class="intro-y box p-5 mt-5">
            <div class="flex items-center mb-5 pb-5 border-b border-gray-200">
                <h3 class="font-medium text-base mr-auto">
                    Daftar Penghargaan
                </h3>
            </div>

            @if(isset($penghargaanList) && $penghargaanList->count() > 0)
                <div class="table-container overflow-x-auto">
                    <table class="table table-bordered table-striped table-hover" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th width="50">No</th>
                                <th>Tahun</th>
                                <th>File Sertifikat</th>
                                <th class="text-center" width="150">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($penghargaanList as $index => $penghargaan)
                                <tr>
                                    <td>{{ $index + 1 }}</td>
                                    <td>{{ $penghargaan->tahun }}</td>
                                    <td>{{ $penghargaan->file_sertifikat }}</td>
                                    <td class="text-center">
                                        <a href="{{ route('akip.penghargaan.download', $penghargaan->id) }}"
                                            class="flex justify-center items-center px-3 py-1.5 border border-transparent text-xs font-medium rounded-md text-white bg-green-600 hover:bg-green-700"
                                            title="Download File">
                                            <i data-feather="download" class="w-4 h-4 mr-1"></i> Download
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            @else
                <div class="text-center py-8">
                    <i data-feather="inbox" class="w-12 h-12 text-gray-400 mx-auto mb-3"></i>
                    <p class="text-gray-600">Belum ada data penghargaan</p>
                </div>
            @endif
    @endif
@endsection

    @push('css')
        <style>
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
        </style>
    @endpush

    @push('js')
        <script>
            window.errorMessage = {{ isset($errorMessage) ? json_encode($errorMessage) : 'null' }};

            $(document).ready(function () {
                // Show warning SweetAlert if error message exists
                if (window.errorMessage) {
                    Swal.fire({
                        icon: 'warning',
                        title: 'Peringatan!',
                        text: window.errorMessage,
                        confirmButtonText: 'Kembali',
                        confirmButtonColor: '#d97706',
                        showCancelButton: false,
                        allowOutsideClick: false,
                        allowEscapeKey: false
                    }).then((result) => {
                        if (result.isConfirmed) {
                            window.location.href = "{{ route('akip.dashboard') }}";
                        }
                    });
                }

                feather.replace();
            });
        </script>
    @endpush