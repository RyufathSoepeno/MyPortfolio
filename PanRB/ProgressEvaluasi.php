        <!-- Table dengan sub-header style AKIP -->
        <div class="overflow-x-auto">
            <table class="w-full">
                <thead>
                    <tr class="bg-slate-100">
                        <th rowspan="2" class="border-b-2 dark:border-darkmode-300 whitespace-nowrap px-4 py-3 text-center align-middle">Nama Tim</th>
                        <th colspan="2" class="border-b-2 dark:border-darkmode-300 whitespace-nowrap px-4 py-3 text-center">Jumlah yang Dikelola</th>
                        <th colspan="2" class="border-b-2 dark:border-darkmode-300 whitespace-nowrap px-4 py-3 text-center">Jumlah yang Telah Diisi</th>
                        <th colspan="2" class="border-b-2 dark:border-darkmode-300 whitespace-nowrap px-4 py-3 text-center">Progress Pengisian</th>
                        <th rowspan="2" class="border-b-2 dark:border-darkmode-300 whitespace-nowrap px-4 py-3 text-center align-middle">Aksi</th>
                    </tr>
                    <tr class="bg-slate-50">
                        <th class="border-b dark:border-darkmode-300 whitespace-nowrap px-4 py-2 text-center">K/L</th>
                        <th class="border-b dark:border-darkmode-300 whitespace-nowrap px-4 py-2 text-center">Pemda</th>
                        <th class="border-b dark:border-darkmode-300 whitespace-nowrap px-4 py-2 text-center">K/L</th>
                        <th class="border-b dark:border-darkmode-300 whitespace-nowrap px-4 py-2 text-center">Pemda</th>
                        <th class="border-b dark:border-darkmode-300 whitespace-nowrap px-4 py-2 text-center">K/L</th>
                        <th class="border-b dark:border-darkmode-300 whitespace-nowrap px-4 py-2 text-center">Pemda</th>
                    </tr>
                </thead>
                <tbody id="table-rb">
                    @forelse ($tims as $tim)
                    <tr class="hover:bg-slate-100">
                        {{-- Nama Tim --}}
                        <td class="border-b dark:border-darkmode-300 px-4 py-3">
                            {{ $tim->nama ?? '-' }} ({{ $tim->keterangan ?? '-' }})
                        </td>

                        {{-- Jumlah yang Dikelola --}}
                        <td class="border-b dark:border-darkmode-300 px-4 py-3 text-center">
                            {{ $tim->total_kl ?? 0 }}
                        </td>
                        <td class="border-b dark:border-darkmode-300 px-4 py-3 text-center">
                            {{ $tim->total_pemda ?? 0 }}
                        </td>

                        {{-- Jumlah yang Telah Diisi --}}
                        <td class="border-b dark:border-darkmode-300 px-4 py-3 text-center">
                            {{ $tim->total_kl_filled ?? 0 }}
                        </td>
                        <td class="border-b dark:border-darkmode-300 px-4 py-3 text-center">
                            {{ $tim->total_pemda_filled ?? 0 }}
                        </td>

                        {{-- Progress Pengisian K/L --}}
                        <td class="border-b dark:border-darkmode-300 px-4 py-3 text-center">
                            @php
                                $badgeClassKL = $tim->progress_kl >= 80
                                    ? 'bg-green-100 text-green-800'
                                    : ($tim->progress_kl >= 50
                                        ? 'bg-yellow-100 text-yellow-800'
                                        : 'bg-red-100 text-red-800');
                            @endphp
                            <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium {{ $badgeClassKL }}">
                                {{ number_format($tim->progress_kl, 2) }}%
                            </span>
                        </td>

                        {{-- Progress Pengisian Pemda --}}
                        <td class="border-b dark:border-darkmode-300 px-4 py-3 text-center">
                            @php
                                $badgeClassPemda = $tim->progress_pemda >= 80
                                    ? 'bg-green-100 text-green-800'
                                    : ($tim->progress_pemda >= 50
                                        ? 'bg-yellow-100 text-yellow-800'
                                        : 'bg-red-100 text-red-800');
                            @endphp
                            <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium {{ $badgeClassPemda }}">
                                {{ number_format($tim->progress_pemda, 2) }}%
                            </span>
                        </td>

                        {{-- Aksi --}}
                        <td class="border-b dark:border-darkmode-300 px-4 py-3 text-center">
                            <button
                                onclick="showDetailRB({{ $tim->tim_id ?? $tim->id }}, '{{ $tim->nama }}', '{{ $tim->keterangan }}')"
                                class="btn btn-primary btn-sm"
                                type="button"
                                style="background-color:#1e293b;border-color:#1e293b;color:white;"
                            >
                                Detail
                            </button>
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td colspan="8" class="border-b dark:border-darkmode-300 px-4 py-8 text-center text-gray-500">
                            Tidak ada data
                        </td>
                    </tr>
                    @endforelse
                    </tbody>

            </table>
        </div>
    </div>
