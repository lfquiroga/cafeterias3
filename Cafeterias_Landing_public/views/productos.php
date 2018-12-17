<?php
session_start();

session_start();

include_once './header-public.php';

?>
<main>
  <div class="page-bg">
    <div class="page-bg-wrapper">
      <h1>Comprá desde la comodidad de tu casa</h1>
      <p>Encontrá y Comprá Online lo que necesites para crear los mejores cafés desde la comodidad de tu <b>casa</b>.</p>
    </div>
  </div>
  <section class="container">
      <div class="row">
          <div class="row">
            <div class="row-header">
              <h2>Listado de productos</h2>
            </div>
          </div>
        <article id="article_wrapper_products">
          <div class="first-item">
           <div>
              <a href="verProducto.php"><img src="../img/products/product_1.jpg"></a>
            </div>
            <h3> Titulo Producto</h3>
            <hr>
            <div class="desc-recommended">
              <p>Cafeteria: Cafeteria</p>
              <p>Categoria: </p>
              <a href="verProducto.php">Ver Producto</a>
            </div>
          </div>
          <div class="second-item">
            <div>
              <a href="verProducto.php"><img src="../img/products/product_1.jpg"></a>
            </div>
            <h3> Titulo Producto</h3>
            <hr>
            <div class="desc-recommended">
              <p>Cafeteria: Cafeteria</p>
              <p>Categoria: </p>
              <a href="verProducto.php">Ver Producto</a>
            </div>
          </div>
          <div class="third-item">
            <div>
              <a href="verProducto.php"><img src="../img/products/product_1.jpg"></a>
            </div>
            <h3> Titulo Producto</h3>
            <hr>
            <div class="desc-recommended">
              <p>Cafeteria: Cafeteria</p>
              <p>Categoria: </p>
              <a href="verProducto.php">Ver Producto</a>
            </div>
          </div>
        </article>
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
<script src="../js/nav.js"></script>
<script src="../js/register.js"></script>
<script src="../js/login.js"></script>
<script src="../js/productos.js"></script>
</body>
</html>