<?php

    session_start();

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Starter Page | Hyper - Responsive Bootstrap 5 Admin Dashboard</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description">
  <meta content="Coderthemes" name="author">
  <!-- App favicon -->
  <link rel="shortcut icon" href="assets/images/logo_ingytal.png">

  <!-- App css -->
  <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css">
  <link href="assets/css/app.min.css" rel="stylesheet" type="text/css" id="light-style">
  <link href="assets/css/app-dark.min.css" rel="stylesheet" type="text/css" id="dark-style">
  <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body class="loading"
  data-layout-config='{"leftSideBarTheme":"dark","layoutBoxed":false, "leftSidebarCondensed":false, "leftSidebarScrollable":false,"darkMode":false, "showRightSidebarOnStart": true}'>

  <?php

  if(isset($_SESSION["iniciarsesion"]) && ($_SESSION["iniciarsesion"] == "ok")){
    echo '<div class="wrapper">';
           include "vista/modulos/menu.php";
    echo'   <div class="content-page">
              <div class="content">';

                include "vista/modulos/header.php";

                /* === CONTENIDO === */
                if(isset($_GET["ruta"])){

                  if( $_GET["ruta"] == "inicio" || $_GET["ruta"] == "blog" || 
                      $_GET["ruta"] == "nuevo-blog" ||
                      $_GET["ruta"] == "tipos-blog" ||
                      $_GET["ruta"] == "salir"){

                      include 'vista/modulos/'.$_GET["ruta"].".php";
          
                  }else{
          
                      include "vista/modulos/404.php";
          
                  }
          
              }else{
          
                  include "vista/modulos/inicio.php";
          
              }

    echo'   </div>';

            include "vista/modulos/footer.php";

    echo'
            </div>

          </div>';
  }else{

    include 'vista/modulos/acceso.php';
    
  }
      
  
  ?>

  <div class="rightbar-overlay"></div>
  <script src="assets/js/vendor.min.js"></script>
  <script src="assets/js/app.min.js"></script>
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</body>

</html>