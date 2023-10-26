<?php

namespace App\Http\Controllers;

use App\Models\cita;
use App\Models\User;



use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RelacionController extends Controller
{
    public function index(){
        $usuarios = DB::table('users')->get(); //igual a un SELECT mysql
        return view('user.index', [
            'usuarios' => $usuarios
        ]);
    }
}
