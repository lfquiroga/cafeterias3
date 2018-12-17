<?php


namespace CafeteriasBA\Models;


use CafeteriasBA\DB\Conexion;
use PDO;
use JsonSerializable;

class Categoria implements JsonSerializable
{

		private $id;
		protected $descripcion;



		function jsonSerialize()
		{
				// TODO: Implement jsonSerialize() method.
				return [
					'id_categoria_producto' => $this->id,
					'descripcion' => $this->descripcion,
				];
		}

		/**
			* @param $fila
			*/
		protected function loadData($fila)
		{
				/***
					* Set Load Data : Carga los campos de la clase categoria.
					*/

						$this->setId($fila['ID_categoria_producto']);
						$this->setDescripcion($fila['descripcion']);

		}

		/**
			* @return array
			*/
		public static function getAll()
		{
				$query = "SELECT * FROM t_categoria_producto";
				$stmt = Conexion::getStatement($query);
				$stmt->execute();
				while($fila = $stmt->fetch(PDO::FETCH_ASSOC))
				{
						$categoria = new Categoria();
						$categoria->loadData($fila);
						$salida[] = $categoria;
				}
				return $salida;
		}

		/**
			* @return mixed
			*/
		public function getId()
		{
				return $this->id;
		}

		/**
			* @param mixed $id
			*/
		public function setId($id)
		{
				$this->id = $id;
		}

		/**
			* @return mixed
			*/
		public function getDescripcion()
		{
				return $this->descripcion;
		}

		/**
			* @param mixed $descripcion
			*/
		public function setDescripcion($descripcion)
		{
				$this->descripcion = $descripcion;
		}

}