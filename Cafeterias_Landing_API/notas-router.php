<?php

require "autoload.php";
//header('Content-Type: application/json; charset=utf-8');
$jsonData = file_get_contents('php://input');
$postData = json_decode($jsonData, true);
$method = $_SERVER['REQUEST_METHOD'];

use \CafeteriasBA\Controllers\NotaController;

/**
	* Switch que analiza el method request. GET o DELETE y si tiene Id o no para pedir al controller la accion correspondiente.
	*/
switch($method)
{
		case 'GET':
				if(isset($_GET['id']))
				{
						NotaController::getById($_GET['id']);
				}
				else
				{
						NotaController::getAll();
				}
				break;
		case 'DELETE':
				if(isset($_GET['id']))
				{
						//var_dump($_GET['id']);
						NotaController::Delete($_GET['id']);
				}else
				{
						//TODO: devolver error,
				}
				break;
}