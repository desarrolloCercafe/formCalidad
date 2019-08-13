
function ValidarDatosLote(){

    var ConsecutivoLote = document.getElementById('ConsecutivoLote').value;
    var FechaLote = document.getElementById('FechaLote').value;
    var TurnoLote = document.getElementById('TurnoLote').value;
    var DietaLote = document.getElementById('DietaLote').value;
    var BachesLote = document.getElementById('BachesLote').value;

    var objeto = {
        consecutivoLote: ConsecutivoLote,
        FechaLote: FechaLote,
        TurnoLote: TurnoLote,
        DietaLote: DietaLote,
        BachesLote: BachesLote
    }

    localStorage.setItem("DetalleLote", JSON.stringify(objeto));
    localStorage.setItem("showBaches", 1);
    inicio();

    //Validar los datos URGENTE!!!!! (FALTA)
}

/*function EnviarDatos(objeto){
    var ajax = new XMLHttpRequest();
    ajax.open("GET","/filtrarTable?data="+ encodeURIComponent(JSON.stringify(objeto)),true);
    ajax.setRequestHeader("Content-Type", "application/json");
    ajax.onreadystatechange=function() {
        if (this.readyState==4 && this.status==200) {

            var json = JSON.parse(ajax.responseText);
            if(json == "no hay resultados"){
                NotFoundResults();
            }else if(Object.keys(json[0]).length == 5){
                TablePedido(json);
            }else{
                TableProducto(json);
            }

            //console.log(json);

        }
    }
    ajax.send();
}*/
