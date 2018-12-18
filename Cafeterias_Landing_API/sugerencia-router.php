<?php
//require "../autoload.php"
require "autoload.php";
//header('Content-Type: application/json; charset=utf-8');
$jsonData = file_get_contents('php://input');
$postData = json_decode($jsonData, true);
$method = $_SERVER['REQUEST_METHOD'];
session_start();

use CafeteriasBA\Core\View;
use \CafeteriasBA\Controllers\CafeteriaController;
switch ($method) {
		case 'GET':
				if (isset($_GET['id'])) {
						CafeteriaController::getById($_GET['id']);
				} else {
						CafeteriaController::getSugerencias();
				}
				break;


		case 'DELETE':
				if (isset($_GET['id'])) {

						CafeteriaController::Delete($_GET['id']);
				} else {

						//TODO: devolver error,

				}
				break;

		case 'PUT':
				if(isset($postData['id'])){
					CafeteriaController::aprobarCafeteria($postData);
				}else
				{
						//TODO: error;
				}
		break;
}