<?php

namespace CafeteriasBA\Models;

use CafeteriasBA\Interfaz\IComentarios;
use CafeteriasBA\DB\Conexion;
use JsonSerializable;
use PDO;
use Exception;

class Comentarios implements JsonSerializable, IComentarios {

    private   $id;
    protected $comentario;
    protected $fecha_comentario;
    protected $status;
    protected $fk_usuario;
    protected $id_cafeteria;
    protected $puntaje;

    /**
     * Cafeteria constructor.
     * @param $id
     */
    public function __construct($id = null) {
        if (!is_null($id)) {
            $this->findByPk($id);
        }
    }

    function jsonSerialize() {
        // TODO: Implement jsonSerialize() method.
        return [
            'id' => $this->id,
            'comentario' => $this->comentario,
            'fecha_comentario' => $this->fecha_comentario,
            'status' => $this->status,
            'fk_usuario' => $this->fk_usuario,
            'id_cafeteria' => $this->id_cafeteria,
            'puntaje' => $this->puntaje,
        ];
    }

    /**
     * @param $id
     */
    public function findByPk($id) {
        $this->setId($id);
        
        $query = "SELECT * FROM t_comentarios WHERE id = ? and status = 'activo'";
        
        $stmt = Conexion::getStatement($query);
        
        $stmt->execute(array($this->getId()));
        
        $this->loadData($stmt->fetch(PDO::FETCH_ASSOC));
    }
    
    /**
     * @param $id
     */
    public function findByFKCafeteria($id) {
        
        $query = "SELECT * FROM t_comentarios WHERE id_cafeteria = ? and status = 'activo' order by id desc";

        $stmt = Conexion::getStatement($query);
        
        $stmt->execute(array($id));
        
        while ($fila = $stmt->fetch(PDO::FETCH_ASSOC)) {
         
            $comentario = new Comentarios();
            
            $comentario->LoadData($fila);
            
            $salida[] = $comentario;
        }
        if(isset($salida)){
        
            return($salida);
        
        }
    }

    /**
     * @param $fila
     */
    protected function loadData($fila) {
        /*         * *
         * Set Load Data : Carga los campos de la clase usuario.
         */
        $this->setId($fila['id']);
        $this->setComentario($fila['comentario']);
        $this->setFecha_comentario($fila['fecha_comentario']);
        $this->setStatus($fila['status']);
        $this->setFk_usuario($fila['fk_usuario']);
        $this->setId_cafeteria($fila['id_cafeteria']);
        $this->setPuntaje($fila['puntaje']);
  
    }

    /**
     * @return array
     */
    public static function getAll() {
        // TODO: Implement getAll() method.
        $query = "SELECT * FROM t_comentarios WHERE status = 'activo'";
        
        $stmt = Conexion::getStatement($query);
        
        $stmt->execute();
        
        while ($fila = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $comentario = new Comentarios();
            $comentario->LoadData($fila);
            $salida[] = $comentario;
        }
        
        return $salida;
    }


    /**
     * @param $id
     * @return array
     */
    public static function eliminarComentario($id) {
        // TODO: Implement eliminarCafeteria() method.
        $query = "UPDATE t_comentarios SET status = 'inactivo' , estado = 0 WHERE id = ?";
        
        $stmt = Conexion::getStatement($query);
        
        $stmt->execute([$id]);
        
        if ($stmt) {
            $salida = [
                'status' => 1,
                'message' => 'Comentario eliminado'
            ];
        } else {
            $salida = [
                'status' => 0,
                'message' => 'Hubo un error en la eliminacion'
            ];
        }
        return $salida;
    }

    /**
     * @param $id
     * @return array
     */
    public static function verComentario($id) {
        // TODO: Implement verCafeteria() method.
        $query = "SELECT * FROM t_comentarios WHERE id = ?";
        $stmt = Conexion::getStatement($query);
        $stmt->execute([$id]);

        $salida = [];

        while ($fila = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $cafeteria = new Cafeteria();
            $cafeteria->setId($fila['id']);
            $cafeteria->loadData($fila);
            $salida[] = $cafeteria;
        }
        return $salida;
    }

    

    /**
     * @param $data
     * @return Cafeteria
     * @throws Exception
     */
    public static function editarComentario($data) {
        // TODO: Implement editarCafeteria() method.
        $query = "UPDATE t_comentarios SET
        nombre=:nombre,
        direccion=:direccion,
        telefono=:telefono,
        email=:email,
        sitio_web=:sitio_web,
        sucursal=:sucursal,
        horario_apertura=:horario_apertura,
        horario_cierre=:horario_cierre
        WHERE ID_cafeteria=:idcafeteria";
        
        $stmt = Conexion::getStatement($query);
        
        $exito = $stmt->execute([
            'nombre' => $data['nombre'],
            'direccion' => $data['direccion'],
            'telefono' => $data['telefono'],
            'email' => $data['email'],
            'sitio_web' => $data['sitioWeb'],
            'sucursal' => $data['sucursal'],
            'horario_apertura' => $data['horarioApertura'],
            'horario_cierre' => $data['horarioCierre'],
            'idcafeteria' => $data['idcafeteria'],
        ]);
        
        if ($exito) {
            $cafeteria = new Cafeteria($data['idcafeteria']);
            //$cafeteria->loadData($data);
            $salida = $cafeteria;
            return $salida;
        } else {
            throw new Exception('No se ha podido editar la cafeteria.');
        }
    }

    /*     * *
     * @param $data
     * @return bool
     * @throws Exception
     */

    public static function crearComentario($data) {
        
        // TODO: Implement crearCafeteria() method.
        $query = "INSERT INTO t_comentarios (
                comentario,
                status,
                fk_usuario,
                id_cafeteria,
                puntaje ) VALUES (
                :comentario,
                :status,
                :fk_usuario,
                :id_cafeteria,
                :puntaje )";
        
        $status = 'activo';
        
        $stmt = Conexion::getStatement($query);
        
        $exito = $stmt->execute([
            'comentario' => $data['comentario'],
            'status' => $status,
            'fk_usuario' => $data['userid'],
            'id_cafeteria' => $data['id'],
            'puntaje' => $data['calificacion']            
        ]);
        
        if ($exito) {
            return true;
        } else {
            throw new Exception('No se a podido cargar su comentario.');
        }
    }

    public function getId() {
        return $this->id;
    }

    public function setId($id) {
        $this->id = $id;
    }


    public function getStatus() {
        return $this->status;
    }

    public function setStatus($status) {
        $this->status = $status;
    }

    
    function getcomentarios() {
        return $this->comentario;
    }
    
      function setComentario($comentario) {
        $this->comentario = $comentario;
    }
    

    function getFecha_comentario() {
        return $this->fecha_comentario;
    }

    function getFk_usuario() {
        return $this->fk_usuario;
    }

    function getId_cafeteria() {
        return $this->id_cafeteria;
    }

    function getPuntaje() {
        return $this->puntaje;
    }

  

    function setFecha_comentario($fecha_comentario) {
        $this->fecha_comentario = $fecha_comentario;
    }

    function setFk_usuario($fk_usuario) {
        $this->fk_usuario = $fk_usuario;
    }

    function setId_cafeteria($id_cafeteria) {
        $this->id_cafeteria = $id_cafeteria;
    }

    function setPuntaje($puntaje) {
        $this->puntaje = $puntaje;
    }

}
