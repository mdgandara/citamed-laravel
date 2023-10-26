<?php

namespace App\Models;

use App\Models\cita as ModelsCita;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class cita extends Model
{
    use HasFactory;
    public function citas(){
        return $this->belongsToMany(citas::class,'user:cita');
    }
}
