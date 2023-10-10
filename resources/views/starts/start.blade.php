@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Start') }}</div>

                <div class="card-body">
                    <main>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-4"> <!-- Cambié la clase a "col-md-4" para ajustarla a Bootstrap -->
                                    <img class="img-fluid rounded-circle" src="../resources/img/medico-en-consulta-joven-432518484.png" alt="imagen Medico"> <!-- Usé la clase "img-fluid" para hacer que la imagen sea responsive y "rounded-circle" para darle forma circular -->
                                </div>
                                <div class="col-md-8">
                                    <h2 class="text-center">Bienvenido al Sistema de Citas Médicas</h2> <!-- Usé la clase "text-center" para centrar el texto -->
                                    <p class="text-center">Aquí puedes reservar tus citas y administrar tu información médica.</p>
                                    <div class="text-center"> <!-- Usé la clase "text-center" para centrar el botón -->
                                        <a href="#" class="btn btn-primary btn-lg">SACAR CITA</a> <!-- Utilicé las clases "btn" y "btn-primary" para el botón y "btn-lg" para hacerlo grande -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
