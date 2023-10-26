<h1>Listado de Usuarios</h1>

<ul>
    @foreach ($usuarios as $db)
        <li>{{$db->name}}</li>
    @endforeach

</ul>