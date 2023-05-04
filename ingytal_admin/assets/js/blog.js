mostrarfecha()
nombre_tipo_blog()

function mostrarfecha() {
  var dias = ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado']
  var meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre',
    'Noviembre', 'Diciembre'
  ]
  let date = new Date();
  var fechaNum = date.getDate();
  var mes_name = date.getMonth();
  var fecha_fecha = dias[date.getDay()] + " " + fechaNum + " de " + meses[mes_name] + " de " + date.getFullYear()
  document.querySelector('#fecha_blog').innerText = fecha_fecha
}
document.querySelector('.nuevaFoto_prod').addEventListener('change', function (e) {

  var imagen = this.files[0];
  if (imagen["type"] != "image/jpeg" && imagen["type"] != "image/png") {
    document.querySelector('.nuevaFoto_prod').value = '';

    Swal.fire({
      position: 'top-center',
      icon: 'error',
      title: "Error al subir la imagen",
      text: "¡La imagen debe estar en formato JPG o PNG!",
      showConfirmButton: false,
      timer: 1500
    })

  } else {

    var datosImagen = new FileReader();
    datosImagen.readAsDataURL(imagen);
    $(datosImagen).on("load", function (event) {
      var rutaImagen = event.target.result;

      $(".previsualizar_blog").attr("src", rutaImagen);
    });
  }
})

// function registrar_blog() {
//   var content = tinymce.get("contenido_blog_html").getContent();
//   document.getElementById('contenido_blog').value = content
//   var formData = new FormData($("#form_blog")[0]);

//   $.ajax({
//     url: "controlador/blog.controlador.php",
//     type: "POST",
//     data: formData,
//     cache: false,
//     processData: false,
//     contentType: false,
//   }).done(function (response) {

//     if (response == 'add') {

//       Swal.fire({
//         position: 'top-center',
//         icon: 'success',
//         title: 'Blog Registrado!',
//         showConfirmButton: false,
//         timer: 1500
//       }).then(function () {
//         location.href = 'blog'
//       })
//     } else {

//       Swal.fire({
//         position: 'top-center',
//         icon: 'error',
//         title: 'Error al registrar!',
//         showConfirmButton: false,
//         timer: 1500
//       })
//     }
//   });
//   e.preventDefault();
// }


function nombre_tipo_blog() {
  funcion = 'listar_tipo_blog';
  $.post('controlador/blog.controlador.php', {
    funcion
  }, (response) => {
    var tm = '';
    var rpta = JSON.parse(response);
    rpta.forEach(rp => {
      tm += `<option value='${rp['id']}'>${rp['tipo']}</option>`;
      document.querySelector('#txttipo_blog').innerHTML = tm

    });
  })

}



tinymce.init({
  selector: '#contenido_blog_html'
});

$(document).ready(function () {

  $('#form_blog').submit(e => {

    var content = tinymce.get("contenido_blog_html").getContent();
    document.getElementById('contenido_blog').value = content
    var formData = new FormData($("#form_blog")[0]);

    $.ajax({
      url: "controlador/blog.controlador.php",
      type: "POST",
      data: formData,
      cache: false,
      processData: false,
      contentType: false,
    }).done(function (response) {


      mostrar_loader('add')
      

      if (response == 'add') {

        cerrar_loader('exito_envio')

        Swal.fire({
          position: 'top-center',
          icon: 'success',
          title: 'Blog Registrado!',
          showConfirmButton: false,
          timer: 1500
        }).then(function () {
          location.href = 'blog'
        })

      } else {

        cerrar_loader('error_envio')

        Swal.fire({
          position: 'top-center',
          icon: 'error',
          title: 'Error al registrar!',
          showConfirmButton: false,
          timer: 1500
        })
      }
    });
    e.preventDefault();

  })

})
function mostrar_loader(mensaje) {
  var texto = null;
  var mostrar = false;
  switch (mensaje) {
    case 'add':
      texto = '<i>Registrando</b></i>',
        mostrar = true;
      break;
  }
  if (mostrar) {
    Swal.fire({
      title: '<br><strong><u>Realizando predicción</u></strong>',
      html: texto,
      timerProgressBar: true,
      didOpen: () => {
        Swal.showLoading()
        const content = Swal.getContent()
        if (content) {
          const b = content.querySelector('b')
          b.textContent = Swal.getTimerLeft()
        }
      },
    })
  }
}
function cerrar_loader(mensaje) {
      var texto = null;
      var mostrar = false;
      var tipo = null;
      switch (mensaje) {
          case 'exito_envio':
              tipo = 'success';
              texto = 'Predicción realizado correctamente.';
              mostrar = true;
              break;
          case 'error_envio':
              tipo = 'error';
              texto = 'Error al predecir, problemas en el servidor.';
              mostrar = true;
              break;
          default:
              Swal.close();
              break;
      }
      if (mostrar) {
          Swal.fire({
              position: 'top-center',
              icon: tipo,
              title: texto,
              showConfirmButton: false,
              timer: 1500
          })
      }
}