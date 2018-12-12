<?php


namespace CafeteriasBA\Controllers;

use CafeteriasBA\Core\View;
use CafeteriasBA\Models\Rol;

class RolController
{
		/**
			* metodo traer todos.
			*/
		public static function getAll()
		{
				$roles = Rol::getAll();
				$salida =
					[
						'status' => 1,
						'data' => $roles,
					];
				View::render($salida);
		}
}