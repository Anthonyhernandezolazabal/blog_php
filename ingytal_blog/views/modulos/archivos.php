<section id="blog" class="padding-bottom">
  <div class="container">
    <div class="row">
      <div class="timeline-blog overflow">
        <div class="timeline-date text-center">
          <a href="" class="btn btn-common uppercase mes_mes"></a>
        </div>
        <div class="timeline-divider overflow padding-bottom total_mes">






        </div>
        <div class="timeline-date text-center" id='btn_verTodo'>
          <a href="javascript:void(0)" class="btn btn-common" onclick="vertodo()">Ver todo</a>
        </div>
      </div>
    </div>
  </div>
</section>
<script>
  function vertodo() {
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
    var total = 1000
    archivo_mes(mes, total)

    document.getElementById('btn_verTodo').style.display = 'none';
  }


</script>
<script type="text/javascript" src="js/archivos.js"></script>