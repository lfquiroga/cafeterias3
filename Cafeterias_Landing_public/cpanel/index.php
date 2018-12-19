<?php
session_start();

if(isset($_SESSION['Rol'])){

    include_once '../views/menu_panel.php';
}else{
    
    header('Location: ../index.php');
    
}
?>
  <!--/header-->
  
</div>
<main>
	<div class="page-bg">
		<div class="page-bg-wrapper">
			<h1>Dashboard</h1>
			<p>Gesti&#243;n de datos. Cuenta:<?php
        echo $_SESSION['Usuario'];
        ?> </p>
		</div>
	</div>
	<section class="container-dashboard">
      <div class="dash-row">
        <div class="text-dashboard">
		<div class="presentacion">
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
        <a href="../index.html"><img src="../img/logoCafeteriasBAb.svg" alt="logoCafeteriasBA"></a>
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
<script src="../js/ajax.js"></script>
    <script src="../js/nav.js"></script>
<script src="../js/funciones.js"></script>
<script src="../js/cafeterias-dashboard.js"></script>
<script src="../js/productos-dashboard.js"></script>
<!--script src="../js/productos-dashboard.js"></script-->
<script src="../js/usuarios-dashboard.js"></script><script src="../js/sugerencia-dashboard.js"></script>
</body>
</html>