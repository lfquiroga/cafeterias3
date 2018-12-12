<?php
namespace CafeteriasBA\Interfaz;


interface IComentarios
{

                
		public function getcomentarios();
		public function setComentario($comentario);
                
		public function getStatus();
		public function setStatus($status);
		
                public function getFk_usuario();
		public function setFk_usuario($fk_usuario);
                
                public function getId_cafeteria();
		public function setId_cafeteria($id_cafeteria);
                
		
                public function getPuntaje();
		public function setPuntaje($puntaje);

                public function getFecha_comentario();
		public function setFecha_comentario($fecha);
                
		
                
                
		public function getId();
		public function setId($id);

		public static function getAll();

                
		/*public static function eliminarCafeteria($id);
		public static function verCafeteria($id);
		public static function editarCafeteria($data);
		public static function crearCafeteria($data);*/
		public function findByPk($id);
}