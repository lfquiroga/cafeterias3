document.addEventListener("DOMContentLoaded", function () {
  function $s(CssSelector)
  {
    return document.querySelector(CssSelector);
  }
  let registerForm = $s('#register-form');
  /**
   * evento click para el envio del formulario de registro.
   */
  registerForm.addEventListener("submit", function (e) {

    e.preventDefault();

    let userName = $s('#nombre-register');

    let email = $s('#email-register');

    let passwd = $s('#password-register');

    let passwdConfirm = $s('#password-confirmation');
    
    if(passwd.value == passwdConfirm.value){
      
        var dataUnParsed =
            {
              nombre: userName.value,
              email: email.value,
              passwd: passwd.value,
              passwdConfirm: passwdConfirm.value
            };
      
    }else{
      //mostrar el error en ventana
      alert('los password no coinciden ');
      
    }


    let data = JSON.stringify(dataUnParsed);
    /**
     * peticion ajax que envia los datos de registro por POST al router del formulario. El mismo se encarga de verificar si es Login o Registro
     * para realizar las acciones correspondientes del controlador.
     */
     console.log(location.pathname);
     var filename= location.pathname.split('/').pop();
     console.log(filename);
     var prePath = '../../';
     if(filename == 'index.php' || filename == '')
     {
       prePath = '../'
     }
    ajax({
      method: 'POST',
      url: prePath+'Cafeterias_Landing_API/router-form.php',
      data: data,
      successCallback: function (rta) {
        console.log(rta);
      }
    });
  });
});