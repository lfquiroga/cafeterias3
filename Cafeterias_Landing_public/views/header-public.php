<?php

session_start();

?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone=no">
    <title>Cafeterias BA</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- slider -->	
    <link rel="stylesheet" type="text/css" href="../css/slider_component.css" />
    <script src="../js/slider_modernizr.min.js"></script>	
    <!-- slider -->  
    <link href="../css/default.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  </head>

  <body>
    <div class="overlay">
    </div>
    <!-- POP UP PARA LOGIN REGISTER -->
    <div class="main-popup">
      <div class="popup-header">
        <div id="popup-close-button"><a href="#"></a></div>
        <ul>
          <li><a href="#" id="sign-in">Ingresar</a></li>
          <li><a href="#" id="register">Registrarse</a></li>
        </ul>
      </div><!--.popup-header-->

      <div class="popup-content">
        <form action="../../Cafeterias_Landing_API/router-form.php" id="login-form" method="post" class="sign-in">
          <label for="email">Email:</label>
          <input type="email" name="email" id="email">
          <label for="contrasenia">Contrase&ntilde;a:</label>
          <input type="password" id="password">
          <input type="submit" class="submit" id="login" value="Ingresar">
          <p class="resetpsswrd">¿Olvidaste tu contrase&ntilde;a? Hac&eacute; <a href="mailto:info@cafeteriasba.com">click aqu&eacute;</a> para establecer una nueva.</p>
        </form>

        <form method="post" action="../../Cafeterias_Landing_API/router-form.php" id="register-form" class="register">
          <label for="nombre-register">Nombre:</label>
          <input type="text" name="nombre" id="nombre-register">
          <label for="email-register">Email:</label>
          <input type="email" name="email" id="email-register">
          <label for="password-register">Contrase&ntilde;a:</label>
          <input type="password" name="password" id="password-register">
          <label for="password-confirmation">Confirmar Contrase&ntilde;a:</label>
          <input type="password" name="password-confirmation" id="password-confirmation">
          <input type="submit" class="submit" id="register-btn" value="Crear cuenta">
        </form>
      </div><!--.popup-content-->
    </div>
    <!--.main-popup-->
    <!-- POP UP PARA LOGIN REGISTER -->
    <div class="wrapper wrapper-page-bg">

      <header class="top-fixed" style="padding-top: 0px;"> 
        <div class="topnav" id="myTopnav">
          <div class="container1200max">
            <a class="logomainmnu" href="../index.php" ><img width="64" src="../img/logoCafeteriasBA.svg" alt="logoCafeteriasBA"></a>
            <a class="navitem" href="../index.php">Home</a>
            <a class="navitem" href="about_us.php">Qui&eacute;nes Somos?</a>
            <a class="navitem" href="notas.php">Notas</a>
            <a class="navitem" href="search.php">Buscar cafeter&iacute;as</a>
            <a class="navitem" href="productos.php">Productos</a>
          <?php

              if (isset($_SESSION['Usuario'])) {

                  ?>

                  <?php

                  if (isset($_SESSION['Admin'])) {

                      ?>

                      <a class="usrmnbtns" title="Mi perfil" href="cpanel/index.php"><?php echo $_SESSION['Usuario'] ?></a>

                      <?php

                  } else {

                      ?>

                      <a class="usrmnbtns" title="Mi perfil" href="cpanel/perfilUser.php"><?php echo $_SESSION['Usuario']?></a>

                      <?php

                  }

                  ?>

                  <a class="usrmnbtns" title="Desloguearse" href="#"><i id="desloguearse" class="fa fa-sign-out-alt" aria-hidden="true"></i></a>

                  <?php

              } else {

                  ?>

                  <a href="#" class="loginLink">Ingresar</a>



    <?php

}?>
          </div>
        </div>

      </header>  
    </div>
    
    <script src="../js/logout.js"></script>