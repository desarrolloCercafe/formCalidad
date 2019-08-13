window.onload = inicio;

function inicio(){

    var loteForm = document.getElementById('contentLote');
    var bacheForm = document.getElementById('contentBache');

    if(localStorage.getItem("showBaches")){
        loteForm.style.display = "none";
    }else{
        bacheForm.style.display = "none";
    }
}