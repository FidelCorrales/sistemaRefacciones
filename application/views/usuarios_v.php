<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>Usuarios | Refaccionaria ACERO</title>

    <!-- Favicon icono de la pestaña-->
    <link rel="icon" href=<?php echo base_url('assets/img/llanta.png')?>>

    <!-- Stylesheet -->
    <link rel="stylesheet" type="text/css" href=<?php echo base_url('assets/css/usuarios.css')?>>

    <style>
    </style>
    <!-- jQuery 2.2.4 -->
    <script src="js/jquery.min.js"></script>
</head>

<body style="padding-bottom: 0px; font-family: 'Myriad Pro'">

    <!-- Header Area Start -->
    <div id="header">
    </div>
    <!-- Header Area End -->

    <!--Titulo -->
    <div class="container">  
        <div class="row" style="background-color: #4527A0">
            <h1 style="text-align: center; color: white">Usuarios</h1>
        </div>
    </div>

    <!--Tabla -->
    <div class="container">
        <div class="row" style="padding-left: 10%; padding-right:10%">
            <table id="tabla" class="table">
                <thead>
                    <th scope="col">NOMBRE</th>
                    <th scope="col">A. PATERNO</th>
                    <th scope="col">A. MATERNO</th>
                    <th scope="col">GENERO</th>
                    <th scope="col">TELEFONO</th>
                    <th scope="col">CORREO</th>
                    <th scope="col">ACTUALIZAR</th>
                    <th scope="col">ELIMINAR</th>
                </thead>
                <?php foreach($usuarios as $cliente)
                {
                    ?>
                <tr>
                    <td><?php echo $cliente['NOMBRE'] ;?></td>
                    <td><?php echo $cliente['APATERNO'];?></td>
                    <td><?php echo $cliente['AMATERNO'] ;?></td>
                    <td><?php echo $cliente['GENERO'] ;?></td>
                    <td><?php echo $cliente['TELEFONO'] ;?></td>
                    <td><?php echo $cliente['CORREO'] ;?></td>
                    <td><button id="btnactualizar">Actualizar</button></td>
                    <td><button id="btneliminar">Eliminar</button></td>
                <?php }?>
                    
                </tr>
            </table>
        </div>
    </div>

    <div class="container" style="text-align: center; padding-top: 40px">
        <button id="btnagregar" type="button" class="btn btn-primary">Agregar Nuevo Usuario</button>
    </div>

    <!-- Footer Area Start -->
    <div id="footer"></div>
    <!-- Footer Area End -->

    <!-- **** All JS Files ***** -->
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <script src="css/bootstrap.min.css"></script>

    <!--Cargar header y footer-->
    <script>
        //$("#footer").load("./ajaxFootePrincipal.php");
    </script>
    

</body>

</html>

