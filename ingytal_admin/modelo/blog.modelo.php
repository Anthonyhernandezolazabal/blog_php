<?php
require_once 'Conexion.php';

class Blog{
    public $objetos;
    public function __construct(){
        $db = new Conexion();
        $this->acceso = $db->pdo;
    }

    function registrar_blog($nombre_img_general,$titulo_blog,$autor_blog,$txttipo_blog,$link_cita,$intro_blog,$contenido_blog){
        $sql="INSERT INTO blog(titulo, introduccion,contenido, link_contenido, autor, imagen_principal, id_tipo) VALUES (:titulo, :introduccion, :contenido, :link_contenido, :autor, :imagen_principal, :id_tipo)";
        $query = $this->acceso->prepare($sql);
        $query->execute(array(':titulo'=>$titulo_blog,':introduccion'=>$intro_blog,':contenido'=>$contenido_blog,':link_contenido'=>$link_cita,':autor'=>$autor_blog,':imagen_principal'=>$nombre_img_general,':id_tipo'=>$txttipo_blog,));
        echo 'add';
    }
    /*===========================
    BUSCAR BLOG 
    =============================*/
    function buscar(){

        $sql= "SELECT * FROM blog WHERE estado='A'";
        $query= $this->acceso->prepare($sql);
        $query->execute();
        $this->objetos=$query->fetchAll();
        return $this->objetos;    
        // if (!empty($_POST["consulta"])) {
        //     $consulta = $_POST["consulta"];
        //     $sql= "SELECT * FROM blog WHERE estado='A' and titulo LIKE :titulo";
        //     $query= $this->acceso->prepare($sql);
        //     $query->execute(array(":titulo"=>"%$consulta%"));
        //     $this->objetos=$query->fetchAll();
        //     return $this->objetos;
            
        // }else{
        //     $sql= "SELECT * FROM blog WHERE estado='A' and titulo NOT LIKE '' ORDER BY titulo DESC LIMIT 25";
        //     $query= $this->acceso->prepare($sql);
        //     $query->execute();
        //     $this->objetos=$query->fetchAll();
        //     return $this->objetos;    
        // }
    }

    function listar_tipo_blog(){
        $sql="SELECT * FROM `tipo_blog`";
        $query = $this->acceso->prepare($sql);
        $query->execute();
        $this->objetos=$query->fetchAll();
        return $this->objetos;
    }
    

    function registrar_tipo($nombre,$descripcion){
        $sql="INSERT INTO tipo_blog(tipo, descripcion) VALUES (:tipo, :descripcion)";
        $query = $this->acceso->prepare($sql);
        $query->execute(array(':tipo'=>$nombre,':descripcion'=>$descripcion));
        echo 'add_tipo';
    }
}