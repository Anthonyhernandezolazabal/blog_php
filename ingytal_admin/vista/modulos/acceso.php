<div class="account-pages pt-2 pt-sm-5 pb-4 pb-sm-5">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-xxl-4 col-lg-5">
        <div class="card">
          <!-- Logo -->
          <div class="card-header pt-4 pb-4 text-center" style='background: #192b57d1;'>
            <a href="#">
              <span><img src="assets/images/logo.png" alt="" height="35"></span>
            </a>
          </div>
          <div class="card-body p-4">
            <div class="text-center w-75 m-auto">
              <h4 class="text-dark-50 text-center pb-0 fw-bold">Acceso al sistema</h4>
              <p class="text-muted mb-4">Inicie sesión para ingresar al sistema</p>
            </div>

            <div class="alert alert-danger" role="alert" id='lg_error' style='display:none;'>
              <i class="dripicons-wrong me-2"></i> Error! <strong id='lg_error_msm'></strong>
            </div>
            <div class="alert alert-success" role="alert" id='lg_success' style='display:none;'>
              <i class="dripicons-checkmark me-2"></i> <strong id='lg_success_msm'></strong>
            </div>

            <form id="form-login" method="post">

              <div class="mb-3">
                <label for="lg_usuario" class="form-label">Correo INGyTAL</label>
                <input class="form-control" type="email" id="lg_usuario" required="" placeholder="Ingresar usuario">
              </div>

              <div class="mb-3">
                <a href="#" class="text-muted float-end"><small>¿Olvidaste tu contraseña?</small></a>
                <label for="lg_pass" class="form-label">Contraseña</label>
                <div class="input-group input-group-merge">
                  <input type="password" id="lg_pass" class="form-control" placeholder="Ingresar contraseña">
                  <div class="input-group-text" data-password="false">
                    <span class="password-eye"></span>
                  </div>
                </div>
              </div>
              <div class="mb-3 mb-0 text-center">
                <button class="btn btn-primary" type="submit"> Ingresar </button>
              </div>
            </form>
          </div> <!-- end card-body -->
        </div>
      </div> <!-- end col -->
    </div>
    <!-- end row -->
  </div>
  <!-- end container -->
</div>

<script>
  var funcion;
  /*===========================
  LOGUEAR
  =============================*/
  $('#form-login').submit(e => {

    let usuario = $('#lg_usuario').val();
    let clave = $('#lg_pass').val();
    funcion = 'iniciarsesion';

    $.post('controlador/usuario.controlador.php', {
      usuario,
      clave,
      funcion
    }, (response) => {

      const usuario = JSON.parse(response);

      

      if (usuario.datos != null) {
        $("#lg_success").show();
        $('#lg_success_msm').text('Usuario logueado');
        $("#form-login").trigger("reset");
        setTimeout(() => {
          window.location = "inicio";
        }, 1400);
      }else{
        $('#lg_success').hide();
        $('#lg_error').show();
        $('#lg_error_msm').text('Datos incorrectos');
      }

    })




    e.preventDefault();
  })
</script>