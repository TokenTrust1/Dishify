<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>DishifyMx</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/icon.png" rel="icon">
  <link href="assets/img/icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center justify-content-lg-between">
      <h1 class="logo me-auto me-lg-0"><a href="index.jsp" class="logo me-auto me-lg-0"><img src="assets/img/Logo2.png" alt="" class="img-fluid"></a></h1>
      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto" href="index.jsp#about">Acerca de</a></li>
          <!-- <li><a class="nav-link scrollto" href="index.jsp#services">Servicios</a></li> --> 
          <li><a class="nav-link scrollto" href="index.jsp#team">Equipo</a></li>
          <li class="dropdown"><a href="index.jsp#services"><span>Servicios</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="Recetas.jsp">Generar recetas</a></li>
              <li><a href="Sustitucion.jsp">Sustitución de ingredientes</a></li>
              <li><a href="#">Información nutrimental</a></li>
              <li><a href="Planificador.jsp">Planificador de dietas</a></li>
              <li><a href="Blog.jsp">Blog de cocina</a></li>
              <li><a href="Premium.jsp">Premium</a></li>
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="index.jsp#contact">Contáctanos</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
      <a href="login.jsp" class="get-started-btn scrollto">Comenzar</a>
    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">
        <div class="d-flex justify-content-between align-items-center">
          <h2>Informacion Nutricional</h2>
          <ol>
            <li><a href="index.jsp">Inicio</a></li>
            <li>Informacion Nutricional</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->
    <section class="inner-page" style="position: relative;height: 100vh;color: rgb(0, 0, 0);min-height: 1000px;">
      <div class="bg-image" style="background: url('assets/img/Info.jpg') no-repeat center center; background-size: cover; position: absolute; top: 0; left: 0; right: 0; bottom: 0; opacity: 0.4; z-index: -1;">
      </div>
        <div class="container" style="height: 100vh; display: flex; justify-content: center;">
          <div data-aos="fade-up" data-aos-duration="1000" style="max-width: 700px;">
            <div class="row" style="z-index: 100; position: relative;">
              <!-- Imagen a la izquierda del texto -->
              <div class="col-md-5" style="background-image: url('assets/img/Info2.jpg'); background-size: cover; background-position: left center; padding: 150px;">
                <!-- Imagen de fondo aquí -->
              </div>
              <!-- Contenido del texto a la derecha -->
              <div class="col-md-7">
                <div class="card">
                  <div class="card-title text-warning text-center" style="padding-top: 15px;">
                    <h1 data-aos="fade-down" data-aos-duration="1000" data-aos-delay="500">Informacion Nutricional</h1>
                  </div>
                  <div class="card-body">
                    <div data-aos="fade-up" data-aos-duration="1000" data-aos-delay="1000">
                        <p>
                          En Esta seccion, ofrecemos un servicio para que puedas saber las cantidades caloricas y diferente informacion sobre el alimento que estas consumiendo, 
                          ademas de ayudarte en caso de que salgas a algun restaurante u otro lado y no sabes que alimentos se asemejan a tu dieta en el sentido de proteinas, vitaminas, entre otras cosas.
                        </p>
                        <ul>
                          <li>Decisiones Informadas: Proporciona información nutricional clave para elegir ingredientes de forma más saludable.</li>
                          <li>Alimentación Consciente: Aumenta la conciencia sobre el impacto de cada ingrediente en la salud.</li>
                          <li>Dietas Específicas: Facilita la selección de ingredientes para dietas con restricciones o necesidades particulares.</li>
                        </ul>
                        <a class="btn btn-secondary disabled" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="1500">Próximamente</a>
                      </div>
                  </div>
                </div>
              </div>
            </div>  
          </div>  
        </div>
    </section>
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>DishifyMx</span></strong>.
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>
