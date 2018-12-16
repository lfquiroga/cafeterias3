<?php
require 'autoload.php';
use \CafeteriasBA\Session\Session;

Session::clearValue('Usuario');
Session::clearValue('Rol');
Session::clearValue('Id');

if(isset($_SESSION['Admin']))
{
	Session::clearValue('Admin');
}

if(isset($_SESSION['CafeteriaN']))
{
		Session::clearValue($_SESSION['CafeteriaID']);
		Session::clearValue($_SESSION['CafeteriaN']);
		Session::clearValue($_SESSION['CafeteriaD']);
		Session::clearValue($_SESSION['CafeteriaT']);
		Session::clearValue($_SESSION['CafeteriaE']);
		Session::clearValue($_SESSION['CafeteriaSW']);
		Session::clearValue($_SESSION['CafeteriaHA']);
		Session::clearValue($_SESSION['CafeteriaHC']);

	
}