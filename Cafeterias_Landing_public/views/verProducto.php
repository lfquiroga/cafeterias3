<?php

if(isset($_GET['id']))
{

}else
{
  header('Location: productos.php');
}

session_start();

include_once './header-public.php';

?>
<main>
  <div class="page-bg">
    <div class="page-bg-wrapper">
      <h1>Productos</h1>
      <p>Cafeteras</p>
    </div>
  </div>
  
  

  <section class="container container1200max">
	
	  <div class="row text-row margintop10">
		<div class="text-container aboutus margintop40">
			<div class="rowcont">
				<nav aria-label="breadcrumb">
					  <ol class="breadcrumb navegacionResumen">
						<li class="breadcrumb-item"><a href="../index.php">Home</a></li>
            <li class="breadcrumb-item" aria-current="page"><a href="productos.php">Productos</a></li>
						<li class="breadcrumb-item" aria-current="page">Producto</li>
					  </ol>
				</nav> 
			</div>
		</div>
	  </div>
	   
	   
	  <div class="row text-row margintop10" id="productoWrapper">
    	<input type="hidden" id="producto_id" value="<?php echo $_GET['id'] ?>">
	     
		 
		 
		 
		 <div class="resumenC">
			
			<div class="detalleResumenC"> <!-- Desarrollo principal Nota -->
				<h1>Essenza Mini Black</h1><!-- Título nota -->
				<h3 class="h3sbtlnota">ESSENZA MINI - 40% OFF</h3> <!-- Subtítulo Nota -->
					<form class="normal-search" action="mailto:pedidos@cafeteriasba.com">
						<div class="paddingleft0 margintop20">
								  <button id="search-input" type="submit" class="searchbarbutton heightsearch">Solicitar</button>
						 </div>
					 </form>
					 <br>
					<p> Precio:	<span class="oldprice">$6.999</span> / <span class="currentprice">$4.900</span></p>
					<p> Marca:	Nespresso</p>
					<p>Tipo de producto: Cafetera</p>

			</div>			
	
			<div class="imgnota"> <!-- Imagen de nota -->
				<img src="../img/products/nespressoblack.jpg" alt="Cafeterías BA">

			</div>
		</div>
		

		<div class="adicionatxtnota"> <!-- Desarrollo secundario nota -->
						 <h3 class="h3sbtlnota">DESCUBRÍ LA MÁQUINA NESPRESSO MÁS PEQUEÑA</h3>
						<p>La cafetera <em><strong>Essenza Mini Nespresso</strong></em> tiene un diseño ultra compacto y liviano que permite moverla con facilidad. Cuenta con una bomba de presión de alta tecnología y un sistema de calentamiento rápido que permite disfrutar de un sabroso café en pocos segundos. Tiene 2 ajustes de tazas programables, Espresso o Lungo y corte de flujo automático, una vez finalizada la preparación. Su contenedor de cápsulas usadas posee una capacidad de 6 cápsulas.</p>



<p>Posee un Modo Eco que se activa pasados los 3 minutos y, luego de 9 minutos de inactividad, la Essenza Mini de Nespresso se apaga automáticamente para ahorrar energía.</p>
		</div>		
		 
		 
		 
		 
	  </div>
	
	   <hr>
   </section>
   
   
	
	
	
	
	
</main>
<footer class="footer-landing">
    <div class="container">
      <div class="logoCafeteriasBA">
        <a href="../index.php"><img src="../img/logoCafeteriasBAb.svg" alt="logoCafeteriasBA"></a>
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
<script src="../js/register.js"></script>
<script src="../js/login.js"></script>
<script src="../js/verProducto.js"></script>
</body>
</html>