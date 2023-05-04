<?php
include '../models/blog.php';
$blog = new Blog();
/*============================
LISTAR BLOG
=============================*/
if ($_POST["funcion"] == 'listar_blog') {
    $json = array();
    $blog -> blog_listar();
    foreach ($blog->objetos as $objeto) {
        $json[] = array(
            'titulo'=>$objeto->titulo,
            'introduccion'=>$objeto->introduccion,
            'contenido'=>$objeto->contenido,
            'link_contenido'=>$objeto->link_contenido,
            'autor'=>$objeto->autor,
            'imagen_principal'=>$objeto->imagen_principal,
            'estado'=>$objeto->estado,
            'id_tipo'=>$objeto->id_tipo,
            'fecha_registro'=>$objeto->fecha_registro,
            'id'=>$objeto->id_blog,
            'tipo'=>$objeto->tipo,
            'descripcion'=>$objeto->descripcion,
        );
    }
    $jsonstring = json_encode($json);
    echo $jsonstring;
}
if ($_POST["funcion"] == 'listar_blog_tipo') {
    $json = array();
    $id_tipo = $_POST['id_tipo'];
    $blog -> blog_listar_blog_tipo($id_tipo);
    foreach ($blog->objetos as $objeto) {
        $json[] = array(
            'titulo'=>$objeto->titulo,
            'introduccion'=>$objeto->introduccion,
            'contenido'=>$objeto->contenido,
            'link_contenido'=>$objeto->link_contenido,
            'autor'=>$objeto->autor,
            'imagen_principal'=>$objeto->imagen_principal,
            'estado'=>$objeto->estado,
            'id_tipo'=>$objeto->id_tipo,
            'fecha_registro'=>$objeto->fecha_registro,
            'id'=>$objeto->id_blog,
            'tipo'=>$objeto->tipo,
            'descripcion'=>$objeto->descripcion,
        );
    }
    $jsonstring = json_encode($json);
    echo $jsonstring;
}

if ($_POST["funcion"] == 'listar_blog_mes') {
    $json = array();
    $blog -> blog_listar_mes();
    foreach ($blog->objetos as $objeto) {
        $json[] = array(
            'mes'=>$objeto->mes,
            'total'=>$objeto->total,
        );
    }
    $jsonstring = json_encode($json);
    echo $jsonstring;
}
if ($_POST["funcion"] == 'listar_blog_categorias') {
    $json = array();
    $blog -> blog_listar_categorias();
    foreach ($blog->objetos as $objeto) {
        $json[] = array(
            'id'=>$objeto->id,
            'tipo'=>$objeto->tipo,
            'descripcion'=>$objeto->descripcion,
        );
    }
    $jsonstring = json_encode($json);
    echo $jsonstring;
}
if ($_POST["funcion"] == 'listar_blog_blog_reciente') {
    $json = array();
    $blog -> blog_listar_blog_reciente();
    foreach ($blog->objetos as $objeto) {
        $json[] = array(
            'titulo'=>$objeto->titulo,
            'introduccion'=>$objeto->introduccion,
            'contenido'=>$objeto->contenido,
            'link_contenido'=>$objeto->link_contenido,
            'autor'=>$objeto->autor,
            'imagen_principal'=>$objeto->imagen_principal,
            'estado'=>$objeto->estado,
            'id_tipo'=>$objeto->id_tipo,
            'fecha_registro'=>$objeto->fecha_registro,
            'id'=>$objeto->id_blog,
            'tipo'=>$objeto->tipo,
            'descripcion'=>$objeto->descripcion,
        );
    }
    $jsonstring = json_encode($json);
    echo $jsonstring;
}
/*============================
ARCHIVOS POR MES
=============================*/
if ($_POST["funcion"] == 'listar_archivo_mes') {
    $json = array();
    $mes = $_POST["mes"];
    $limite = $_POST["limite"];
    $blog -> blog_listar_archivo_mes($mes,$limite);
    foreach ($blog->objetos as $objeto) {

        $idblog = $objeto->id_blog;
        $blog -> total_comentarios($idblog);
        foreach ($blog->objetos as $obj) {
            $total = $obj->total;
        }


        $json[] = array(
            'titulo'=>$objeto->titulo,
            'introduccion'=>$objeto->introduccion,
            'contenido'=>$objeto->contenido,
            'link_contenido'=>$objeto->link_contenido,
            'autor'=>$objeto->autor,
            'imagen_principal'=>$objeto->imagen_principal,
            'estado'=>$objeto->estado,
            'id_tipo'=>$objeto->id_tipo,
            'fecha_registro'=>$objeto->fecha_registro,
            'id'=>$objeto->id_blog,
            'tipo'=>$objeto->tipo,
            'descripcion'=>$objeto->descripcion,
            'total_comentario'=>$total,
        );
    }
    $jsonstring = json_encode($json);
    echo $jsonstring;
}
/*============================
BLOG
=============================*/
if ($_POST["funcion"] == 'blog_all') {
    $json = array();
    $id = $_POST["id"];
    $blog -> blog_blog_all($id);
    foreach ($blog->objetos as $objeto) {
        $json[] = array(
            'titulo'=>$objeto->titulo,
            'introduccion'=>$objeto->introduccion,
            'contenido'=>$objeto->contenido,
            'link_contenido'=>$objeto->link_contenido,
            'autor'=>$objeto->autor,
            'imagen_principal'=>$objeto->imagen_principal,
            'estado'=>$objeto->estado,
            'id_tipo'=>$objeto->id_tipo,
            'fecha_registro'=>$objeto->fecha_registro,
            'id'=>$objeto->id_blog,
            'tipo'=>$objeto->tipo,
            'descripcion'=>$objeto->descripcion,
        );
    }
    $jsonstring = json_encode($json[0]);
    echo $jsonstring;
}
/*============================
COMENTARIOS
=============================*/
if ($_POST["funcion"] == 'registrar_comentario') {
    $nombre = $_POST["nombre"];
    $correo = $_POST["correo"];
    $comentario = $_POST["comentario"];
    $avatar = $_POST["avatar"];
    $id_blog = $_POST["id_blog"];
    $blog -> registrar_comentario($nombre,$correo,$comentario,$avatar,$id_blog);
}
if ($_POST["funcion"] == 'comentarios_all') {
    $id_blog = $_POST["id"];
    $blog -> lista_comentario($id_blog);
    $json = array();
    foreach ($blog->objetos as $objeto) {
        $json[] = array(
            'id_comentario '=>$objeto->id_comentario ,
            'nombre'=>$objeto->nombre,
            'correo'=>$objeto->correo,
            'comentario'=>$objeto->comentario,
            'avatar'=>$objeto->avatar,
            'id_blog'=>$objeto->id_blog,
        );
    }
    $jsonstring = json_encode($json);
    echo $jsonstring;
}