<?php

namespace CafeteriasBA\Controllers;

use CafeteriasBA\Core\View;
use CafeteriasBA\Models\Hash;
use CafeteriasBA\Models\Cafeteria as Cafeteria;
use CafeteriasBA\Models\Comentarios as Comentarios;
use CafeteriasBA\Session\Session;

//use CafeteriasBA\Session\Session;

class ComentariosController {

    // TODO: LLAMAR METODOS
    /**
     * metodo traer todos.
     */
    public static function getAll() {
        $cafeterias = Comentarios::getAll();
        $salida = [
            'status' => 1,
            'data' => $cafeterias
        ];

        View::render($salida);
    }

    /**
     * @param $data
     * @throws \Exception
     */
    public static function Create($data) {
                
        $cafeteria = Comentarios::crearComentario($data);
        die();
        $salida = [
            'status' => 1,
            'data' => $cafeteria
        ];

        View::render($salida);
    }

    /**
     * @param $data
     * @throws \Exception
     */
    public static function Update($data) {
        $cafeteria = Cafeteria::editarCafeteria($data);
        $salida = [
                    'status' => 1,
                    'data' => $cafeteria
        ];
        View::render($salida);
    }

    /**
     * @param $id
     */
    public static function getById($id) {
        $cafeteria = Cafeteria::verCafeteria($id);

        $salida = [
                    'status' => 1,
                    'data' => $cafeteria
        ];

        View::render($salida);
    }

    /**
     * eliminar comentario
     * @param $id
     */
    public static function Delete($id) {
        
        $comentario = Comentarios::eliminarComentario($id);
        
        $salida = [
                    'status' => 1,
                    'data' => $comentario
        ];
        
        View::render($salida);
    }
    
    /**Obtener cafeteria por id
     * 
     * @param int $id
     * @return html
     */

    public static function getByidCafe($id) {
        
        $comentario = Comentarios::findByFKCafeteria($id);

        return($comentario);
    }

}
