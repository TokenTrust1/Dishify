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
  <link href="../css/register.css" rel="stylesheet">
<script>
    window.addEventListener('DOMContentLoaded', (event) => {
        document.getElementById("togglePassword").addEventListener("click", function() {
            const password = document.getElementById("contra");
            if (password.type === "password") {
                password.type = "text";
                this.classList.remove("bx-hide");
                this.classList.add("bx-show");
            } else {
                password.type = "password";
                this.classList.remove("bx-show");
                this.classList.add("bx-hide");
            }
        });
        document.getElementById("togglePassword2").addEventListener("click", function() {
            const password = document.getElementById("ccontra");
            if (password.type === "password") {
                password.type = "text";
                this.classList.remove("bx-hide");
                this.classList.add("bx-show");
            } else {
                password.type = "password";
                this.classList.remove("bx-show");
                this.classList.add("bx-hide");
            }
        });
    });
  </script>
</head>
<body>
    <header id="header" class="fixed-top ">
        <div class="container d-flex align-items-center justify-content-lg-between">
          <h1 class="logo me-auto me-lg-0"><a href="../../index.jsp" class="logo me-auto me-lg-0"><img src="../img/Logo2.png" alt="" class="img-fluid"></a></h1>
          <nav id="navbar" class="navbar order-last order-lg-0">
            <ul>
              <li><a class="nav-link scrollto" href="../../index.jsp#about">Acerca de</a></li>
              <li><a class="nav-link scrollto" href="../../index.jsp#services">Servicios</a></li>
              <li><a class="nav-link scrollto" href="../../index.jsp#team">Equipo</a></li>
              <!--<li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
                <ul>
                  <li><a href="#">Drop Down 1</a></li>
                  <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                    <ul>
                      <li><a href="#">Deep Drop Down 1</a></li>
                      <li><a href="#">Deep Drop Down 2</a></li>
                      <li><a href="#">Deep Drop Down 3</a></li>
                      <li><a href="#">Deep Drop Down 4</a></li>
                      <li><a href="#">Deep Drop Down 5</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Drop Down 2</a></li>
                  <li><a href="#">Drop Down 3</a></li>
                  <li><a href="#">Drop Down 4</a></li>
                </ul>
              </li> DROPDOWN  -->
              <li><a class="nav-link scrollto" href="../../index.jsp#contact">Contáctanos</a></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
          </nav><!-- .navbar -->
          <a href="../../login.jsp" class="get-started-btn scrollto">Entrar</a>
        </div>
    </header>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String usuario = request.getParameter("usuario");
    String contraseña = request.getParameter("contra");
    String ccontraseña = request.getParameter("ccontra");
    String nombre = request.getParameter("nombre");
    String rol = request.getParameter("rol");
    String mensaje = "";
    Connection conn = null;
    PreparedStatement pstmt = null;
    try {
        conn = ConexionBD.obtenerConexion();
        if (contraseña.equals(ccontraseña)) {
            PreparedStatement pstmt2 = conn.prepareStatement("SELECT * FROM users WHERE usuario = ?");
            pstmt2.setString(1, usuario);
            ResultSet rs = pstmt2.executeQuery();
            if (rs.next()) {
                mensaje = "El usuario '" + usuario + "' ya existe";
            // Redirigir a la página principal o del perfil del usuario
            // response.sendRedirect("home.jsp");
            } else {
                pstmt = conn.prepareStatement("INSERT INTO users (usuario, contra, nombre) VALUES (?, ?, ?)");
                pstmt.setString(1, usuario);
                pstmt.setString(2, contraseña);
                pstmt.setString(3, nombre);
                int rowsAffected = pstmt.executeUpdate();
                if (rowsAffected > 0) {
                    response.sendRedirect("../../login.jsp?registroExitoso=true");
                } else {
                    response.sendRedirect("../../registrarse.jsp?registroFallido=true");
                }
            }
        } else {
            mensaje = "Las contraseñas no coinciden";
        }
    } catch (ClassNotFoundException | SQLException e) {
        mensaje = "Error al conectar a la base de datos";
    } finally {
        if (pstmt != null) {
            pstmt.close();
        }
        if (conn != null) {
            conn.close();
        }
    }
%>
    <section class="vh-100">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-lg-12 col-xl-11">
          <div class="card text-black" style="border-radius: 25px;">
            <div class="card-body p-md-5">
              <div class="row justify-content-center">
                <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
                  <p class="text-center text-warning h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Crear cuenta</p>
                  <form class="mx-1 mx-md-4" action="register2.jsp">
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0">
                        <input type="text" id="usuario" name="usuario" class="form-control" value="<%= usuario %>" pattern="[A-Za-z0-9]{4,14}" minlength="4" maxlength="14" title="El usuario no puede tener caracteres especiales." required/>
                        <label class="form-label" for="form3Example1c">Usuario</label>
                      </div>
                    </div>
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0">
                        <input type="text" id="nombre" name="nombre" class="form-control" value="<%= nombre %>" pattern="[A-Za-z\s]{4,29}" minlength="4" maxlength="29" title="El nombre debe contener solo letras." required/>
                        <label class="form-label" for="form3Example3c">Nombre</label>
                      </div>
                    </div>
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0 position-relative">
                          <input type="password" id="contra" name="contra" class="form-control" value="<%= contraseña %>" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).[A-Za-z0-9]{6,10}" minlength="6" maxlength="10" title="La contraseña debe tener números, letras mayúsculas y minúsculas." required/>
                          <label class="form-label" for="contraseña">Contraseña</label>
                          <i class="bx bx-hide" id="togglePassword" style="cursor: pointer; position: absolute; right: 10px; top: 10px;"></i>
                      </div>
                    </div>
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0 position-relative">
                          <input type="password" id="ccontra" name="ccontra" class="form-control" value="<%= ccontraseña %>" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).[A-Za-z0-9]{6,10}" minlength="6" maxlength="10" title="La contraseña debe tener números, letras mayúsculas y minúsculas." required/>
                          <label class="form-label" for="contraseña">Confirmar contraseña</label>
                          <i class="bx bx-hide" id="togglePassword2" style="cursor: pointer; position: absolute; right: 10px; top: 10px;"></i>
                      </div>
                    </div>
                    <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                      <button type="submit" class="btn btn-warning btn-lg">Registrar</button>
                    </div>
                    <p class="small fw-bold mt-2 pt-1 mb-0">¿Ya tienes una cuenta?<a href="../../login.jsp"
                        class="link-warning"> Ingresa</a></p>
                  </form>
                </div>
                <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
                  <img src="../img/login.png"
                    class="img-fluid" alt="Sample image">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
<footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>DishifyMx</span></strong>.
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-template/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
    </footer><!-- End Footer -->
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
        alert("<%= mensaje %>");
    </script>
    </body>
</html>