<?php

include '../modelo/usuario.modelo.php';
session_start();
$usuario = new Usuario();

/*===========================
LOGUEARSE
=============================*/
if($_POST['funcion'] == 'iniciarsesion'){

  $user = $_POST['usuario'];
  $pass = $_POST['clave'];
  $json = array();
  $usuario -> Loguearse($user,$pass);
  
  if( !empty($usuario -> Loguearse($user,$pass) == 'logueado')){
    $usuario -> obtener_dato_logueado($user);

    foreach ($usuario->objetos as $objeto) {

        $_SESSION['us_nombre']=$objeto->nombre;
        $_SESSION['usuario']=$objeto->email;
        $_SESSION['iniciarsesion']='ok';

        $json[] = array(
            'datos'=>$objeto
        );
    }
  }else{

      $json[] = array(
          'datos'=>null
      );

  }

  $jsonstring = json_encode($json[0]);/*Va ver muchos usuarios */
  echo $jsonstring;

}