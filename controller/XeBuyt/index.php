<!DOCTYPE html>
<html>

<head>
    <title>Smart Bus</title>
    <link rel="stylesheet" type="text/css" href="views/XeBuyt/css/style.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="views/XeBuyt/css/busInfo.css">
    <link rel="stylesheet" href="views/XeBuyt/css/login.css" type="text/css" media="all" /> <!-- Style-CSS --> 
    <link rel="stylesheet" href="views/XeBuyt/css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
</head>
<body>
<header id="header-content">

        <ul>
            <li>
                <img src="views/XeBuyt/img/main-logo.jpg" width="100px" height="100px">
            </li>
            <li>
                <input type="text" placeholder=" Nhập từ cần tìm...."><button type="submit"><i class="fa fa-search"></i></button>
            </li>

            <li>
                <h1> Smart bus</h1>
            </li>
        </ul>

    </header>
    <div id="mini-list">
        <ul>
            <li>
                <a href="#"><i class="fa fa-user"></i> Đăng nhập</a>
            </li>
            <li>
                <a href="#"><i class="fa fa-user"></i> Đăng ký</a>
            </li>
        </ul>
    </div>
    <nav class="nav-header">

        <ul id="page-list">
            <li>
                <a href="index.php"><i class="fa fa-home"></i> Trang chủ</a>
            </li>
            <li>
                <a href="index.php?controller=default&action=DatVe"><i class="fa fa-ticket"></i> Đặt xe buýt online</a>
            </li>
            <li>
                <a href="index.php?controller=default&action=ChiTiet"><i class="fa fa-car"></i> Thông tin tuyến xe buýt</a>
            </li>
            <li>
                <a href="index.php?controller=default&action=LienHe"><i class="fa fa-phone"></i> Liên hệ</a>
            </li>
            <li>
                <script>
                    var myVar = setInterval(function() {
                        myTimer()
                    }, 1000);

                    function myTimer() {
                        var d = new Date();
                        var t = `<i class="fa fa-clock-o" style="font-size:30px">` + d.toLocaleTimeString() + "|";
                        document.getElementById("clock").innerHTML = t;
                    }
                </script>
                <span id="clock"></i></span>
            </li>
            <li>
                <script type="text/javascript">
                    n = new Date();
                    if (n.getTimezoneOffset() == 0) t = n.getTime() + (7 * 60 * 60 * 1000);
                    else t = n.getTime();
                    n.setTime(t);
                    var dn = new Array("Chủ nhật", "Thứ 2", "Thứ 3", "Thứ 4", "Thứ 5", "Thứ 6", "Thứ 7");
                    d = n.getDay();
                    m = n.getMonth() + 1;
                    y = n.getFullYear()
                    document.write(dn[d] + ", " + (n.getDate() < 10 ? "0" : "") + n.getDate() + "/" + (m < 10 ? "0" : "") + m + "/" + y)
                </script>
            </li>
        </ul>
    </nav>
    <?php
    if(isset($_GET['action'])){
        $action = $_GET['action'];    
    }else{
        $action = "";
    }

    switch($action){
        default:
        {
            require_once('views/XeBuyt/index.php');
        break;
        }
        case 'DatVe':{
            require_once('views/XeBuyt/booking-bus.php');
        break;
        }
        case 'ChiTiet':{
            require_once ('views/XeBuyt/infor-bus.php');
        break;
        }
        case 'LienHe':{
            require_once ('views/XeBuyt/about.php');
        break;
        }
        case 'HoaDon':{
            require_once ('views/XeBuyt/bill-bus.php');
        }
    }
?>
<footer id="footter">

        <h2>Smart bus - More convinent </h2>
        <p>@Copyright</p>
    </footer>

</body>

</html>
