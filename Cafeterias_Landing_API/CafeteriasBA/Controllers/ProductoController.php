<?php

namespace CafeteriasBA\Controllers;
use CafeteriasBA\Core\View;
use CafeteriasBA\Models\Producto as Producto;

class ProductoController
{


		// TODO: LLAMAR METODOS
		/**
			* metodo traer todos.
			*/
		public static function getAll()
		{
				$productos = Producto::getAll();
				$salida =
					[
						'status' => 1,
						'data' => $productos
					];
				View::render($salida);
		}
		/**
			* @param $data
			* @throws \Exception
			*/
		public static function Create($data)
		{
				$producto = Producto::crearProducto($data);
				$salida =
					[
						'status' => 1,
						'data' => $producto
					];
				View::render($salida);
		}

		/**
			* @param $data
			* @throws \Exception
			*/
		public static function Update($data)
		{
				$producto = Producto::editarProducto($data);
				$salida =
					[
						'status' => 1,
						'data' => $producto
					];
				View::render($salida);
		}

		/**
			* @param $id
			*/
		public static function getById($id)
		{
				$producto = Producto::verProducto($id);
				$salida =
					[
						'status' => 1,
						'data' => $producto
					];
				View::render($salida);
		}

		/**
			* @param $id
			*/
		public static function Delete($id)
		{
				$producto = Producto::eliminarProducto($id);
				$salida =
					[
						'status' => 1,
						'data' => $producto
					];
				View::render($salida);
		}

		/**
		* trae los productos
		*/
		public static function getAllProductos()
		{
				$productos = Producto::getAllProductos();
				$salida =
					[
						'status' => 1,
						'data' => $productos
					];
				View::render($salida);
		}

}