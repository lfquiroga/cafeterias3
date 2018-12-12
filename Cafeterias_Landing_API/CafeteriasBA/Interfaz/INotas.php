<?php
namespace CafeteriasBA\Interfaz;


interface INotas
{
		public function getTitulo();
		public function setTitulo($titulo);
		public function getId();
		public function setId($id);
		public function getNota();
		public function setNota($nota);
		public function getCreacionNota();
		public function setCreacionNota($creacionNota);
		public function getFkCafeteria();
		public function setFkCafeteria($fkCafeteria);
		public static function getAll();
		public static function eliminarNota($id);
		public static function verNota($id);
		public static function editarNota($id,$data);
		public static function crearNota($data);
}