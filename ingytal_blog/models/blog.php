<?php
include 'Conexion.php';
class Blog{

    var $objetos;

    public function __construct(){ /*Para que al momento de instanciar la clase laboratorio automaticamente llame a la conexion pdo */
        $db = new Conexion();
        $this->acceso=$db->pdo;/*Con esto cada vez que nosotros instanciamos un objeto de la clase laboratorio automaticamente ya obtenemos la conexion pdo*/
    }
    /*============================
    LISTAR BLOG
    =============================*/
    function blog_listar(){
        $sql = "SELECT * FROM blog JOIN tipo_blog on blog.id_tipo=tipo_blog.id";
        $query = $this->acceso->prepare($sql);
        $query->execute();
        $this->objetos= $query->fetchall();
        return $this->objetos;
    }
    function blog_listar_blog_tipo($id_tipo){
        $sql = "SELECT * FROM blog JOIN tipo_blog on blog.id_tipo=tipo_blog.id WHERE tipo_blog.id=:id";
        $query = $this->acceso->prepare($sql);
        $query -> execute(array(':id'=>$id_tipo));
        $this->objetos= $query->fetchall();
        return $this->objetos;
    }
    function blog_listar_mes(){
        $sql = "SELECT Month(fecha_registro) AS mes, count(*) AS total FROM blog GROUP BY mes";
        $query = $this->acceso->prepare($sql);
        $query->execute();
        $this->objetos= $query->fetchall();
        return $this->objetos;
    }
    function blog_listar_categorias(){
        $sql = "SELECT * FROM tipo_blog JOIN blog on blog.id_tipo=tipo_blog.id";
        $query = $this->acceso->prepare($sql);
        $query->execute();
        $this->objetos= $query->fetchall();
        return $this->objetos;
    }
    function blog_listar_blog_reciente(){
        // $sql = "SELECT * FROM blog JOIN tipo_blog on blog.id_tipo=tipo_blog.id WHERE fecha_registro BETWEEN DATE_SUB(curdate(),INTERVAL 1 WEEK) AND curdate()";
        $sql = "SELECT * FROM blog JOIN tipo_blog on blog.id_tipo=tipo_blog.id WHERE YEARWEEK(`fecha_registro`, 1) = YEARWEEK(CURDATE(), 1) ";
        $query = $this->acceso->prepare($sql);
        $query->execute();
        $this->objetos= $query->fetchall();
        return $this->objetos;
    }
    // SELECT * FROM blog 
    // WHERE YEAR(fecha_registro) = YEAR(CURRENT_DATE()) 
    // AND MONTH(fecha_registro)  = MONTH(CURRENT_DATE())

    
    // SELECT count(*) FROM blog WHERE (fecha_registro BETWEEN '2022-03-01' AND '2022-03-31')
    
    /*============================
    ARCHIVOS POR MES
    =============================*/
    function blog_listar_archivo_mes($mes,$limite){
        $sql="SELECT * FROM blog JOIN tipo_blog on blog.id_tipo=tipo_blog.id WHERE Month(fecha_registro)=:mes LIMIT $limite";
        $query = $this->acceso->prepare($sql);
        $query -> execute(array(':mes'=>$mes));
        $this->objetos=$query->fetchAll();
        return $this->objetos;
    }
    function blog_blog_all($id){
        $sql="SELECT * FROM blog JOIN tipo_blog on blog.id_tipo=tipo_blog.id WHERE blog.id_blog=:id";
        $query = $this->acceso->prepare($sql);
        $query -> execute(array(':id'=>$id));
        $this->objetos=$query->fetchAll();
        return $this->objetos;
    }
    /*============================
    COMENTARIOS
    =============================*/
    function registrar_comentario($nombre,$correo,$comentario,$avatar,$id_blog){
        $sql="INSERT INTO comentarios(nombre, correo, comentario, id_blog,avatar) VALUES (:nom, :corr, :comen, :blog, :ava)";
        $query = $this->acceso->prepare($sql);
        $query->execute(array(':nom'=>$nombre,':corr'=>$correo,':comen'=>$comentario,':blog'=>$id_blog,':ava'=>$avatar));
        echo 'add';
    }
    function lista_comentario($id_blog){
        $sql="SELECT * FROM comentarios WHERE id_blog=:id";
        $query = $this->acceso->prepare($sql);
        $query -> execute(array(':id'=>$id_blog));
        $this->objetos=$query->fetchAll();
        return $this->objetos;
    }
    function total_comentarios($idblog){
        $sql="SELECT COUNT(*) as total FROM `comentarios` WHERE id_blog=:id";
        $query = $this->acceso->prepare($sql);
        $query -> execute(array(':id'=>$idblog));
        $this->objetos=$query->fetchAll();
        return $this->objetos;
    }

}