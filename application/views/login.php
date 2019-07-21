<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>Login | Refaccionaria ACEROS</title>

    <!-- Favicon icono de la pestaña-->
    <link rel="icon" href=<?php echo base_url('assets/img/llanta.png')?>>

    <!-- Stylesheet -->
    <link rel="stylesheet" type="text/css" href=<?php echo base_url('assets/css/login.css')?>>

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

   
    <div class="wrapper fadeInDown">
        <div id="formContent">
            <!-- Tabs Titles -->

            <!-- Icon -->
            <div class="fadeIn first">
            <img src="<?php echo base_url('assets/img/llantaColor.png')?>" id="icon" alt="User Icon" />
            </div>

            <div id="Titulo" class="container">
                <div class="row">
                    <h3 id="titulo">¡Bienvenido a la Refaccionaria ACERO!</h3>
                    <p id="mensaje">La mejor calidad para viajar seguro.</p>
                </div>
            </div>

            <!-- Login Form -->
            <form action="usuarios/login" method="POST">
                <input type="text" id="login" class="fadeIn second" name="login" placeholder="Correo electrónico">
                <input type="text" id="password" class="fadeIn third" name="password" placeholder="Contraseña">
                <input  class="fadeIn fourth" value="Iniciar sesión" type="submit">
            </form>

            <!-- Remind Passowrd -->
            <div id="formFooter">
            <a class="underlineHover" href="#">Olvide mi contraseña</a>
            </div>
        </div>
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

