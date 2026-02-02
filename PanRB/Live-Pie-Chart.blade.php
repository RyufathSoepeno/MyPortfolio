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
