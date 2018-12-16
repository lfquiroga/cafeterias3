/* 
 * Archivos relacionado con vista de una cafeteria
 * 
 */
window.addEventListener("DOMContentLoaded", function () {

  var contenido = '';

  var horarios = '';
  var id = $s('#cafeteria_id').value;
  var comentario = $s('#insertcomentario');
  var prePath = '../../';
  /*
   * 
   * Obtengo data de cafeteria e imrpimo
   * 
   */
  ajax({
    url: '../../Cafeterias_Landing_API/cafeterias-router.php?id=' + id,
    method: 'GET',
    successCallback: function (rta) {

      let cafeteria = JSON.parse(rta);

      if (cafeteria.status == 1) {

        cafeteriadata = (cafeteria.data[0]); console.log(cafeteriadata);
        //armo el contenido para el div con class contFichacafe
        contfichacafe = '<p><b>Zona:</b> '+cafeteriadata.sucursal+'</p>\n\
            <p class="starshowheader"><b>Calificaci&oacute;n:</b>' + armarRanking(cafeteriadata.valoracion) + '            </p>\n\
            <p><span class="iconservicios">\n\
            <i class="fa fa-wifi" aria-hidden="true"></i> Wifi</span>\n\
            <span class="iconservicios"><i class="fa fa-credit-card" aria-hidden="true"></i>\n\
            Tarjetas</span><span class="iconservicios"><i class="fas fa-shopping-bag"></i> \n\
            Para llevar</span></p>';
        horarios = '<p>Lunes a viernes de ' + cafeteriadata.horario_apertura + ' a ' + cafeteriadata.horario_cierre + '</p>\n\
            <p>Direccion: ' + cafeteriadata.direccion + '</p>\n\
            <p>Telefono : ' + cafeteriadata.telefono + '</p>';
        $('.contfichacafe').html(contfichacafe);
        $('#descripcion').html(cafeteriadata.descripcion.replace(/\n/g, "<br />"));
        $('.horarios').html(horarios);
        $('#titulo').html(cafeteriadata.nombre);

      } else {

        window.location = 'pageNotFound.php';

      }
    },
    errorCallback: function (rta) {

      alert(rta);
    }
  });
  
  /*
   * Envio de formularios
   * Al presionar el boton enviar , envio al router los datos para 
   * que sean chequeados e insertados
   */
  
  if (comentario) {
    
    comentario.addEventListener("submit", function (e) {

      e.preventDefault();

      let comentario = $s('#comentario');

      let cali = $s('#calificacion');

      let userid = $s('#ui');

      var dataUnParsed = {
        id: id,
        comentario: comentario.value,
        calificacion: cali.value,
        userid: userid.value,
        cargarComentario: true
      };

      let data = JSON.stringify(dataUnParsed);


      ajax({
        method: 'POST',
        url: prePath + 'Cafeterias_Landing_API/cafeterias-router.php',
        data: data,
        successCallback: function (rta) {

          if (data && id) {

            cargar_comentarios(id);

            $('#comentario').val('');

          }

        }
      })

    });
  }

  /**
   * Accion boton ver mas
   */





  /*
   * Obtengo los comentarios , armo el html y lo inserto.
   */

  var dataUnParsed = {
    idCafeteria: id,
    obtenerComentarios: true
  };

  let data = JSON.stringify(dataUnParsed);
  if (data && id) {

    cargar_comentarios(id);
  }

  /**
   * En base al id de la cafeteria carga comentarios
   * @param {type} id
   * @returns {html}
   * 
   */
  function cargar_comentarios(id) {
    ajax({
      method: 'POST',
      url: prePath + 'Cafeterias_Landing_API/cafeterias-router.php',
      data: data,
      successCallback: function (rta) {

        contenido = '';
        $('#commentsgroup').html(rta);
        //muestro los primeros 5
        ver_mas('comentario_', 1, 5, 'ver_mas');
      },
      errorCallback: function (rta) {

        $('#error_comen').html(rta);
      }
    });
  }

  /**
   * Accion boton eliminar lo pongo en onload para que espere que se carguen todos los coments
   */

  document.addEventListener("click", function (event) {

    if (event.target.className == "eliminar_comentario") {

      eliminar = (event.target.id);

      id_eliminar = eliminar.split('_')[1];

      var dataComent = {
        idcomentario: id_eliminar,
        eliminar_comentario: true
      };

      data_coment = JSON.stringify(dataComent);
      /*Envio peticion para eliminar el comentario*/
      ajax({
        method: 'POST',
        url: prePath + 'Cafeterias_Landing_API/cafeterias-router.php',
        data: data_coment,
        successCallback: function (rta) {

          alert(rta);
          if (data && id) {

            cargar_comentarios(id);
          }

        },
        errorCallback: function (rta) {

          $('#error_comen').html(rta);
        }
      });


    }

    if (event.target.className == "ver_mas") {

      var desde = (event.target.id);
      var max = (event.target.max);
      var hasta = parseInt(desde) + parseInt(3);


      ver_mas('comentario_', desde, hasta, 'ver_mas');


    }

  }, false);



});
