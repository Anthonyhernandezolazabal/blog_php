<!-- Start Content-->
<div class="container-fluid">

  <!-- start page title -->
  <div class="row">
    <div class="col-12">
      <div class="page-title-box">
        <div class="page-title-right">
          <ol class="breadcrumb m-0">
            <li class="breadcrumb-item"><a href="javascript: void(0);">Hyper</a></li>
            <li class="breadcrumb-item"><a href="javascript: void(0);">Pages</a></li>
            <li class="breadcrumb-item active">Starter</li>
          </ol>
        </div>
        <h4 class="page-title">Starter</h4>
      </div>
    </div>
  </div>
  <!-- end page title -->

  <div class="row">

    <div class="col-lg-4">
      <div class="card">
        <div class="card-body">
          <h4 class="header-title mb-3">Nuevo Tipo de Blog</h4>

          <div class="mb-3">
            <div class="form-floating mb-3">
              <input type="email" class="form-control" id="nombre_tipo" name="nombre_tipo" placeholder="Nombre Tipo">
              <label for="floatingInput">Nombre Tipo</label>
            </div>
          </div>

          <div class="mb-3">
            <div class="form-floating mb-3">
              <input type="email" class="form-control" id="descripcion_tipo" name="descripcion_tipo"
                placeholder="Descripción">
              <label for="floatingInput">Descripción</label>
            </div>
          </div>

          <center>
            <button type="button" class="btn btn-success" onclick="registrar_tipo()">Registrar</button>

          </center>
        </div>
      </div>
    </div>
    <div class="col-lg-8">
      <div class="card">
        <div class="card-body">
          <div class="table-responsive">
            <table class="table mb-0">
              <thead class="table-light">
                <tr>
                  <th>#</th>
                  <th>Tipo</th>
                  <th>Descipción</th>
                  <th>Estado</th>
                  <th>Acciones</th>
                </tr>
              </thead>
              <tbody id='tbl_tipos'>
              </tbody>
            </table>
          </div>
          <!-- end table-responsive -->

        </div>
      </div>
    </div>

  </div>
  <script>
    total_tipo_blog();
    /*===========================
    BUSCAR PRODUCTO 
    =============================*/
    function total_tipo_blog() {
      funcion = "listar_tipo_blog";
      $.post(
        "controlador/blog.controlador.php", {
          funcion
        },
        (response) => {
          //tbl_tipos
          var rpta = JSON.parse(response);
          var cont = 0;
          console.log(rpta)
          var tmp = '';
          rpta.forEach(tipo => {
            cont++
            tmp += `
                <tr>
                  <td>${cont}</td>
                  <td>${tipo['tipo']}</td>
                  <td>${tipo['descripcion']}</td>`;

            if (tipo['estado'] == 'A') {
              tmp += `<td></strong> <span class="ms-2 badge bg-success">Activo</span></td>`
            } else {
              tmp += `<td></strong> <span class="ms-2 badge bg-danger">Inactivo</span></td>`
            }
            tmp += `
                  <td>
                    <div class="button-list">
                        <button type="button" class="btn btn-danger"><i class="mdi mdi-window-close"></i> </button>
                        <button type="button" class="btn btn-warning"><i class="mdi mdi-wrench"></i> </button>
                    </div>
                  </td>
                </tr>`;
            document.querySelector('#tbl_tipos').innerHTML = tmp
          });


        });
    }

    function registrar_tipo() {
      let nombre = document.getElementById('nombre_tipo').value;
      let descripcion = document.getElementById('descripcion_tipo').value;
      var funcion = 'registrar_tipo';
      if (nombre == '') {
        alert('Ingrese un nombre')
      } else {
        document.getElementById('nombre_tipo').value = '';
        document.getElementById('descripcion_tipo').value = '';
        $.post("controlador/blog.controlador.php", {
          funcion,
          nombre,
          descripcion
        }, (response) => {
          if (response == 'add_tipo') {
            Swal.fire({
              position: 'top-center',
              icon: 'success',
              title: 'Blog Registrado!',
              showConfirmButton: false,
              timer: 1500
            })
            total_tipo_blog();
          } else {
            Swal.fire({
              position: 'top-center',
              icon: 'error',
              title: 'Error al registrar!',
              showConfirmButton: false,
              timer: 1500
            })
          }
        })
      }

    }
  </script>