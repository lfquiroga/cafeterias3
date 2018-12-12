<?php


namespace CafeteriasBA\Controllers;


use CafeteriasBA\Core\View;
use CafeteriasBA\Models\Categoria;

class CategoriaController
{
		/**
			* metodo traer todos.
			*/
		public static function getAll()
		{
				$categorias = Categoria::getAll();
				$salida =
					[
						'status' => 1,
						'data' => $categorias,
					];
				View::render($salida);
		}
}