window.addEventListener("DOMContentLoaded",function(){

	let NotasLista;

	let articleWrapper = $s('#article_wrapper_notes');

/*	var verNota = function()
	{
		let linkbeableRead = document.querySelectorAll('.viewNote');

		for(let i = 0; i < linkbeableRead.length; i++)
		{
			linkbeableRead[i].addEventListener('click',function(e){
				e.preventDefault();
				let __nota = linkbeableRead[i].href.substr(this.href.lastIndexOf('/')+1); 
				



			});
		}
	}*/

	var showNotas = function()
	{
		articleWrapper.innerHTML = '';
		ajax({
			url: '../../Cafeterias_Landing_API/notas-router.php',
			successCallback: function(rta)
			{
				NotasLista = JSON.parse(rta).data;

				for(let arr = 0; arr < NotasLista.length; arr ++)
				{
					let divWrapper = document.createElement('div');
						divWrapper.className = 'first-item';
					let divImgContainer = document.createElement('div');
					let linkImgContainer = document.createElement('a');
						linkImgContainer.href = 'verNota.php?id='+NotasLista[arr].id;
						linkImgContainer.className = 'viewNote';
					let imgContainer = document.createElement('img');
						imgContainer.src = '../img/notes/note_1.jpg';

					let tituloNota = document.createElement('h3');
						tituloNota.innerHTML = NotasLista[arr].titulo;
					let separator = document.createElement('hr');

					let divDescContainer = document.createElement('div');
						divDescContainer.className = 'desc-recommended';
					let paragraphCafeteria = document.createElement('p');
						paragraphCafeteria.innerHTML = 'Autor: '+NotasLista[arr].cafeteria;
					let paragraphCreation = document.createElement('p');
						paragraphCreation.innerHTML = 'Created on: '+NotasLista[arr].creacion_nota;
					let linkRead = document.createElement('a');
						linkRead.innerHTML = 'Leer Nota';
						linkRead.href = 'verNota.php?id='+NotasLista[arr].id;
						linkRead.className = 'viewNote';

						articleWrapper.appendChild(divWrapper);
						divWrapper.appendChild(divImgContainer);

						divImgContainer.appendChild(linkImgContainer);
						linkImgContainer.appendChild(imgContainer);

						divWrapper.appendChild(tituloNota);
						divWrapper.appendChild(separator);
						divWrapper.appendChild(divDescContainer);

						divDescContainer.appendChild(paragraphCafeteria);
						divDescContainer.appendChild(paragraphCreation);
						divDescContainer.appendChild(linkRead);

				}

				//verNota();
			}
		});
	}

	showNotas();

});