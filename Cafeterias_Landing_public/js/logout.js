window.addEventListener("DOMContentLoaded",function(){
    let desloguearse = $s('#desloguearse');

    if(desloguearse !== null){
        desloguearse.addEventListener('click',function(){

            var filename= location.pathname.split('/').pop();
            console.log(filename);
            var prePath = '../../';
            if(filename == 'index.php' || filename == '')
            {
                prePath = '../';
            }
            ajax({
                url: prePath+'Cafeterias_Landing_API/end-session.php',
                successCallback: function(rta){
                    location.reload();
                }
            });
        });

    }
});
