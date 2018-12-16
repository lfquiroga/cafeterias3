<?php

if(isset($_GET['id']))
{

}else
{
  header('Location: pageNotFoud.php');
}

session_start();

include_once './header-public.php';

?>
<main>
 
  
  
  
  <section class="container container1200max">
	
	  <div class="row text-row margintop10">
		<div class="text-container aboutus margintop40">
			<div class="rowcont">
				<nav aria-label="breadcrumb">
					  <ol class="breadcrumb navegacionResumen">
						<li class="breadcrumb-item"><a href="../index.php">Home</a></li>
            <li class="breadcrumb-item" aria-current="page"><a href="notas.php">Notas</a></li>
						<li class="breadcrumb-item" aria-current="page">Nota</li>
					  </ol>
				</nav> 
			</div>
		</div>
	  </div>
	   
	   
	  <div class="row text-row margintop10" id="notaWrapper">
      <input type="hidden" id="nota_id" value="<?php echo $_GET['id'] ?>">
      
    
	     <h1>Conocé el café más caro del mundo y su extraña forma de obtener las semillas</h1><!-- Título nota -->
		 <h3 class="h3sbtlnota">Se trata del Kopi Luwak, que se vende en las mejores cafetarías de Nueva York a 40 dólares la taza.</h3> <!-- Subtítulo Nota -->
		 
		 
		 
		 <div class="resumenC">
			
			<div class="detalleResumenC"> <!-- Desarrollo principal Nota -->
				<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>
				<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original.</p>		
		</div>			
	
			<div class="imgnota"> <!-- Imagen de nota -->
				<img src="../img/notes/nota.jpg" alt="Cafeterías BA">

			</div>
		</div>
		

		<div class="adicionatxtnota"> <!-- Desarrollo secundario nota -->
						 <h3 class="h3sbtlnota">Su exquisito sabor y aroma tiene que ver a un particular proceso en el que interviene un curioso mamífero llamado civeta</h3>
						<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>
		</div>		
		 
		 
		 
		 
	  </div>
	
	   <hr>
   </section>
   
   
   
   
   <section class="container"> <!-- Cargar otras notas disponibles abajo -->
      <div class="row margintop10">
          <div class="row margintop10">
            <div class="row-header">
              <h2>Ver más notas</h2>
            </div>
          </div>
        <article>
          <div class="first-item">
            <div>
              <a href="verNota.php"><img src="../img/notes/note_1.jpg"></a>
            </div>
            <h3> Titulo Nota</h3>
            <hr>
            <div class="desc-recommended">
              <p>Cafeteria: Cafeteria</p>
              <p>Categoria: </p>
              <a href="verNota.php">Leer Nota completa</a>
            </div>
          </div>
          <div class="second-item">
            <div>
              <a href="verNota.php"><img src="../img/notes/note_1.jpg"></a>
            </div>
            <h3> Titulo Nota</h3>
            <hr>
            <div class="desc-recommended">
              <p>Cafeteria: Cafeteria</p>
              <p>Categoria: </p>
              <a href="verNota.php">Leer Nota completa</a>
            </div>
          </div>
          <div class="third-item">
            <div>
              <a href="verNota.php"><img src="../img/notes/note_1.jpg"></a>
            </div>
            <h3> Titulo Nota</h3>
            <hr>
            <div class="desc-recommended">
              <p>Cafeteria: Cafeteria</p>
              <p>Categoria: </p>
              <a href="verNota.php">Leer Nota completa</a>
            </div>
          </div>
        </article>
      </div>
    </section>   <!-- Cargar otras notas disponibles abajo -->
   
   
   
   
   
   
   
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
<script src="../js/verNota.js"></script>
</body>
</html>