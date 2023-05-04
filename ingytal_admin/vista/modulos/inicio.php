        <!-- Start Content-->
        <div class="container-fluid">

          <!-- start page title -->
          <div class="row">
            <div class="col-12">
              <div class="page-title-box">
                <div class="page-title-right">
                  <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="javascript: void(0);">Inicio</a></li>
                    <li class="breadcrumb-item"><a href="javascript: void(0);">Bienvenida</a></li>
                  </ol>
                </div>
                <h4 class="page-title">Acceso: <b id='f_acceso'></b> a las <b id='h_acceso'></b></h4>
              </div>
            </div>
          </div>
          <!-- end page title -->

          <h1>BIENVENID@: <?php echo $_SESSION['us_nombre']; ?></h1>

          <div class="alert alert-success" role="alert">
            <h4 class="alert-heading">Nota:</h4>

            <i class="mdi mdi-hand-pointing-right"></i> Cada blog que se registre debe pertenecer a un <b>Tipo de Blog</b> <br>
            <i class="mdi mdi-hand-pointing-right"></i> Primero se debe registrar los <b>Tipos de Blog</b> <br>
            <i class="mdi mdi-hand-pointing-right"></i> Segundo Registrar un Blog con campo de <b>Imagen</b> obligatorio <br>
            <i class="mdi mdi-hand-pointing-right"></i> Registrar <br>

          </div>


        </div> <!-- container -->


        <script>
          mostrarfecha()

          function mostrarfecha() {
            var dias = ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado']
            var meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre',
              'Octubre',
              'Noviembre', 'Diciembre'
            ]
            let date = new Date();
            var fechaNum = date.getDate();
            var mes_name = date.getMonth();
            var fecha_fecha = dias[date.getDay()] + " " + fechaNum + " de " + meses[mes_name] + " de " + date
              .getFullYear()
            document.querySelector('#f_acceso').innerText = fecha_fecha
            var hours = date.getHours();
            var minutes = date.getMinutes();
            var segundo = date.getSeconds();
            var ampm = hours >= 12 ? "PM" : "AM";
            hours = hours % 12;
            hours = hours ? hours : 12; // the hour '0' should be '12'
            minutes = minutes < 10 ? "0" + minutes : minutes;
            var horaImprimible = hours + ":" + minutes + ":" + segundo + " " + ampm;
            document.querySelector('#h_acceso').innerText = horaImprimible
          }
        </script>