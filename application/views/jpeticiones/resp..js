console.log(Correcto)

document.querySelector('#boton').addEventListener('click', traerDatos());

function traerDatos(){
    const xhttp = new XMLHttpRequest();
    xhttp.open('GET', '', true);
    xhttp.send();

    xhttp.onreadystatechange = function(){
        
    }


}