<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;



class HomeReactController extends Controller
{
    public function index()
    {
        $usuarios = DB::table('users')->get(); //igual a un SELECT mysql
        return view('react', [
            'usuarios' => $usuarios
        ]);
        
    }
}
