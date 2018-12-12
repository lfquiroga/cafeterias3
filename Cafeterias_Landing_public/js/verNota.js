window.addEventListener('DOMContentLoaded',function(){

	let __nota = $s('#nota_id').value;
	let nota;

	ajax({
		url: '../../Cafeterias_Landing_API/notas-router.php?id='+__nota,
		successCallback: function(rta)
		{
			let divWrapper = $s('#notaWrapper');
			divWrapper.innerHTML = '';

			nota = JSON.parse(rta).data;
			console.log(nota);
			if(nota.length == 0)
			{
				window.location = 'pageNotFound.php';

			}else
			{

				let tituloNota = document.createElement('h1');
					tituloNota.innerHTML = nota[0].titulo;
				//let subTitulo = document.createElement('h3');
				let spanData = document.createElement('span');
					spanData.innerHTML = 'Creado por: '+nota[0].cafeteria+' el '+nota[0].creacion_nota;
				let bodyNota_container = document.createElement('div');
					bodyNota_container.className = 'resumenC';
				let bodyNota_nota_container = document.createElement('p');
					bodyNota_nota_container.className = 'detalleResumenC';
				let bodyNota = document.createElement('p');	
					bodyNota.innerHTML = nota[0].nota;

				let imgWrapper = document.createElement('div');
					imgWrapper.className = 'imgnota';
				let img = document.createElement('img');
					img.src = '../img/notes/nota.jpg';

				divWrapper.appendChild(tituloNota);
				divWrapper.appendChild(spanData);
				divWrapper.appendChild(bodyNota_container);
				bodyNota_container.appendChild(bodyNota_nota_container);
				bodyNota_nota_container.appendChild(bodyNota);
				bodyNota_container.appendChild(imgWrapper);
				imgWrapper.appendChild(img);
			}
			




		}

	});

});