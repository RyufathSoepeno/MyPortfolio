<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\LKE\LkeSanggah;
use App\Models\LKE\LkeTestTpLine;

class EvaluasiController extends Controller
{
    public function simpanSanggah(Request $request)
    {
        $request->validate([
            'tp_line_id' => 'required',
            'dokumen_sanggah' => 'required|file',
            'uraian' => 'required',
        ]);

        DB::transaction(function () use ($request) {

            $file = $request->file('dokumen_sanggah');
            $filename = time() . '_' . $file->getClientOriginalName();

            $file->storeAs('public/sanggah', $filename);

            LkeSanggah::create([
                'lke_test_tp_line_id' => $request->tp_line_id,
                'user_id' => auth()->id(),
                'dokumen' => $filename,
                'uraian' => $request->uraian,
            ]);

            LkeTestTpLine::where('id', $request->tp_line_id)
                ->update(['sanggah_status' => 'dalam proses']);
        });

        return back()->with('success', 'Sanggah submitted successfully.');
    }

    public function updateSanggahStatus(Request $request)
    {
        $request->validate([
            'tp_line_id' => 'required|exists:lke_test_tp_line,id',
            'status' => 'required|in:terima,tolak',
        ]);

        LkeTestTpLine::where('id', $request->tp_line_id)
            ->update([
                'sanggah_status' => $request->status,
            ]);

        return response()->json([
            'success' => true,
            'status' => $request->status,
        ]);
    }

}
