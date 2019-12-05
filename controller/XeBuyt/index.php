<?php
    if(isset($_GET['action'])){
        $action = $_GET['action'];    
    }else{
        $action = "";
    }

    switch($action){
        default:
        {
            require_once('views/XeBuyt/index.html');
        break;
        }
        case 'DatVe':{
            require_once('views/XeBuyt/map-bus.html');
        break;
        }
        case 'ChiTiet':{
            require_once ('views/XeBuyt/buses.html');
        break;
        }
        case 'LienHe':{
            require_once ('views/XeBuyt/about.html');
        break;
        }
    }
?>