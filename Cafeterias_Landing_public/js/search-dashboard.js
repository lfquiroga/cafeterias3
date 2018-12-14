/* 
 * Archivos relacionado con vista de una cafeteria
 * 
 */
window.addEventListener("DOMContentLoaded", function () {

      
      var contenido ='';
      var prePath = '../../';

	ajax({
          
            url: prePath+'Cafeterias_Landing_API/router-search.php',
            //WEBurl: '../Cafeterias_Landing_API/router-search.php',
            method: 'GET',
            successCallback: function(rta){
              
              let rankingData = JSON.parse(rta);

              contador=1;
              
           $.each(rankingData, function( index, value ) {
            
              contenido ='\
              <div class="first-item" id="cafeteria_'+index+'" style="display:none;"> <div>\n\
              <a href="verCafeteria.php?id='+value.id+'">\n\
              <img src="img/cafeterias/cafe_'+index+'.jpg"></a></div>\n\
              <h3>#'+(index+1)+' '+value.nombre+'</h3><hr><div class="desc-recommended">\n\
              <p>Valoraci&oacute;n: '+armarRanking(value.valoracion)+' </p>  <p>Zona: '+value.sucursal+'</p>\n\
              <p>Telefono: '+value.telefono+'</p>\n\
              <p>Categor&iacute;a: Especialidad</p> </div></div>';

              contador=contador+1;
              $('#listado').append(contenido);
              });
              
              paginas = Math.round(contador/9);
              
              for(i=1;i < paginas ;i++){
                
              var desde=(i*9);
              var hasta=desde+8;

             pagina='<button  onclick="ver_mas(\'cafeteria_\','+desde+','+hasta+', \'ver_mas\')"  class="paginar" type="button" id="'+desde+'_'+hasta+'">'+(i)+'</button>';
                  
              $('#listado').append(pagina);

              }

              ver_mas('cafeteria_', 1,9, 'ver_mas' );
              
            },errorCallback: function (rta) {

              alert(rta);
            }
        });
        
        
        /**
         * boton buscar
         */
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
              <div class="first-item" > <div>\n\
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
