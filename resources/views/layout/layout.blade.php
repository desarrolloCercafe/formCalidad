
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{ asset('node_modules/bootstrap/dist/css/bootstrap.min.css') }}">
    <title>Cercafe Forms</title>
</head>
<body>

    <div class="container-fluid mt-2">
        <div class="card">
            @yield('content')
        </div>
    </div>

    <!--Data List de datos de las dietas-->
    <datalist id="dataListDietas">
        @foreach ($dietas as $dieta)
            <option value="{{$dieta->nombre}}">{{$dieta->nombre}}</option>
        @endforeach
    </datalist>

    <datalist id="dataListDietas2">
        @foreach ($dietas as $dieta)
            <option value="{{$dieta->id}}">{{$dieta->id}}</option>
        @endforeach
    </datalist>
    
    <!--Data List de datos de los turnos-->
    <datalist id="dataListTurnos">
        @foreach ($turnos as $turno)
            <option value="{{$turno->nombre}}">{{$turno->nombre}}</option>
        @endforeach
    </datalist>

    <datalist id="dataListTurnos">
        @foreach ($turnos as $turno)
            <option value="{{$turno->id}}">{{$turno->id}}</option>
        @endforeach
    </datalist>

    <!--Data List de datos de los analistas-->
    <datalist id="dataListAnalista">
        @foreach ($analistas as $analista)
            <option value="{{$analista->nombre_completo}}">{{$analista->nombre_completo}}</option>
        @endforeach
    </datalist>

    <datalist id="dataListAnalista">
        @foreach ($analistas as $analista)
            <option value="{{$analista->id}}">{{$analista->id}}</option>
        @endforeach
    </datalist>

<script src="{{asset('node_modules/jquery/dist/jquery.min.js')}}"></script>
<script src="{{asset('node_modules/popper.js/dist/umd/popper.min.js')}}"></script>
<script src="{{asset('node_modules/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<script src="{{asset('js/mostrar_ocultar_Forms.js')}}"></script>
<script src="{{asset('js/siguiente_lote.js')}}"></script>
<script src="{{asset('js/regresar_bache.js')}}"></script>
<script src="{{asset('js/nuevo_bache.js')}}"></script>
<script src="{{asset('js/finalizar_bache.js')}}"></script>

</body>
</html>