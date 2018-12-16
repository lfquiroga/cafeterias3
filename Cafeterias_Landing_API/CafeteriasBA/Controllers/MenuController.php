<?php

namespace CafeteriasBA\Controllers;

use CafeteriasBA\Core\View;
use CafeteriasBA\Models\Hash;
use CafeteriasBA\Models\Cafeteria as Cafeteria;
use CafeteriasBA\Models\Menu ;
use CafeteriasBA\Session\Session;

//use CafeteriasBA\Session\Session;



class MenuController {
    // TODO: LLAMAR METODOS

    /**

     * metodo traer todos.

     */
    public static function getAll() {

        $cafeterias = Menu::getAll();

        $salida = [
            'status' => 1,
            'data' => $cafeterias
        ];

        View::render($cafeterias);
    }

    /**

     * @param $data

     * @throws \Exception

     */
    public function crearMenu($data) {

        $menu = Menu::crearMenu($data);

        $salida = [
                    'status' => 1,
                    'data' => $menu
        ];

        View::render($salida);
    }

    /**

     * @param $data

     * @throws \Exception

     */
    public function Update($data) {

        $menu = Menu::editarCafeteria($data);



        $salida = [
                    'status' => 1,
                    'data' => $menu
        ];

        View::render($salida);
    }

    /**

     * @param $id

     */
    public function getById($id) {

        $menu = Menu::findByPk($id);

        View::render($menu);
    }

    /**
     * @param $id
     */
    public function Delete($id) {

        $menu = Menu::eliminarMenu($id);

        $salida = [
                    'status' => 1,
                    'data' => $menu
        ];

        View::render($salida);
    }
    
    
    /**
     * @param $id
     */
    public function editarMenucargado($data) {

        $menu = Menu::editarMenu($data);

        $salida = [
                    'status' => 1,
                    'data' => $menu
        ];

        View::render($salida);
    }
    
    /**
     * @param $id
     */
    public function eliminarMenu($id) {

        $menu = Menu::delete($id);

        $salida = [
                    'status' => 1,
                    'data' => $menu
        ];
        
        View::render($salida);
    }
    

   
  

}
