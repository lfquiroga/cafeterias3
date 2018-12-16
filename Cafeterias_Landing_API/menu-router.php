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

use \CafeteriasBA\Controllers\MenuController;
use \CafeteriasBA\Models\Menu;
use CafeteriasBA\Models\Cafeteria;
use \CafeteriasBA\Validation\Validator;


/**

 * Switch que analiza el method request. GET o DELETE y si tiene Id o no para pedir al controller la accion correspondiente.

 */

switch ($method) {

    case 'GET':

        if (isset($_GET['id_usuario'])){
            
            CafeteriaController::verCafeteriaUsuario($_GET['id_usuario']) ;
        }
        
        if (isset($_GET['id'])) {

            MenuController::getById($_GET['id']);
            
        } else if(isset($_GET['all'])){
                        
            MenuController::getAll();                       
            
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

        if (isset($postData['cargar'])){
            
            //si es una carga
            if($postData['cargar'] == 'cargar'){
                
              $data = [
                'nombre' => $postData['nombre'],
                'descripcion' => $postData['descripcion'],
                'precio' => $postData['precio'],
                'id_cafeteria' => $postData['id_cafeteria'],
                'rol' => $postData['rol'],
                'usuario' => $postData['usuario']
            ];
            
               $validator = new Validator($data, [

                'nombre' => ['required', 'min:5' ,'max:500'],
                'descripcion' => ['required', 'min:1','max:300'] ,       
                'precio' => ['required','required']            

            ]);
           
            if($validator->errors){

                $salida = [
                    "status" => 0,
                    "errores" => $validator->errors
                ];

                View::render($validator->errors);
                
            }else{
                
                $e= Menu::crearMenu($data);
 
                View::render($e);
             }

            }
            
            /*SI ES UNA EDICION*/
            if($postData['id_editar'] != ''){   
                 
                $data = [
                'nombre' => $postData['nombre'],
                'descripcion' => $postData['descripcion'],
                'precio' => $postData['precio'],
                'id_cafeteria' => $postData['id_cafeteria'],
                'rol' => $postData['rol'],
                'usuario' => $postData['usuario'],
                'id' => $postData['id_editar']
            ];
            
               $validator = new Validator($data, [

                'nombre' => ['required', 'min:5' ,'max:500'],
                'descripcion' => ['required', 'min:1','max:300'] ,       
                'precio' => ['required','required']            

            ]);
           
            if($validator->errors){

                $salida = [
                    "status" => 0,
                    "errores" => $validator->errors
                ];

                View::render($validator->errors);
                
            }else{
                
                $e= Menu::editarMenu($data);
                
                View::render($e);
            }

            }
        
        }
        
        
        
        if(isset($postData['datos_menu'])){
            
            MenuController::getById($postData['id']);
 
        }
        
         if (isset($postData['eliminar'])){
             
           MenuController::eliminarMenu($postData['id']);

             
         }



        break;
}