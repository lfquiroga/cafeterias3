

window.addEventListener("DOMContentLoaded",function(){

    let session_val_r = $s('#session_val_r');
    let session_val = $s('#session_val_id');
    let data = session_val_r.value;
    let dataE = session_val.value;

    
      var dataUnParsed = {
        user_data:true,
        id: dataE
       
      };

      let data_send = JSON.stringify(dataUnParsed);

      ajax({
        method: 'POST',
        url: '../../Cafeterias_Landing_API/perfil-router.php',
        data: data_send,
        successCallback: function (rta) {

         
          
             let datos = JSON.parse(rta).data[0];;
             console.log(datos);
            
       $('#nombre').val(datos.nombre);
       $('#apellido').val(datos.apellido);
       $('#email').val(datos.email);
       $('#nombre_ficha').html('<b>'+datos.nombre+' '+datos.apellido+'<b>');
       $('#fecha_registro').html('Fecha: <b>'+datos.fecha_registro+'<b>');
        
      }
      })
 
   



});