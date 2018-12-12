<?php

namespace CafeteriasBA\Interfaz;


interface IUsuarios
{
		public function getNombre();
		public function setNombre($nombre);
		public function getId();
		public function setId($id);
		public function getApellido();
		public function setApellido($apellido);
		public function getPass();
		public function setPass($pass);
		public function getEmail();
		public function setEmail($email);
		public function getFechaRegistro();
		public function setFechaRegistro($fecha_registro);
		public function getUbicacionFoto();
		public function setUbicacionFoto($ubicacion_foto);
		public function getFkRolUsuario();
		public function setFkRolUsuario($fk_rolUsuario);
		public function getFkPrivacidad();
		public function setFkPrivacidad($fk_privacidad);
		public static function getAll();
		public static function getByEmail($email);
		public static function eliminarUsuario($id);
		public static function verUsuario($id);
		public static function editarUsuario($data);
		public static function crearUsuario($data);
}