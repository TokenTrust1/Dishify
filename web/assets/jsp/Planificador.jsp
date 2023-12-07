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
                <li><a class="nav-link scrollto" href="home.jsp#about">Acerca de</a></li>
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
            <section id="part02">
                <div id="calculator">
                    <h1>Calculadora Fitness</h1>
                    <form>
                        <div>
                            <label for="nome">Nombre:</label><br>
                            <input type="text" name="calculator" id="nome" class="datas" placeholder="Ingresa tu nombre" autofocus>
                        </div>
                        <div>
                            <label for="idade">Edad:</label><br>
                            <input type="number" name="calculator" id="idade" class="datas" placeholder="Ingresa tu edad">
                        </div>
                        <div>
                            <label for="">Sexo:</label><br>
                            <input type="radio" name="calculator" id="masculino" checked>
                            <label for="masculino">Masculino</label>
                            <input type="radio" name="calculator" id="feminino">
                            <label for="feminino">Femenino</label>
                        </div>
                        <div>
                            <label for="peso">Peso:</label><br>
                            <input type="number" name="calculator" id="peso" class="datas" placeholder="Ingresa tu peso (kg)">
                        </div>

                        <div>
                            <label for="altura">Altura:</label><br>
                            <input type="number" name="calculator" id="altura" class="datas" placeholder="Ingresa tu altura (cm)">
                        </div>
                        <div>
                            <label for="atividade">Nivel de atividad física:</label><br>
                            <select name="calculator" id="atividade" class="datas">
                                <option value="selecionar">Selecionar-</option>
                                <option value="leve">Leve (1-3 días por semana)</option>
                                <option value="moderada">Moderada (4-5 dias por semana)</option>
                                <option value="intensa">Intensa (6-7 dias por semana)</option>
                            </select>
                        </div>
                        <div>
                            <label for="">Objetivo:</label><br>
                            <select name="calculator" id="objetivo" class="datas">
                                <option value="selecionar">Selecionar-</option>
                                <option value="ganar peso">Ganar peso</option>
                                <option value="mantener peso">Mantener peso</option>
                                <option value="perder peso">Perder peso</option>
                            </select>
                        </div>
                        <button type="button">Calcular</button>
                    </form>
                </div>
            </section>
        </section>
        <aside id="second">
            <h1>Fórmulas Utilizadas:</h1>
            <h2>Calcular Macronutrientes:</h2>
            <div>
                <h3>1° Calcular tasa de metabolismo basal (TMB)</h3>
                <p><strong>P:</strong> Peso.</p>
                <p><strong>A:</strong> Altura.</p>
                <p><strong>I:</strong> Edad.</p>
                <table>
                    <tr>
                        <th>Sexo</th>
                        <th>Fórmula de Harris-Benedict</th>
                    </tr>
                    <tr>
                        <td>Femenino</td>
                        <td>655 + (9,6 x P) + (1,9 x A) – (4,7 x I)</td>
                    </tr>
                    <tr>
                        <td>Masculino</td>
                        <td>66 + (13,8 x P) + (5,0 x A) – (6,8 x I)</td>
                    </tr>
                </table>
            </div>
            <div>
                <h3>2° Calcular factor actividad física</h3>
                <table>
                    <tr>
                        <th>Nivel de actividad física</th>
                        <th>Valores</th>
                    </tr>
                    <tr>
                        <td>Ligera</td>
                        <td>Factor medio de 1.375</td>
                    </tr>
                    <tr>
                        <td>Moderada</td>
                        <td>Factor medio de 1.55</td>
                    </tr>
                    <tr>
                        <td>Intensa</td>
                        <td>Factor medio de 1.725</td>
                    </tr>
                </table>
            </div>
            <div>
                <h3>3° Calcular gasto calórico total</h3>
                <p><strong>Gasto calórico total:</strong> Tasa de metabolismo basal x Factor actividad física.</p>
            </div>
            <div>
                <h3>4° Calcular el consumo de calorías</h3>
                <p><strong>Mantener peso:</strong> consumir el gasto calórico total.</p>
                <p><strong>Ganar peso:</strong> gasto calórico total + 500 calorías.</p>
                <p><strong>Perder peso:</strong> gasto calórico total - 500 calorías.</p>
            </div>
            <div>
                <h3>5° Dividir los macros</h3>
                <p><strong>Proteínas:</strong> 14,29% de las calorías totales.</p>
                <p><strong>Carbohidratos:</strong> 57,14% de las calorías totales.</p>
                <p><strong>Grasas:</strong> 28,57% de las calorías totales.</p>
            </div>
            <div>
                <h2>Cálculo de Creatina:</h2>
                <p><strong>Creatina:</strong> 0,07g X kg.</p>
            </div>
            <div>
                <h2>Cálculo cantidad de agua:</h2>
                <table>
                    <tr>
                        <th>Rango de Edad</th>
                        <th>Cantidad de agua por kg</th>
                    </tr>
                    <tr>
                        <td>Hasta los 17 años</td>
                        <td>40 ml por cada kg</td>
                    </tr>
                    <tr>
                        <td>18 a 55 años</td>
                        <td>35 ml por cada kg</td>
                    </tr>
                    <tr>
                        <td>55 a 65 años</td>
                        <td>30 ml por cada kg</td>
                    </tr>
                    <tr>
                        <td>Más de 66 años</td>
                        <td>25 ml por cada kg</td>
                    </tr>
                </table>
            </div>
        </aside>    
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
  