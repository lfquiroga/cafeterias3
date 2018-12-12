<?php

spl_autoload_register(function($className) {
    $className = str_replace('\\', '/', $className);
    $filepath = $className . ".php";
    if(file_exists($filepath)) {
        require __DIR__ . "/" . $filepath;
    }
});