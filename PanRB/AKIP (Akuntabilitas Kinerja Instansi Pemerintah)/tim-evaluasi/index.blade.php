@extends('layout.midone', ['akip' => true])
@section('title', 'Daftar Tim Evaluasi')

@section('content')
    <div class="intro-y box p-5 mt-5">
        <div class="flex items-center mb-5 pb-5 border-b border-gray-200">
            @if($tim)
                <h3 class="font-medium text-base mr-auto">Daftar Anggota Tim {{ $tim->nama }} ({{ $tim->keterangan }})</h3>
            @else
                <h3 class="font-medium text-base mr-auto">Daftar Anggota Tim</h3>
            @endif
        </div>

        @if(isset($message))
            <div class="text-center py-8">
                <div class="flex flex-col items-center justify-center">
                    <svg class="h-12 w-12 text-gray-400 mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-2.5L13.732 4c-.77-.833-1.964-.833-2.732 0L3.732 16.5c-.77.833.192 2.5 1.732 2.5z"></path>
                    </svg>
                    <p class="text-gray-600 font-medium">{{ $message }}</p>
                    <p class="text-gray-500 text-sm mt-1">Silakan hubungi administrator untuk mendaftarkan Anda sebagai anggota tim evaluasi.</p>
                </div>
            </div>
        @else
            <!-- Statistics Card and Chart Section -->
            <div class="grid grid-cols-1 gap-5 mt-5">
                <!-- Total Members Card (Row 1) -->
                <div class="intro-y box p-5">
                    <div class="flex items-center">
                        <div class="text-3xl font-bold text-blue-600" id="total-anggota">0</div>
                        <div class="ml-auto">
                            <svg class="w-8 h-8 text-blue-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"></path>
                            </svg>
                        </div>
                    </div>
                    <div class="text-gray-600 mt-1">Total Anggota Tim</div>
                </div>
                
                <!-- Chart Card (Row 2) -->
                <div class="intro-y box p-5">
                    <h4 class="font-medium mb-3">Distribusi Instansi per Anggota</h4>
                    <div id="chart-container" style="height: 500px;">
                        <canvas id="chart-instansi"></canvas>
                    </div>
                </div>
            </div>

            <div class="overflow-x-auto mt-5">
                <table id="tabel-tim" class="table table-bordered table-striped table-hover" cellspacing="0" width="100%">
                    <thead class="table-dark">
                        <tr>
                            <th>Nama Anggota</th>
                            <th>Email</th>
                            <th class="text-center">Jumlah Instansi</th>
                            <th class="text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        @endif
    </div>

           <!-- Modal Detail Instansi menggunakan BladewindUI -->
           <x-bladewind::modal
               name="detail-instansi"
               title="Daftar Instansi yang Dievaluasi"
               size="medium"
               show_close_icon="true"
               backdrop_can_close="true"
               blur_size="medium"
               ok_button_text=""
               cancel_button_text=""
               show_ok_button="false"
               show_cancel_button="false">
               <div id="modal-content" class="max-h-64 overflow-y-auto">
                   <!-- Content will be loaded here -->
               </div>
           </x-bladewind::modal>
@endsection

@push('css')
    <!-- AKIP Main CSS -->
    <link rel="stylesheet" href="{{ asset('assets/css/akip/akip-main.css') }}">
@endpush

@push('js')
    <!-- Chart.js CDN -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.9.1/dist/chart.min.js"></script>
    
    <!-- AKIP Components -->
    <script src="{{ asset('assets/js/akip/components/chart-init.js') }}"></script>
    <script src="{{ asset('assets/js/akip/components/datatable-init.js') }}"></script>
    
    <!-- AKIP Tim Evaluasi Page -->
    <script src="{{ asset('assets/js/akip/pages/tim-evaluasi.js') }}"></script>
@endpush
