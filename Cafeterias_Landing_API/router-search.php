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

/**
 * Switch que analiza el method request. GET o DELETE y si tiene Id o no para pedir al controller la accion correspondiente.
 */
switch ($method) {

    case 'GET':
        if (isset($_GET['id'])) {
            
            CafeteriaController::getById($_GET['id']);
            
        } else {
            
            CafeteriaController::getAll();
            
        }
        break;

    case 'DELETE':

        if (isset($_GET['id'])) {
            //var_dump($_GET['id']);
            CafeteriaController::Delete($_GET['id']);
        } else {
            //TODO: devolver error,
        }
        break;

    case 'POST':

        if (isset($postData['buscar'])) {

                
            $data = [
             'nombre' => $postData['nombre'],
             'zona' => $postData['zona']
            ];
            
            if($postData['nombre'] != ''){
                
                $validator = new Validator($data, [
                    'nombre' => [ 'min:3', 'max:20'],
                ]);                        
                
            }
            
            if($postData['zona'] != ''){
                
                $validator = new Validator($data, [
                    'zona' => [ 'min:3', 'max:20']
                ]);                        
                
            }
            
            if ($validator->errors) {

                $salida = [
                    "status" => 0,
                    "errores" => $validator->errors
                ];

                View::render($validator->errors);
                
            } else {
                
               if($postData['nombre'] == "" && $postData['zona'] == ""){
                    View::render('Campos vacios');
                              
               }else{
                   
                   CafeteriaController::search($data);
  
               }
               
            }
        }
        
        break;
        
    }