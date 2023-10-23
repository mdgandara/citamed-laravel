<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void {
        Schema::create('citas', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id'); // Clave foránea para relacionar la cita con el usuario
            $table->dateTime('fecha_cita');
            $table->text('descripcion');
          //  $table->timestamps();
        });
    
        Schema::table('citas', function (Blueprint $table) {
            $table->foreign('user_id')->references('id')->on('users');
        });
    }
    
    

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('citas');
    }
};
