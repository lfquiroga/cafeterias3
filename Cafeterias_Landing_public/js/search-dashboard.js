/* 
 * Archivos relacionado con vista de una cafeteria
 * 
 */
window.addEventListener("DOMContentLoaded", function () {

      
      var contenido ='';
      var prePath = '../../';

	ajax({
          
            url: '../Cafeterias_Landing_API/router-search.php',
            method: 'GET',
            successCallback: function(rta){
              
              let rankingData = JSON.parse(rta);

              contador=1;
              
           $.each(rankingData, function( index, value ) {
            
              contenido ='\
              <div class="first-item"> <div>\n\
              <a href="verCafeteria.php?id='+value.id+'">\n\
              <img src="img/cafeterias/cafe_'+index+'.jpg"></a></div>\n\
              <h3>#'+(index+1)+' '+value.nombre+'</h3><hr><div class="desc-recommended">\n\
              <p>Valoraci&oacute;n: '+armarRanking(value.valoracion)+' </p>  <p>Zona: '+value.sucursal+'</p>\n\
              <p>Telefono: '+value.telefono+'</p>\n\
              <p>Categor&iacute;a: Especialidad</p> </div></div>';

              contador=contador+1;
              $('#listado').append(contenido);
              });
              
              
            },
            errorCallback: function (rta) {

              alert(rta);
            }
        });
        
        
    var buscar = $s('#buscar_cafeteria');
    
    buscar.addEventListener("submit", function (e) {  
      
      e.preventDefault();
      
      var nombre =$('#value_nombre').val();
      
      var zona =$('#barrio_cafeteria').val();
     
      var dataUnParsed = {
        
        buscar:true,
        nombre: nombre,
        zona:zona
        
      };

      let data = JSON.stringify(dataUnParsed);

      ajax({
        method: 'POST',
        url: prePath + 'Cafeterias_Landing_API/router-search.php',
        data: data,
        successCallback: function (rta) {
          
        let e = JSON.parse(rta);
        
        contenido_busqueda='';
        
        contador=0;
        
         $.each(e, function( index, value ) {
            
              contenido_busqueda =contenido_busqueda+'\
              <div class="first-item"> <div>\n\
              <a href="verCafeteria.php?id='+value.id+'">\n\
              <img src="img/cafeterias/cafe_'+index+'.jpg"></a></div>\n\
              <h3>#'+(index+1)+' '+value.nombre+'</h3><hr><div class="desc-recommended">\n\
              <p>Valoraci&oacute;n: '+armarRanking(value.valoracion)+' </p>  <p>Zona: '+value.sucursal+'</p>\n\
              <p>Telefono: '+value.telefono+'</p>\n\
              <p>Categor&iacute;a: Especialidad</p> </div></div>';

              contador=contador+1;
              
              });
              
              $('#listado').html('');
              
              $('#listado').html(contenido_busqueda);
        }
      })

    });

});
