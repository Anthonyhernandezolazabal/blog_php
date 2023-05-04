<?php

require_once 'Conexion.php';

  class Usuario{

    var $objetos;

    function __construct(){
      $db = new Conexion();
      $this->acceso = $db->pdo;
    }

    /*===========================
    LOGUEARSE
    =============================*/
    function Loguearse($user,$pass){

        $sql="SELECT * FROM `usuario` WHERE email=:user";
        $query = $this->acceso->prepare($sql);
        $query->execute(array(':user'=>$user));
        $objetos= $query->fetchall();

        if (!empty($objetos)) {
            foreach ($objetos as $objeto) {
                $contrasena_actual = $objeto->clave;
            }
            //Verificamos si esta encriptada
            if (strpos($contrasena_actual,'$2y$10$') === 0) {

                if (password_verify($pass,$contrasena_actual)) {

                    return 'logueado';

                }

            }else{

                if ($pass==$contrasena_actual) {

                    return 'logueado';

                }

            }

        }

    }

    /*===========================
    OBTENER DATOS DE LOGUEO
    =============================*/
    function obtener_dato_logueado($user){
        $sql="SELECT * FROM `usuario` WHERE email=:user";
        $query = $this->acceso->prepare($sql);
        $query -> execute(array(':user'=>$user));
        $this->objetos=$query->fetchAll();
        return $this->objetos;
    }
}
