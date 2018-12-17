<?php
/**
	* router para llamar al controlador de Rol y traer todos los roles disponibles de usuario
	*/
require 'autoload.php';

use \CafeteriasBA\Controllers\RolController;

RolController::getAll();