<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class bidangModel extends Model
{
    protected $table = 'tb_bidang';
    protected $fillable = ['id_bidang','bidang','waktu', 'status'];

}
