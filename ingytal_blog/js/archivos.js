var nombre_mes = ["","Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]
const valores = window.location.search;
//Mostramos los valores en consola:
//Creamos la instancia
const urlParams = new URLSearchParams(valores);
//Accedemos a los valores
var mes = urlParams.get('mes');
//Verificar si existe el parámetro
//Puedes recorrer los valores, claves y pares completos.
const
  keys = urlParams.keys(),
  values = urlParams.values(),
  entries = urlParams.entries();
for (const value of values)
  var mes = value
archivo_mes(mes,4) //2 limite de total de registro que muestra
document.querySelector('.mes_mes').innerText = nombre_mes[mes] + ' 2022'

function archivo_mes(mes,limite) {
  funcion = 'listar_archivo_mes';
  $.post('controllers/blog.controlador.php', {
    funcion,
    mes,
    limite
  }, (response) => {
    var tota_mes = JSON.parse(response)
    var template = '';
    var meses = ["ENE", "FEB", "MAR", "ABR", "MAY", "JUN", "JUL", "AGO", "SEP", "OCT", "NOV", "DIC"]
    var meses_nom = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]
    

    for (let i = 0; i < tota_mes.length; i++) {
      if (i % 2 == 0) {
        console.log('tota_mes :',tota_mes[i])
        let date = new Date(tota_mes[i]['fecha_registro']);
        var fechaNum = date.getDate();
        var mes_name = date.getMonth();
        var anio_name = date.getFullYear();
        template += `
          <div class="col-sm-6 padding-right arrow-right wow fadeInLeft" data-wow-duration="1000ms"
            data-wow-delay="300ms" style='height: 562.388px;'>
            <div class="single-blog timeline">
              <div class="single-blog-wrapper">
                <div class="post-thumb">
                  <img src="../img/blog/${tota_mes[i]['imagen_principal']}" class="img-responsive" alt="">
                  <div class="post-overlay">
                    <span class="uppercase"><a href="#">${fechaNum} <br><small>${meses[mes_name]}</small></a></span>
                  </div>
                </div>
              </div>
              <div class="post-content overflow">
                <h2 class="post-title bold"><a href="blog?${tota_mes[i]['tipo']}=${tota_mes[i]['id']}">${tota_mes[i]['titulo']}</a></h2>

                <h5 class="post-author">Escrito por <a href="#">${tota_mes[i]['autor']}</a> en	<a href="#"><b>${tota_mes[i]['tipo']}</b></a></h5>

                <p>${tota_mes[i]['introduccion'].substr(0,100)} [...]</p>
                <a href="blog?${tota_mes[i]['tipo']}=${tota_mes[i]['id']}" class="read-more">Ver más</a>
                <div class="post-bottom overflow">
                  <span class="post-date pull-left">${meses_nom[mes_name]} ${fechaNum}, ${anio_name}</span>
                  <span class="comments-number pull-right"><a href="#">${tota_mes[i]['total_comentario']} comentarios</a></span>
                </div>
              </div>
            </div>
          </div>`;
        document.querySelector('.total_mes').innerHTML = template

      }
      if (i % 2 == 1) {
        let date = new Date(tota_mes[i]['fecha_registro']);
        var fechaNum = date.getDate();
        var mes_name = date.getMonth();
        template += `
        <div class="col-sm-6 padding-left padding-top arrow-left wow fadeInRight" data-wow-duration="1000ms"
          data-wow-delay="300ms" style='height: 582.388px;'>
            <div class="single-blog timeline">
              <div class="single-blog-wrapper">
                <div class="post-thumb">
                  <img src="../img/blog/${tota_mes[i]['imagen_principal']}" class="img-responsive" alt="">
                  <div class="post-overlay">
                  <span class="uppercase"><a href="#">${fechaNum} <br><small>${meses[mes_name]}</small></a></span>
                  </div>
                </div>
              </div>
              <div class="post-content overflow">
                <h2 class="post-title bold"><a href="blog?${tota_mes[i]['tipo']}=${tota_mes[i]['id']}">${tota_mes[i]['titulo']}</a></h2>
                <h5 class="post-author">Escrito por <a href="#">${tota_mes[i]['autor']}</a> en	<a href="#"><b>${tota_mes[i]['tipo']}</b></a></h5>
                <p>${tota_mes[i]['introduccion'].substr(0,100)} [...]</p>
                <a href="blog?${tota_mes[i]['tipo']}=${tota_mes[i]['id']}" class="read-more">Ver más</a>
                <div class="post-bottom overflow">
                <span class="post-date pull-left">${meses_nom[mes_name]} ${fechaNum}, ${anio_name}</span>
                  <span class="comments-number pull-right"><a href="#">${tota_mes[i]['total_comentario']} comentarios</a></span>
                </div>
              </div>
            </div>
          </div>`;
        document.querySelector('.total_mes').innerHTML = template
      }
    }
  })

}
