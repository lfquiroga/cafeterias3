<?php
//use CafeteriasBA;

include_once './header-public.php';

//$cafeteria = new CafeteriasBA($_GET['id']);
/*
  if(isset($_GET['id'])){
  if(chequear_id($_GET['id'])== true){
  $id= $_GET['id'];
  }
  }
 */
?>

<main>

  <div class="page-bg">

    <div class="page-bg-wrapper">

      <h1>Encontrá tu café</h1>

      <p>Buscá entre miles de cafeterías para encontrar ese café que es para vos.</p>

    </div>

  </div>

  <section class="container">

    <div class="row">

      <div class="row-header form-header">



        <form  action=../../Cafeterias_Landing_API/search-router.php"  

               action="POST" class="normal-search" id="buscar_cafeteria" >

          <div>

            <input type="text" placeholder="Filtra por nombre..."

                   name="nombre" id="value_nombre">

          </div>

          <div>



            <input type="text" placeholder="Filtra por barrio..." name="opcion" id="barrio_cafeteria">

            <!--select name="opcion" id="barrio_cafeteria">

                <option disabled selected>Filtrar por zona..</option>

                <option value="Belgrano">Belgrano</option>

                <option value="Palermo">Palermo</option>

                <option value="Balvanera">Balvanera</option>

                <option value="Colegiales">Colegiales</option>

                <option value="Caballito">Caballito</option>

                <option value="Recoleta">Recoleta</option>

            </select-->

          </div>

          <div>

            <button id="search-input" type="submit" class="searchbarbutton heightsearch">Buscar <i class="iconsearchbar fa fa-search" aria-hidden="true"></i></button>

          </div>

        </form>



        <hr>

      </div>

      <div class="row">

        <div class="row-header">

          

        </div>

      </div>

      <article id="listado">
      </article>
      <!-- PAGINADOR -->

      <div id="paginador"></div>
    </div>

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

<script src="../js/funciones.js"></script>

<script src="../js/nav.js"></script>



<script src="../js/search-dashboard.js"></script>

<script src="../js/register.js"></script>

<script src="../js/login.js"></script>

<script src="../js/logout.js"></script>
<style>
.navitem:nth-child(5) {
  background-color: #91303a;
    color: white;
}
</style>


</body>

</html>