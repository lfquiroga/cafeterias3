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

        if(isset($postData['cargarComentario'])){                                
        
            $data = [
                'comentario' => $postData['comentario'],
                'calificacion' => $postData['calificacion'],
                'id' => $postData['id'],
                'userid' => $postData['userid']
            ];

            $validator = new Validator($data, [
                'comentario' => ['required', 'min:10' ,'max:500'],
                'calificacion' => ['required', 'min:1','max:5'] ,           
                'id' => ['required']            
            ]);
            
            if($validator->errors){
             
                $salida = [
                    "status" => 0,
                    "errores" => $validator->errors
                ];
                
                View::render($validator->errors);
                
            }else{
                                           
                ComentariosController::Create($data);
                
                View::render('Creado correctamente');     
                
            }
        
        } else if(isset($postData['obtenerComentarios'])){
           
            
            $comentarios_db = ComentariosController::getByidCafe($postData['idCafeteria']);
            
            $data=array($comentarios_db);
            
            $comentarios='';
            
            $usuarios=[];
            
            //cada comentario tiene un id numerico , para luego usar el boton ver mas
            $contador=1;
            
            if($comentarios_db){
                
            foreach ($comentarios_db as $row){
                
                $star ='';
  
                for( $i = 0; $i < $row->getPuntaje(); $i++){

                  $star.='<i class="star fas fa-star"></i>';

                }
            
                $user=new Usuario($row->getFk_usuario());
                               
              
                $comentarios.='
                   <div class="singlecommentgrp" id="comentario_'.$contador.'">
                       <hr class="margintop0">
                        <div class="col3">
                          <div class="avatarcomment txtaligncenter">
                            <img  class="imgvatarcomment" alt="Cafeter&eacute;as BA" src="../img/avatar-user.jpg"/>
                            <p class="txtaligncenter marginbottom0"><b>'.$user->getNombre().'</b></p>
                            <p class="txtaligncenter marginbottom0 txtfichaavatarlabels">Fecha: '.$row->getFecha_comentario().'</p>
                            <p class="txtaligncenter txtfichaavatarlabels">Nivel: Novato</p>
                          </div>
                        </div>
	              <div class="col9">
                          <div class="commntuserbloq">
                            <p>Calificaci&oacute;n otorgada: <span class="starresponcont">
                        '.$star.'
                        </span>
                        </p>
                        <p>'.nl2br(htmlentities($row->getcomentarios())).'</p>
                        </div>
                        ';
                if($_SESSION['Id']==$user->getId()){
                    
                         $comentarios.='<i class="fas fa-trash-alt icnfawsm"></i><input type="button" value="eliminar" class="eliminar_comentario" id="eliminar_'.$row->getId().'">';
                        
                }
                
                $comentarios.='</div>
                        <div class="clearflt"></div>
                         <hr> </div>';
              $contador+=1;

            }
            
           }
           
           if($contador > 5){
                 $comentarios.='<input type="button" value="ver mas" max="'.$contador.'" class="ver_mas" id="0">';
           }
            
            echo($comentarios);
            
        }else if(isset($postData['eliminar_comentario'])){                        
            
            $comentarios_db = ComentariosController::Delete($postData['idcomentario']);
            
            return($comentarios_db);
            
        }           

        break;
}