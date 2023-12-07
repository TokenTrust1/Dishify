<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="Conexion.ConexionBD" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>DishifyMx</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <!-- Favicons -->
  <link href="../img/icon.png" rel="icon">
  <link href="../img/icon.png" rel="apple-touch-icon">
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <!-- Vendor CSS Files -->
  <link href="../vendor/aos/aos.css" rel="stylesheet">
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="../vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <!-- Template Main CSS File -->
  <link href="../css/home.css" rel="stylesheet">
</head>
<body>
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center justify-content-lg-between">
        <h1 class="logo me-auto me-lg-0"><a href="home.jsp" class="logo me-auto me-lg-0"><img src="../img/Logo2.png" alt="" class="img-fluid"></a></h1>
        <nav id="navbar" class="navbar order-last order-lg-0">
            <ul>
                <li><a class="nav-link scrollto" href="home.jsp#about">Acerca de</a></li>
                <li class="dropdown"><a href="index.html#services"><span>Servicios</span> <i class="bi bi-chevron-down"></i></a>
                            <ul>
                            <li><a href="#">Generar recetas</a></li>
                            <li><a href="#">Sustitución de ingredientes</a></li>
                            <li><a href="../../generador_ingredientes.jsp">Información nutrimental</a></li>
                            <li><a href="../jsp/Planificador.jsp">Planificador de dietas</a></li>
                            <li><a href="#">Blog de cocina</a></li>
                            <li><a href="#">Premium</a></li>
                            </ul>
                        </li>
                    <li><a class="nav-link scrollto" href="home.jsp#contact">Contáctanos</a></li>
                    <li><a class="nav-link scrollto" href="#">Configuración</a></li>
                    <li><a class="nav-link scrollto" href="logout.jsp">Salir</a></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->
        <a href="#" class="get-started-btn scrollto">Premium</a>
    </div>
</header>
    <%
        // Obtener datos de la sesión
        String user = (String) session.getAttribute("user");
        String name = (String) session.getAttribute("name");

        // Verificar si hay una sesión activa
        if (user == null || name == null) {
            // Si no hay sesión activa, redirigir a la página de inicio de sesión
            response.sendRedirect("logout.jsp");
            return; // Asegúrate de no continuar ejecutando código JSP después de esta línea
        }
    %>
    <div class="container-fluid">
        <div class="row">
            <!-- Perfil del usuario y menú lateral -->
            <div class="col-md-3" id="user-profile">
              <div class="card">
                <div class="card-body">
                  <h4>Perfil</h4>
                  <p><strong>Usuario:</strong> <%= user %></p>
                  <p><strong>Nombre:</strong> <%= name %></p>
                </div>
              </div>

              <!-- Sección Mis Recetas -->
              <div class="card mt-4">
                <div class="card-body">
                  <h4>Mis Recetas</h4>
                  <p>Accede a todas tus recetas creadas y guardadas.</p>
                </div>
              </div>

              <!-- Sección Planificador de Dietas -->
              <div class="card mt-4">
                <div class="card-body">
                  <h4>Mis Dietas</h4>
                  <p>Revisa y gestiona tus planes alimenticios.</p>
                </div>
              </div>
              <div class="card mt-4">
                <div class="card-body">
                  <h4>Favoritos</h4>
                </div>
              </div>
              <!-- Otras secciones pueden ir aquí -->
            </div>

    <!-- Contenido principal -->
    <div class="col-md-11" id="main-content">
        <section id="hero" class="d-flex align-items-center justify-content-center">
            <div class="container" data-aos="fade-up">

              <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="150">
                <div class="col-xl-6 col-lg-8">
                  <h1>¡Bienvenid@ <%= user %>!</h1>
                  <h2>Accede a nuestros servicios</h2>
                </div>
              </div>

              <div class="row gy-4 mt-5 justify-content-center" data-aos="zoom-in" data-aos-delay="250">
                <div class="col-xl-2 col-md-4">
                  <div class="icon-box">
                    <i class="bi-journal-bookmark"></i>
                    <h3><a href="#">Generar recetas</a></h3>
                  </div>
                </div>
                <div class="col-xl-2 col-md-4">
                  <div class="icon-box">
                    <i class="bi-egg-fried"></i>
                    <h3><a href="#">Sustitución de ingredientes</a></h3>
                  </div>
                </div>
                <div class="col-xl-2 col-md-4">
                  <div class="icon-box">
                        <i class="bi-list-columns"></i>
                    <h3><a href="#">Información nutrimental</a></h3>
                  </div>
                </div>
                <div class="col-xl-2 col-md-4">
                  <div class="icon-box">
                    <i class="ri-calendar-todo-line"></i>
                    <h3><a href="#">Planificador de dietas</a></h3>
                  </div>
                </div>
                <div class="col-xl-2 col-md-4">
                  <div class="icon-box">
                    <i class="bi-wechat"></i>
                    <h3><a href="#">Blog de Cocina</a></h3>
                  </div>
                </div>
              </div>

            </div>
          </section>
        
        <section id="services" class="services">
            <div class="container" data-aos="fade-up">
          <div class="section-title">
            <h2>Conoce nuestros servicios</h2>
            <p>Servicios</p>
          </div>

          <div class="row">
            <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
              <div class="icon-box"> 
                <div class="icon"><i class='bx bx-food-menu' ></i></div>
                <h4><a href="#">Generar recetas</a></h4>
                <p>Crea recetas mediante un software de deep learning en base a caracteristicas personales.</p>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in" data-aos-delay="200">
              <div class="icon-box">
                <div class="icon"><i class="bx bx-calendar"></i></div>
                <h4><a href="#">Planificador de dietas</a></h4>
                <p>En este servicio podrás planificar una dieta básica en base a parametros y metas personales.</p>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0" data-aos="zoom-in" data-aos-delay="300">
              <div class="icon-box">
                <div class="icon"><i class="bx bx-bar-chart-square"></i></div>
                <h4><a href="#">Información nutrimental</a></h4>
                <p>Esta página proporciona información de los ingredientes y las recetas para mayor apoyo.</p>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="100">
              <div class="icon-box">
                <div class="icon"><i class="bx bx-world"></i></div>
                <h4><a href="#">Blog de cocina</a></h4>
                <p>Un lugar para publicar, buscar y guardar recetas, hechas por ti o por otros usuarios.</p>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="200">
              <div class="icon-box">
                <div class="icon"><i class="bx bx-cheese"></i></div>
                <h4><a href="#">Sustitución de ingredientes</a></h4>
                <p>Sustituye alimentos de la receta creada con otros similares ya sea por gusto, contenido nutricional u otra razón.</p>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="300">
              <div class="icon-box">
                <div class="icon"><i class="bx bx-award"></i></div>
                <h4><a href="#">Dishify Premium</a></h4>
                <p>Servicios más personalizados que benefician al usuario que cuenta con la suscripción.</p>
              </div>
            </div>
          </div>
        </div>
        </section>
        <section id="about" class ="about">
            <div class="container" data-aos="fade-up">
                <div class="section-title">
                    <h2>Sobre nosotros</h2>
                    <p>Acerca de</p>
                </div>
                <div class="row">
                    <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
                        <img src="../img/Empresa.PNG" class="img-fluid" alt="">
                    </div>
                    <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content" data-aos="fade-right" data-aos-delay="100">
                        <h3>TokenTrust</h3>
                        <p class="fst-italic">
                          Programando tus sueños
                        </p>
                        <ul>
                            <li><i class="bi-award"></i> Misión: Resolver problemáticas para nuestros clientes, eficientar y automatizar actividades mediante a software personalizado con la máxima atención para nuestros clientes.</li>
                            <li><i class="bi-graph-up"></i> Visión: Desarrollar software innovador y actualizado ante las nuevas tecnologías para solucionar problemáticas.</li>
                        </ul>
                        <h3>DishifyMx</h3>
                        <p class="fst-italic">
                          Tu sabor, tu elección
                        </p>
                        <p>
                            Dishify es un proyecto desarrollado por TokenTrust pensado para innovar y solucionar un problema muy grande que es la mala alimentación,
                            la poca variación de recetas, la falta de tiempo, de conocimientos o de recursos para planear tu receta influye mucho en ese aspecto
                            por lo que intentamos ayudar a la solución de esa problemática mediante esta página web que cuente con un software con varios servicios
                            incluidos que te ayudan en esos aspectos.
                        </p>
                    </div>
                </div>
            </div>
        </section>
        <section id="features" class="features">
            <div class="container" data-aos="fade-up">

          <div class="row">
            <div class="image col-lg-6" style='background-image: url("../img/Plato1.jpg");' data-aos="fade-right"></div>
            <div class="col-lg-6 servicios" data-aos="fade-left" data-aos-delay="100">
              <div class="titulo" data-aos="zoom-in" data-aos-delay="150">
                <h3>Características</h3>
              </div>
              <div class="icon-box mt-5 mt-lg-0" data-aos="zoom-in" data-aos-delay="150">
                <i class="bx bx-dish"></i>
                <h4>Recetas personalizadas</h4>
                <p>Dishify te proporcionará recetas en base a los ingredientes con los que cuentes, preferencias, intolerancias, tiempo de preparación y demás aspectos.</p>
              </div>
              <div class="icon-box mt-5" data-aos="zoom-in" data-aos-delay="150">
                <i class="bx bxs-pear"></i>
                <h4>Alimentación más saludable</h4>
                <p>Puedes generar recetas saludables, planificar tu dieta y publicar en el blog, lo que contribuye a mejorar la salud.</p>
              </div>
              <div class="icon-box mt-5" data-aos="zoom-in" data-aos-delay="150">
                <i class="bx bx-bar-chart-square"></i>
                <h4>Información nutrimental</h4>
                <p>Proporciona información amplia sobre los ingredientes y las recetas para mayor apoyo.</p>
              </div>
              <div class="icon-box mt-5" data-aos="zoom-in" data-aos-delay="150">
                <i class="bx bx-conversation"></i>
                <h4>Sitio de cocina</h4>
                <p>Contamos con un sitio web en el que puedes compartir, buscar y opinar sobre las recetas y temas relacionados.</p>
              </div>
            </div>
          </div>
        </div>
        </section>
        <section id="contact" class="contact">
            <div class="container" data-aos="fade-up">

          <div class="section-title">
            <h2>Contacto</h2>
            <p>Contáctanos</p>
          </div>

          <div>
            <iframe style="border:0; width: 100%; height: 270px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6326.933921038136!2d-99.17951702526744!3d19.454815846226325!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85cdffeaf6b0a85d%3A0xb6ad4ff925a0d906!2sCentro%20Estudios%20Cient%C3%ADficos%20y%20Tecnol%C3%B3gicos%20(CECyT%209)%20%22Juan%20de%20Dios%20B%C3%A1tiz%22!5e0!3m2!1ses-419!2smx!4v1700105796359!5m2!1ses-419!2smx" frameborder="0" allowfullscreen></iframe>
          </div>

          <div class="row mt-5">

            <div class="col-lg-4">
              <div class="info">
                <div class="address">
                  <i class="bi bi-geo-alt"></i>
                  <h4>Página:</h4>
                  <p>http://tokentrust.gerdoc.com/</p>
                </div>

                <div class="email">
                  <i class="bi bi-envelope"></i>
                  <h4>Correo:</h4>
                  <p>token.trust.cdg@gmail.com</p>
                </div>

                <div class="phone">
                  <i class="bi bi-phone"></i>
                  <h4>Telefono:</h4>
                  <p>55 6677 8899</p>
                </div>
              </div>
            </div>
            <div class="col-lg-8 mt-5 mt-lg-0">
              <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                <div class="row">
                  <div class="col-md-6 form-group">
                    <input type="text" name="name" class="form-control" id="name" placeholder="Nombre:" required>
                  </div>
                  <div class="col-md-6 form-group mt-3 mt-md-0">
                    <input type="email" class="form-control" name="email" id="email" placeholder="Correo:" required>
                  </div>
                </div>
                <div class="form-group mt-3">
                  <input type="text" class="form-control" name="subject" id="subject" placeholder="Tema:" required>
                </div>
                <div class="form-group mt-3">
                  <textarea class="form-control" name="message" rows="5" placeholder="Mensaje:" required></textarea>
                </div>
                <div class="my-3">
                  <div class="loading">Loading</div>
                  <div class="error-message"></div>
                  <div class="sent-message">Your message has been sent. Thank you!</div>
                </div>
                <div class="text-center"><button type="submit">Enviar</button></div>
              </form>
            </div>
          </div>
        </div>
        </section>
    </div>  
  </div>
</div>
<footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>DishifyMx</span></strong>.
      </div>
      <div class="credits">
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
    </footer><!-- End Footer -->
    <div id="preloader"></div>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
    <!-- Vendor JS Files -->
    <script src="../vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="../vendor/aos/aos.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../vendor/glightbox/js/glightbox.min.js"></script>
    <script src="../vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="../vendor/swiper/swiper-bundle.min.js"></script>
    <script src="../vendor/php-email-form/validate.js"></script>
  <!-- Template Main JS File -->
    <script src="../js/main.js"></script>
    <script type="text/javascript">
    </script>
    </body>
</html>
  