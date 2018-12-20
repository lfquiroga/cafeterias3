/* 
 
 * Archivos relacionado con vista de una cafeteria
 
 * 
 
 */

window.addEventListener("DOMContentLoaded", function () {

  var contenido = '';

  var prePath = '../../';



  ajax({

    //URL LOCAL url: prePath+'Cafeterias_Landing_API/router-search.php',

    url: '../Cafeterias_Landing_API/router-search.php',

    method: 'GET',

    successCallback: function (rta) {
      let rankingData = JSON.parse(rta);
      contador = 1;
      $.each(rankingData, function (index, value) {

        contenido = '\
              <div class="first-item" id="cafeteria_' + index + '" style="display:none;"> <div>\n\
              <a href="verCafeteria.php?id=' + value.id + '">\n\
              <img src="/img/cafeterias/' + value.img_portada + '"></a></div>\n\
              <h3>#' + (index + 1) + ' ' + value.nombre + '</h3><hr><div class="desc-recommended">\n\
              <p>Valoraci&oacute;n: ' + armarRanking(value.valoracion) + ' </p>  <p>Zona: ' + value.sucursal + '</p>\n\
              <p>Telefono: ' + value.telefono + '</p>\n\
              <p>Categor&iacute;a: Especialidad</p> </div></div>';

        contador = contador + 1;

        $('#listado').append(contenido);

      });

      paginas = Math.round(contador / 9);

      $('#paginador').append('<i class="fas fa-angle-left"></i>');

      //$("button:first-child").addClass("activpgnr");

          var desde = 0;

          var hasta = desde + 9;
          
      for (i = 1; i < paginas; i++) {


        pagina = '<button  onclick="ver_mas(\'cafeteria_\',' + desde + ',' + hasta + ', \'ver_mas\')"  class="paginar" type="button" id="' + desde + '_' + hasta + '">' + (i) + '</button>';

        $('#paginador').append(pagina);

         desde = (i * 9);

         hasta = desde + 9;
      }

      $('#paginador').children(':nth-child(2)').addClass("activpgnr");


      $(".paginar").click(function () {

        $(".paginar").removeClass("activpgnr");

        jQuery(this).addClass("activpgnr");

      });


      $('#paginador').append('<i class="fas fa-angle-right"></i>');

      ver_mas('cafeteria_', 0, 9, 'ver_mas');

    }, errorCallback: function (rta) {
      alert(rta);
    }

  });

  /**
   * boton buscar   
   */

  var buscar = $s('#buscar_cafeteria');

  buscar.addEventListener("submit", function (e) {

    e.preventDefault();

    var nombre = $('#value_nombre').val();

    var zona = $('#barrio_cafeteria').val();

    var dataUnParsed = {
      buscar: true,
      nombre: nombre,
      zona: zona
    };

    let data = JSON.stringify(dataUnParsed);

    ajax({

      method: 'POST',
      url: prePath + 'Cafeterias_Landing_API/router-search.php',
      data: data,
      successCallback: function (rta) {

        let e = JSON.parse(rta);
        contenido_busqueda = '';
        contador = 0;

        console.log(e);

        if (e != null) {
          $.each(e, function (index, value) {

            contenido_busqueda = contenido_busqueda + '\
              <div class="first-item" id="cafeteria_' + index + '" style="display:none;"> <div>\n\
              <a href="verCafeteria.php?id=' + value.id + '">\n\
              <img src="/img/cafeterias/' + value.img_portada + '"></a></div>\n\
              <h3>#' + (index + 1) + ' ' + value.nombre + '</h3><hr><div class="desc-recommended">\n\
              <p>Valoraci&oacute;n: ' + armarRanking(value.valoracion) + ' </p>  <p>Zona: ' + value.sucursal + '</p>\n\
              <p>Telefono: ' + value.telefono + '</p>\n\
              <p>Categor&iacute;a: Especialidad</p> </div></div>';

            contador = contador + 1;

          });

          $('#listado').html('');

          $('#listado').html('<h2>Listado completo</h2>');

          $('#listado').html(contenido_busqueda);


          paginas = Math.round(contador / 9);
          
          if (paginas == 0) {

            $('#paginador').html('');
          
            ver_mas('cafeteria_', 0, 9, 'ver_mas');
            
          } else {
            $('#paginador').html('');

            $('#paginador').append('<i class="fas fa-angle-left"></i>');

            //$("button:first-child").addClass("activpgnr");
            var desde = paginas-1;

            var hasta = desde + 9;

            for (i = 1; i <= paginas; i++) {

              pagina = '<button  onclick="ver_mas(\'cafeteria_\',' + desde + ',' + hasta + ', \'ver_mas\')"  class="paginar" type="button" id="' + desde + '_' + hasta + '">' + (i) + '</button>';

              $('#paginador').append(pagina);
              
            desde = (i * 9);

            hasta = desde + 9;

            }
            
            ver_mas('cafeteria_', 0, 9, 'ver_mas');
            /*
             $('#paginador').children(':nth-child(2)').addClass("activpgnr");
             
             
             $(".paginar").click(function () {
             
             $(".paginar").removeClass("activpgnr");
             
             jQuery(this).addClass("activpgnr");
             
             });
             
             
             $('#paginador').append('<i class="fas fa-angle-right"></i>');
             
             ver_mas('cafeteria_', 0, 9, 'ver_mas');
             */
          }


        } else {
           $('#listado').html('  <img class="imgnotfoundsearch" alt="Lo sentimos ,no se han encontrado resultados" src="/img/notfound.jpg" />');
        }

      }

    })

  });

});