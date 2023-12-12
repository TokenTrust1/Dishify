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
    <link rel="stylesheet" href="../css/phone.css">
    <link rel="stylesheet" href="../css/Planificador.css">
  <!-- Template Main CSS File -->
  <link href="../css/home.css" rel="stylesheet">
</head>
<body>
    <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center justify-content-lg-between">
        <h1 class="logo me-auto me-lg-0"><a href="home.jsp" class="logo me-auto me-lg-0"><img src="../img/Logo2.png" alt="" class="img-fluid"></a></h1>
        <nav id="navbar" class="navbar order-last order-lg-0">
            <ul>
                <li class="dropdown"><a href="home.jsp#services"><span>Servicios</span> <i class="bi bi-chevron-down"></i></a>
                            <ul>
                            <li><a href="#">Generar recetas</a></li>
                            <li><a href="#">Sustitución de ingredientes</a></li>
                            <li><a href="info.jsp">Información nutrimental</a></li>
                            <li><a href="#">Planificador de dietas</a></li>
                            <li><a href="#">Blog de cocina</a></li>
                            <li><a href="#">Premium</a></li>
                            </ul>
                        </li>
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
        <section id="services" class="services" style="padding-top: 100px; min-height: 1500px">
            <div class="container" data-aos="fade -up">
          <div class="section-title">
            <h2>Arma tu plan</h2>
            <p>Recetas recomendadas</p>
          </div>
          <div class="row justify-content-center">
          <%
            Connection cnx = null;
            PreparedStatement pstatement = null;
            ResultSet rs = null;
            int caloriasDiarias = 1200; // Este valor debe ser calculado o ingresado por el usuario
            int caloriasPorComida = caloriasDiarias / 3;
            int margen = (int) (caloriasPorComida * 0.2); // 10% de margen

            try {
                cnx = ConexionBD.obtenerConexion();
                pstatement = cnx.prepareStatement("SELECT nombre, calorias, proteinas FROM recetas WHERE calorias BETWEEN ? AND ?");
                pstatement.setInt(1, caloriasPorComida - margen);
                pstatement.setInt(2, caloriasPorComida + margen);
                rs = pstatement.executeQuery();

                while (rs.next()) {
                    %>
            <div class="col-lg-4 col-md-6 mt-4">
                <div class="card" style="display: flex;flex-direction: column;height: 100%;">
                  <div class="card-body" style="flex: 1;display: flex;flex-direction: column;justify-content: space-between;min-height: 250px;">
                    <h5 class="card-title" style="font-size: 1em;margin-bottom: 0.5em;"><a href="#"><%=rs.getString("nombre")%></a></h5>
                    <p class="card-text" style="font-size: 0.9em;margin-bottom: 0.5em;">Calorías: <%=rs.getInt("calorias")%>kcal</p>
                    <p class="card-text" style="font-size: 0.9em;margin-bottom: 0.5em;">Proteínas: <%=rs.getInt("proteinas")%>g</p>
                    <a href="#" class="btn btn-warning" style="margin-top: 10px;">Ver Receta</a>
                    <a href="#" class="btn btn-warning" style="margin-top: 10px;">Agregar</a>
                  </div>
                </div>
            </div>
              <%
                }
            } catch(SQLException error) {
                out.print(error.toString());
            } finally {
                if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                if (pstatement != null) try { pstatement.close(); } catch (SQLException e) { e.printStackTrace(); }
                if (cnx != null) try { cnx.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
        %>
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
    <script src="../js/Planificador.js"></script>
    <script type="text/javascript">
    </script>
    </body>
</html>
  