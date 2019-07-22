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
                <li class="tab"><a href="http://localhost/sistemaRefacciones/index.php/Autopartes/dame_suspencion">Suspensiones</a></li>
                <li class="tab"><a class="active" href="http://localhost/sistemaRefacciones/index.php/Autopartes/dame_frenos">Frenos</a></li>
                <li class="tab"><a href="http://localhost/sistemaRefacciones/index.php/Autopartes/dame_aut_ext">Partes externas motor</a></li>
                <li class="tab"><a class="active" href="http://localhost/sistemaRefacciones/index.php/Autopartes/dame_herramienta">Herramienta</a></li>
                <li class="tab"><a href="http://localhost/sistemaRefacciones/index.php/Autopartes/dame_accesorios">Accesorios</a></li>
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
            <?php for($i=0; $i<count($categoria); $i++){?>
        
                <?php echo'
                        <div class="col s12 m4">
                            <div class="card">
                                <div class="card-image">
                                    <img class="materialboxed" width="60" src="http://mride.com.mx/img/product/rotula.png">
                                </div>
                                <div class="card-content">
                                    <h5>'.$categoria[$i]["MARCA"].'</h5>
                                    <a id="identificador'.$i.'">'.$categoria[$i]["ID_AUTOPARTE"].'</a>
                                    <p id="descripcion'.$i.'">'.$categoria[$i]["DESCRIPCION"].'</p>
                                    <p>'.$categoria[$i]["COMPATIBILIDAD"].'</p>
                                    $ MNX: <a id="precio'.$i.'">'.$categoria[$i]["PRECIO"].'.00</a>
                                </div>
                                <div class="card-action">
                                <form name="producto"> 
                                    <label> 
                                    <input id="'.$i.'" name="valor" type="text" value=1> 
                                    </label> 
                                </form>  
                                <a class="btn-floating" onclick="incrementar('.$i.');"><i class="material-icons">add</i></a>
                                <a class="btn-floating" onclick="decrementar('.$i.');"><i class="material-icons">remove</i></a>
                                <a class="btn right" onclick="agregar_al_carrito('.$i.');"><i class="large material-icons">shopping_cart</i>Agregar</a>
                                </div>
                            </div>
                        </div>
                        ';?>
             <?php }?>
        
            
        </div>
    </div>

    <div class="fixed-action-btn">
        <a class="btn-floating btn-large red" onclick="ver_carrito();"><i class="large material-icons">shopping_cart</i></a>
    </div>

    <footer class="page-footer" style="background-color:#4527A0">
        <div class="container">
            <div class="row">
                <div class="col l6 s12">
                    <h5 class="white-text">Refaccionaria UAM-Iztapalapa</h5>
                    <p class="grey-text text-lighten-4">Tu mejor opción para reparar tu automovil.</p>
                </div>
                <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>
                </ul>
                </div>
                </div>
                </div>
                <div class="footer-copyright">
                <div class="container">
                © 2019 Copyright Text
                <a class="grey-text text-lighten-4 right" href="#!">Universidad Autonoma Metropolitana</a>
            </div>
        </div>
    </footer>

<script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function() {
        var elems = document.querySelectorAll('.materialboxed');
        var instances = M.Materialbox.init(elems, {});
    });

    function incrementar(valor){
        var can = document.getElementById(valor);
        if (can.value<=9)can.value ++;
        if (can.value >= 10) {
            alert('Maxima cantidad del mismo alcanzado 10')
        }
        //console.log(can);
    }
    function decrementar(valor){
        var can = document.getElementById(valor);
        if (can.value == 1){
            alert("Minimo  cantidad permitido: 1")
        }else{
            can.value--;
        }
    } 

    var carrito = [];

    function agregar_al_carrito(i) {
        var identificador = 'identificador'+i;
        var descripcion = 'descripcion'+i;
        var precio = 'precio'+i;
        var id_articulo = document.getElementById(identificador).text;
        var des = document.getElementById(descripcion).innerHTML;
        var preciou = document.getElementById(precio).text;
        var cantidad = document.getElementById(i).value;
        carrito.push({
            'id_articulo' : id_articulo,
            'descripcion':des,
            'precio':preciou,
            'cantidad' : cantidad
        });
        alert("Producto agregado al carrito");
    }

    function ver_carrito(){

        if (carrito.length == 0){
            alert('Tu carrito de compras está vacío.');
        }else{
            var url = 'http://localhost/sistemaRefacciones/index.php/Autopartes/ver_carrito';
            $.ajax({
                type:"POST",
                url: url,
                data: {'carrito': carrito},
                beforeSend : function() {
                     console.log("Procesando....");
                },
                success: function(response){
                    $('body').html(response);   
                },
                complete: function(){
                }
            });
        }
        
    }
</script>
</body>
</html>