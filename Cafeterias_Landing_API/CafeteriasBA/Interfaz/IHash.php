<?php

namespace CafeteriasBA\Interfaz;


interface IHash
{
		public static function VerifyHash($password, $sqlpassword);
		public static function encrypt($pass);
}