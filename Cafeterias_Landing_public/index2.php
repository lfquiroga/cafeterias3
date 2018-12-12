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
  <link href="css/default.css" rel="stylesheet">
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
    <form action="../Cafeterias_Landing_API/router-form.php" id="login-form" method="post" class="sign-in">
      <label for="email">Email:</label>
      <input type="email" name="email" id="email">
      <label for="password">Contraseña:</label>
      <input type="password" id="password">
      <input type="submit" class="submit" id="login" value="Ingresar">
	  <p class="resetpsswrd">¿Olvidaste tu contraseña? Hacé <a href="mailto:info@cafeteriasba.com">click aquí</a> para establecer una nueva.</p>
    </form>
   
    <form method="post" action="../Cafeterias_Landing_API/router-form.php" id="register-form" class="register">
      <label for="nombre-register">Nombre:</label>
      <input type="text" name="nombre" id="nombre-register">
      <label for="email-register">Email:</label>
      <input type="email" name="email" id="email-register">
      <label for="password-register">Contraseña:</label>
      <input type="password" name="password" id="password-register">
      <label for="password-confirmation">Confirmar Contraseña:</label>
      <input type="password" name="password-confirmation" id="password-confirmation">
      <input type="submit" class="submit" id="register-btn" value="Crear cuenta">
    </form>
  </div><!--.popup-content-->
</div><!--.main-popup-->
<!-- POP UP PARA LOGIN REGISTER -->
<div class="wrapper contheadhomepage">
  <div class="top-default contlogohomepage">
    <div class="logoCafeteriasBA">
      <a href="index.php">
        <img src="img/logoCafeteriasBA.svg">
      </a>
    </div>
  <header class="headmnhome"> 
	<div class="topnav" id="myTopnav">
	<div class="container1200max">
	  <a class="logomainmnu" href="../index.php" ><img width="64" src="img/logoCafeteriasBA.svg" alt="logoCafeteriasBA"></a>
	  <a class="navitem" href="index.php">Home</a>
	  <a class="navitem" href="views/about_us.html">Quiénes Somos?</a>
	  <a class="navitem" href="views/notas.html">Notas</a>
	  <a class="navitem" href="views/search.html">Buscar cafeterías</a>
	  <a class="navitem" href="views/search.html">Productos</a>	
    <?php
      if(isset($_SESSION['Usuario']))
      {
        ?>
    <?php  
      if(isset($_SESSION['Admin']))
      {?>
    <a class="usrmnbtns" title="Mi perfil" href="cpanel/index.php"><?php echo $_SESSION['Usuario']?></a>
    <?php
      }else
      {
        ?>
    <a class="usrmnbtns" title="Mi perfil" href="views/perfilUser.html">user@gmail.com</a> 
    <?php
      }
    ?>
    <a class="usrmnbtns" title="Desloguearse" href="#"><i id="desloguearse" class="fa fa-sign-out-alt" aria-hidden="true"></i></a>
    <?php
      }else{
        ?>
    <a href="#" class="loginLink">Ingresar</a>

      <?php  
      } 
      ?>
    <!--a href="#" class="loginLink">Ingresar</a>
	  <a class="usrmnbtns" title="Mi perfil" href="views/perfilUser.html">user@gmail.com</a>
    <a class="usrmnbtns" title="Desloguearse" href="#"><i class="fa fa-sign-out-alt" aria-hidden="true"></i></a-->
	  <a href="javascript:void(0);" class="iconRspnsv" onclick="myFunction()">
		<i class="fa fa-bars"></i>
	  </a>
	  <!-- Este botón ingresar debe ser visible si el usuario no está logueado <a class="usrmnbtns loginLink" title="Ingresar" href="#">Ingresar</a>  -->
	  <span class="clearflt"></span> 
	 </div>
  </div>
	
  </header>  
  </div>
  <div class="img-viewport">
  <div class="wrapper-img">
    <div class="display-img">
        <div class="display-txt">
            <h1> El mejor lugar para encontrar tu cafetería</h1>
        </div>
    </div> 
  </div>
</div>
</div>
  <main>
    <section class="container">
      <div class="row">
        <div class="row-header">
          <h2>Ranking de cafeterías</h2>
        </div>
        <article>
          
          <div class="first-item">
            <div>
              <a href="views/verCafeteria.php"><img src="img/cafeterias/cafe_2.jpg"></a>
            </div>
            <h3>#1 - Saints Café</h3>
            <hr>
            <div class="desc-recommended">
              <p>Valoración: <i class="star fas fa-star"></i><i class="star fas fa-star"></i><i class="star fas fa-star"></i><i class="star fas fa-star"></i><i class="star fas fa-star"></i></p>
              <p>Zona: Belgrano</p>
              <p>Categoría: Especialidad</p>
            </div>
          </div>
          
          <div class="second-item">
            <div>
              <a href="views/verCafeteria.php"><img src="img/cafeterias/cafe_3.jpg"></a>
            </div>
            <h3>#2 - Café Tortoni</h3>
            <hr>
            <div class="desc-recommended">
              <p>Valoración: <i class="star fas fa-star"></i><i class="star fas fa-star"></i><i class="star fas fa-star"></i><i class="star fas fa-star"></i><i class="star fas fa-star-half"></i></p>
              <p>Zona: Microcentro</p>
              <p>Categoría: Clásico</p>
            </div>
          </div>
          
          <div class="third-item">
            <div>
              <a href="views/verCafeteria.php"><img src="img/cafeterias/cafe_1.jpg"></a>
            </div>
            <h3>3# - Coffee Town</h3>
            <hr>
            <div class="desc-recommended">
              <p>Valoración: <i class="star fas fa-star"></i><i class="star fas fa-star"></i><i class="star fas fa-star"></i><i class="star fas fa-star"></i></p>
              <p>Zona: San Telmo</p>
              <p>Categoría: Experiencia</p>
            </div>
          </div>
          
        </article>
        <article>
            <div class="row-header">
              <h4><a href="views/search.html">Ver ranking completo</a></h4>
            </div>
        </article>
      </div>
    </section>
    <section class="notes-and-products">
      <article>
        <div class="tile our-notes">
          <div class="content">
              <p>Experimenta</p>
              <h3>Lee nuestras notas</h3>
              <a href="views/notas.html">Leer</a>
          </div>
        </div>
        <div class="tile our-products">
          <div class="content">
              <p>Equipate</p>
              <h3>Descubrí nuestros productos</h3>
              <a href="views/productos.html">Ver más</a>
          </div>
        </div>
      </article>
    </section>
    <section class="container">
      <div class="row text-row">
        <div class="row-header">
          <h2>Viví la experiencia completa</h2>
        </div>
        <div class="text-container">
          <p>Disfrutá de la experiencia que tenemos para brindarte. Encontrá tu lugar ideal y disfruta del mejor café del mundo. Descubrí porque #SomosCafe</p>
        </div>
      </div>
    </section>
  </main>
  <footer class="footer-landing">
    <div class="container">
      <div class="logoCafeteriasBA">
        <a href="index.php"><img src="img/logoCafeteriasBA.svg" alt="logoCafeteriasBA"></a>
      </div>
      <div class="social-media">
        <div>
          <a href="https://www.facebook.com/cafeterias.ba" target="_blank">
            <i class="fab fa-facebook-square"></i>
        </a>
      </div>
      <div>
        <a href="https://www.instagram.com/cafeteriasba/" target="_blank">
          <i class="fab fa-instagram"></i>
        </a>
      </div>
    </div>
      <div class="copy">
        <p>&copy; Cafeterías BA 2018 &reg;</p>
      </div>
    </div>
  </footer>
<script src="js/ajax.js"></script>
<script src="js/nav.js"></script>
<script src="js/register.js"></script>
<script src="js/login.js"></script>
<script src="js/home.js"></script>
</body>

</html>