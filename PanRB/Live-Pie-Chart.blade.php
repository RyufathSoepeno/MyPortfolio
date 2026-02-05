@extends('layout.rubick')
@section('title', 'Chart RB')

@section('content')
<div class="col-span-12 grid grid-cols-12 gap-6">
        <div class="col-span-12 lg:col-span-4 intro-y box p-5 mb-5">
            <h2 class="text-lg font-medium truncate mr-5">
                Pemerintah Kabupaten/Kota
            </h2>
            <div class="mt-3">
                <div class="h-[213px]">
                    <canvas id="pie-chart-pemerintah" class="h-[300px] w-full"></canvas>
                </div>
            </div>
        </div>
        <div class="col-span-12 lg:col-span-4 intro-y box p-5 mb-5">
            <h2 class="text-lg font-medium truncate mr-5">
                Provinsi
            </h2>
            <div class="mt-3">
                <div class="h-[213px]">
                    <canvas id="pie-chart-provinsi" class="h-[300px] w-full"></canvas>
                </div>
            </div>
        </div>
        <div class="col-span-12 lg:col-span-4 intro-y box p-5 mb-5">
            <h2 class="text-lg font-medium truncate mr-5">
                Kementrian Lembaga
            </h2>
            <div class="mt-3">
                <div class="h-[213px]">
                    <canvas id="pie-chart-kementrian" class="h-[300px] w-full"></canvas>
                </div>
            </div>
        </div>
@endsection



@push('js')
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="https://cdn.rawgit.com/ashl1/datatables-rowsgroup/v1.0.0/dataTables.rowsGroup.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.html5.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        if ($("#pie-chart-provinsi").length) {
            var ctxProvinsi = $("#pie-chart-provinsi")[0].getContext("2d");

            var myPieChartProvinsi = new Chart(ctxProvinsi, {
                type: "pie",
                data: {
                    labels: ["{{ $yes_prov }} Sudah", "{{ $no_prov }} Belum"],
                    datasets: [{
                        data: [{{ $yes_prov }}, {{ $no_prov }}],
                        backgroundColor: ["#f1c40f", "#b32d29"],
                        hoverBackgroundColor: ["#f39c12", "#85201d"],
                        borderWidth: 5,
                        borderColor: $("html").hasClass("dark") ? "#34495e" : "#ecf0f1"
                    }]
                },
                options: {
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            position: 'bottom',
                            labels: {
                                color: "#000"
                            }
                        }
                    }
                }
            });
        }

        if ($("#pie-chart-kementrian").length) {
            var ctxKementrian = $("#pie-chart-kementrian")[0].getContext("2d");

            var myPieChartKementrian = new Chart(ctxKementrian, {
                type: "pie",
                data: {
                    labels: ["{{ $yes_kl }} Sudah", "{{ $no_kl }} Belum"],
                    datasets: [{
                        data: [{{ $yes_kl }}, {{ $no_kl }}],
                        backgroundColor: ["#f1c40f", "#b32d29"],
                        hoverBackgroundColor: ["#f39c12", "#85201d"],
                        borderWidth: 5,
                        borderColor: $("html").hasClass("dark") ? "#34495e" : "#ecf0f1"
                    }]
                },
                options: {
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            position: 'bottom',
                            labels: {
                                color: "#000"
                            }
                        }
                    }
                }
            });
        }

        if ($("#pie-chart-pemerintah").length) {
            var ctxPemerintah = $("#pie-chart-pemerintah")[0].getContext("2d");

            var myPieChartPemerintah = new Chart(ctxPemerintah, {
                type: "pie",
                data: {
                    labels: ["{{ $yes_kab }} Sudah", "{{ $no_kab }} Belum"],
                    datasets: [{
                        data: [{{ $yes_kab }}, {{ $no_kab }}],
                        backgroundColor: ["#f1c40f", "#b32d29"],
                        hoverBackgroundColor: ["#f39c12", "#85201d"],
                        borderWidth: 5,
                        borderColor: $("html").hasClass("dark") ? "#34495e" : "#ecf0f1"
                    }]
                },
                options: {
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            position: 'bottom',
                            labels: {
                                color: "#000"
                            }
                        }
                    }
                }
            });
        }
    </script>
@endpush

/** ====================== */

@extends('layout.rubick')
@section('title', 'Dashboard RB Tematik')

@section('content')
    <div class="intro-y col-span-12">
        <div class="intro-y box p-5">
            <div class="form-group mb-3">
                <form>
                    <label for="tahun" class="form-label mt-2">Tahun</label>
                    {!! Form::select('tahun', tahun_tematik(), $tahun, ['class' => 'w-full', 'id' => 'tahun', 'data-placeholder' => 'Pilih Tahun', 'onchange' => 'this.form.submit();']) !!}
                </form>
            </div>
        </div>
    </div>
    <div class="intro-y col-span-12 my-5">
        @include('common.status')
        <h2 class="text-lg font-medium truncate mr-5">Dashboard RB Tematik - Penilaian Tema dan Sasaran Tematik, Permasalahan
            dan Sasaran, Rencana Aksi. </h2>
    </div>
    <div class="col-span-12 grid grid-cols-12 gap-6">
        <div class="col-span-12 sm:col-span-6 2xl:col-span-4 intro-y">
            <div class="intro-y box p-5">
                <h2 class="text-lg font-medium truncate mr-5">
                    Provinsi
                </h2>
                <div class="mt-3">
                    <div class="h-[213px]">
                        <canvas id="pie-chart-provinsi" width="956" height="800" style="display: block; box-sizing: border-box; height: 400px; width: 478px;"></canvas>
                    </div>
                </div>

            </div>
        </div>

        <div class="col-span-12 sm:col-span-6 2xl:col-span-4 intro-y">
            <div class="intro-y box p-5">
                <h2 class="text-lg font-medium truncate mr-5">
                    Kementrian Lembaga
                </h2>
                <div class="mt-3">
                    <div class="h-[213px]">
                        <canvas id="pie-chart-kementrian" width="956" height="800" style="display: block; box-sizing: border-box; height: 400px; width: 478px;"></canvas>
                    </div>
                </div>

            </div>
        </div>

        <div class="col-span-12 sm:col-span-6 2xl:col-span-4 intro-y">
            <div class="intro-y box p-5">
                <h2 class="text-lg font-medium truncate mr-5">
                    Pemerintah Kabupaten/Kota
                </h2>
                <div class="mt-3">
                    <div class="h-[213px]">
                        <canvas id="pie-chart-pemerintah" width="956" height="800" style="display: block; box-sizing: border-box; height: 400px; width: 478px;"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="intro-y col-span-12 my-5">
        <h2 class="text-lg font-medium truncate mr-5">Dashboard RB Tematik Berdasarkan Tematik Permasalahan</h2>
    </div>

    @php
        $temaDefinitions = [];
        foreach ($temas as $index => $tema) {
            $alias = 'tema' . ($index + 1);
            $temaDefinitions[] = [
                'alias' => $alias,
                'label' => 'Tema ' . ($index + 1),
                'name' => $tema->nama,
            ];
        }

        $temaLabels = [];
        $temaLegendLabels = [];
        foreach ($temaDefinitions as $definition) {
            $temaLabels[] = $definition['label'];
            $temaLegendLabels[] = $definition['label'] . ': ' . $definition['name'];
        }

        $palette = ['#f1c40f', '#b32d29', '#b3611f', '#b39450', '#a2a2a2', '#30d15b', '#2980b9', '#8e44ad', '#16a085', '#e67e22', '#2c3e50', '#95a5a6'];
        $temaColors = [];
        $paletteCount = count($palette);
        $temaCount = count($temaDefinitions);
        for ($i = 0; $i < $temaCount; $i++) {
            $temaColors[] = $palette[$i % $paletteCount];
        }

        $groupKeys = ['kl', 'provinsi', 'kabupaten'];
        $temaCountsByGroup = [];
        $groupTotals = [];
        foreach ($groupKeys as $groupKey) {
            $temaCountsByGroup[$groupKey] = array_fill(0, $temaCount, 0);
            $groupTotals[$groupKey] = ['yes' => 0, 'no' => 0];
        }

        $provinsiByTema = [];
        $klByTema = [];
        $kabupatenByTema = [];

        foreach ($temaDefinitions as $position => $definition) {
            $provinsiByTema[$position] = [];
            $klByTema[$position] = [];
            $kabupatenByTema[$position] = [];
        }

        // Isi data per tema untuk semua group
        foreach ($instansis as $instansi) {
            $temaData = $tematiks[$instansi->id] ?? null;
            if ($temaData) {
                foreach ($temaDefinitions as $position => $definition) {
                    $alias = $definition['alias'];
                    if (!empty($temaData->{$alias})) {
                        $dataItem = [
                            'name' => $instansi->name,
                            'id' => $instansi->id
                        ];
                        
                        // Pisahkan berdasarkan group
                        if ($instansi->group === 'provinsi') {
                            $provinsiByTema[$position][] = $dataItem;
                        } elseif ($instansi->group === 'kl') {
                            $klByTema[$position][] = $dataItem;
                        } elseif ($instansi->group === 'kabupaten') {
                            $kabupatenByTema[$position][] = $dataItem;
                        }
                    }
                }
            }
        }
    @endphp

    <div class="col-span-12 sm:col-span-6 lg:col-span-4">
        <div class="intro-y box p-5">
            <h2 class="text-lg font-medium truncate mr-5">
                Provinsi
            </h2>
            <div class="mt-3">
                <div class="h-[213px]">
                    <canvas id="pie-bar1" width="956" height="800" style="display: block; box-sizing: border-box; height: 400px; width: 478px;"></canvas>
                </div>
            </div>
        </div>
    </div>
    
    <div class="col-span-12 sm:col-span-6 lg:col-span-4">
        <div class="intro-y box p-5">
            <h2 class="text-lg font-medium truncate mr-5">
                Kementerian Lembaga
            </h2>
            <div class="mt-3">
                <div class="h-[213px]">
                    <canvas id="pie-bar2" width="956" height="800" style="display: block; box-sizing: border-box; height: 400px; width: 478px;"></canvas>
                </div>
            </div>
        </div>
    </div>

    <div class="col-span-12 sm:col-span-6 lg:col-span-4">
        <div class="intro-y box p-5">
            <h2 class="text-lg font-medium truncate mr-5">
                Pemerintah Kabupaten/Kota
            </h2>
            <div class="mt-3">
                <div class="h-[213px]">
                    <canvas id="pie-bar3" width="956" height="800" style="display: block; box-sizing: border-box; height: 400px; width: 478px;"></canvas>
                </div>
            </div>
        </div>
    </div>

    <div class="intro-y col-span-12 lg:col-span-12" class="overflow-x-auto">
        <table class="table table-report -mt-2">
            <tbody>
                <tr class="intro-x">
                    @forelse ($temaLegendLabels as $legendIndex => $legend)
                        <td class="text-center">
                            <div class="flex items-center">
                                <div class="w-4 h-4 rounded-full mr-3" style="background-color: {{ $temaColors[$legendIndex] ?? '#f1c40f' }}"></div>
                                {{ $legend }}
                            </div>
                        </td>
                    @empty
                        <td class="text-center">Belum ada tema pada tahun terpilih.</td>
                    @endforelse
                </tr>
            </tbody>
        </table>

    </div>

    <div class="intro-y box col-span-12 lg:col-span-12">
        <div class="flex flex-col sm:flex-row items-center p-5 border-b border-slate-200/60">
            <h2 class="font-bold text-base mr-auto"> Data Semua Intansi Pemerintah - RB Tematik</h2>
        </div>
        <div class="lg:col-span-12 p-5 border-b border-slate-200/60">
            <table id="perencanaan" class="table table-bordered table-striped mt-5" cellspacing="0" width="100%">
                <thead class="table-dark font-bold">
                    <tr>
                        <th class="w-5">No.</th>
                        <th class="w200">Instansi Pemerintah</th>
                        <th> Group Instansi</th>
                        <th> Jumlah Tema</th>
                        <th>Tema dan Sasaran Tematik</th>
                        <th>Permasalahan dan Sasaran</th>
                        <th>Rencana Aksi</th>
                        <th>Semua</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $no = 0;
                    @endphp
                    @foreach ($instansis as $instansi)
                        @php
                            $no++;

                            $temaData = $tematiks[$instansi->id] ?? null;
                            $tematik = $temaData->tematik ?? '---';
                            $permasalahan = $temaData->permasalahan ?? '---';
                            $rencana_aksi = $temaData->rencana_aksi ?? '---';
                            $tema_id_count = $temaData->tema_id_count ?? '---';
                            $semua = $tematik === 'yes' && $permasalahan === 'yes' && $rencana_aksi === 'yes';
                            $semua_label = $semua ? 'yes' : '---';

                            $groupKey = $instansi->group;

                            if ($temaData && array_key_exists($groupKey, $temaCountsByGroup)) {
                                foreach ($temaDefinitions as $position => $definition) {
                                    $alias = $definition['alias'];
                                    if (!empty($temaData->{$alias})) {
                                        $temaCountsByGroup[$groupKey][$position]++;
                                    }
                                }
                            }

                            if (array_key_exists($groupKey, $groupTotals)) {
                                if ($semua) {
                                    $groupTotals[$groupKey]['yes']++;
                                } else {
                                    $groupTotals[$groupKey]['no']++;
                                }
                            }
                        @endphp
                        <tr>
                            <td>{{ $no }}</td>
                            <td><a class="tabel" href="{{ URL::to('/rencana_aksi/rb-tematik/rekap_data?instansi_id=' . $instansi->id) }}">{{ $instansi->name }}</a>
                            </td>
                            @php
                                $group = group_instansi($instansi->group);
                            @endphp
                            <td> {{ $group }}</td>
                            <td> {{ $tema_id_count }}
                            </td>
                            <td>
                                @if ($tematik === 'yes')
                                    <span style="font-weight: bolder; font-size:28px;">✔</span>
                                @else
                                    {{ $tematik }}
                                @endif
                            </td>
                            <td>
                                @if ($permasalahan === 'yes')
                                    <span style="font-weight: bolder; font-size:28px;">✔</span>
                                @else
                                    {{ $permasalahan }}
                                @endif
                            </td>
                            <td>
                                @if ($rencana_aksi === 'yes')
                                    <span style="font-weight: bolder; font-size:28px;">✔</span>
                                @else
                                    {{ $rencana_aksi }}
                                @endif
                            </td>
                            <td>
                                @if ($semua)
                                    <span style="font-weight: bolder; font-size:28px; color: #30d15b;">✔</span>
                                @else
                                    {{ $semua_label }}
                                @endif
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>

    @php
        $yes_kl = $groupTotals['kl']['yes'] ?? 0;
        $no_kl = $groupTotals['kl']['no'] ?? 0;
        $yes_prov = $groupTotals['provinsi']['yes'] ?? 0;
        $no_prov = $groupTotals['provinsi']['no'] ?? 0;
        $yes_kab = $groupTotals['kabupaten']['yes'] ?? 0;
        $no_kab = $groupTotals['kabupaten']['no'] ?? 0;
    @endphp
    <!-- Modal untuk menampilkan list provinsi -->
    <div id="provinsiModal" style="display: none; position: fixed !important; z-index: 99999 !important; left: 0 !important; top: 0 !important; width: 100% !important; height: 100% !important; overflow: auto; background-color: rgba(0,0,0,0.8) !important;">
        <div style="background-color: #ffffff; margin: 80px auto; padding: 30px; border: 2px solid #888; width: 90%; max-width: 700px; border-radius: 10px; box-shadow: 0 8px 16px rgba(0,0,0,0.3); position: relative;">
            <span class="close" style="position: absolute; right: 15px; top: 10px; color: #333; font-size: 32px; font-weight: bold; cursor: pointer; z-index: 100000;">&times;</span>
            <h2 id="modalTitle" style="margin-top: 0; padding-top: 10px; font-size: 20px; font-weight: bold; color: #333; margin-bottom: 10px;"></h2>
            <div style="margin-bottom: 15px; display: flex; gap: 10px;">
                <button onclick="downloadProvinsiExcel()" style="background-color: #28a745; color: white; padding: 8px 16px; border: none; border-radius: 5px; cursor: pointer; font-size: 14px; display: flex; align-items: center; gap: 5px;">
                    Download Excel
                </button>
                <button onclick="downloadProvinsiPDF()" style="background-color: #dc3545; color: white; padding: 8px 16px; border: none; border-radius: 5px; cursor: pointer; font-size: 14px; display: flex; align-items: center; gap: 5px;">
                     Download PDF
                </button>
            </div>
            <div id="modalContent" style="overflow-y: auto; max-height: 500px;">
                <table class="table table-bordered" style="width: 100%; border-collapse: collapse;">
                    <thead style="background-color: #f8f9fa;">
                        <tr>
                            <th style="padding: 12px; border: 1px solid #dee2e6; text-align: center; width: 60px;">No</th>
                            <th style="padding: 12px; border: 1px solid #dee2e6;">Nama Provinsi</th>
                        </tr>
                    </thead>
                    <tbody id="provinsiList"></tbody>
                </table>
            </div>
        </div>
    </div>
    <div id="klModal" style="display: none; position: fixed !important; z-index: 99999 !important; left: 0 !important; top: 0 !important; width: 100% !important; height: 100% !important; overflow: auto; background-color: rgba(0,0,0,0.8) !important;">
        <div style="background-color: #ffffff; margin: 80px auto; padding: 30px; border: 2px solid #888; width: 90%; max-width: 700px; border-radius: 10px; box-shadow: 0 8px 16px rgba(0,0,0,0.3); position: relative;">
            <span class="close-kl" style="position: absolute; right: 15px; top: 10px; color: #333; font-size: 32px; font-weight: bold; cursor: pointer; z-index: 100000;">&times;</span>
            <h2 id="klModalTitle" style="margin-top: 0; padding-top: 10px; font-size: 20px; font-weight: bold; color: #333; margin-bottom: 10px;"></h2>
            <div style="margin-bottom: 15px; display: flex; gap: 10px;">
                <button onclick="downloadKLExcel()" style="background-color: #28a745; color: white; padding: 8px 16px; border: none; border-radius: 5px; cursor: pointer; font-size: 14px; display: flex; align-items: center; gap: 5px;">
                    Download Excel
                </button>
                <button onclick="downloadKLPDF()" style="background-color: #dc3545; color: white; padding: 8px 16px; border: none; border-radius: 5px; cursor: pointer; font-size: 14px; display: flex; align-items: center; gap: 5px;">
                    Download PDF
                </button>
            </div>
            <div id="klModalContent" style="overflow-y: auto; max-height: 500px;">
                <table class="table table-bordered" style="width: 100%; border-collapse: collapse;">
                    <thead style="background-color: #f8f9fa;">
                        <tr>
                            <th style="padding: 12px; border: 1px solid #dee2e6; text-align: center; width: 60px;">No</th>
                            <th style="padding: 12px; border: 1px solid #dee2e6;">Nama Kementerian/Lembaga</th>
                        </tr>
                    </thead>
                    <tbody id="klList"></tbody>
                </table>
            </div>
        </div>
    </div>

    <div id="kabupatenModal" style="display: none; position: fixed !important; z-index: 99999 !important; left: 0 !important; top: 0 !important; width: 100% !important; height: 100% !important; overflow: auto; background-color: rgba(0,0,0,0.8) !important;">
        <div style="background-color: #ffffff; margin: 80px auto; padding: 30px; border: 2px solid #888; width: 90%; max-width: 700px; border-radius: 10px; box-shadow: 0 8px 16px rgba(0,0,0,0.3); position: relative;">
            <span class="close-kabupaten" style="position: absolute; right: 15px; top: 10px; color: #333; font-size: 32px; font-weight: bold; cursor: pointer; z-index: 100000;">&times;</span>
            <h2 id="kabupatenModalTitle" style="margin-top: 0; padding-top: 10px; font-size: 20px; font-weight: bold; color: #333; margin-bottom: 10px;"></h2>
            <div style="margin-bottom: 15px; display: flex; gap: 10px;">
                <button onclick="downloadKabupatenExcel()" style="background-color: #28a745; color: white; padding: 8px 16px; border: none; border-radius: 5px; cursor: pointer; font-size: 14px; display: flex; align-items: center; gap: 5px;">
                    Download Excel
                </button>
                <button onclick="downloadKabupatenPDF()" style="background-color: #dc3545; color: white; padding: 8px 16px; border: none; border-radius: 5px; cursor: pointer; font-size: 14px; display: flex; align-items: center; gap: 5px;">
                    Download PDF
                </button>
            </div>
            <div id="kabupatenModalContent" style="overflow-y: auto; max-height: 500px;">
                <table class="table table-bordered" style="width: 100%; border-collapse: collapse;">
                    <thead style="background-color: #f8f9fa;">
                        <tr>
                            <th style="padding: 12px; border: 1px solid #dee2e6; text-align: center; width: 60px;">No</th>
                            <th style="padding: 12px; border: 1px solid #dee2e6;">Nama Kabupaten/Kota</th>
                        </tr>
                    </thead>
                    <tbody id="kabupatenList"></tbody>
                </table>
            </div>
        </div>
    </div>
@endsection

@push('js')
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="https://cdn.rawgit.com/ashl1/datatables-rowsgroup/v1.0.0/dataTables.rowsGroup.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.html5.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.31/jspdf.plugin.autotable.min.js"></script>
    <script>
            document.addEventListener('DOMContentLoaded', function() {
            // Modal Provinsi
            const modalProvinsi = document.getElementById('provinsiModal');
            const closeBtnProvinsi = document.querySelector('.close');
            
            if (closeBtnProvinsi) {
                closeBtnProvinsi.onclick = function() {
                    modalProvinsi.style.display = 'none';
                }
            }
            
            // Modal KL
            const modalKL = document.getElementById('klModal');
            const closeBtnKL = document.querySelector('.close-kl');
            
            if (closeBtnKL) {
                closeBtnKL.onclick = function() {
                    modalKL.style.display = 'none';
                }
            }
            
            // Modal Kabupaten
            const modalKabupaten = document.getElementById('kabupatenModal');
            const closeBtnKabupaten = document.querySelector('.close-kabupaten');
            
            if (closeBtnKabupaten) {
                closeBtnKabupaten.onclick = function() {
                    modalKabupaten.style.display = 'none';
                }
            }
            
            // Close ketika klik di luar modal
            window.onclick = function(event) {
                if (event.target == modalProvinsi) {
                    modalProvinsi.style.display = 'none';
                }
                if (event.target == modalKL) {
                    modalKL.style.display = 'none';
                }
                if (event.target == modalKabupaten) {
                    modalKabupaten.style.display = 'none';
                }
            }
        })
        if ($("#pie-chart-provinsi").length) {
            var ctxProvinsi = $("#pie-chart-provinsi")[0].getContext("2d");

            var myPieChartProvinsi = new Chart(ctxProvinsi, {
                type: "pie",
                data: {
                    labels: ["{{ $yes_prov }} Sudah", "{{ $no_prov }} Belum"],
                    datasets: [{
                        data: [{{ $yes_prov }}, {{ $no_prov }}],
                        backgroundColor: ["#f1c40f", "#b32d29"],
                        hoverBackgroundColor: ["#f39c12", "#85201d"],
                        borderWidth: 5,
                        borderColor: $("html").hasClass("dark") ? "#34495e" : "#ecf0f1"
                    }]
                },
                options: {
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            position: 'bottom',
                            labels: {
                                color: "#000"
                            }
                        }
                    }
                }
            });
        }

        if ($("#pie-chart-kementrian").length) {
            var ctxKementrian = $("#pie-chart-kementrian")[0].getContext("2d");

            var myPieChartKementrian = new Chart(ctxKementrian, {
                type: "pie",
                data: {
                    labels: ["{{ $yes_kl }} Sudah", "{{ $no_kl }} Belum"],
                    datasets: [{
                        data: [{{ $yes_kl }}, {{ $no_kl }}],
                        backgroundColor: ["#f1c40f", "#b32d29"],
                        hoverBackgroundColor: ["#f39c12", "#85201d"],
                        borderWidth: 5,
                        borderColor: $("html").hasClass("dark") ? "#34495e" : "#ecf0f1"
                    }]
                },
                options: {
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            position: 'bottom',
                            labels: {
                                color: "#000"
                            }
                        }
                    }
                }
            });
        }

        if ($("#pie-chart-pemerintah").length) {
            var ctxPemerintah = $("#pie-chart-pemerintah")[0].getContext("2d");

            var myPieChartPemerintah = new Chart(ctxPemerintah, {
                type: "pie",
                data: {
                    labels: ["{{ $yes_kab }} Sudah", "{{ $no_kab }} Belum"],
                    datasets: [{
                        data: [{{ $yes_kab }}, {{ $no_kab }}],
                        backgroundColor: ["#f1c40f", "#b32d29"],
                        hoverBackgroundColor: ["#f39c12", "#85201d"],
                        borderWidth: 5,
                        borderColor: $("html").hasClass("dark") ? "#34495e" : "#ecf0f1"
                    }]
                },
                options: {
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            position: 'bottom',
                            labels: {
                                color: "#000"
                            }
                        }
                    }
                }
            });
        }

        const temaLabels = @json($temaLabels);
        const temaLegendColors = @json($temaColors);
        const temaDefinitions = @json($temaDefinitions);
        const provinsiByTema = @json($provinsiByTema);
        const klByTema = @json($klByTema);
        const kabupatenByTema = @json($kabupatenByTema);
        const temaCountsByGroup = {
            provinsi: @json($temaCountsByGroup['provinsi'] ?? []),
            kl: @json($temaCountsByGroup['kl'] ?? []),
            kabupaten: @json($temaCountsByGroup['kabupaten'] ?? []),
        };

        if (temaLabels.length && document.getElementById("pie-bar1")) {
        var ctxProvinsis = document.getElementById("pie-bar1").getContext("2d");

        var myPieChartProvinsi = new Chart(ctxProvinsis, {
            type: "bar",
            data: {
                labels: temaLabels,
                datasets: [{
                    data: temaCountsByGroup.provinsi,
                    backgroundColor: temaLegendColors,
                    hoverBackgroundColor: temaLegendColors,
                    borderWidth: 1,
                    borderColor: temaLegendColors
                }]
            },
            options: {
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: false,
                        position: 'bottom',
                        labels: {
                            color: "#000"
                        }
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                onClick: function(event, elements) {
                console.log('Chart clicked!');
                console.log('Elements:', elements);
                
                if (elements && elements.length > 0) {
                    const clickedIndex = elements[0].index;
                    console.log('Clicked index:', clickedIndex);
                    
                    const temaInfo = temaDefinitions[clickedIndex];
                    const provinsiList = provinsiByTema[clickedIndex];
                    
                    console.log('Tema Info:', temaInfo);
                    console.log('Provinsi List:', provinsiList);
                    
                    // Tampilkan modal
                    const modal = document.getElementById('provinsiModal');
                    const modalTitle = document.getElementById('modalTitle');
                    const provinsiListEl = document.getElementById('provinsiList');
                    
                    if (!modal || !modalTitle || !provinsiListEl) {
                        console.error('Modal elements not found!');
                        return;
                    }
                    
                    // Set judul
                    modalTitle.textContent = 'Daftar Provinsi - ' + temaInfo.label + ': ' + temaInfo.name;
                    currentModalData = {
                        title: 'Daftar Provinsi - ' + temaInfo.label + ' - ' + temaInfo.name,
                        data: provinsiList
                    };
                    // Buat list provinsi
                    let html = '';
                    if (provinsiList && provinsiList.length > 0) {
                        for (let i = 0; i < provinsiList.length; i++) {
                            const provinsi = provinsiList[i];
                            html += '<tr>';
                            html += '<td>' + (i + 1) + '</td>';
                            html += '<td><a href="/rencana_aksi/rb-tematik/rekap_data?instansi_id=' + provinsi.id + '">' + provinsi.name + '</a></td>';
                            html += '</tr>';
                        }
                    } else {
                        html = '<tr><td colspan="3" class="text-center">Tidak ada data</td></tr>';
                    }
                    
                    provinsiListEl.innerHTML = html;
                    modal.style.display = 'block';
                    
                    console.log('Modal should be visible now');
                } else {
                    console.log('No elements clicked');
                }
            }
            }
        });
    }

        if (temaLabels.length && document.getElementById("pie-bar2")) {
        var ctxProvinsis2 = document.getElementById("pie-bar2").getContext("2d");

        var myPieChartProvinsi2 = new Chart(ctxProvinsis2, {
            type: "bar",
            data: {
                labels: temaLabels,
                datasets: [{
                    data: temaCountsByGroup.kl,
                    backgroundColor: temaLegendColors,
                    hoverBackgroundColor: temaLegendColors,
                    borderWidth: 1,
                    borderColor: temaLegendColors
                }]
            },
            options: {
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: false,
                        position: 'bottom',
                        labels: {
                            color: "#000"
                        }
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                onClick: function(event, elements) {
                    if (elements && elements.length > 0) {
                        const clickedIndex = elements[0].index;
                        const temaInfo = temaDefinitions[clickedIndex];
                        const klList = klByTema[clickedIndex];
                        
                        // Tampilkan modal KL
                        const modal = document.getElementById('klModal');
                        const modalTitle = document.getElementById('klModalTitle');
                        const klListEl = document.getElementById('klList');
                        
                        if (!modal || !modalTitle || !klListEl) {
                            console.error('Modal KL elements not found!');
                            return;
                        }
                        
                        modalTitle.textContent = 'Daftar Kementerian/Lembaga - ' + temaInfo.label + ': ' + temaInfo.name;
                        currentModalData = {
                            title: 'Daftar Kementerian Lembaga - ' + temaInfo.label + ' - ' + temaInfo.name,
                            data: klList
                        };
                        let html = '';
                        if (klList && klList.length > 0) {
                            for (let i = 0; i < klList.length; i++) {
                                const kl = klList[i];
                                html += '<tr>';
                                html += '<td style="padding: 10px; border: 1px solid #dee2e6;">' + (i + 1) + '</td>';
                                html += '<td style="padding: 10px; border: 1px solid #dee2e6;"><a href="/rencana_aksi/rb-tematik/rekap_data?instansi_id=' + kl.id + '">' + kl.name + '</a></td>';
                                html += '</tr>';
                            }
                        } else {
                            html = '<tr><td colspan="3" class="text-center">Tidak ada data</td></tr>';
                        }
                        
                        klListEl.innerHTML = html;
                        modal.style.display = 'block';
                    }
                }
            }
        });
    }

       if (temaLabels.length && document.getElementById("pie-bar3")) {
        var ctxProvinsis3 = document.getElementById("pie-bar3").getContext("2d");

        var myPieChartProvinsi3 = new Chart(ctxProvinsis3, {
            type: "bar",
            data: {
                labels: temaLabels,
                datasets: [{
                    data: temaCountsByGroup.kabupaten,
                    backgroundColor: temaLegendColors,
                    hoverBackgroundColor: temaLegendColors,
                    borderWidth: 1,
                    borderColor: temaLegendColors
                }]
            },
            options: {
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: false,
                        position: 'bottom',
                        labels: {
                            color: "#000"
                        }
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                onClick: function(event, elements) {
                    if (elements && elements.length > 0) {
                        const clickedIndex = elements[0].index;
                        const temaInfo = temaDefinitions[clickedIndex];
                        const kabupatenList = kabupatenByTema[clickedIndex];
                        
                        // Tampilkan modal Kabupaten
                        const modal = document.getElementById('kabupatenModal');
                        const modalTitle = document.getElementById('kabupatenModalTitle');
                        const kabupatenListEl = document.getElementById('kabupatenList');
                        
                        if (!modal || !modalTitle || !kabupatenListEl) {
                            console.error('Modal Kabupaten elements not found!');
                            return;
                        }
                        
                        modalTitle.textContent = 'Daftar Kabupaten/Kota - ' + temaInfo.label + ': ' + temaInfo.name;
                        currentModalData = {
                            title: 'Daftar Kabupaten Kota - ' + temaInfo.label + ' - ' + temaInfo.name,
                            data: kabupatenList
                        };
                        let html = '';
                        if (kabupatenList && kabupatenList.length > 0) {
                            for (let i = 0; i < kabupatenList.length; i++) {
                                const kabupaten = kabupatenList[i];
                                html += '<tr>';
                                html += '<td style="padding: 10px; border: 1px solid #dee2e6;">' + (i + 1) + '</td>';
                                html += '<td style="padding: 10px; border: 1px solid #dee2e6;"><a href="/rencana_aksi/rb-tematik/rekap_data?instansi_id=' + kabupaten.id + '">' + kabupaten.name + '</a></td>';
                                html += '</tr>';
                            }
                        } else {
                            html = '<tr><td colspan="3" class="text-center">Tidak ada data</td></tr>';
                        }
                        
                        kabupatenListEl.innerHTML = html;
                        modal.style.display = 'block';
                    }
                }
            }
        });
    }




        $(document).ready(function() {
            var empDataTable = $('#perencanaan').DataTable({
                "scrollX": true,
                dom: 'Blfrtip',
                pageLength: 50,
                lengthMenu: [50, 100, 150, 'All'],
                buttons: [{
                        extend: 'pdf',
                        exportOptions: {
                            columns: [0, 1, 2, 3, 4, 5, 6]
                        },
                        orientation: 'landscape',
                        pageSize: 'A4',
                        text: '<button class="btn btn-danger w-32 mr-2 mb-2"><svg fill="#ffffff" height="24px" width="24px" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 482.14 482.14" xml:space="preserve" stroke="#ffffff"> <g id="SVGRepo_bgCarrier" stroke-width="0"/> <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"/> <g id="SVGRepo_iconCarrier"> <g> <path d="M142.024,310.194c0-8.007-5.556-12.782-15.359-12.782c-4.003,0-6.714,0.395-8.132,0.773v25.69 c1.679,0.378,3.743,0.504,6.588,0.504C135.57,324.379,142.024,319.1,142.024,310.194z"/> <path d="M202.709,297.681c-4.39,0-7.227,0.379-8.905,0.772v56.896c1.679,0.394,4.39,0.394,6.841,0.394 c17.809,0.126,29.424-9.677,29.424-30.449C230.195,307.231,219.611,297.681,202.709,297.681z"/> <path d="M315.458,0H121.811c-28.29,0-51.315,23.041-51.315,51.315v189.754h-5.012c-11.418,0-20.678,9.251-20.678,20.679v125.404 c0,11.427,9.259,20.677,20.678,20.677h5.012v22.995c0,28.305,23.025,51.315,51.315,51.315h264.223 c28.272,0,51.3-23.011,51.3-51.315V121.449L315.458,0z M99.053,284.379c6.06-1.024,14.578-1.796,26.579-1.796 c12.128,0,20.772,2.315,26.58,6.965c5.548,4.382,9.292,11.615,9.292,20.127c0,8.51-2.837,15.745-7.999,20.646 c-6.714,6.32-16.643,9.157-28.258,9.157c-2.585,0-4.902-0.128-6.714-0.379v31.096H99.053V284.379z M386.034,450.713H121.811 c-10.954,0-19.874-8.92-19.874-19.889v-22.995h246.31c11.42,0,20.679-9.25,20.679-20.677V261.748 c0-11.428-9.259-20.679-20.679-20.679h-246.31V51.315c0-10.938,8.921-19.858,19.874-19.858l181.89-0.19v67.233 c0,19.638,15.934,35.587,35.587,35.587l65.862-0.189l0.741,296.925C405.891,441.793,396.987,450.713,386.034,450.713z M174.065,369.801v-85.422c7.225-1.15,16.642-1.796,26.58-1.796c16.516,0,27.226,2.963,35.618,9.282 c9.031,6.714,14.704,17.416,14.704,32.781c0,16.643-6.06,28.133-14.453,35.224c-9.157,7.612-23.096,11.222-40.125,11.222 C186.191,371.092,178.966,370.446,174.065,369.801z M314.892,319.226v15.996h-31.23v34.973h-19.74v-86.966h53.16v16.122h-33.42 v19.875H314.892z"/> </g> </g> </svg> &nbsp;PDF </button>',
                        titleAttr: 'Download PDF',
                        customize: function(doc) {
                            doc.content[1].table.body.forEach(function(row) {
                                row.forEach(function(cell) {
                                    if (cell.text === '✔' || cell.text === '✓') {
                                        cell.text = 'YA';
                                    }
                                });
                            });
                        }
                    },
                    {
                        extend: 'excel',
                        text: '<button class="btn btn-warning w-32 mr-2 mb-2"> <svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 50 50" width="24px" height="24px"><path d="M 28.875 0 C 28.855469 0.0078125 28.832031 0.0195313 28.8125 0.03125 L 0.8125 5.34375 C 0.335938 5.433594 -0.0078125 5.855469 0 6.34375 L 0 43.65625 C -0.0078125 44.144531 0.335938 44.566406 0.8125 44.65625 L 28.8125 49.96875 C 29.101563 50.023438 29.402344 49.949219 29.632813 49.761719 C 29.859375 49.574219 29.996094 49.296875 30 49 L 30 44 L 47 44 C 48.09375 44 49 43.09375 49 42 L 49 8 C 49 6.90625 48.09375 6 47 6 L 30 6 L 30 1 C 30.003906 0.710938 29.878906 0.4375 29.664063 0.246094 C 29.449219 0.0546875 29.160156 -0.0351563 28.875 0 Z M 28 2.1875 L 28 6.53125 C 27.867188 6.808594 27.867188 7.128906 28 7.40625 L 28 42.8125 C 27.972656 42.945313 27.972656 43.085938 28 43.21875 L 28 47.8125 L 2 42.84375 L 2 7.15625 Z M 30 8 L 47 8 L 47 42 L 30 42 L 30 37 L 34 37 L 34 35 L 30 35 L 30 29 L 34 29 L 34 27 L 30 27 L 30 22 L 34 22 L 34 20 L 30 20 L 30 15 L 34 15 L 34 13 L 30 13 Z M 36 13 L 36 15 L 44 15 L 44 13 Z M 6.6875 15.6875 L 12.15625 25.03125 L 6.1875 34.375 L 11.1875 34.375 L 14.4375 28.34375 C 14.664063 27.761719 14.8125 27.316406 14.875 27.03125 L 14.90625 27.03125 C 15.035156 27.640625 15.160156 28.054688 15.28125 28.28125 L 18.53125 34.375 L 23.5 34.375 L 17.75 24.9375 L 23.34375 15.6875 L 18.65625 15.6875 L 15.6875 21.21875 C 15.402344 21.941406 15.199219 22.511719 15.09375 22.875 L 15.0625 22.875 C 14.898438 22.265625 14.710938 21.722656 14.5 21.28125 L 11.8125 15.6875 Z M 36 20 L 36 22 L 44 22 L 44 20 Z M 36 27 L 36 29 L 44 29 L 44 27 Z M 36 35 L 36 37 L 44 37 L 44 35 Z"/></svg>  &nbsp;Excel </button>',
                        titleAttr: 'Download Excel'
                    }
                ]
            });
        });
        // Variabel global untuk menyimpan data modal yang sedang aktif
        let currentModalData = {
            title: '',
            data: []
        };

        // FUNGSI DOWNLOAD EXCEL - PROVINSI
        function downloadProvinsiExcel() {
            const wb = XLSX.utils.book_new();
            const wsData = [
                ['No', 'Nama Provinsi'],
                ...currentModalData.data.map((item, index) => [index + 1, item.name])
            ];
            const ws = XLSX.utils.aoa_to_sheet(wsData);
            XLSX.utils.book_append_sheet(wb, ws, 'Provinsi');
            XLSX.writeFile(wb, currentModalData.title + '.xlsx');
        }

        // FUNGSI DOWNLOAD PDF - PROVINSI
        function downloadProvinsiPDF() {
            const { jsPDF } = window.jspdf;
            const doc = new jsPDF();
            
            doc.setFontSize(16);
            doc.text(currentModalData.title, 14, 15);
            
            const tableData = currentModalData.data.map((item, index) => [index + 1, item.name]);
            
            doc.autoTable({
                head: [['No', 'Nama Provinsi']],
                body: tableData,
                startY: 25,
                theme: 'grid',
                headStyles: { fillColor: [248, 249, 250], textColor: [0, 0, 0], fontStyle: 'bold' },
                styles: { fontSize: 10 }
            });
            
            doc.save(currentModalData.title + '.pdf');
        }

        // FUNGSI DOWNLOAD EXCEL - KL
        function downloadKLExcel() {
            const wb = XLSX.utils.book_new();
            const wsData = [
                ['No', 'Nama Kementerian/Lembaga'],
                ...currentModalData.data.map((item, index) => [index + 1, item.name])
            ];
            const ws = XLSX.utils.aoa_to_sheet(wsData);
            XLSX.utils.book_append_sheet(wb, ws, 'Kementerian Lembaga');
            XLSX.writeFile(wb, currentModalData.title + '.xlsx');
        }

        // FUNGSI DOWNLOAD PDF - KL
        function downloadKLPDF() {
            const { jsPDF } = window.jspdf;
            const doc = new jsPDF();
            
            doc.setFontSize(16);
            doc.text(currentModalData.title, 14, 15);
            
            const tableData = currentModalData.data.map((item, index) => [index + 1, item.name]);
            
            doc.autoTable({
                head: [['No', 'Nama Kementerian/Lembaga']],
                body: tableData,
                startY: 25,
                theme: 'grid',
                headStyles: { fillColor: [248, 249, 250], textColor: [0, 0, 0], fontStyle: 'bold' },
                styles: { fontSize: 10 }
            });
            
            doc.save(currentModalData.title + '.pdf');
        }

        // FUNGSI DOWNLOAD EXCEL - KABUPATEN
        function downloadKabupatenExcel() {
            const wb = XLSX.utils.book_new();
            const wsData = [
                ['No', 'Nama Kabupaten/Kota'],
                ...currentModalData.data.map((item, index) => [index + 1, item.name])
            ];
            const ws = XLSX.utils.aoa_to_sheet(wsData);
            XLSX.utils.book_append_sheet(wb, ws, 'Kabupaten Kota');
            XLSX.writeFile(wb, currentModalData.title + '.xlsx');
        }

        // FUNGSI DOWNLOAD PDF - KABUPATEN
        function downloadKabupatenPDF() {
            const { jsPDF } = window.jspdf;
            const doc = new jsPDF();
            
            doc.setFontSize(16);
            doc.text(currentModalData.title, 14, 15);
            
            const tableData = currentModalData.data.map((item, index) => [index + 1, item.name]);
            
            doc.autoTable({
                head: [['No', 'Nama Kabupaten/Kota']],
                body: tableData,
                startY: 25,
                theme: 'grid',
                headStyles: { fillColor: [248, 249, 250], textColor: [0, 0, 0], fontStyle: 'bold' },
                styles: { fontSize: 10 }
            });
            
            doc.save(currentModalData.title + '.pdf');
        }
    </script>
@endpush
