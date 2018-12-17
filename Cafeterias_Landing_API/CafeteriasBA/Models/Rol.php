<?php

namespace CafeteriasBA\Models;

use CafeteriasBA\DB\Conexion;
use PDO;
use JsonSerializable;

class Rol implements JsonSerializable
{

		private $id;
		protected $descripcion;

		function jsonSerialize()
		{
				// TODO: Implement jsonSerialize() method.
				return [
					'id_rol_usuario' => $this->id,
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

				$this->setId($fila['ID_rol_usuario']);
				$this->setDescripcion($fila['descripcion']);

		}

		/**
			* @return array
			*/
		public static function getAll()
		{
				$query = "SELECT * FROM t_rol_usuario";
				$stmt = Conexion::getStatement($query);
				$stmt->execute();
				while($fila = $stmt->fetch(PDO::FETCH_ASSOC))
				{
						$rol = new Rol();
						$rol ->loadData($fila);
						$salida[] = $rol;
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