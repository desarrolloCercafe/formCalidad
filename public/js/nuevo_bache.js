function ValidarNuevoBache(){

    var consecutivo_bache = document.getElementById('consecutivo_bache');
    var horas_bache = document.getElementById('horas_bache');
    var minutos_bache = document.getElementById('minutos_bache');
    var granulometria_bache = document.getElementById('granulometria_bache');
    var retencion_bache = document.getElementById('retencion_bache');
    var hum_premezcla_bache = document.getElementById('hum_premezcla_bache');
    var desviacion_estandar_bache = document.getElementById('desviacion_estandar_bache');
    var hum_terminado_bache = document.getElementById('hum_terminado_bache');
    var finos_bache = document.getElementById('finos_bache');
    var durabilidad_bache = document.getElementById('durabilidad_bache');
    var densidad_bache = document.getElementById('densidad_bache');
    var temp_enfriadora_bache = document.getElementById('temp_enfriadora_bache');
    var temp_ambiente_bache = document.getElementById('temp_ambiente_bache');
    var dureza_bache = document.getElementById('dureza_bache');
    var hum_acondicionado_bache = document.getElementById('hum_acondicionado_bache');
    var carga_bache = document.getElementById('carga_bache');
    var amperaje_bache = document.getElementById('amperaje_bache');
    var vapor_linea_bache = document.getElementById('vapor_linea_bache');
    var vapor_reducido_bache = document.getElementById('vapor_reducido_bache');
    var apertura_valvula_bache = document.getElementById('apertura_valvula_bache');
    var analista_bache = document.getElementById('analista_bache');
    var observacion_bache = document.getElementById('observacion_bache');

    var error = 0;

    var objeto = {
        consecutivo: consecutivo_bache.value,
        horas: horas_bache.value,
        minutos: minutos_bache.value,
        granulometria: granulometria_bache.value,
        retencion: retencion_bache.value,
        hum_premezcla: hum_premezcla_bache.value,
        desviacion_estandar: desviacion_estandar_bache.value,
        hum_terminado: hum_terminado_bache.value,
        finos: finos_bache.value,
        durabilidad: durabilidad_bache.value,
        densidad: densidad_bache.value,
        temp_enfriadora: temp_enfriadora_bache.value,
        temp_ambiente: temp_ambiente_bache.value,
        dureza: dureza_bache.value,
        hum_acondicionado: hum_acondicionado_bache.value,
        carga: carga_bache.value,
        amperaje: amperaje_bache.value,
        vapor_linea: vapor_linea_bache.value,
        vapor_reducido: vapor_reducido_bache.value,
        apertura_valvula: apertura_valvula_bache.value,
        analista: analista_bache.value,
        observacion: observacion_bache.value
    }

    if(validacionesCampos(objeto.consecutivo, "Consecutivo") || 
        validacionesCampos(objeto.horas, "Hora") ||
        validacionesCampos(objeto.minutos, "Minutos") ||
        validacionesCampos(objeto.granulometria, "Granulometría") ||
        validacionesCampos(objeto.retencion, "Retención") ||
        validacionesCampos(objeto.hum_premezcla, "Humedad Premezcla") ||
        validacionesCampos(objeto.desviacion_estandar, "Desviación estándar") ||
        validacionesCampos(objeto.hum_terminado, "Humedad Terminado") ||
        validacionesCampos(objeto.finos, "Finos") ||
        validacionesCampos(objeto.durabilidad, "Durabilidad") ||
        validacionesCampos(objeto.densidad, "Densidad") ||
        validacionesCampos(objeto.temp_enfriadora, "Temperatura Enfríadora") ||
        validacionesCampos(objeto.temp_ambiente, "Temperatura Ambiente") ||
        validacionesCampos(objeto.dureza, "Dureza") ||
        validacionesCampos(objeto.hum_acondicionado, "Humedad Acondicionado") ||
        validacionesCampos(objeto.carga, "Carga") ||
        validacionesCampos(objeto.amperaje, "Amperaje") ||
        validacionesCampos(objeto.vapor_linea, "Vapor de línea") ||
        validacionesCampos(objeto.vapor_reducido, "Vapor Reducido") ||
        validacionesCampos(objeto.apertura_valvula, "Apertura valvula") ||
        validacionesCampos(objeto.analista, "Analista")){
        error = 1;
    }

    if(error == 0){
        GuardarDatosBache(objeto);
    }

}

function validacionesCampos(data, titulo){
    if(data == ""){
        document.getElementById('tituloModalErrores').innerHTML = titulo;
        document.getElementById('contentModalErrores').innerHTML = `<p>Valor de <b>${titulo}</b> no valido</p>`;
        document.getElementById('activarModalError').click();
        return true;
    }else{
        return false;
    }
}

function GuardarDatosBache(objeto){
    var data = [];

    if(localStorage.getItem("BachesLote")){
        data = JSON.parse(localStorage.getItem("BachesLote"));
    }

    data.push(objeto);

    localStorage.setItem("BachesLote", JSON.stringify(data));

    BorrarCamposBache();
}

function BorrarCamposBache(){
    consecutivo_bache.value ="";
    horas_bache.value = "";
    minutos_bache.value = "";
    granulometria_bache.value  = "";
    retencion_bache.value = "";
    hum_premezcla_bache.value = "";
    desviacion_estandar_bache.value  = "";
    hum_terminado_bache.value  = "";
    finos_bache.value = "";
    durabilidad_bache.value = "";
    densidad_bache.value = "";
    temp_enfriadora_bache.value = "";
    temp_ambiente_bache.value = "";
    dureza_bache.value = "";
    hum_acondicionado_bache.value = "";
    carga_bache.value = "";
    amperaje_bache.value = "";
    vapor_linea_bache.value = "";
    vapor_reducido_bache.value = "";
    apertura_valvula_bache.value = "";
    analista_bache.value = "";
    observacion_bache.value = "";
}