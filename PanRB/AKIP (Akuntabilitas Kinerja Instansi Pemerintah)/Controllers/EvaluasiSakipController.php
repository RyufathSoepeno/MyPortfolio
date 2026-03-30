<?php

namespace App\Http\Controllers\Akip;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class EvaluasiSakipController extends Controller
{
    protected $currentUser;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->currentUser = auth()->user();
            foreach (allowed_url('akip') as $allowed) {
                if ($request->is($allowed)) {
                    return $next($request);
                }
            }
            abort('403');
        });
    }

    // This controller is now deprecated.
    // Methods have been moved to:
    // - DashboardController (dashboard, filterDashboard, filterDashboardKl)
    // - EvaluasiController (evaluasi_sakip, evaluasi_sakip_instansi, etc.)
    // - TimEvaluasiController (tim_evaluasi, tim_evaluasi_getDatas, etc.)
    
    // This file is kept for backward compatibility but should not be used for new routes.
    // All new development should use the specific controllers above.
}