


window.addEventListener("DOMContentLoaded", function () {

//oculato la tabla al iniciar
$('#cargadossistema').css('display','none');
contenido = '';

cargar_tabla();

/**
 * Lleno el select de cafeterias por usuario
 */
  var opciones ='';
 ajax({
    url: '../Cafeterias_Landing_API/menu-router.php?id_usuario='+31,
    method: 'GET',
    successCallback: function (rta){

      let rankingData = JSON.parse(rta);

      $.each(rankingData, function( index, value ) {  
  console.log(rankingData);
      opciones='<option value="'+value.id+'">'+value.nombre+'</option>';
      
      $('#id_cafeteria').append(opciones);
   
       });
      
      }
   });
   


 /*
  *Por medio de esta funcion puedo crear
  * y refrescar la tabla las veces necesarias
  */ 
function cargar_tabla(){
  
   head_tabla='<tr style="background-color:#f2f2f2;">\n\
                  <th>Nombre</th>\n\
                  <th>Descripcion</th>\n\
                  <th>Cafeteria</th>\n\
                  <th>Precio</th>\n\
                  <th>Editar</th>\n\
                  <th>Eliminar</th>\n\
                </tr>       ';
  
  //vacio la tabla
  $('#listado-dashboard').html('');
  //pongo el encabezadp
  $('#listado-dashboard').append(head_tabla); 

  ajax({
    url: '../Cafeterias_Landing_API/menu-router.php?all=1',
    method: 'GET',
    successCallback: function (rta){

      let rankingData = JSON.parse(rta);
          
     
      $.each(rankingData, function( index, value ) {
        console.log(value);
      contenido ='\n\
        <tr>\n\
        <td class="width20percnt">'+value.nombre+'</td>\n\
        <td class="width40percnt">'+value.descripcion.slice(1, 30)+'</td>\n\
        <td class="width40percnt">'+value.nombrecafeteria+'</td>\n\
        <td class="width10percnt">'+value.precio+'</td>\n\
        <td class="width15percnt"><div class="bntdltcont txtaligncenter"><i class="fas fa-edit icnfawsm"></i><input class="editar eliminar_comentario" onclick="editar('+value.id+')" type="button" value="Editar" id="'+value.id+'"></div></td>\n\
        <td class="width15percnt"><div class="bntdltcont txtaligncenter"><i class="fas fa-trash-alt icnfawsm"></i><input type="button" class="eliminar_comentario" onclick="eliminar('+value.id+')" value="Borrar"></div></td>\n\
        </tr>';
        
        $('#listado-dashboard').append(contenido);

       });
      }
    });
    }



  /*
   *Funciones para cargar un menu
   */
  var enviar_menu = $s('#enviar_menu');

  var prePath = '../../';
  
  var descripcion = $s('#descripcion');

  var nombre = $s('#nombre');

  var precio = $s('#precio');

  var id_cafeteria = $s('#id_cafeteria');

  var rol = $s('#rol');

  var usuario = $s('#usuario');
  
  var id_editar = $s('#menu_editar');
  
  

  enviar_menu.addEventListener("click", function (e) {

    let accion = $s('#accion');

    var dataUnParsed = {
      descripcion: descripcion.value,
      nombre: nombre.value,
      precio: precio.value,
      id_cafeteria: id_cafeteria.value,
      rol: rol.value,
      usuario: usuario.value,
      cargar: accion.value,
      id_editar: id_editar.value
    };

    let data = JSON.stringify(dataUnParsed);

    ajax({
      method: 'POST',
      url: prePath + 'Cafeterias_Landing_API/menu-router.php',
      data: data,
      successCallback: function (rta) {

        if (rta == 'true') {

          descripcion.value = '';
          nombre.value = '';
          precio.value = '';
          //recargo la tabla
          cargar_tabla();
          
          alert('Menu creado correctamente.');

        }

      }

    })

  })





/*click en nuevo menu*/

$('#nuevomenu').click(function() {
  
  $('#cargadossistema').css('display','none');
  $('#nuevo_menu').css('display','block');
});

$('#vercargados').click(function() {
  
  $('#cargadossistema').css('display','block');
  $('#nuevo_menu').css('display','none');
  
});

});


/**
 * Editar un menu
 * @fix me
 */

function editar(id){
  
  id_menu=id;
  
  console.log(this);
      var dataUnParsed = {
        datos_menu:true,
        id: id_menu        
      };
  
  let data = JSON.stringify(dataUnParsed);
  
   var id_editar = $s('#menu_editar');

    ajax({
    url: '../Cafeterias_Landing_API/menu-router.php',
    method: 'POST',
    data: data,
    successCallback: function (rta){

      let rankingData = JSON.parse(rta);
      
      console.log(rankingData[0]);
      
      datos=rankingData[0];
      
      descripcion.value=datos['descripcion'];
      nombre.value=datos['nombre'];
      precio.value=datos['precio'];
      id_cafeteria.value=datos['id_cafeteria'];
      id_editar.value=datos['id'];
      accion.value='editar';

      $('#cargadossistema').css('display','none');
      $('#nuevo_menu').css('display','block'); 

      }
    });
  
  
};




/**
 * eliminar un menu
 * @fix me
 */

function eliminar(id){
  
 
      var dataUnParsed = {
        eliminar:true,
        id: id        
      };
  
  let data = JSON.stringify(dataUnParsed);
  
    ajax({
    url: '../Cafeterias_Landing_API/menu-router.php',
    method: 'POST',
    data: data,
    successCallback: function (rta){
         
     alert('eliminada correctamente');
      
     location.reload();
      }
    });
  
  
};