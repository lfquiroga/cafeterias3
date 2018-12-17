<?php

namespace CafeteriasBA\Core;


class View
{
    public static function render($data) {
        header("Content-Type: application/json; charset=utf-8");
        echo json_encode($data);
    }
}