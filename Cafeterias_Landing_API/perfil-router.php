<?php
//require "../autoload.php";
require "autoload.php";
//header('Content-Type: application/json; charset=utf-8');
$jsonData = file_get_contents('php://input');
$postData = json_decode($jsonData, true);
$method = $_SERVER['REQUEST_METHOD'];
session_start();

use CafeteriasBA\Core\View;
use \CafeteriasBA\Controllers\CafeteriaController;
use \CafeteriasBA\Controllers\UsuarioController;
use \CafeteriasBA\Controllers\ComentariosController;
use \CafeteriasBA\Validation\Validator;
use \CafeteriasBA\Models\Usuario as Usuario;




if (isset($postData['user_data'])) {
    
    UsuarioController::getById($postData['id']);
    
    
}
/*
if (isset($_GET['data'])) {
    
    $rol = $_GET['data'];
    $email = $_GET['email'];
    
} else {
    header('Location: ../Cafeterias_Landing_public/index.php');
}

switch ($rol) {
    case'3':
        \CafeteriasBA\Controllers\CafeteriaController::getByEmail($email);
        break;
    case '2':
    case '4':
        \CafeteriasBA\Controllers\UsuarioController::getByEmail($email);
        break;
}*/