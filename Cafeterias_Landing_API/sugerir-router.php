<?php
//require "../autoload.php";
require "autoload.php";
//header('Content-Type: application/json; charset=utf-8');
$jsonData = file_get_contents('php://input');
$postData = json_decode($jsonData, true);
$method = $_SERVER['REQUEST_METHOD'];
session_start();

use \CafeteriasBA\Controllers\CafeteriaController;


CafeteriaController::sugerirCafeteria($postData);

