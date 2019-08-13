function ValidarFinalizar(){
    var consecutivo_bache = document.getElementById('consecutivo_bache').value;
    var horas_bache = document.getElementById('horas_bache').value;
    var minutos_bache = document.getElementById('minutos_bache').value;
    var granulometria_bache = document.getElementById('granulometria_bache').value;
    var retencion_bache = document.getElementById('retencion_bache').value;
    var hum_premezcla_bache = document.getElementById('hum_premezcla_bache').value;
    var desviacion_estandar_bache = document.getElementById('desviacion_estandar_bache').value;
    var hum_terminado_bache = document.getElementById('hum_terminado_bache').value;
    var finos_bache = document.getElementById('finos_bache').value;
    var durabilidad_bache = document.getElementById('durabilidad_bache').value;
    var densidad_bache = document.getElementById('densidad_bache').value;
    var temp_enfriadora_bache = document.getElementById('temp_enfriadora_bache').value;
    var temp_ambiente_bache = document.getElementById('temp_ambiente_bache').value;
    var dureza_bache = document.getElementById('dureza_bache').value;
    var hum_acondicionado_bache = document.getElementById('hum_acondicionado_bache').value;
    var carga_bache = document.getElementById('carga_bache').value;
    var amperaje_bache = document.getElementById('amperaje_bache').value;
    var vapor_linea_bache = document.getElementById('vapor_linea_bache').value;
    var vapor_reducido_bache = document.getElementById('vapor_reducido_bache').value;
    var apertura_valvula_bache = document.getElementById('apertura_valvula_bache').value;
    var analista_bache = document.getElementById('analista_bache').value;
    var observacion_bache = document.getElementById('observacion_bache').value;

    var error = 0;

    var objeto = {
        consecutivo: consecutivo_bache,
        horas: horas_bache,
        minutos: minutos_bache,
        granulometria: granulometria_bache,
        retencion: retencion_bache,
        hum_premezcla: hum_premezcla_bache,
        desviacion_estandar: desviacion_estandar_bache,
        hum_terminado: hum_terminado_bache,
        finos: finos_bache,
        durabilidad: durabilidad_bache,
        densidad: densidad_bache,
        temp_enfriadora: temp_enfriadora_bache,
        temp_ambiente: temp_ambiente_bache,
        dureza: dureza_bache,
        hum_acondicionado: hum_acondicionado_bache,
        carga: carga_bache,
        amperaje: amperaje_bache,
        vapor_linea: vapor_linea_bache,
        vapor_reducido: vapor_reducido_bache,
        apertura_valvula: apertura_valvula_bache,
        analista: analista_bache,
        observacion: observacion_bache
    }

    if(objeto.consecutivo, "Consecutivo" == "" || 
        objeto.horas, "Hora" == "" ||
        objeto.minutos, "Minutos" == "" ||
        objeto.granulometria, "Granulometría" == "" ||
        objeto.retencion, "Retención" == "" ||
        objeto.hum_premezcla, "Humedad Premezcla" == "" ||
        objeto.desviacion_estandar, "Desviación estándar" == "" ||
        objeto.hum_terminado, "Humedad Terminado" == "" ||
        objeto.finos, "Finos" == "" ||
        objeto.durabilidad, "Durabilidad" == "" ||
        objeto.densidad, "Densidad" == "" ||
        objeto.temp_enfriadora, "Temperatura Enfríadora" == "" ||
        objeto.temp_ambiente, "Temperatura Ambiente" == "" ||
        objeto.dureza, "Dureza" == "" ||
        objeto.hum_acondicionado, "Humedad Acondicionado" != "" ||
        objeto.carga, "Carga" == "" ||
        objeto.amperaje, "Amperaje" == "" ||
        objeto.vapor_linea, "Vapor de línea" == "" ||
        objeto.vapor_reducido, "Vapor Reducido" == "" ||
        objeto.apertura_valvula, "Apertura valvula" == "" ||
        objeto.analista, "Analista" == ""){
        
            document.getElementById('tituloModalErrores').innerHTML = "Error";
            document.getElementById('contentModalErrores').innerHTML = "Hay campos vacíos en el último bache.";
            document.getElementById('activarModalError').click();
            error = 1;

    }

    if(error == 0){
        GuardarDatosBache(objeto);
        EnviarInformacionAlServidor();
    }
}

function EnviarInformacionAlServidor(){
    var ajax = new XMLHttpRequest();

    ajax.open("GET","/insertarInformacion?lote="+ encodeURIComponent(localStorage.getItem("DetalleLote"))+"&baches="+encodeURIComponent(localStorage.getItem("BachesLote")),true);
    ajax.setRequestHeader("Content-Type", "application/json");
    ajax.onreadystatechange=function() {
        if (this.readyState==4 && this.status==200) {
            
            var json = JSON.parse(ajax.responseText);
            console.log(json);

            /*localStorage.clear();
            inicio();*/
        }
    }
    ajax.send();
}