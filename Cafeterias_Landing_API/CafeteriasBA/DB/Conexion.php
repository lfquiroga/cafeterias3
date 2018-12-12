<?php

namespace CafeteriasBA\DB;
use PDO;
use Exception;

class Conexion
{


		private static $db = null;

		private function __construct() {}

		/**
			* Conexion a la BD
			*/
		private static function openConnection()
		{
				$host = "localhost";
				//local
                                //$user = "root";
				
                                //online
                                $user = "cafeteri";
                                
                                //local
				//$pass = "";
                                
                                //online
				$pass = "Co230Fv4hn!!!!";
                                
                                //local
				//$base = "cafeteriasba";
                               
				//online
                                $base = "cafeteri_cafeteriasba";
                                
				$dsn = "mysql:host=$host;dbname=$base;charset=utf8";

				self::$db = new PDO($dsn, $user, $pass);

		}

		/**
			* @return PDO
			*/
		public static function getConnection()
		{
				if(is_null(self::$db)) {
						self::openConnection();
				}

				return self::$db;
		}

		/**
			* @param $query
			* @return mixed
			*/
		public static function getStatement($query)
		{
				return self::getConnection()->prepare($query);
		}
}