<?php
require '../../autoload.php';
use CafeteriasBA\Session\Session;
Session::start();
?>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="format-detection" content="telephone=no">
  <title>Cafeterias BA</title>
  <link href="../css/default.css" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
</head>

<body>
	<div class="wrapper wrapper-page-bg">
  <header class="top-fixed">
    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <ul class="navbar navbar-nav">
          <li><a id="cafeterias" href="#">Cafeterías</a></li>
          <li><a id="sugerencias" href="#">Sugerencias</a></li>
          <li><a id="dashboard" href="index.php"><img src="../img/logo-elegido-byn.png" alt="logoCafeteriasBA"></a></li>
          <li><a id="productos" href="#">Productos</a></li>
          <li><a id="usuarios" href="#">Usuarios</a></li>
        </ul>
      </div>
    </nav>
  </header>
</div>
<main>
	<div class="page-bg">
		<div class="page-bg-wrapper">
			<h1>Dashboard</h1>
			<p>Gestionamiento de datos. Cuenta:<?php
        echo $_SESSION['Usuario'];
        ?> </p>
		</div>
	</div>
	<section class="container-dashboard">
      <div class="dash-row">
        <div class="text-dashboard">
          <p>
          	Somos un grupo de jóvenes emprendedores con la intención de crear la guía de con las mejores
			cafeterías de Buenos Aires.

		  </p>
		  <p>
		  	Es un sitio en donde podrás buscar información acerca de las cafeterías cercanas de Buenos Aires. De esta manera te ayudaremos a elegir el mejor café o el mejor lugar, dependiendo de tus necesidades.
		  </p>
		  <p>
			En nuestra visión también tenemos en cuenta el papel de todas aquellas cafeterías pequeñas que buscan destacarse entre las grandes empresas. Por lo que si sos dueño de alguna cafetería y te gustaría ser parte de esta experiencia te invitamos a que te sumes <b>acá</b>!
		</p>
        </div>
      </div>
      <!-- generar con diplay none o block para mostrarse -->
      <table class="listado-oculto" id="listado-dashboard">
        <thead id="headerTable"></thead>
        <tbody id="bodyTable"></tbody>
      </table>
      <div class="listado-oculto" id="crudForm">

      </div>
      <div class="listado-oculto" id="divShow"></div>
    </section>
</main>
<footer class="footer-landing">
    <div class="container">
      <div class="logoCafeteriasBA">
        <a href="../index.html"><img src="../img/logoCafeteriasBA.svg" alt="logoCafeteriasBA"></a>
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
        <p>&copy; CafeteríasBA 2018 - Hernán Alonso - Escuela Davinci &reg;</p>
      </div>
    </div>
  </footer>
<script src="../js/ajax.js"></script>
<script src="../js/cafeterias-dashboard.js"></script>
<script src="../js/productos-dashboard.js"></script>
<!--script src="../js/productos-dashboard.js"></script-->
<script src="../js/usuarios-dashboard.js"></script>
</body>
</html>