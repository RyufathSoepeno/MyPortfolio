<?php

namespace App\Models\LKE;

use Illuminate\Database\Eloquent\Model;

class LkeTestTpLineSanggah extends Model
{
    protected $table = 'lke_test_tp_line_sanggah';

    protected $fillable = [
        'lke_test_tp_line_id',
        'user_id',
        'file',
        'uraian',
        'status_sanggah',
    ];

    public function tpLine()
    {
        return $this->belongsTo(
            LkeTestTpLine::class,
            'lke_test_tp_line_id'
        );
    }
}
