<?php

namespace CafeteriasBA\Models;


use CafeteriasBA\Interfaz\IHash;

class Hash implements IHash
{
		public static function encrypt($pass)
		{
				return password_hash($pass, PASSWORD_DEFAULT);

		}

		public static function VerifyHash($password, $sqlpassword)
		{
				if(password_verify($password,$sqlpassword)){
						return true;
				}else{
						return false;
				}
		}
}