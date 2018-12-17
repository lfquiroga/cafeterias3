<?php

spl_autoload_register(function($className) {
    
    $className = str_replace('\\', '/', $className);
    
    $filepath = __DIR__ . "/" . 'Cafeterias_Landing_API/' . $className . ".php";    
    
    if(file_exists($filepath)) {
        
        require $filepath;
        
    }
});