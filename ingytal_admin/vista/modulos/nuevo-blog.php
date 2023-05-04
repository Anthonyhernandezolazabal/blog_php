  <div class="container-fluid">

    <div class="row">
      <div class="col-12">
        <div class="page-title-box">
          <div class="page-title-right">
            <ol class="breadcrumb m-0">
              <li class="breadcrumb-item"><a href="javascript: void(0);">Hyper</a></li>
              <li class="breadcrumb-item"><a href="javascript: void(0);">Pages</a></li>
              <li class="breadcrumb-item active">Registrar nuevo Blog</li>
            </ol>
          </div>
          <h4 class="page-title">Registrar nuevo Blog | Fecha de registro :</h1> <b id='fecha_blog'>23 de enero</h4>
        </div>
      </div>
    </div>
    <form id='form_blog' enctype="multipart/form-data">
      <div class="row">
        <div class="col-sm-6">
          <div class="card card-body">
            <h5 class="card-title">Subir Imagen de Blog</h5>
            <div class="mb-3">
              <label for="example-fileinput" class="form-label">Imagen</label>
              <input type="file" id="photo" name="photo" class="nuevaFoto_prod form-control" required>
            </div>
            <img src="assets/images/7.jpg" class="previsualizar_blog card-img-top" alt="Card image cap">
            <br>
          </div>
        </div>

        <div class="col-sm-6">
          <div class="card card-body">
            <h5 class="card-title">Información del Blog</h5>
            <div class="mb-3">
              <label for="example-palaceholder" class="form-label">Título del Blog</label>
              <input type="text" id="titulo_blog" name="titulo_blog" class="form-control" placeholder="Título del Blog" required>
            </div>
            

            <div class="row g-2 mb-3">
              <div class="col-md">
                <div class="form-floating">
                  <input type="text" class="form-control" id="autor_blog" name="autor_blog" placeholder="Autor" required>
                  <label for="floatingInputGrid">Autor</label>
                </div>
              </div>
              <div class="col-md">
                <div class="form-floating">
                  <select class="form-select" id="txttipo_blog" name="txttipo_blog"
                    aria-label="Floating label select example">

                  </select>
                  <label for="floatingSelectGrid">Tipo Blog</label>
                </div>
              </div>
            </div>


            <div class="mb-3">
              <label for="example-palaceholder" class="form-label">Link | Cita:</label>
              <input type="text" id="link_cita" name="link_cita" class="form-control" placeholder="www.url.com" required>
            </div>

            <div class="mb-3">
              <label for="example-palaceholder" class="form-label">Introducción</label>
              <textarea class="form-control" id="intro_blog" name="intro_blog" rows="2"></textarea>
            </div>

            <!--             
            <div class="mb-3">
              <label for="example-textarea" class="form-label">Contenido</label>

              <textarea class="form-control" id="contenido_blog" name="contenido_blog" rows="10"></textarea>

            </div> -->
          </div>
        </div>

      </div>


      <div class="row">

        <div class="col-sm-12">
          <div class="card card-body">
            <h5 class="card-title">Contenido</h5>


            <div class="mb-3">

              <!-- <textarea class="form-control" id="contenido_blog" name="contenido_blog" rows="10"></textarea> -->

              <textarea id="contenido_blog_html" name="contenido_blog_html"></textarea>

              <input type="hidden" id="contenido_blog" name="contenido_blog">



              <input type="hidden" id='funcion' name='funcion' value='registrar_blog'>
            </div>
          </div>
        </div>


      </div>

      <!-- <center><br><button type="button" onclick='registrar_blog()' class="btn btn-info">Registrar blog</button> <br><br>
      </center> -->
      <center>
        
      <br>
      
      
      <button type="submit" class="btn btn-info" id='btn_registrar'>Registrar blog submit</button> 

      <button class="btn btn-primary" id='btn_registrar_load' type="button" disabled="" style='display: none;'>
          <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span> Guardando...
      </button>


      
      
      <br><br>
      
    
    </center>
    </form>

  </div>

  <script type="text/javascript" src="assets/js/blog.js"></script>