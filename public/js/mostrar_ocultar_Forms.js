window.onload = inicio;

function inicio(){

    var loteForm = document.getElementById('contentLote');
    var bacheForm = document.getElementById('contentBache');

    if(localStorage.getItem("showBaches")){
        loteForm.style.display = "none";
        bacheForm.style.display = "block";
    }else{
        bacheForm.style.display = "none";
        loteForm.style.display = "block";
    }
}