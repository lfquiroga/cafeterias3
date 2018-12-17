<?php

namespace CafeteriasBA\Controllers;

use CafeteriasBA\Core\View;
use CafeteriasBA\Models\Hash;
use CafeteriasBA\Models\Usuario as Usuario;
use CafeteriasBA\Session\Session;
use CafeteriasBA\Validation\Validation;

class UsuarioController {

    // TODO: LLAMAR METODOS
    /**
     * funcion GetAll, llama al modelo usuario que realiza el GetAll de los usuarios.
     */
    public static function getAll() {
        $usuarios = Usuario::getAll();
        $salida = [
                    'status' => 1,
                    'data' => $usuarios
        ];
        View::render($salida);
    }

    /**
     * function para Login de usuario.
     * @param $data
     */
    public static function Login($data) {
        
        //TODO: VALIDAR LOS DATOS EXISTAN.
        if (isset($data['email']) && isset($data['password'])) {
            
            $email = $data['email'];
            
            $passwd     = $data['password'];
            
            $usuario    = Usuario::getByEmail($email);
            
            $verify     = Hash::VerifyHash($passwd, $usuario->getPass());
            
            if ($verify === true) {
                
                $email  = $usuario->getEmail();
                $rol    = $usuario->getFkRolUsuario();
                $id     = $usuario->getId();
                
                $output = [
                    "status" => 1,
                    "mensaje" => 'Usuario autenticado.',
                    "data" => $usuario
                ];
                
                if($email == 'halonso@cafeteriasba.com')
                {
                    Session::set('Admin',1);
                }
                
                Session::set('Usuario', $email);
                Session::set('Id', $id);
                Session::setcookie('Usuario',$email);
                Session::set('Rol', $rol);
                
                View::render($output);
                
            } else {
                
                $output = [
                    "status" => 0,
                    "mensaje" => 'hubo un error al autenticar el usuario.',
                    "data" => $usuario
                ];
                
                View::render($output);
                
            }
            
        } else {
            
            $output = [
                        "status" => 0,
                        "mensaje" => 'No se a podido encontrar los datos que busca.'
            ];
            
            View::render($output);
            
        }
    }

    /**
     * 
     * @param $data
     * funcion que se llamara al realizar un registro 
     * 
     */
    public static function Register($data) {  
        
        $mailenuso =  Usuario::findByEmail($data['email']) ;

        if($mailenuso){
            
            $salida = [
                'status' => 0,
                'errores' =>'El mail que ingreso ya esta en uso.' 
            ];

            View::render($salida);
            
        }else{
            
            $usuario = Usuario::registrarUsuario($data); 
            
            View::render($usuario);
                        
        }
        
    }

    /**
     * @param $data
     * @throws \Exception
     * funcion crear usuario. Se llama al realizar un Alta en el CPANEL adminsitrador. si falla devuelve excepcion.
     */
    public static function Create($data) {

        $producto = Usuario::crearUsuario($data);
        $salida = [
                    'status' => 1,
                    'data' => $producto
        ];
        View::render($salida);
    }

    /**
     * @param $data
     * funcion para la edicion del usuario.
     */
    public static function Update($data) {
        $producto = Usuario::editarUsuario($data);
        $salida = [
                    'status' => 1,
                    'data' => $producto
        ];
        View::render($salida);
    }

    /**
     * @param $id
     * funcion para ver el detalle del usuario seleccionado.
     */
    public static function getById($id) {
        
        $producto = Usuario::verUsuario($id);
        
        $salida = [
                    'status' => 1,
                    'data' => $producto
        ];
        
        View::render($salida);
    }

    /**
     * @param $id
     * funcion para el borrado logico en la base de datos del usuario seleccionado.
     */
    public static function Delete($id) {
        $producto = Usuario::eliminarUsuario($id);
        $salida = [
                    'status' => 1,
                    'data' => $producto
        ];
        View::render($salida);
    }

    public static function getByEmail($email)
    {
        $usuario = Usuario::getByEmail($email);
        Session::set('UserData', $usuario);
         View::render($email);
    }

}
