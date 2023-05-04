<?php

include '../modelo/blog.modelo.php';
$blog = new Blog();

if ($_POST["funcion"] == 'registrar_blog') {

    $nombre_img_general = uniqid().'-'.$_FILES["photo"]["name"];
    $ruta1 = '../../img/blog/'.$nombre_img_general;
    move_uploaded_file($_FILES["photo"]["tmp_name"],$ruta1);
    
    $titulo_blog = $_POST["titulo_blog"];
    $autor_blog = $_POST["autor_blog"];
    $txttipo_blog = $_POST["txttipo_blog"];
    $link_cita = $_POST["link_cita"];
    $intro_blog = $_POST["intro_blog"];
    $contenido_blog = $_POST["contenido_blog"];

    $blog -> registrar_blog($nombre_img_general,$titulo_blog,$autor_blog,$txttipo_blog,$link_cita,$intro_blog,$contenido_blog);
    
}

/*===========================
EDITAR blog 
=============================*/
if ($_POST["funcion"] == 'registros_blog') {

    $blog -> buscar();
    $json = array();
    foreach ($blog->objetos as $objeto) {

        $json[] = array(
            'id'=>$objeto->id_blog,
            'titulo'=>$objeto->titulo,
            'introduccion'=>$objeto->introduccion,
            'contenido'=>$objeto->contenido,
            'link_contenido'=>$objeto->link_contenido,
            'autor'=>$objeto->autor,
            'imagen_principal'=>$objeto->imagen_principal,
            'estado'=>$objeto->estado,
            'fecha_registro'=>$objeto->fecha_registro,
        );
    }
        $jsonstring = json_encode($json);
        echo $jsonstring;
}


if ($_POST["funcion"] == 'listar_tipo_blog') {
    $blog -> listar_tipo_blog();
    $json = array();
    foreach ($blog->objetos as $objeto) {
        $json[] = array(
            'id'=>$objeto->id,
            'tipo'=>$objeto->tipo,
            'estado'=>$objeto->estado,
            'descripcion'=>$objeto->descripcion,
        );
    }
        $jsonstring = json_encode($json);
        echo $jsonstring;
}
if ($_POST["funcion"] == 'registrar_tipo') {

    $nombre = $_POST["nombre"];
    $descripcion = $_POST["descripcion"];
    $blog -> registrar_tipo($nombre,$descripcion);
    
}
?>