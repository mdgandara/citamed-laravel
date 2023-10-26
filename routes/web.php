<?php

use App\Http\Controllers\RelacionController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\appointment;
use App\Models\User;
use Illuminate\Support\Facades\DB;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get("/users", function () {
    $users = DB::table("users")->get();
  
    return response()->json($users);
  });
  
//INICIO

Route::get('/', function () {
    return view('starts.start');
});

Route::get('/react', function () {
    return view('welcome');
})->name('react');

// todas las rutas de autenticacion

Auth::routes();
//Appointment::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/appointment', [App\Http\Controllers\AppointmentController::class, 'index'])->name('appointment');
Route::get('/p', [App\Http\Controllers\HomeReactController::class, 'index'])->name('p');

