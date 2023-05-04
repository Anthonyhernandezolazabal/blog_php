<!-- Start Content-->
<div class="container-fluid">

  <!-- start page title -->
  <div class="row">
    <div class="col-12">
      <div class="page-title-box">
        <div class="page-title-right">
          <div class="app-search">
            <!-- <div class="input-group">
              <input type="text" id='buscar_blog' class="form-control" placeholder="Buscar">
              <span class="mdi mdi-magnify search-icon"></span>
            </div> -->
          </div>
        </div>
        <h4 class="page-title">Tasks <a href="nuevo-blog" class="btn btn-success btn-sm ms-3">Nuevo Blog</a></h4>
      </div>

    </div>
  </div>
  <div class="row" id='card_blog'>

  </div>

</div>
<script>
  $(document).ready(function () {
    /*===========================
    BUSCAR PRODUCTO 
    =============================*/
    total_registros_blog();

    function total_registros_blog() {
      funcion = "registros_blog";
      $.post(
        "controlador/blog.controlador.php", {
          funcion
        },
        (response) => {
          var rpta = JSON.parse(response);
          var template = '';
          rpta.forEach(rpt => {
            template += `
              <div class="col-md-6 col-lg-4">
                <div class="card d-block">
                  <img class="card-img-top" src="../img/blog/${rpt['imagen_principal']}" alt="Card image cap">
                  <div class="card-body">
                      <div class="text-start">
                          <p class="text-muted"><strong>Título :</strong> <span class="ms-2">${rpt['titulo']}</span></p>
                          <p class="text-muted"><strong>autor :</strong><span class="ms-2">${rpt['autor']}</span></p>`;
            if (rpt['estado'] == 'A') {
              template +=
                `<p class="text-muted"><strong>Estado :</strong> <span class="ms-2 badge bg-success">Activo</span></p>`
            } else {
              template +=
                `<p class="text-muted"><strong>Estado :</strong> <span class="ms-2 badge bg-danger">Inactivo</span></p>`
            }
            template += `
                          <p class="text-muted"><strong>Publicado :</strong> <span class="ms-2">${rpt['fecha_registro']}</span></p>

                          <p class="text-muted"><strong>Link citado:</strong>
                              <span class="ms-2"> ${rpt['link_contenido']} </span>
                          </p>
                      </div>
                      <hr>
                      <h4 class="card-title">Contenido</h4>
                      <p class="card-text font-13" style='text-align:justify;'>${rpt['introduccion'].substr(0,150)} [...]</p>
                    <center>
                    <br>
                    <button type="button" class="btn btn-warning"><i class="mdi mdi mdi-pencil"></i> </button>
                    <button type="button" class="btn btn-danger"><i class="mdi mdi-trash-can-outline"></i> </button>
                    </center>
                  </div> <!-- end card-body-->
                </div> <!-- end card-->
              </div>`;
            document.querySelector('#card_blog').innerHTML = template
          });

        });
    }
  })
</script>