public function index(Request $request)
    {
        $level = $this->getCurrentUserLevel();

        // Data untuk semua user
        $data = [
            'level' => $level
        ];

        // Jika user level TPN atau Admin, tambahkan data progress Evaluasi RB
        if (in_array($level, ['tpn', 'admin'])) {
            $selectedYear = $request->input('tahun', date('Y'));
            $selectedPeriode = $request->input('tw', ceil(date('n') / 3));

            // Get tims data dengan gabungan K/L dan Pemda
            $tims = DB::table('tim_evaluasi')
                ->select(
                    'tim_evaluasi.id as tim_id',
                    'tim_evaluasi.nama',
                    'tim_evaluasi.keterangan',
                    // Jumlah K/L yang dikelola
                    DB::raw('COUNT(DISTINCT CASE WHEN klpd_instansi_new.group IN ("kl", "lain") THEN instansi_tim.instansi_id END) as total_kl'),
                    // Jumlah Pemda yang dikelola
                    DB::raw('COUNT(DISTINCT CASE WHEN klpd_instansi_new.group IN ("provinsi", "kabupaten") THEN instansi_tim.instansi_id END) as total_pemda'),
                    // Jumlah K/L yang sudah diisi (Final)
                    DB::raw('COUNT(DISTINCT CASE 
                        WHEN klpd_instansi_new.group IN ("kl", "lain") 
                        AND evaluasi_sakip_kl.id IS NOT NULL 
                        THEN instansi_tim.instansi_id 
                    END) as total_kl_filled'),
                    // Jumlah Pemda yang sudah diisi (TW)
                    DB::raw('COUNT(DISTINCT CASE 
                        WHEN klpd_instansi_new.group IN ("provinsi", "kabupaten") 
                        AND evaluasi_sakip_pemda.id IS NOT NULL 
                        THEN instansi_tim.instansi_id 
                    END) as total_pemda_filled')
                )
                ->leftJoin('instansi_tim', 'tim_evaluasi.id', '=', 'instansi_tim.tim_id')
                ->leftJoin('klpd_instansi_new', 'instansi_tim.instansi_id', '=', 'klpd_instansi_new.id')
                // Join untuk K/L (Final)
                ->leftJoin('evaluasi_sakip as evaluasi_sakip_kl', function ($join) use ($selectedYear) {
                    $join->on('evaluasi_sakip_kl.instansi_id', '=', 'instansi_tim.instansi_id')
                        ->where('evaluasi_sakip_kl.tahun', $selectedYear)
                        ->where('evaluasi_sakip_kl.periode', 'Final')
                        ->whereIn('klpd_instansi_new.group', ['kl', 'lain']);
                })
                // Join untuk Pemda (TW)
                ->leftJoin('evaluasi_sakip as evaluasi_sakip_pemda', function ($join) use ($selectedYear, $selectedPeriode) {
                    $join->on('evaluasi_sakip_pemda.instansi_id', '=', 'instansi_tim.instansi_id')
                        ->where('evaluasi_sakip_pemda.tahun', $selectedYear)
                        ->where('evaluasi_sakip_pemda.periode', 'TW ' . $selectedPeriode)
                        ->whereIn('klpd_instansi_new.group', ['provinsi', 'kabupaten']);
                })
                ->whereNull('klpd_instansi_new.deleted_at')
                ->groupBy('tim_evaluasi.id', 'tim_evaluasi.nama', 'tim_evaluasi.keterangan')
                ->get();

                $tims = $tims->map(function ($tim) {
                    $tim->progress_kl = $tim->total_kl > 0
                        ? round(($tim->total_kl_filled / $tim->total_kl) * 100, 2)
                        : 0;

                    $tim->progress_pemda = $tim->total_pemda > 0
                        ? round(($tim->total_pemda_filled / $tim->total_pemda) * 100, 2)
                        : 0;

                    return $tim;
                });

            // Tambahkan data ke array
            $data['tims'] = $tims;
            $data['selectedYear'] = $selectedYear;
            $data['selectedPeriode'] = $selectedPeriode;
        }

        return view('dashboard', $data);
    }
