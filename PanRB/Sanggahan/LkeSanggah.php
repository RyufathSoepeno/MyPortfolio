<?php

namespace App\Models\LKE;

use Illuminate\Database\Eloquent\Model;

class LkeSanggah extends Model
{
    protected $table = 'lke_sanggah';

    protected $fillable = [
        'lke_test_tp_line_id',
        'instansi_id',
        'user_id',
        'uraian',
        'dokumen',
        'status',
    ];

}
