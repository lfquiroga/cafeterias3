<?php

require "autoload.php";
//header('Content-Type: application/json; charset=utf-8');
$jsonData = file_get_contents('php://input');
$postData = json_decode($jsonData, true);
$method = $_SERVER['REQUEST_METHOD'];

use \CafeteriasBA\Controllers\UsuarioController;

/**
	* switch sobre el valor del Metodo requerido GET o DELETE y si trae un ID o no, para llamar la accion del controller necesario.
	*/
switch($method)
{
		case 'GET':
				if(isset($_GET['id']))
				{
						UsuarioController::getById($_GET['id']);
				}
				else
				{
						UsuarioController::getAll();
				}
				break;
		case 'DELETE':
				if(isset($_GET['id']))
				{
						//var_dump($_GET['id']);
						UsuarioController::Delete($_GET['id']);
				}else
				{
						//TODO: devolver error,
				}
				break;
}