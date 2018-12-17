<?php

namespace CafeteriasBA\Controllers;
use CafeteriasBA\Core\View;
use CafeteriasBA\Models\Nota as Nota;

class NotaController
{


		// TODO: LLAMAR METODOS
		/**
			* metodo traer todos.
			*/
		public static function getAll()
		{
				$notas = Nota::getAll();
				$salida =
					[
						'status' => 1,
						'data' => $notas
					];
				View::render($salida);
		}

		/**
			* @param $data
			* @throws \Exception
			*
		public static function Create($data)
		{
				$nota = Nota::crearNota($data);
				$salida =
					[
						'status' => 1,
						'data' => $nota
					];
				View::render($salida);
		}

		/**
			* @param $data
			* @throws \Exception
			*
		public static function Update($data)
		{
				$nota = Nota::editarNota($data);
				$salida =
					[
						'status' => 1,
						'data' => $nota
					];
				View::render($salida);
		}

		/**
			* @param $id
			*/
		public static function getById($id)
		{
				$nota = Nota::verNota($id);
				$salida =
					[
						'status' => 1,
						'data' => $nota
					];
				View::render($salida);
		}

		/**
			* @param $id
			*
		public static function Delete($id)
		{
				$nota = Nota::eliminarNota($id);
				$salida =
					[
						'status' => 1,
						'data' => $nota
					];
				View::render($salida);
		}*/

}