listar_blog_principal(0);
listar_blog_principal_mes();
listar_blog_principal_categorias();
listar_blog_reciente();
/*============================
LISTAR BLOG
=============================*/
function listar_blog_principal(id_tipo) {
  var funcion = ''; 
  if (id_tipo != 0){
    funcion = 'listar_blog_tipo';
  }else{
    funcion = 'listar_blog';
  }
  $.post('controllers/blog.controlador.php', {
    funcion,
    id_tipo
  }, (response) => {
    let rpta = JSON.parse(response)
    let tmp_rpta = '';
    rpta.forEach(accion => {
      document.getElementById('id_tipo').value = accion['id_tipo']
      var meses = ["ENE", "FEB", "MAR", "ABR", "MAY", "JUN", "JUL", "AGO", "SEP", "OCT", "NOV", "DIC"]
      let date = new Date(accion['fecha_registro']);
      var fechaNum = date.getDate();
      var mes_name = date.getMonth();
      console.log('accion, ',accion)
      tmp_rpta += `
          <div class="col-md-6 col-sm-12 blog-padding-right" style='height: 515px;'>
            <div class="single-blog two-column">
              <div class="post-thumb">
                <a href="blog?${accion['tipo']}=${accion['id']}"><img src="../img/blog/${accion['imagen_principal']}" class="img-responsive"
                    style="width: 470px;height: 270px;
                " ></a>
                <div class="post-overlay">
                  <span class="uppercase"><a href="#">${fechaNum} <br><small>${meses[mes_name]}</small></a></span>
                </div>
              </div>
              <div class="post-content overflow">
                <h2 class="post-title bold"><a href="blog?${accion['tipo']}=${accion['id']}">${accion['titulo']}</a></h2>

                <h5 class="post-author">Escrito por <a href="#">${accion['autor']}</a> en	<a href="#"><b>${accion['tipo']}</b></a></h5>

                <p>${accion['introduccion'].substr(0,100)} [...]</p>
                <a href="blog?${accion['tipo']}=${accion['id']}" class="read-more">Ver más</a>
                <div class="post-bottom overflow" style='border-bottom: 0px solid #eeeeee; !important'>
                
                </div>
              </div>
            </div>
          </div>`;
      document.getElementById('blog_all').innerHTML = tmp_rpta

/*
 <div class="post-bottom overflow">
    <ul class="nav nav-justified post-nav">
    <li><a href="#"><i class="fa fa-heart"></i>32 Me gusta</a></li>
    <li><a href="#"><i class="fa fa-comments"></i>3 Comentarios</a></li>
    </ul>
  </div>
*/

    });
  })
}
/*============================
LISTAR BLOG Archivos
=============================*/
function listar_blog_principal_mes() {
  funcion = 'listar_blog_mes';
  $.post('controllers/blog.controlador.php', {
    funcion
  }, (response) => {
    let rpta_mes = JSON.parse(response)
    let template_mes = '  <h3><b><i>Archivos</i></b></h3>   ';
    rpta_mes.forEach(mes => {
      var nombre_mes = ["","Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]
      template_mes += `
                        <ul class="nav navbar-stacked">
                        <li><a href="archivos?mes=${mes['mes']}">${nombre_mes[mes['mes']]}<span class="pull-right">(${mes['total']})</span></a></li>
                        <li></li>
                        </ul>`;
      document.querySelector('.categories').innerHTML = template_mes
    });
  })
}
/*============================
LISTAR BLOG Categorías
=============================*/
function listar_blog_principal_categorias() {
  funcion = 'listar_blog_categorias';
  $.post('controllers/blog.controlador.php', {
    funcion
  }, (response) => {
    var categoria = JSON.parse(response)
    let template_categoria = '<li><a href="javascript:void(0)" onclick="return listar_blog_principal(0)">Todo</a></li>';
    categoria.forEach(cat => {
      template_categoria += `
          <li><a href="javascript:void(0)" onclick='return listar_blog_principal(${cat['id']})'>${cat['tipo']}</a></li>`;
      document.querySelector('.cat_cat').innerHTML = template_categoria
    });
  })
}
/*============================
LISTAR BLOG PUBLICACIONES RECIENTES
=============================*/
function listar_blog_reciente() {
  funcion = 'listar_blog_blog_reciente';
  $.post('controllers/blog.controlador.php', {
    funcion
  }, (response) => {
    var blog_reciente = JSON.parse(response)
    let template_blog_reciente = '<h3><i><b>Publicaciones recientes</b></i></h3>';
    blog_reciente.forEach(reciente => {
      let dia = ["domingo", "lunes", "martes", "miércoles", "jueves", "viernes", "sábado"]
      let date = new Date(reciente['fecha_registro']);
      var fechaNum = date.getDate();
      var hours = date.getHours();
      var minutes = date.getMinutes();
      var ampm = hours >= 12 ? "PM" : "AM";
      hours = hours % 12;
      hours = hours ? hours : 12; 
      minutes = minutes < 10 ? "0" + minutes : minutes;
      var fecha_hora = "Este " + dia[date.getDay()] + " " + fechaNum  + " a las "+ hours + ":" + minutes + ":" + ampm + " del " + date.getFullYear()
      template_blog_reciente += `
        <div class="media">
          <div class="pull-left">
          </div>
          <div class="media-body">
            <h4><a href="blog?${reciente['tipo']}=${reciente['id']}">${reciente['titulo']}</a></h4>
            <p>${fecha_hora}</p>
          </div>
        </div>`;

      document.querySelector('.blog_recientes').innerHTML = template_blog_reciente
    });
  })
}

