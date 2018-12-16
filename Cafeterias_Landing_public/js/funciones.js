/**
 * Archivo con funciones genericas
 * 
 */


/**
 * Pasamos por parametro el numero de estrellas que queremos mostrar.
 * 
 * @param numRanking { type int} 
 * @returns {String}
 */
function armarRanking(numRanking){
  
  var star ='';
  
  for(var i = 0; i < numRanking; i++){
    
    star+='<i class="star fas fa-star"></i>';
    
  }
  
  return star;
  
}






/**
 * En base al id de la cafeteria carga comentarios
 * @param {type} id
 * @returns {html}
 * 
 */
  function cargar_comentarios(data,id,prePath='') {
    
    
    ajax({
      method: 'POST',
      url: prePath + 'Cafeterias_Landing_API/cafeterias-router.php',
      data: data,
      successCallback: function (rta) {

        contenido = '';

        $('#commentsgroup').html(rta);
        
        //muestro los primeros 5
        ver_mas('comentario_' , 1 ,5,'ver_mas');
      },
      errorCallback: function (rta) {

        $('#error_comen').html(rta);

      }
    });
  }




/**
 * 
 * @param {string} id id de lo que queremos ocultar ej:comentario_
 * @param {number} desde mostrar desde
 * @param {number} hasta mostrar hasta
 * @param {number} class_vermas id del boton que maneja el ver mas
 * @returns {css}
 */
 
function ver_mas(id , desde ,hasta,class_vermas ){ 
  
ocultar('first-item');
  
  for(i=desde;i<=hasta;i++){
    
  $('#'+id+i).css('display','block');
    
  }
  
  $('.'+class_vermas).attr('id', '');
  $('.'+class_vermas).attr('id', hasta);
  
}

/**
 * 
 * @param string class_ocultar
 * @returns {undefined}
 */
function ocultar(class_ocultar){ 

  $('.'+class_ocultar).css('display','none');

  
}

      let desloguearse = $s('#desloguearse');

      if(desloguearse !== null){
        desloguearse.addEventListener('click',function(){

        ajax({
              url: '../Cafeterias_Landing_API/end-session.php',
              successCallback: function(rta){
                      location.reload();
              }
        });
      });
      }