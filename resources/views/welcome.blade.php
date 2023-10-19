

{{-- 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>LARAVEL 2</title>
    @viteReactRefresh 
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])
</head>
<body>
    <div id='root'> </div>
</body>
</html>--}}

@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card"> 
                           
                 <div class="card-header" id='root'> </div>
                 <div class="card-header" id='root2'> </div>
            </div>
        </div>
    </div>
</div>
@endsection