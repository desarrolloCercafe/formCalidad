function ValidarRegresar(){
    localStorage.removeItem("showBaches");
    inicio();

    var ConsecutivoLote = document.getElementById('ConsecutivoLote');
    var FechaLote = document.getElementById('FechaLote');
    var TurnoLote = document.getElementById('TurnoLote');
    var DietaLote = document.getElementById('DietaLote');
    var BachesLote = document.getElementById('BachesLote');

    var data = JSON.parse(localStorage.getItem("DetalleLote"));

    ConsecutivoLote.value = data.consecutivoLote;
    FechaLote.value = data.FechaLote;
    TurnoLote.value = data.TurnoLote;
    DietaLote.value = data.DietaLote;
    BachesLote.value = data.BachesLote;

}