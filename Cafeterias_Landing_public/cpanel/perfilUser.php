<?phpsession_start();if (isset($_SESSION['Rol'])) {    include_once '../views/menu_panel.php';} else {    header('Location: ../index.php');}?><main>  <div class="page-bg">    <div class="page-bg-wrapper">      <h1>Perfil de <?php if (isset($_SESSION['Usuario'])) {    echo $_SESSION['Usuario'];} else {    header('Location: ../index.php');} ?></h1>      <p>Aquí podrás editar tus datos personales y de tu cuenta.</p>    </div>  </div>  <section class="container-dashboard">    <div class="" id="editarForm">      <div class="container1200max">        <div class="col12">          <nav aria-label="breadcrumb">            <ol class="breadcrumb navegacionResumen">              <li class="breadcrumb-item"><a href="../index.php">Home</a></li>              <li class="breadcrumb-item" aria-current="page"><a href="perfilUser.php">Perfil</a></li>              <li class="breadcrumb-item" aria-current="page">Datos del Perfil</li>              <input id="session_val" type="hidden" value="<?php echo $_SESSION['Usuario']; ?>">              <input id="session_val_r" type="hidden" value="<?php echo $_SESSION['Rol']; ?>">              <input id="session_val_id" type="hidden" value="<?php echo $_SESSION['Id']; ?>">            </ol>          </nav>        </div>			  <?php if (isset($_SESSION['CafeteriaN'])) { ?>            <div class="col2">              <div class="avatarcomment txtaligncenter">                <img class="imgvatarcomment" alt="Cafeterías BA" src="../img/avatar-user.jpg">                <p class="txtaligncenter marginbottom0"><b><?php echo $_SESSION['CafeteriaN']; ?></b></p>                <p class="txtaligncenter marginbottom0 txtfichaavatarlabels"><?php echo $_SESSION['CafeteriaD']; ?></p>                <p class="txtaligncenter txtfichaavatarlabels">Nivel: Cafeteria</p>                <hr>              </div>            </div>            <div class="col10">              <h2 class="titleformuseredit">Datos del perfil</h2>              <form class="editUsfrFormcontainer" action="../../Cafeterias_Landing_API/crud-router.php">                <div class="wrapper-form">                  <div class="formitemscontainerleft">                    <label class="labelformPerfil">Nombre: <input  disabled name="nombre" value="" type="text" id="nombre"></label>                    <label class="labelformPerfil">Direccion: <input name="direccion" value="<?php echo $_SESSION['CafeteriaD']; ?>" type="text"></label>                    <label class="labelformPerfil">Telefono: <input name="telefono" value="<?php echo $_SESSION['CafeteriaT']; ?>" type="number"></label>                    <label class="labelformPerfil">Email: <input disabled name="email" value="<?php echo  $_SESSION['Usuario'];?> " type="text"></label>                    <label class="labelformPerfil">Sitio Web: <input name="sitio_web" value="<?php echo $_SESSION['CafeteriaSW']; ?>" type="text"></label>                    <label class="labelformPerfil">Horario Apertura: <input name="horario_a" value="<?php echo $_SESSION['CafeteriaHA']; ?>"                                                                            type="text"></label>                    <label class="labelformPerfil">Horario Cierre: <input name="horario_c" value="<?php echo $_SESSION['CafeteriaHC']; ?>"                                                                          type="text"></label>                  </div>                </div>                <div class="btnformPerfil">                  <div class="divButton">                    <input class="stylesbuttongenerals" type="submit" value="Guardar cambios">                  </div>                </div>              </form>            </div><?php } else { ?>            <div class="col2">              <div class="avatarcomment txtaligncenter">                <img class="imgvatarcomment" alt="Cafeterías BA" src="../img/avatar-user.jpg">                <p class="txtaligncenter marginbottom0" id="nombre_ficha"></p>                <p class="txtaligncenter marginbottom0 txtfichaavatarlabels" id="fecha_registro"></p>                <p class="txtaligncenter txtfichaavatarlabels">Nivel: Novato</p>                <hr>                <ul class="usrmnperfillateral">                  <a href="perfilUser.php"><li class="selectedmnu">Datos de usuario</li></a>                  <a href="#" id="sugerir_cafeteria"><li>Sugerir cafetería</li></a>                  <hr>                                  <?php                                if($_SESSION['Rol'] == 3 || $_SESSION['Rol'] == 4 || $_SESSION['Rol'] == 1){                                    ?>                  <h2>Cafeterías</h2>                  <a href="perfilUser_administrarCafeteria.php"><li>Administrar cafetería</li></a>                <?php                }                ?>                </ul>              </div>            </div>            <div class="col10" id="personal_form">    <h2 class="titleformuseredit">Datos del perfil</h2>    <form class="editUsfrFormcontainer" action="../../Cafeterias_Landing_API/crud-router.php">      <div class="wrapper-form">        <div class="formitemscontainerleft">          <label class="labelformPerfil">Nombre: <input id="nombre" name="nombre" value="" type="text"></label>          <label class="labelformPerfil">Apellido: <input name="apellido" value="" id="apellido" type="text"></label>          <label class="labelformPerfil">email: <input disabled name="email" id="email" value="" type="text"></label>          <!--label class="labelformPerfil">Seleccionar rol:												<select name="rol" class="select-crud">														<option value="2">Usuario</option>														<option value="3">Cafeteria</option>												</select>										</label-->          <label class="labelformPerfil">Nueva contraseña: <input name="nuevopassword" value="12345" type="password"></label>          <label class="labelformPerfil">Confirma contraseña: <input name="confirmnuevopassword" value="12345" type="password"></label>        </div>      </div>      <div class="btnformPerfil">        <div class="divButton">          <input class="stylesbuttongenerals" id="editPerfil" type="submit" value="Guardar cambios">        </div>      </div>    </form>  </div>  <div class="col10" id="sugerir_form">    <h2 class="titleformuseredit">Sugerir una Cafeteria</h2>    <form class="editUsfrFormcontainer" action="../../Cafeterias_Landing_API/sugerir-router.php">      <div class="wrapper-form">        <div class="formitemscontainerleft">          <p id="msg_er"></p>          <label class="labelformPerfil">Nombre: <input id="nombre_cafeteria" name="nombre_cafeteria" value="" type="text"></label>          <label class="labelformPerfil">Direccion: <input name="apellido_cafeteria" value="" id="direccion_cafeteria" type="text"></label>          <label class="labelformPerfil">Email: <input  name="email_cafeteria" id="email_cafeteria" value="" type="email"></label>          <label class="labelformPerfil">Sucursal: <input  name="sucursal_cafeteria" id="sucursal_cafeteria" value="" type="text"></label>        </div>      </div>      <div class="btnformPerfil">        <div class="divButton">          <input class="stylesbuttongenerals" id="sugerirCafeteria" type="submit" value="Sugerir Cafeteria">        </div>      </div>    </form>  </div><?php } ?>        <div class="clearflt"></div>      </div>    </div>  </section>	</main><footer class="footer-landing">  <div class="container">    <div class="logoCafeteriasBA">      <a href="../index.php"><img src="../img/logoCafeteriasBA.svg" alt="logoCafeteriasBA"></a>    </div>    <div class="social-media">      <div>        <a href="https://www.facebook.com/cafeterias.ba" target="_blank">          <i class="fab fa-facebook-square"></i>        </a>      </div>      <div>        <a href="https://www.instagram.com/cafeteriasba/" target="_blank">          <i class="fab fa-instagram"></i>        </a>      </div>    </div>    <div class="copy">      <p>&copy; Cafeterías BA 2018 &reg;</p>    </div>  </div></footer><script src="../js/ajax.js"></script><script src="../js/nav.js"></script><script src="../js/perfil.js"></script><script src="../js/logout.js"></script></body></html>