<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class tryoutModel extends Model
{
    protected $table = 'tb_hasil';
    protected $fillable = ['id_hasil', 'id','gambar_soal','id_bidang', 'hasil', 'keterangan'];
}
