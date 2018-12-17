<?php

namespace CafeteriasBA\Session;

class Session
{
		/**
			* @var bool
			*/
		protected static $sessionStarted = false;
		protected static $cookieStarted = false;

		/**
			* Inicia la sesi&oacute;n.
			*/
		public static function start()
		{
				session_start();
				self::$sessionStarted = true;
		}

		/**
			* Termina la sesi&oacute;n.
			*/
		public static function destroy()
		{
				session_destroy();
				self::$sessionStarted = false;
		}

		/**
			* @param $prop
			* @param $value
			*/
		public static function set($prop, $value)
		{
				if(!self::$sessionStarted) {
						self::start();
				}
				$_SESSION[$prop] = $value;
		}

		public static function setCookie($prop, $value)
		{
			
				$_COOKIE[$prop] = $value;
		}

		/**
			* @param $prop
			* @return mixed
			*/
		public static function get($prop)
		{
				if(!self::$sessionStarted) {
						self::start();
				}
				return $_SESSION[$prop];
		}

		/**
			* @param $prop
			* @return mixed
			*/
		public static function has($prop)
		{
				if(!self::$sessionStarted) {
						self::start();
				}
				return isset($_SESSION[$prop]);
		}

		/**
			* @param $prop
			* @return mixed
			*/
		public static function clearValue($prop)
		{
				if(!self::$sessionStarted) {
						self::start();
				}
				unset($_SESSION[$prop]);
		}

}