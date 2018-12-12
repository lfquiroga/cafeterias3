<?php
/**
	* router para llamar al controller de Categoria y traer todas las categorias de producto disponibles.
	*/
require 'autoload.php';

use \CafeteriasBA\Controllers\CategoriaController;

CategoriaController::getAll();