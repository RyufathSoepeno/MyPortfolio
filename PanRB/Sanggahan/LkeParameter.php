<?php

namespace App\Models\LKE;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LkeParameter extends Model
{
    use HasFactory;
    protected $table = 'lke_parameter';

    public function parent()
    {
        return $this->belongsTo(LkeParameter::class, 'parent_id');
    }

    public function bobots()
    {
        return $this->hasMany(LkeBobot::class, 'lke_parameter_id');
    }

    public function penilai()
    {
        return $this->belongsTo(LkeTp::class, 'penilai_id');
    }

    public function kegiatan()
    {
        return $this->belongsTo(LkeKegiatan::class, 'lke_kegiatan_id');
    }

    public function indikator_pengali()
    {
        return $this->belongsTo(LkeParameter::class, 'indikator_pengali_id');
    }
    
    public function sanggah()
    {
        return $this->hasOne(
            LkeSanggah::class,
            'lke_parameter_id'
        );
    }

}
