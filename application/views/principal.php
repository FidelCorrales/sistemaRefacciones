<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8">
<!-- Compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Refaccionaria UAM</title>

<body style="background-color:#212121">
    <nav style="background-color:#4527A0" class="nav-extended">
        <div class="nav-wrapper">
            <a href="#" class="brand-logo">Logo</a>
            <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href="sass.html">Sass</a></li>
                <li><a href="badges.html">Components</a></li>
                <li><a href="collapsible.html">JavaScript</a></li>
            </ul>
            </div>
            <div class="nav-content">
            <ul class="tabs tabs-transparent">
                <li class="tab" onclick="prueba('suspension');"><a href="#categoria">Suspensiones</a></li>
                <li class="tab" onclick="prueba('frenos');"><a class="active" href="#test2">Frenos</a></li>
                <li class="tab" onclick="prueba('motor');"><a href="#categoria">Partes externas motor</a></li>
                <li class="tab" onclick="prueba('herramienta');"><a class="active" href="#test2">Herramienta</a></li>
                <li class="tab" onclick="prueba('accesorios');"><a href="#test4">Accesorios</a></li>
            </ul>
        </div>
    </nav>

    <ul class="sidenav" id="mobile-demo">
        <li><a href="sass.html">Sass</a></li>
        <li><a href="badges.html">Components</a></li>
        <li><a href="collapsible.html">JavaScript</a></li>
    </ul>


    <div class="container">
        <div class="row">
            <?php for($i=0; $i<6; $i++){?>
        
                <?php echo'
    <div class="col s12 m3">
      <div class="card">
        <div class="card-image">
          <img class="materialboxed" width="100" src="http://mride.com.mx/img/product/rotula.png">
        </div>
        <div class="card-content">
        <h5>Importado</h5>
          <p>Amortiguadores-Traseros</p><br>
          <p>Compatibilidad: Aveo,Sonic,Vento</p>
          <p>$321.26</p>
        </div>
        <div class="card-action">
          <a href="#">This is a link</a>
        </div>
      </div>
    </div>
  ';?>
             <?php }?>
        </div>
    </div>

    <div class="fixed-action-btn">
        <a class="btn-floating btn-large red"><i class="large material-icons">shopping_cart</i></a>
        <ul>
            <li><a class="btn-floating red"><i class="material-icons">insert_chart</i></a></li>
            <li><a class="btn-floating yellow darken-1"><i class="material-icons">format_quote</i></a></li>
            <li><a class="btn-floating green"><i class="material-icons">publish</i></a></li>
            <li><a class="btn-floating blue"><i class="material-icons">attach_file</i></a></li>
        </ul>
    </div>

<script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.materialboxed');
    var instances = M.Materialbox.init(elems, {});
  });

  // Or with jQuery
  $(document).ready(function(){
    $('.materialboxed').materialbox();
  });

function prueba(categoria) {
    $.ajax({
        type:"POST",
        url: "http://localhost/sistemaRefacciones/index.php/Autopartes/dame_suspencion",
        data: {'clave': categoria},
        dataType : 'json',
        beforeSend : function() {
             console.log("Procesando....");
        },
        success: function(response){
            console.log(response);
            
        },
        complete: function(){
      
        }
    });
}   
</script>
</body>

<script  type="text/javascript">
/*document.addEventListener('DOMContentLoaded', function() {
var elems = document.querySelectorAll('.fixed-action-btn');
var instances = M.FloatingActionButton.init(elems, options);
});

$(document).ready(function(){
$('.fixed-action-btn').floatingActionButton();
});*/ 


/**/



</script>
</html>