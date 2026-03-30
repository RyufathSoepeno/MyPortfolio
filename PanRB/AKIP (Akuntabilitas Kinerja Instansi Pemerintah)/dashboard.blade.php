@extends('layout.midone', ['akip' => true])
@section('title', 'Dashboard')

@section('content')
    <div class="col-span-12 grid grid-cols-12 gap-6">
        <div class="intro-y col-span-12 md:col-span-12 lg:col-span-12 xl:col-span-12">
            <div class="box">
                <div class="p-5">
                    <div class="rounded-md">
                        <img width="100%" alt="menpanrb" class="rounded-md" src="{{ URL::to('/') }}/assets/images/banner_dashboard.jpg">
                    </div>
                </div>
            </div>
        </div>
        <!-- Evaluasi Akip Card -->
        <div class="col-span-12 sm:col-span-4 2xl:col-span-3 intro-y">
            <x-bladewind::card
                class="hover:shadow-lg hover:border-blue-300 hover:bg-blue-50 transition-all duration-300 cursor-pointer group"
                onclick="window.location.href='{{ url('akip/evaluasi/sakip') }}'"
            >
                <div class="flex items-center">
                    <div class="w-2/4 flex-none">
                        <div class="text-lg font-bold truncate text-gray-800 group-hover:text-blue-700 transition-colors duration-300">Evaluasi Akip</div>
                        <div class="text-slate-500 mt-1 text-sm group-hover:text-blue-600 transition-colors duration-300">Hasil Evaluasi Sakip</div>
                    </div>
                    <div class="flex-none ml-auto relative">
                        <div class="w-[90px] h-[90px] bg-blue-50 rounded-full flex items-center justify-center group-hover:bg-blue-100 transition-colors duration-300">
                            <i data-feather="bar-chart-2" class="w-12 h-12 text-blue-600 group-hover:text-blue-700 transition-colors duration-300"></i>
                        </div>
                    </div>
                </div>
            </x-bladewind::card>
        </div>

        <!-- Pengaturan Card -->
        <div class="col-span-12 sm:col-span-4 2xl:col-span-3 intro-y">
            <x-bladewind::card
                class="hover:shadow-lg hover:border-blue-300 hover:bg-blue-50 transition-all duration-300 cursor-pointer group"
                onclick="window.location.href='{{ route('profil') }}'"
            >
                <div class="flex items-center">
                    <div class="w-2/4 flex-none">
                        <div class="text-lg font-bold truncate text-gray-800 group-hover:text-blue-700 transition-colors duration-300">Pengaturan</div>
                        <div class="text-slate-500 mt-1 text-sm group-hover:text-blue-600 transition-colors duration-300">Pengaturan Profil dan Akun</div>
                    </div>
                    <div class="flex-none ml-auto relative">
                        <div class="w-[90px] h-[90px] bg-gray-50 rounded-full flex items-center justify-center group-hover:bg-blue-100 transition-colors duration-300">
                            <i data-feather="settings" class="w-12 h-12 text-gray-600 group-hover:text-blue-700 transition-colors duration-300"></i>
                        </div>
                    </div>
                </div>
            </x-bladewind::card>
        </div>

        <!-- Logout Card -->
        <div class="col-span-12 sm:col-span-4 2xl:col-span-3 intro-y">
            <x-bladewind::card
                class="hover:shadow-lg hover:border-red-300 hover:bg-red-50 transition-all duration-300 cursor-pointer group"
                onclick="event.preventDefault(); $('#logout').submit();"
            >
                <div class="flex items-center">
                    <div class="w-2/4 flex-none">
                        <div class="text-lg font-bold truncate text-gray-800 group-hover:text-red-700 transition-colors duration-300">Logout</div>
                        <div class="text-slate-500 mt-1 text-sm group-hover:text-red-600 transition-colors duration-300">Keluar Dari Sistem</div>
                    </div>
                    <div class="flex-none ml-auto relative">
                        <div class="w-[90px] h-[90px] bg-red-50 rounded-full flex items-center justify-center group-hover:bg-red-100 transition-colors duration-300">
                            <i data-feather="log-out" class="w-12 h-12 text-red-600 group-hover:text-red-700 transition-colors duration-300"></i>
                        </div>
                    </div>
                </div>
            </x-bladewind::card>
        </div>
    </div>
    @if ($level == 'tpn')
        @php
            // Hitung kuartal saat ini
            $currentMonth = date('n');
            $currentQuarter = ceil($currentMonth / 3);
            $currentYear = date('Y');
        @endphp

        <!-- Progress Pengisian Evaluasi AKIP Pemerintah Daerah -->
        <div class="intro-y datatable-wrapper box p-5 mt-5">
            <h1 class="text-2xl font-semibold mb-6">
                Progress Pengisian Evaluasi AKIP Pemerintah Daerah Tahun <span id="tahun-display">{{ $selectedYear }}</span> TW <span id="tw-display">{{ $selectedPeriode }}</span>
            </h1>

            <!-- Filter Section dengan BladewindUI Datepicker -->
            <div class="flex items-start gap-4 mb-6">
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
                        selected_value="{{ $currentYear }}"
                        searchable="true"
                        size="medium"
                        class="shadow-sm"
                    />
                </div>

                <div class="flex-1 min-w-[200px]">
                    @php
                        $periodeOptions = [
                            ['label' => 'TW 1 (Jan–Mar)', 'value' => '1'],
                            ['label' => 'TW 2 (Apr–Jun)', 'value' => '2'],
                            ['label' => 'TW 3 (Jul–Sep)', 'value' => '3'],
                            ['label' => 'TW 4 (Okt–Des)', 'value' => '4']
                        ];
                    @endphp
                    <x-bladewind::select
                        name="periode"
                        id="periode"
                        label="Periode"
                        placeholder="Pilih Periode"
                        :data="$periodeOptions"
                        selected_value="{{ $currentQuarter }}"
                        searchable="false"
                        size="medium"
                        class="shadow-sm"
                    />
                </div>

                <div class="flex items-end">
                    <x-bladewind::button
                        id="filterBtn"
                        size="medium"
                        color="primary"
                        has_icon="true"
                        icon="filter"
                    >
                        Filter
                    </x-bladewind::button>
                </div>
            </div>
            <x-bladewind::table
                striped="true"
                has_border="true"
                has_shadow="true"
                compact="true"
                divider="thin"
                has_hover="true"
            >
                <x-slot name="header">
                    <th>Nama Tim</th>
                    <th class="text-center">Jumlah Pemda yang Dikelola</th>
                    <th class="text-center">Jumlah Pemda yang Telah Diisi</th>
                    <th class="text-center">Progress Pengisian</th>
                </x-slot>

                <tbody id="table-pda">
                    @foreach ($tims as $tim)
                        <tr>
                            <td>{{ $tim->nama }} ({{ $tim->keterangan }})</td>
                            <td class="text-center">{{ $tim->total_instansi }}</td>
                            <td class="text-center">{{ $tim->total_instansi_filled }}</td>
                            <td class="text-center">
                                @if ($tim->total_instansi > 0)
                                    @php
                                        $progress = ($tim->total_instansi_filled / $tim->total_instansi) * 100;
                                        $badgeClass = $progress >= 80 ? 'bg-green-100 text-green-800' : ($progress >= 50 ? 'bg-yellow-100 text-yellow-800' : 'bg-red-100 text-red-800');
                                    @endphp
                                    <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium {{ $badgeClass }}">
                                        {{ number_format($progress, 2) }}%
                                    </span>
                                @else
                                    <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-gray-100 text-gray-800">
                                        0%
                                    </span>
                                @endif
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </x-bladewind::table>
        </div>
        <!-- Progress Pengisian Evaluasi AKIP Kementerian/Lembaga -->
        <div class="intro-y datatable-wrapper box p-5 mt-5">
            <h1 class="text-2xl font-semibold mb-6">
                Progress Pengisian Evaluasi AKIP Kementerian/Lembaga Tahun <span id="tahun-displayK">{{ $selectedYearK }}</span>
            </h1>

            <!-- Filter Section dengan BladewindUI -->
            <div class="flex items-start gap-4 mb-6">
                <div class="flex-1 min-w-[200px]">
                    @php
                        $tahunOptionsK = [];
                        for ($year = date('Y'); $year >= 2020; $year--) {
                            $tahunOptionsK[] = ['label' => $year, 'value' => $year];
                        }
                    @endphp
                    <x-bladewind::select
                        name="tahunK"
                        id="tahunK"
                        label="Tahun"
                        placeholder="Pilih Tahun"
                        :data="$tahunOptionsK"
                        selected_value="{{ $currentYear }}"
                        searchable="true"
                        size="medium"
                        class="shadow-sm"
                    />
                </div>

                <div class="flex items-end">
                    <x-bladewind::button
                        id="filterBtnK"
                        size="medium"
                        color="primary"
                        has_icon="true"
                        icon="filter"
                    >
                        Filter
                    </x-bladewind::button>
                </div>
            </div>

            <!-- Table dengan BladewindUI -->
            <x-bladewind::table
                striped="true"
                has_border="true"
                has_shadow="true"
                compact="true"
                divider="thin"
                has_hover="true"
            >
                <x-slot name="header">
                    <th>Nama Tim</th>
                    <th class="text-center">Jumlah K/L yang Dikelola</th>
                    <th class="text-center">Jumlah K/L yang Telah Diisi</th>
                    <th class="text-center">Progress Pengisian</th>
                </x-slot>

                <tbody id="table-kl">
                    @foreach ($tims_kl as $tim)
                        <tr>
                            <td>{{ $tim->nama }} ({{ $tim->keterangan }})</td>
                            <td class="text-center">{{ $tim->total_instansi }}</td>
                            <td class="text-center">{{ $tim->total_instansi_filled }}</td>
                            <td class="text-center">
                                @if ($tim->total_instansi > 0)
                                    @php
                                        $progress = ($tim->total_instansi_filled / $tim->total_instansi) * 100;
                                        $badgeClass = $progress >= 80 ? 'bg-green-100 text-green-800' : ($progress >= 50 ? 'bg-yellow-100 text-yellow-800' : 'bg-red-100 text-red-800');
                                    @endphp
                                    <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium {{ $badgeClass }}">
                                        {{ number_format($progress, 2) }}%
                                    </span>
                                @else
                                    <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-gray-100 text-gray-800">
                                        0%
                                    </span>
                                @endif
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </x-bladewind::table>
        </div>
    @endif
    @endsection
    @push('js')
        <script>
            $(function() {
                $('#filterBtn').on('click', filterData);
                $('#filterBtnK').on('click', filterDataK);

                // Load data default saat halaman pertama kali dimuat
                $(document).ready(function() {
                    // Tunggu sebentar untuk memastikan BladewindUI Select sudah ter-render
                    setTimeout(function() {
                        loadDefaultData();
                        loadDefaultDataK();
                    }, 500);
                });

                function loadDefaultData() {
                    // Ambil nilai default dari BladewindUI Select
                    const defaultTahun = $('input[name="tahun"]').val();
                    const defaultPeriode = $('input[name="periode"]').val();

                    // Jika ada nilai default, load data
                    if (defaultTahun && defaultPeriode) {
                        // Update display
                        $('#tahun-display').text(defaultTahun);
                        $('#tw-display').text(defaultPeriode);

                        // Load data dengan nilai default
                        loadData(defaultTahun, defaultPeriode);
                    }
                }

                function loadDefaultDataK() {
                    // Ambil nilai default dari BladewindUI Select untuk K/L
                    const defaultTahunK = $('input[name="tahunK"]').val();

                    // Jika ada nilai default, load data
                    if (defaultTahunK) {
                        // Update display
                        $('#tahun-displayK').text(defaultTahunK);

                        // Load data dengan nilai default
                        loadDataK(defaultTahunK);
                    }
                }

                function loadData(tahun, periode) {
                    showLoading();

                    $.get('{{ route('akip.dashboard.filter') }}', {
                            tahun,
                            periode
                        })
                        .done(response => {
                            $('#tahun-display').text(tahun);
                            $('#tw-display').text(periode);
                            updateTable(response.tims);
                            hideLoading();
                        })
                        .fail(xhr => {
                            alert('Error loading data. Please try again.');
                            hideLoading();
                            console.error(xhr);
                        });
                }

                function loadDataK(tahunK) {
                    showLoadingK();

                    $.get('{{ route('akip.dashboard.filter.kl') }}', {
                            tahunK,
                        })
                        .done(response => {
                            $('#tahun-displayK').text(tahunK);
                            updateTableK(response.tims_kl);
                            hideLoading();
                        })
                        .fail(xhr => {
                            alert('Error loading data. Please try again.');
                            hideLoading();
                            console.error(xhr);
                        });
                }

                function filterDataK() {
                    // Menggunakan syntax yang benar untuk BladewindUI Select
                    const tahunK = $('input[name="tahunK"]').val();

                    // Validasi input
                    if (!tahunK) {
                        alert('Silakan pilih tahun terlebih dahulu.');
                        return;
                    }

                    // Gunakan fungsi loadDataK yang sudah ada
                    loadDataK(tahunK);
                }

                function filterData() {
                    // Menggunakan syntax yang benar untuk BladewindUI Select
                    const tahun = $('input[name="tahun"]').val();
                    const periode = $('input[name="periode"]').val();

                    // Validasi input
                    if (!tahun || !periode) {
                        alert('Silakan pilih tahun dan periode terlebih dahulu.');
                        return;
                    }

                    // Gunakan fungsi loadData yang sudah ada
                    loadData(tahun, periode);
                }

                function updateTable(tims) {
                    const tbody = $('#table-pda').empty();
                    if (!tims.length) {
                        tbody.append(`
                        <tr>
                            <td colspan="4" class="px-4 py-2 text-center text-gray-500">Tidak ada data untuk periode yang dipilih</td>
                        </tr>
                    `);
                        return;
                    }
                    tims.forEach(tim => {
                        const progress = tim.total_instansi > 0 ?
                            ((tim.total_instansi_filled / tim.total_instansi) * 100).toFixed(2) :
                            0;
                        const badgeClass = progress >= 80 ? 'bg-green-100 text-green-800' : (progress >= 50 ? 'bg-yellow-100 text-yellow-800' : 'bg-red-100 text-red-800');

                        tbody.append(`
                        <tr>
                            <td>${tim.nama} (${tim.keterangan})</td>
                            <td class="text-center">${tim.total_instansi}</td>
                            <td class="text-center">${tim.total_instansi_filled}</td>
                            <td class="text-center">
                                <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium ${badgeClass}">
                                    ${progress}%
                                </span>
                            </td>
                        </tr>
                    `);
                    });
                }

                function updateTableK(tims) {
                    const tbody = $('#table-kl').empty();
                    if (!tims.length) {
                        tbody.append(`
                        <tr>
                            <td colspan="4" class="px-4 py-2 text-center text-gray-500">Tidak ada data untuk periode yang dipilih</td>
                        </tr>
                    `);
                        return;
                    }
                    tims.forEach(tim => {
                        const progress = tim.total_instansi > 0 ?
                            ((tim.total_instansi_filled / tim.total_instansi) * 100).toFixed(2) :
                            0;
                        const badgeClass = progress >= 80 ? 'bg-green-100 text-green-800' : (progress >= 50 ? 'bg-yellow-100 text-yellow-800' : 'bg-red-100 text-red-800');

                        tbody.append(`
                        <tr>
                            <td>${tim.nama} (${tim.keterangan})</td>
                            <td class="text-center">${tim.total_instansi}</td>
                            <td class="text-center">${tim.total_instansi_filled}</td>
                            <td class="text-center">
                                <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium ${badgeClass}">
                                    ${progress}%
                                </span>
                            </td>
                        </tr>
                    `);
                    });
                }

                function showLoadingK() {
                    $('#table-kl').html(`
                    <tr>
                        <td colspan="4" class="px-4 py-8 text-center">
                            <div class="flex justify-center">
                                <div class="animate-spin rounded-full h-8 w-8 border-b-2 border-gray-900"></div>
                            </div>
                            <p class="mt-2 text-gray-500">Loading...</p>
                        </td>
                    </tr>
                `);
                }

                function showLoading() {
                    $('#table-pda').html(`
                    <tr>
                        <td colspan="4" class="px-4 py-8 text-center">
                            <div class="flex justify-center">
                                <div class="animate-spin rounded-full h-8 w-8 border-b-2 border-gray-900"></div>
                            </div>
                            <p class="mt-2 text-gray-500">Loading...</p>
                        </td>
                    </tr>
                `);
                }

                function hideLoading() {
                    // no-op; table will be re-rendered by updateTable
                }
            });
        </script>
    @endpush
