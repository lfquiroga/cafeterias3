<?php

namespace CafeteriasBA\Interfaz;


interface IProducto
{
		public function getNombre();
		public function setNombre($nombre);
		public function getId();
		public function setId($id);
		public function getPrecio();
		public function setPrecio($precio);
		public function getDescripcion();
		public function setDescripcion($descripcion);
		public function getStatus();
		public function setStatus($status);
		public function getFkCategoria();
		public function setFkCategoria($fk_categoria);
		public static function getAll();
		public static function eliminarProducto($id);
		public static function verProducto($id);
		public static function editarProducto($data);
		public static function crearProducto($data);
		public function findByPk($id);
}