<?php

namespace CafeteriasBA\Controllers;

use CafeteriasBA\Core\View;
use CafeteriasBA\Models\Hash;
use CafeteriasBA\Models\Cafeteria as Cafeteria;
use CafeteriasBA\Session\Session;

//use CafeteriasBA\Session\Session;

class CafeteriaController
{


		// TODO: LLAMAR METODOS
		/**
			* metodo traer todos.
			*/
		public static function getAll()
		{
				$cafeterias = Cafeteria::getAll();
                             
				$salida =[
					'status' => 1,
					'data' => $cafeterias
				];
                                
				View::render($cafeterias);
		}

		/**
			* @param $data
			* @throws \Exception
			*/
		public static function Create($data)
		{
			$cafeteria = Cafeteria::crearCafeteria($data);
			$salida =
					[
						'status' => 1,
						'data' => $cafeteria
					];
			View::render($salida);
		}

		/**
			* @param $data
			* @throws \Exception
			*/
		public static function Update($data)
		{
				$cafeteria = Cafeteria::editarCafeteria($data);
                                
				$salida =
					[
						'status' => 1,
						'data' => $cafeteria
					];
				View::render($salida);
		}

		/**
			* @param $id
			*/
		public static function getById($id)
		{
				$cafeteria = Cafeteria::verCafeteria($id);
                                
                                if($cafeteria){
				$salida =
					[
						'status' => 1,
						'data' => $cafeteria
					];
                                }else{
                                    $salida =
					[
						'status' => 0,
						'data' => 'error'
					];
                                }
				View::render($salida);
		}

		/**
			* @param $id
			*/
		public static function Delete($id)
		{
			$cafeteria = Cafeteria::eliminarCafeteria($id);
			$salida = 
			[
				'status' => 1,
				'data' => $cafeteria
			];
			View::render($salida);
		}

		public static function getRanking(){
			$cafeteriasRanking = Cafeteria::topRank();
			$salida = 
			[
				'status' => 1,
				'data' => $cafeteriasRanking
			];
			View::render($cafeteriasRanking);
		}
                
                /**
                 * Busca cafeterias en base a parametros que le pasamos
                 * 
                 * @param type $data array
                 */
		public static function search($data){
                    
			$cafeteriasRanking = Cafeteria::search($data);
                        
			$salida = [
				'status' => 1,
				'data' => $cafeteriasRanking
			];
                        
			View::render($cafeteriasRanking);	
                        
                }

		public static function getByEmail($email)
		{
				$cafeteria = Cafeteria::getByEmail($email);
				$cafeteriaU = Usuario::getByEmail($email);
				$cafeteriaNombre = $cafeteria->getNombre();
				$cafeteriaDireccion = $cafeteria->getDireccion();
				$cafeteriaTelefono = $cafeteria->getTelefono();
				$cafeteriaEmail = $cafeteria->getEmail();
				$cafeteriaSitio_Web = $cafeteria->getSitioWeb();
				$cafeteriaHorario_Apertura = $cafeteria->getHorarioApertura();
				$cafeteriaHorario_Cierre = $cafeteria->getHorarioCierre();
				$cafeteriaId = $cafeteria->getId();
				Session::set('CafeteriaID', $cafeteriaId);
				Session::set('CafeteriaN', $cafeteriaNombre);
				Session::set('CafeteriaD', $cafeteriaDireccion);
				Session::set('CafeteriaT', $cafeteriaTelefono);
				Session::set('CafeteriaE', $cafeteriaEmail);
				Session::set('CafeteriaSW', $cafeteriaSitio_Web);
				Session::set('CafeteriaHA', $cafeteriaHorario_Apertura);
				Session::set('CafeteriaHC', $cafeteriaHorario_Cierre);



				View::render($cafeteria);
		}
}