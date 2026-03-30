@extends('layout.midone', ['akip' => true])
@section('title', 'Hasil Evaluasi SAKIP')

@section('content')
    <div class="intro-y flex flex-col sm:flex-row items-center mt-8">
        <h2 class="text-lg font-medium mr-auto">
            Hasil Evaluasi SAKIP
        </h2>
    </div>

    @if(isset($instansi))
        <!-- Instansi Info -->
        <div class="intro-y box p-5 mt-5">
            <div class="flex items-center">
                <div class="mr-4">
                    <div class="w-12 h-12 rounded-full bg-purple-100 flex items-center justify-center">
                        <i data-feather="map" class="w-6 h-6 text-purple-600"></i>
                    </div>
                </div>
                <div>
                    <div class="text-gray-500 text-sm">Nama Instansi</div>
                    <div class="text-xl font-bold text-gray-800">{{ $instansi->name }}</div>
                </div>
            </div>
        </div>

        <!-- Tabel Evaluasi Final -->
        <div class="intro-y box p-5 mt-5">
            <div class="flex items-center mb-5 pb-5 border-b border-gray-200">
                <h3 class="font-medium text-base mr-auto">
                    Daftar Evaluasi Final
                </h3>
            </div>

            @if(isset($evaluasiList) && $evaluasiList->count() > 0)
                <div class="table-container overflow-x-auto">
                    <table class="table table-bordered table-striped table-hover" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th width="50">No</th>
                                <th>Tahun</th>
                                <th>Periode</th>
                                <th>Nilai Total Evaluasi</th>
                                <th>Penanggung Jawab</th>
                                <th class="text-center" width="150">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($evaluasiList as $index => $evaluasi)
                                <tr>
                                    <td>{{ $index + 1 }}</td>
                                    <td>{{ $evaluasi->tahun }}</td>
                                    <td>{{ $evaluasi->periode }}</td>
                                    <td>
                                        <span
                                            class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium 
                                                                                                                                                                                        {{ $evaluasi->nilai_total_evaluasi_akip >= 90 ? 'bg-green-100 text-green-800' :
                                ($evaluasi->nilai_total_evaluasi_akip >= 70 ? 'bg-yellow-100 text-yellow-800' : 'bg-red-100 text-red-800') }}">
                                            {{ number_format($evaluasi->nilai_total_evaluasi_akip, 2, ',', '.') }}
                                        </span>
                                    </td>
                                    <td>{{ $evaluasi->penanggung_jawab }}</td>
                                    <td class="text-center">
                                        <a href="{{ route('akip.evaluasi.show.final', $evaluasi->id) }}"
                                            class="flex justify-center items-center px-3 py-1.5 border border-transparent text-xs font-medium rounded-md text-white bg-blue-600 hover:bg-blue-700"
                                            title="Lihat Detail">
                                            <i data-feather="eye" class="w-4 h-4 mr-1"></i> Lihat Detail
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
                    <p class="text-gray-600">Belum ada data evaluasi Final</p>
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