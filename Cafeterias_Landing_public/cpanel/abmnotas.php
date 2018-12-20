<?php

session_start();

if (isset($_SESSION['Rol'])) {

    include_once '../views/menu_panel.php';

} else {

    header('Location: ../index.php');

}

?>
<main>
  <div class="page-bg">

    <div class="page-bg-wrapper">

      <h1>Perfil de <?php

          if (isset($_SESSION['Usuario'])) {
              echo $_SESSION['Usuario'];

          } else {
              header('Location: ../index.php');

          }
          ?></h1>

      <p>Aquí podrás editar tus datos personales y de tu cuenta.</p>

    </div>

  </div>

  <section class="container-dashboard">

    <div class="" id="editarForm">

      <div class="container1200max">

        <div class="col12">

          <nav aria-label="breadcrumb">

            <ol class="breadcrumb navegacionResumen">

              <li class="breadcrumb-item"><a href="../index.php">Home</a></li>

              <li class="breadcrumb-item" aria-current="page"><a href="perfilUser.php">Perfil</a></li>

              <li class="breadcrumb-item" aria-current="page">Datos del Perfil</li>

              <input id="session_val" type="hidden" value="<?php echo $_SESSION['Usuario']; ?>">

              <input id="session_val_r" type="hidden" value="<?php echo $_SESSION['Rol']; ?>">

              <input id="session_val_id" type="hidden" value="<?php echo $_SESSION['Id']; ?>">

            </ol>

          </nav>

        </div>			  


            <div class="col2">

              <div class="avatarcomment txtaligncenter">

                <img class="imgvatarcomment" alt="Cafeterías BA" src="../img/avatar-user.jpg">

                <p class="txtaligncenter marginbottom0" id="nombre_ficha"></p>

                <p class="txtaligncenter marginbottom0 txtfichaavatarlabels" id="fecha_registro"></p>

                <p class="txtaligncenter txtfichaavatarlabels">Nivel: Novato</p>

                <ul class="admncafeteria">

                  <li> <input id="nuevomenu" type="button" value="Nuevo Menu"></li>

                  <li> <input id="vercargados" type="button" value="Ver cargados"></li>

                </ul>
                
                <hr>
              </div>

            </div>
        
        <div class="col10" > 
          
          <div id="cargadossistema">           

           <h2 class="titleformuseredit">Notas cargadas cargados</h2>
            
            <table style="width:100%" id="listado-dashboard">
              
            </table> 

	<br><br>

          </div>

          <div class="clearflt"></div>

          <div id="nuevo_menu">          

            <h2 class="titleformuseredit">Nueva nota</h2>

              <form class="editUsfrFormcontainer" action="../../Cafeterias_Landing_API/menu-router.php" method="POST">

                <div class="wrapper-form">

                  <div class="formitemscontainerleft">

                    <label class="labelformPerfil">Titulo: <input id="titulo" name="titulo" value="" type="text"></label>
                    <p class="error" id="titulo_error" ><p>
                  
                      
                    <label class="labelformPerfil">Texto nota:  </label>  <textarea rows="10" cols="90" name="descripcion" id="descripcion" > </textarea>                
                    <p class="error" id="desc_error"></p>
                    
                  </div>

                </div>

                <input id="usuario" name="usuario" type="hidden" value="<?php echo $_SESSION['Usuario']; ?>">

                <input id="rol" name="rol" type="hidden" value="<?php echo $_SESSION['Rol']; ?>">               

                <input id="menu_editar" name="menu_editar" type="hidden" value="">

                <input id="accion" name="cargar" type="hidden" value="cargar">

                <div class="divButton">

                <input class="stylesbuttongenerals" type="button" id="enviar_nota" value="Guardar cambios">

                 </div><br>

              </form>

          </div>

          <div class="clearflt"></div>

          

        </div>

      </div>

  </section>	

</main>

<script src="../js/ajax.js"></script>

<script src="../js/notas-dashboard.js"></script>

<script src="../js/logout.js"></script>



</body>



</html>