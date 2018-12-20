window.addEventListener("DOMContentLoaded",function(){

    let flagCrud = true;

    let messageInfo = document.createElement('p');

    let sugerenciaTab = $s('#sugerencias');

    let tablaDashboard = $s('#listado-dashboard');

    let divAddCafeteria = document.createElement('div');

    divAddCafeteria.className = 'divButton';

    let linkAddCafeteria = document.createElement('a');

    linkAddCafeteria.href = '#';

    linkAddCafeteria.id = "crear-c";

    linkAddCafeteria.innerHTML = 'Añadir Cafeteria';

    let crudForm = $s('#crudForm');

    let divShow = $s('#divShow');

    let tableHeader = $s('#headerTable');

    let tableBody = $s('#bodyTable');

    let divContainer = $s('.text-dashboard');

    let preHeader = $s('.page-bg-wrapper').getElementsByTagName('h1')[0];

    /**

     * Funcion editar cafeteria, recibe como parametro la cafeteria tomada del listado para realizar una peticion ajax y editar la misma en la

     * base de datos. Crea la vista del formulario de edicion a trabajar

     * @param cafeteria

     */

    let aproveFunction = function(cafeteria){

        let aprobarCafeteria = $s('#aprobar-c');

        aprobarCafeteria.addEventListener("click",function(){

            let dataForm =
            {
                id: cafeteria.id
            };

            ajax({

                method:'PUT',

                url: '../../Cafeterias_Landing_API/sugerencia-router.php',

                data: JSON.stringify(dataForm),

                successCallback: function(rta)
                {
                    console.log(rta);
                    let divContainerModal = document.createElement("div");

                    divContainerModal.className = "modalWrapper";

                    let divModal = document.createElement("div");

                    divModal.className = "modal";

                    let textoInfo = document.createElement("p");

                    textoInfo.innerHTML = "Se aprobo la cafeteria sugerida.";

                    let body = document.getElementsByTagName("body")[0];

                    body.appendChild(divContainerModal);

                    divContainerModal.appendChild(divModal);

                    divModal.appendChild(textoInfo);

                    textoInfo.style.color = "#197328";

                    divModal.style.transition = "all .35s";

                    divModal.style.width = "35%";

                    setTimeout(function() {

                        divContainerModal.innerHTML = "";

                        body.removeChild(divContainerModal);

                    }, 2000);



                    showTable();

                }

            });

        });
    };

    /**

     * funcion borrar para realizar un borrado "LOGICO" en la base de datos de la cafeteria seleccionada.

     * @param cafeteria

     */

    let desaproveFunction = function(cafeteria){



        let borrarButton = $s('#desaprobar-c');

        borrarButton.addEventListener("click",function(){



            // console.log("eliminar: "+cafeteria.id);

            let divContainerModal = document.createElement("div");

            divContainerModal.className = "modalWrapper";

            let divModal = document.createElement("div");

            divModal.className = "modal";

            let textoInfo = document.createElement("p");

            textoInfo.innerHTML = "Estas seguro que queres desaprobar esta sugerencia de cafeteria?";

            let confirmarBorrar = document.createElement("a");

            confirmarBorrar.href = "#";

            confirmarBorrar.innerHTML = "Si";

            let cancelarBorrar = document.createElement("a");

            cancelarBorrar.href = "#";

            cancelarBorrar.innerHTML = "No";

            let body = document.getElementsByTagName("body")[0];

            body.appendChild(divContainerModal);

            divContainerModal.appendChild(divModal);

            divModal.appendChild(textoInfo);

            divModal.appendChild(confirmarBorrar);

            divModal.appendChild(cancelarBorrar);





            cancelarBorrar.addEventListener("click",function(){

                divContainerModal.innerHTML = "";

                body.removeChild(divContainerModal);

            });



            confirmarBorrar.addEventListener("click",function(){

                //console.log("eliminar: "+cafeteria.id);

                let idToDelete = cafeteria.id;

                /**

                 * peticion AJAX Delete enviada al router de formulario para realizar la accion de borrado logico en la base de datos.

                 */

                ajax({

                    method:'DELETE',

                    url: '../../Cafeterias_Landing_API/cafeterias-router.php',

                    data: 'id='+idToDelete,

                    successCallback: function(rta){

                        console.log(rta);

                        textoInfo.innerHTML = "La cafeteria fue desaprobada";

                        textoInfo.style.color = "#197328";

                        divModal.style.transition = "all .35s";

                        divModal.style.width = "35%";

                        divModal.removeChild(confirmarBorrar);

                        divModal.removeChild(cancelarBorrar);

                        setTimeout(function() {

                            divContainerModal.innerHTML = "";

                            body.removeChild(divContainerModal);

                        }, 2000);



                        showTable();



                    }



                });

            });



        });



    };

    /**

     * Funcion para ver la cafeteria que se clickeo en el listado.

     */

    let assignIDShow = function(){

        /****

         * SEE BY ID

         * @type {NodeList}

         */

        divShow.innerHTML = '';

        let rowItems = tableBody.getElementsByTagName('tr');

        for(let iteration = 0; iteration < rowItems.length;iteration++)

        {

            /**

             * evento click sobre las rows de la tabla del listado de cafeterias para realizar la peticion ajax que traera una cafeteria y

             * generara la vista para que el usuario administrador pueda ver el detalle de la cafeteria que selecciono.

             */

            rowItems[iteration].addEventListener("click",function(){

                let idToSee = this.firstChild.innerHTML;

                /**

                 * peticion ajax para ver la cafeteria seleccionada.

                 */

                ajax({

                    url:'../../Cafeterias_Landing_API/sugerencia-router.php',

                    data: 'id='+idToSee,

                    successCallback: function(rta)

                    {

                        let cafeteria = JSON.parse(rta).data[0];

                        //console.log(cafeteria);

                        tablaDashboard.className = 'listado-oculto';

                        divAddCafeteria.className = 'listado-oculto';

                        divShow.className = 'showID';

                        preHeader.innerHTML = 'Detalle de Cafeteria';

                        let divContainer = document.createElement('div');

                        divContainer.className = 'show-wrapper';

                        let divColumnOne = document.createElement('div');

                        let divColumnTwo = document.createElement('div');

                        let divColumnThree = document.createElement('div');

                        let divColumnFour = document.createElement('div');

                        divColumnFour.className = 'columnFourHeader';

                        let linkEdit = document.createElement('a');

                        linkEdit.href = '#';

                        linkEdit.innerHTML = 'Aprobar Cafeteria';

                        linkEdit.id = 'aprobar-c';

                        let linkBorrar = document.createElement('a');

                        linkBorrar.href = '#';

                        linkBorrar.innerHTML = 'Desaprobar Cafeteria';

                        linkBorrar.id = 'desaprobar-c';

                        let divTitleInfo = document.createElement('div');

                        divTitleInfo.className = 'titleInfoShow';

                        let titleInfo = document.createElement('h1');

                        titleInfo.innerHTML = "Datos de la Cafeteria";

                        let divInfoContainerNombre = document.createElement('div');

                        let divInfoContainerDireccion = document.createElement('div');

                        let divInfoContainerEmail= document.createElement('div');

                        let divInfoContainerSucursal = document.createElement('div');

                        let divInfoContainerValoracion = document.createElement('div');

                        let divInfoContainerVotos = document.createElement('div');



                        let titleNombre = document.createElement('h2');

                        titleNombre.innerHTML = "Nombre:";

                        let titleDireccion = document.createElement('h2');

                        titleDireccion.innerHTML = "Direccion:";

                        let titleEmail = document.createElement('h2');

                        titleEmail.innerHTML = "Email:";

                        let titleSucursal = document.createElement('h2');

                        titleSucursal.innerHTML = "Sucursal:";

                        let titleValoracion = document.createElement('h2');

                        titleValoracion.innerHTML = "Valoracion:";

                        let titleVotos = document.createElement('h2');

                        titleVotos.innerHTML = "Votos:";



                        let textNombre = document.createElement('p');

                        textNombre.innerHTML = cafeteria.nombre;

                        let textDireccion = document.createElement('p');

                        textDireccion.innerHTML = cafeteria.direccion;

                        let textEmail = document.createElement('p');

                        textEmail.innerHTML = cafeteria.email;

                        let textSucursal = document.createElement('p');

                        textSucursal.innerHTML = cafeteria.sucursal;

                        let textValoracion = document.createElement('p');

                        textValoracion.innerHTML = cafeteria.valoracion;

                        let textVotos = document.createElement('p');

                        textVotos.innerHTML = cafeteria.votos;



                        divShow.appendChild(divColumnFour);

                        divColumnFour.appendChild(linkEdit);

                        divColumnFour.appendChild(linkBorrar);

                        divColumnFour.appendChild(divTitleInfo);

                        divTitleInfo.appendChild(titleInfo);



                        divShow.appendChild(divContainer);

                        divContainer.appendChild(divColumnOne);

                        divContainer.appendChild(divColumnTwo);

                        divContainer.appendChild(divColumnThree);



                        divColumnOne.className = 'column-show';

                        divColumnTwo.className = 'column-show';

                        divColumnThree.className = 'column-show';



                        divColumnOne.appendChild(divInfoContainerNombre);

                        divColumnOne.appendChild(divInfoContainerDireccion);

                        divColumnOne.appendChild(divInfoContainerEmail);



                        divInfoContainerNombre.appendChild(titleNombre);

                        divInfoContainerNombre.appendChild(textNombre);

                        divInfoContainerDireccion.appendChild(titleDireccion);

                        divInfoContainerDireccion.appendChild(textDireccion);

                        divInfoContainerEmail.appendChild(titleEmail);

                        divInfoContainerEmail.appendChild(textEmail);




                        divColumnTwo.appendChild(divInfoContainerSucursal);






                        divInfoContainerSucursal.appendChild(titleSucursal);

                        divInfoContainerSucursal.appendChild(textSucursal);






                        divColumnThree.appendChild(divInfoContainerValoracion);

                        divColumnThree.appendChild(divInfoContainerVotos);



                        divInfoContainerValoracion.appendChild(titleValoracion);

                        divInfoContainerValoracion.appendChild(textValoracion);

                        divInfoContainerVotos.appendChild(titleVotos);

                        divInfoContainerVotos.appendChild(textVotos);

                        aproveFunction(cafeteria);

                        desaproveFunction(cafeteria);

                    }

                });

            });

        }

    };

    /**

     * funcion para ver el listado completo de cafeterias. peticion ajax traera todas las cafeterias que esten con status "Activo"

     */

    var showTable = function (){

        divContainer.innerHTML = '';
        divShow.innerHTML = '';
        preHeader.innerHTML = 'Sugerencia de Cafeterias';
        divShow.className = 'listado-oculto';
        //tablaDashboard.innerHTML = '';

        /**

         * peticion Ajax para traer todas las cafeterias con status "activo"

         */

        ajax({

            url: '../../Cafeterias_Landing_API/sugerencia-router.php',

            successCallback: function(rta){
                pMensaje = document.createElement('p');

                
                if(JSON.parse(rta).status == 0)
                {
                    flagCrud = true;

                    crudForm.innerHTML = "";

                    tablaDashboard.className = "listado-oculto";

                    tableHeader.className = "listado-oculto";

                    pMensaje.innerHTML = 'No registramos ninguna sugerencia por parte de los usuarios en estos momentos. A penas se realize una, se mostrar&#225;n aqu&#237;.';

                    divContainer.appendChild(pMensaje);


                }else
                {

                pMensaje.innerHTML = '';
                flagCrud = true;

                crudForm.innerHTML = "";

                tablaDashboard.className = "";

                let arrayCafeterias = JSON.parse(rta).data;

                // Agregar un flag para saber si esta cargada o no, y para saber si borrar en otros clicks de tablas o no

                let headerID = 'ID';

                let headerNombre = 'Nombre';

                let headerDireccion = 'Direccion';

                let headerEmail = 'Email';

                let headerSucursal = 'Sucursal';

                let headerValoracion = 'Valoracion';

                let headerVotos = 'Votos';



                tableHeader.innerHTML = "<tr>"+"<th>"+headerID+"</th>"+

                    "<th>"+headerNombre+"</th>"+

                    "<th>"+headerDireccion+"</th>"+

                    "<th>"+headerEmail+"</th>"+

                    "<th>"+headerSucursal+"</th>"+

                    "<th>"+headerValoracion+"</th>"+

                    "<th>"+headerVotos+"</th>";


                tableBody.innerHTML = "";

                for(let arr = 0; arr < arrayCafeterias.length; arr++)

                {

                    tableBody.innerHTML += "<tr>"+"<td>"+arrayCafeterias[arr].id+"</td>"+

                        "<td>"+arrayCafeterias[arr].nombre+"</td>"+

                        "<td>"+arrayCafeterias[arr].direccion+"</td>"+

                        "<td>"+arrayCafeterias[arr].email+"</td>"+

                        "<td>"+arrayCafeterias[arr].sucursal+"</td>"+

                        "<td>"+arrayCafeterias[arr].valoracion+"</td>"+

                        "<td>"+arrayCafeterias[arr].votos+"</td>"+

                        "</tr>";

                }

                    assignIDShow();
                }
            

            }

                

            

        });

    };

    //TODO: seeID

    /**

     * evento on click en el link de la barra de navegacion que carga el listado de cafeterias.

     */

    sugerenciaTab.addEventListener("click",function(){

        showTable();

    });

});