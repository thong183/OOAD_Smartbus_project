<?php
    require('C:/xampp/htdocs/LayoutSMARTBUS/model/dbContext.php');
    $db = new Context();
    $db -> connect();

    if (isset($_GET('controller'))){
        $controller = $_GET('controller');
    }else
    {
        $controller = "";
    }

    switch($controller){
        case 'KhachHang':{
            require_once('controller/KhachHang/index.php');
            break;
        }          
        case 'QuanTri':{
            require_once('controller/QuanTri/index.php');
            break;
        }   
        default :{
            require_once('controller/XeBuyt/index.php');
            break;
        }
        case 'Tuyen' :{
            require_once('controller/Tuyen/index.php');
            break;
        }
            
    }
?>