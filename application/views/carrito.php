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
<title>Carrito de compras</title>

<body style="background-color:#212121">
    <nav style="background-color:#4527A0" class="nav-extended">
        <div class="nav-wrapper">
            <a href="#" class="brand-logo"><img src="http://dcsh.izt.uam.mx/cen_doc/cede/Logos_UAM/variacion6Izt.png" width="190px"></a>
            <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href="sass.html">Sass</a></li>
                <li><a href="badges.html">Components</a></li>
                <li><a href="collapsible.html">JavaScript</a></li>
            </ul>
            </div>
    </nav>

    <div class="row">
         <h4 style="color: white;">Carrito</h4>
        <div class="col s12 m8">
            <ul class="collapsible">
                <li>
                    <?php for($i=0; $i<count($articulos); $i++){?>
                        <?php echo '<div class="collapsible-header">
                            <a >'.$articulos[$i]['id_articulo'].'</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'.$articulos[$i]['descripcion'].'
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>Precio/unidad: '.$articulos[$i]['precio'].'</a>
                            <span class="badge">Cantidad: '.$articulos[$i]['cantidad'].'</span>
                        </div>';?> 
                    <?php }?>
                </li>
            </ul>
        </div>
        <div class="col s12 m4">
            <div class="card blue-grey darken-1">
        <div class="card-content white-text">
          <p>Todos los productos elegibles a tu pedido los obtendras con <a>envío GRATIS</a>, recuerda que somos tu mejor opcíon para la reparación de tu automovil</p>
          <h5>Subtotal  (<?php echo count($articulos)?> productos): $<?php $subtotal=0;for ($i=0; $i<count($articulos); $i++){ 
              $subtotal = $subtotal + $articulos[$i]['precio'] * $articulos[$i]['cantidad'];
              //$total = $total + $subtotal;
          }  echo $subtotal?></h5   >
        </div>
        <div class="card-action center">
          <a class="waves-effect waves-light btn-small">Proceder al pago</a>
        </div>
      </div>

       



        </div>
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
   
</script>
</body>
</html>