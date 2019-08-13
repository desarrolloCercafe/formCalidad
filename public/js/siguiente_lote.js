
function ValidarDatosLote(){

    var ConsecutivoLote = document.getElementById('ConsecutivoLote').value;
    var FechaLote = document.getElementById('FechaLote').value;
    var TurnoLote = document.getElementById('TurnoLote').value;
    var DietaLote = document.getElementById('DietaLote').value;
    var BachesLote = document.getElementById('BachesLote').value;
    var errores = 0;

    var objeto = {
        consecutivoLote: ConsecutivoLote,
        FechaLote: FechaLote,
        TurnoLote: TurnoLote,
        DietaLote: DietaLote,
        BachesLote: BachesLote
    }

    if(objeto.consecutivoLote == ""){
        ActivarContenidoModal("Consecutivo Lote", "Debes de ingresar el consecutivo del lote.");
        errores = 1;
    }

    if(isNaN(objeto.consecutivoLote)){
        ActivarContenidoModal("Consecutivo Lote", "Debes de ingresar un valor numerico para el lote.");
        errores = 1;
    }

    if(objeto.consecutivoLote <= 0){
        ActivarContenidoModal("Consecutivo Lote", "Debes de ingresar un consecutivo valido para el lote.");
        errores = 1;
    }

    if(objeto.FechaLote == ""){
        ActivarContenidoModal("Fecha Lote", "Debes de ingresar la fecha del lote.");
        errores = 1;
    }

    if(objeto.TurnoLote == ""){
        ActivarContenidoModal("Turno Lote", "Debes de ingresar el turno en el que fue hecho el lote.");
        errores = 1;
    }

    if(objeto.TurnoLote != "diurna" && objeto.TurnoLote != "nocturna"){
        ActivarContenidoModal("Turno Lote", "Debes de ingresar un turno valido para el lote.");
        errores = 1;
    }

    if(objeto.DietaLote == ""){
        ActivarContenidoModal("Dieta Lote", "Debes de seleccionar la dieta que compone al lote.");
        errores = 1;
    }

    if(objeto.BachesLote == ""){
        ActivarContenidoModal("Baches Lote", "Debes de ingresar la cantidad de baches o toneladas del lote.");
        errores = 1;
    }

    if(errores == 0){
        mostrarBaches(objeto);
    }

    //Validar los datos URGENTE!!!!! (FALTA)
}

function ActivarContenidoModal(titulo, detalle){
    document.getElementById('tituloModalErrores').innerHTML = titulo;
    document.getElementById('contentModalErrores').innerHTML = detalle;
    document.getElementById('activarModalError').click();
}

function mostrarBaches(objeto){
    localStorage.setItem("DetalleLote", JSON.stringify(objeto));
    localStorage.setItem("showBaches", 1);
    document.getElementById("tittleInfoBache").innerHTML = "Bache del lote: "+objeto.consecutivoLote;
    inicio();
}
