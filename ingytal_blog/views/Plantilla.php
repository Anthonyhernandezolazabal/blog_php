<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Blog + Left Sidebar | Triangle</title>
  <link href="asset/css/bootstrap.min.css" rel="stylesheet">
  <link href="asset/css/font-awesome.min.css" rel="stylesheet">
  <link href="asset/css/lightbox.css" rel="stylesheet">
  <link href="asset/css/animate.min.css" rel="stylesheet">
  <link href="asset/css/main.css" rel="stylesheet">
  <link href="asset/css/responsive.css" rel="stylesheet">
  <script type="text/javascript" src="asset/js/jquery.js"></script>

  <!--[if lt IE 9]>
	    <script src="js/html5shiv.js"></script>
	    <script src="js/respond.min.js"></script>
    <![endif]-->
  <link rel="shortcut icon" href="asset/images/logo_ingytal.png">
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="asset/images/ico/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="asset/images/ico/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="asset/images/ico/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="asset/images/ico/apple-touch-icon-57-precomposed.png">
</head>
<!--/head-->

<body>

  <?php 
    include 'views/modulos/cabecera.php';

    /* === CONTENIDO === */
    if(isset($_GET["ruta"])){

        if( $_GET["ruta"] == "principal" ||
            $_GET["ruta"] == "archivos" ||
            $_GET["ruta"] == "blog"){

            include 'views/modulos/'.$_GET["ruta"].".php";

        }else{

            include "views/modulos/404.php";

        }

    }else{

        include "views/modulos/principal.php";

    }

    include 'views/modulos/footer.php';
  
    ?>
  <script type="text/javascript" src="asset/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="asset/js/lightbox.min.js"></script>
  <script type="text/javascript" src="asset/js/wow.min.js"></script>
  <script type="text/javascript" src="asset/js/main.js"></script>
</body>

</html>