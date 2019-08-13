@extends('layout.layout')

@section('content')
    <h1 class="card-header" style="background-color: rgb(231, 1, 1); color: white;">Calidad</h1>
    <div class="card-body">
        <!--Información sobre el lote-->
        <div id="contentLote">
            <h3 class="card-title">Resporte Diario: </h3>
            <span id="spanConsecutivoLote">Lote:</span>
                <input type="number" class="form-control" placeholder="Consecutivo Lote" id="ConsecutivoLote">
            
            <span id="spanFechaLote">Fecha:</span>
                <input type="date" class="form-control" id="FechaLote">
            
            <span id="spanTurnoLote">Turno:</span>
                <input type="text" class="form-control" list="dataListTurnos" placeholder="Seleccionar Turno." id="TurnoLote">
    
            <span id="spanDietaLote">Seleccionar Dieta:</span>
                <input type="text" class="form-control" list="dataListDietas" placeholder="Seleccionar Dieta." id="DietaLote">
    
            <span id="spanBachesLote">Cantidad de baches o toneladas:</span>
                <input type="number" class="form-control" placeholder="Ingresar cantidad" id="BachesLote" min="0">
            <div style="float:right; ">
                <a href="#" class="btn btn-primary mt-2" onclick="ValidarDatosLote()">Siguiente</a>
            </div>
        </div>

        <!--Información sobre el bache-->
        <div id="contentBache">
            <h3 class="card-title" id="tittleInfoBache">Información sobre el Bache: </h3>
            <span>Número del bache:</span>
                <div class="row ml-1">
                    <div class="col-xs-3 mr-2">
                        <input type="number" class="form-control" placeholder="Num. Bache" id="consecutivo_bache">
                    </div>
                </div>
            <span>Horario del bache:</span>
                <div class="row ml-1">
                    <div class="col-xs-3 mr-2 mb-1">
                        <input type="number" class="form-control" placeholder="Horas." id="horas_bache" max="23">
                    </div>
                    <div class="col-xs-3">
                        <input type="number" class="form-control" placeholder="Minutos." id="minutos_bache" max="59">
                    </div>
                </div>
            <!--<div class="row">-->

                <div>
                    <span>Granulometría:</span>
                        <input type="text" class="form-control" placeholder="Granulometría." id="granulometria_bache">
        
                    <span>Retención:</span>
                        <input type="text" class="form-control" placeholder="Retención." id="retencion_bache">
        
                    <span>% Hum. premezclas:</span>
                        <input type="text" class="form-control" placeholder="Hum. premezclas." id="hum_premezcla_bache">
        
                    <span>Desviación estándar:</span>
                        <input type="text" class="form-control" placeholder="Desviación estándar." id="desviacion_estandar_bache">
        
                    <span>% Hum. producto terminado:</span>
                        <input type="text" class="form-control" placeholder="Hum. producto terminado." id="hum_terminado_bache">
        
                    <span>% Finos:</span>
                        <input type="text" class="form-control" placeholder="valor finos." id="finos_bache">
        
                    <span>% Durabilidad:</span>
                        <input type="text" class="form-control" placeholder="Durabilidad." id="durabilidad_bache">
        
                    <span>Densidad:</span>
                        <input type="text" class="form-control" placeholder="Densidad." id="densidad_bache">
        
                    <span>Temp. enfriadora:</span>
                        <input type="text" class="form-control" placeholder="Temp. enfríadora." id="temp_enfriadora_bache">
                </div>

                <div>
                    <span>Temp. ambiente:</span>
                        <input type="text" class="form-control" placeholder="Temp. ambiente." id="temp_ambiente_bache">
        
                    <span>Dureza:</span>
                        <input type="text" class="form-control" placeholder="Dureza." id="dureza_bache">
        
                    <span>% Hum. acondicionado:</span>
                        <input type="text" class="form-control" placeholder="Hum. acondicionado." id="hum_acondicionado_bache">
        
                    <span>Carga:</span>
                        <input type="text" class="form-control" placeholder="Carga." id="carga_bache">
        
                    <span>Amperajes:</span>
                        <input type="text" class="form-control" placeholder="Amperajes." id="amperaje_bache">
        
                    <span>Presión vapor de línea:</span>
                        <input type="text" class="form-control" placeholder="Vapor en línea." id="vapor_linea_bache">
        
                    <span>Presión vapor reducido:</span>
                        <input type="text" class="form-control" placeholder="Vapor reducido." id="vapor_reducido_bache">
        
                    <span>Apertura valvula:</span>
                        <input type="text" class="form-control" placeholder="Apertura valvula." id="apertura_valvula_bache">
                        
                    <span>Analista:</span>
                        <input type="text" class="form-control" placeholder="Seleccionar Analista." list="dataListAnalista" id="analista_bache">
                </div>

            <!--</div>-->
            <span>Observaciones:</span>
                <textarea name="" cols="30" rows="10" class="form-control" placeholder="Ingresa tus observaciones para este bache." id="observacion_bache"></textarea>
            <div>
                <a class="btn btn-secondary mt-2" style="float: left; color: white;" onclick="ValidarRegresar()">Regresar</a>
                <a class="btn btn-danger mt-2 mr-2" style="float: right; color: white;" onclick="ValidarFinalizar()">Finalizar</a>
                <a class="btn btn-primary mt-2 mr-2" style="float: right; color: white;" onclick="ValidarNuevoBache()">Nuevo Bache</a>
            </div>
        </div>
    </div>

    <!-- Button Que activa a la modal de errores-->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalErrores" style="display: none;" id="activarModalError">
        Activar modal errores
      </button>
      
      <!-- Modal de errores-->
      <div class="modal fade" id="modalErrores" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" onclick="BorrarAceptarRegistroBaches()">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="tituloModalErrores">Modal title</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="BorrarAceptarRegistroBaches()">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body" id="contentModalErrores">
              ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal" id="cancelarProcesos" onclick="BorrarAceptarRegistroBaches()">OK</button>
                <button type="button" class="btn btn-success" data-dismiss="modal" id="aceptarProceso" onclick="finalizarRegistroBaches()" style="display: none;">Enviar</button>  
            </div>
          </div>
        </div>
      </div>
@endsection