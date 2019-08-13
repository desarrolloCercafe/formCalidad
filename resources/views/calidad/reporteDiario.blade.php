@extends('layout.layout')

@section('content')
    <h5 class="card-header">Calidad</h5>
    <div class="card-body">
        <!--Información sobre el lote-->
        <h3 class="card-title">Resporte Diario: </h3>
        <div id="contentLote">
            <span id="spanConsecutivoLote">Lote:</span>
                <input type="number" class="form-control" placeholder="Consecutivo Lote" id="ConsecutivoLote">
            
            <span id="spanFechaLote">Fecha:</span>
                <input type="date" class="form-control" id="FechaLote">
            
            <span id="spanTurnoLote">Turno:</span>
                <input type="text" class="form-control" list="dataListTurnos" placeholder="Seleccionar Turno." id="TurnoLote">
    
            <span id="spanDietaLote">Seleccionar Dieta:</span>
                <input type="text" class="form-control" list="dataListDietas" placeholder="Seleccionar Dieta." id="DietaLote">
    
            <span id="spanBachesLote">Cantidad de baches o toneladas:</span>
                <input type="number" class="form-control" placeholder="Ingresar cantidad" id="BachesLote">
            <div style="float:right; ">
                <a href="#" class="btn btn-primary mt-2" onclick="ValidarDatosLote()">Siguiente</a>
            </div>
        </div>

        <!--Información sobre el bache-->
        <div id="contentBache">
            <h3 class="card-title">Información sobre el Bache: </h3>
            <span>Número del bache:</span>
                <div class="row ml-1">
                    <div class="col-xs-3 mr-2">
                        <input type="number" class="form-control" placeholder="Num. Bache">
                    </div>
                </div>
            <span>Horario del bache:</span>
                <div class="row ml-1">
                    <div class="col-xs-3 mr-2">
                        <input type="number" class="form-control" placeholder="Horas.">
                    </div>
                    <div class="col-xs-3">
                        <input type="number" class="form-control" placeholder="Minutos.">
                    </div>
                </div>
            <span>Granulometría:</span>
                <input type="number" class="form-control" placeholder="Granulometría.">

            <span>Retención:</span>
                <input type="number" class="form-control" placeholder="Retención.">

            <span>% Hum. premezclas:</span>
                <input type="number" class="form-control" placeholder="Hum. premezclas.">

            <span>Desviación estándar:</span>
                <input type="number" class="form-control" placeholder="Desviación estándar.">

            <span>% Hum. producto terminado:</span>
                <input type="number" class="form-control" placeholder="Hum. producto terminado.">

            <span>% Finos:</span>
                <input type="number" class="form-control" placeholder="valor finos.">

            <span>% Durabilidad:</span>
                <input type="number" class="form-control" placeholder="Durabilidad.">

            <span>Densidad:</span>
                <input type="number" class="form-control" placeholder="Densidad.">

            <span>Temp. enfriadora:</span>
                <input type="number" class="form-control" placeholder="Temp. enfríadora.">

            <span>Temp. ambiente:</span>
                <input type="number" class="form-control" placeholder="Temp. ambiente.">

            <span>Dureza:</span>
                <input type="number" class="form-control" placeholder="Dureza.">

            <span>% Hum. acondicionado:</span>
                <input type="number" class="form-control" placeholder="Hum. acondicionado.">

            <span>Carga:</span>
                <input type="number" class="form-control" placeholder="Carga.">

            <span>Amperajes:</span>
                <input type="number" class="form-control" placeholder="Amperajes.">

            <span>Presión vapor de línea:</span>
                <input type="number" class="form-control" placeholder="Vapor en línea.">

            <span>Presión vapor reducido:</span>
                <input type="number" class="form-control" placeholder="Vapor reducido.">

            <span>Apertura valvula:</span>
                <input type="number" class="form-control" placeholder="Apertura valvula.">
                
            <span>Analista:</span>
                <input type="text" class="form-control" placeholder="Seleccionar Analista." list="dataListAnalista">
            <span>Observaciones:</span>
                <textarea name="" id="" cols="30" rows="10" class="form-control" placeholder="Ingresa tus observaciones para este bache."></textarea>
            <div>
                <a class="btn btn-secondary mt-2" style="float: left;" onclick="ValidarRegresar()">Regresar</a>
                <a class="btn btn-danger mt-2" style="float: right;" onclick="ValidarFinalizar()">Finalizar</a>
                <a class="btn btn-primary mt-2 mr-2" style="float: right;" onclick="ValidarNuevoBache()">Nuevo Bache</a>
            </div>
        </div>
    </div>

    <!-- Button Que activa a la modal de errores-->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalErrores" style="display: none;">
        Activar modal errores
      </button>
      
      <!-- Modal de errores-->
      <div class="modal fade" id="modalErrores" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              ...
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">OK</button>
            </div>
          </div>
        </div>
      </div>
@endsection