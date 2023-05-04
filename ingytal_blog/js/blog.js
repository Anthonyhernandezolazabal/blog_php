// listar_blog_principal_categorias();
listar_blog_principal_mes();
blog();
all_comentarios();
/*============================
LISTAR BLOG Categorías
=============================*/
// function listar_blog_principal_categorias() {
//   funcion = 'listar_blog_categorias';
//   $.post('controllers/blog.controlador.php', {
//     funcion
//   }, (response) => {
//     var categoria = JSON.parse(response)
//     let template_categoria = '';
//     categoria.forEach(cat => {
//       template_categoria += `
//             <li><a href="principal">${cat['tipo']}</a></li>`;
//       document.querySelector('.cat_cat').innerHTML = template_categoria
//     });
//   })
// }
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
      var nombre_mes = ["", "Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]
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
BLOG
=============================*/
function blog() {
  const valores = window.location.search;
  //Mostramos los valores en consola:
  //Creamos la instancia
  const urlParams = new URLSearchParams(valores);
  //Accedemos a los valores
  var id = urlParams.get('id');
  //Verificar si existe el parámetro
  //Puedes recorrer los valores, claves y pares completos.
  const
    keys = urlParams.keys(),
    values = urlParams.values(),
    entries = urlParams.entries();
  for (const value of values)
    var id = value
    document.getElementById('txt_blog').value = id


  var funcion = 'blog_all';
  $.post('controllers/blog.controlador.php', {
    funcion,
    id
  }, (response) => {
    var meses = ["ENE", "FEB", "MAR", "ABR", "MAY", "JUN", "JUL", "AGO", "SEP", "OCT", "NOV", "DIC"]
    var rpta = JSON.parse(response)

    let date = new Date(rpta['fecha_registro']);
    var fechaNum = date.getDate();
    var mes_name = date.getMonth();

    document.querySelector('.img_fecha').innerHTML = `
    <a href="#"><img src="../img/blog/${rpta['imagen_principal']}" style="width:850px;height:400px"class="img-responsive" alt=""></a>
    <div class="post-overlay">
      <span class="uppercase"><a href="#">${fechaNum} <br><small>${meses[mes_name]}</small></a></span>
    </div>`;
    document.querySelector('.tit_blog').innerHTML=`<a href="blog?${rpta['tipo']}=${rpta['id']}" style="border-bottom: 2px solid;">${rpta['titulo']}</a>`;
    document.querySelector('.autor_blog').innerHTML=`<h3 class="post-author">Escrito por <a href="#">${rpta['autor']}</a> en	<a href="#"><b>${rpta['tipo']}</b></a></h3>`;
    document.querySelector('#contenido_blog').innerHTML=`${rpta['contenido']}`;
    document.querySelector('#introduccion_blog').innerHTML=`${rpta['introduccion']}`;


    document.querySelector('#cat_blog').innerText = rpta['tipo']

  })
}
/*============================
COMENTARIO
=============================*/
avatar_select()
function avatar_select(){

  let all_odon = document.querySelectorAll('.avatar_all')
  all_odon.forEach(all => {
    let id_paciente = all.querySelectorAll('.cls_avatar');
    id_paciente.forEach(id => {
      let im = id.querySelector('.avatar_n')
      id.addEventListener('click', function () {
        let attr = this.querySelector('.avatar_n')
        let atr = attr.getAttribute('attr_av')
        let id_val = document.querySelector('#txt_avatar').value
        document.querySelector('#txt_avatar').value = atr
        if (id_val == 0) {
          $(attr).css('background-color','#ffffff')
        }
      })
    });
  });
  return
}

$("#form-comentario").submit(e=>{

  
  let avata2 = document.getElementById('txt_avatar').value
 
  var funcion = 'registrar_comentario';
  let nombre = document.getElementById('txt_nombre').value
  let correo = document.getElementById('txt_email').value
  let comentario = document.getElementById('txt_message').value
  let avatar = document.getElementById('txt_avatar').value
  let id_blog = document.getElementById('txt_blog').value

  if (avatar != 0) {
    $.post('controllers/blog.controlador.php',{nombre,correo,comentario,avatar,id_blog,funcion},(response)=>{

      $('#form-comentario').trigger('reset');
      let d = document.querySelector('#collapseThree');
      d.classList.remove("in");
      all_comentarios()
      let aa = document.querySelector('.'+avatar)
      $(aa).css('background-color','#4FCCCD')
      document.getElementById('txt_avatar').value = 0

    })
  }else{
    alert('Seleccione su avatar')
  }

  e.preventDefault();
})

function all_comentarios(){
  let id = document.getElementById('txt_blog').value;
  var funcion = 'comentarios_all'
  $.post('controllers/blog.controlador.php',{id,funcion},(response)=>{

    const rptta = JSON.parse(response)
    var tmpt = '';
    rptta.forEach(com => {

      tmpt += `
      
      <div class="media">
        <div class="pull-left">
          <a href="javascript:void(0)"><img src="../img/avatar/${com.avatar}.png" alt="avatar_1" width="81px" height="75px"></a>
        </div>
        <div class="media-body">
          <blockquote>${com.comentario}</blockquote>
          <h3><a href="javascript:void(0)">- ${com.nombre}</a></h3>
        </div>
      </div>
      
      `;

      document.querySelector('.testimonial').innerHTML = tmpt
    });



  })
}