<section id="blog-details" class="padding-top">
  <div class="container">
    <div class="row">
      <div class="col-md-9 col-sm-7">
        <div class="row">
          <div class="col-md-12 col-sm-12">
            <div class="single-blog blog-details two-column">
              <div class="post-thumb img_fecha">
              </div>
              <div class="post-content overflow">
                <h2 class="post-title bold tit_blog"></h2>
                <h3 class="post-author autor_blog"></h3>
                <p id='introduccion_blog' style="text-align: justify"></p>
                <hr>
                <p id='contenido_blog'></p>
                <br>

                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed"
                        aria-expanded="false">
                        <i class="fa fa-comment"></i> Comentar
                      </a>
                    </h4>
                  </div>
                  <div id="collapseThree" class="panel-collapse collapse">
                    <div class="panel-body">

                      <div class="row">

                        <div class="col-md-8 col-sm-12">
                          <div class="contact-form bottom">
                            <h2>Enviar Comentario</h2>
                            <form id="form-comentario" method="post">
                              <div class="form-group">
                                <input type="text" id="txt_nombre" name="txt_nombre" class="form-control"
                                  required="required" placeholder="Nombre">
                              </div>
                              <div class="form-group">
                                <input type="email" id="txt_email" name="txt_email" class="form-control"
                                  required="required" placeholder="Correo Electrónico">
                              </div>
                              <div class="form-group">
                                <textarea name="txt_message" id="txt_message" required="required" class="form-control"
                                  rows="8" placeholder="Texto aquí"></textarea>
                                <input type="hidden" id='txt_avatar' name='txt_avatar' value='0'>
                                <input type="hidden" id='txt_blog' name='txt_blog' value=''>
                              </div>

                              <h2>Escoje un avatar</h2>
                              <div id="feature-container" class='avatar_all'>
                                <div class="row">
                                  <div class="col-sm-3 wow fadeInUp animated cls_avatar" data-wow-duration="500ms"
                                    data-wow-delay="300ms"
                                    style="visibility: visible; animation-duration: 500ms; animation-delay: 300ms; animation-name: fadeInUp;">
                                    <div class="feature-inner">
                                      <div class="icon-wrapper avatar_1 avatar_n" attr_av="avatar_1" style='cursor: pointer;'>
                                        <img src="../img/avatar/avatar_1.png" alt="avatar_1" width="100%">
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-sm-3 wow fadeInUp animated cls_avatar" data-wow-duration="500ms"
                                    data-wow-delay="600ms"
                                    style="visibility: visible; animation-duration: 500ms; animation-delay: 600ms; animation-name: fadeInUp;">
                                    <div class="feature-inner">
                                      <div class="icon-wrapper avatar_2 avatar_n" attr_av="avatar_2" style='cursor: pointer;'>
                                        <img src="../img/avatar/avatar_2.png" alt="avatar_2" width="100%">
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-sm-3 wow fadeInUp animated cls_avatar" data-wow-duration="500ms"
                                    data-wow-delay="900ms"
                                    style="visibility: visible; animation-duration: 500ms; animation-delay: 900ms; animation-name: fadeInUp;">
                                    <div class="feature-inner">
                                      <div class="icon-wrapper avatar_3 avatar_n" attr_av="avatar_3" style='cursor: pointer;'>
                                        <img src="../img/avatar/avatar_3.png" alt="avatar_3" width="100%">
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-sm-3 wow fadeInUp animated cls_avatar" data-wow-duration="500ms"
                                    data-wow-delay="1200ms"
                                    style="visibility: visible; animation-duration: 500ms; animation-delay: 1200ms; animation-name: fadeInUp;">
                                    <div class="feature-inner">
                                      <div class="icon-wrapper avatar_4 avatar_n" attr_av="avatar_4" style='cursor: pointer;'>
                                        <img src="../img/avatar/avatar_4.png" alt="avatar_4" width="100%">
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <br>
                              <div class="form-group">
                                <input type="submit" name="submit" class="btn btn-submit" value="Enviar">
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>





                <div class="row">
                  <div class="col-md-12">
                    <h2 class="page-header">Comentarios</h2>
                    <div class="testimonial">


                    
                    </div>
                  </div>

             
                </div>








              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-5">
        <div class="sidebar blog-sidebar">
          <div class="sidebar-item categories">
          </div>
          <div class="sidebar-item tag-cloud">
            <h3><b>Categoría</b></h3>
            <ul class="nav nav-pills cat_cat">
              <li><a href="javascript:void(0)" id='cat_blog'></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<script type="text/javascript" src="js/blog.js"></script>