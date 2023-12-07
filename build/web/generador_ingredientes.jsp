<%-- 
    Document   : generador ingredientes
    Created on : 24 nov. 2023, 10:02:04
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Informacion</title>
    <link rel="stylesheet" href="assets/css/PDFUNC.css">
    <link href="../css/login.css" rel="stylesheet">
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
    
</head>
<body>
  
    <header id="header" class="fixed-top ">
        <div class="container d-flex align-items-center justify-content-lg-between">
          <h1 class="logo me-auto me-lg-0"><a href="../../index.html" class="logo me-auto me-lg-0"><img src="../img/Logo2.png" alt="" class="img-fluid"></a></h1>
          <nav id="navbar" class="navbar order-last order-lg-0">
            <ul>
              <li><a class="nav-link scrollto" href="../../index.html#about">Acerca de</a></li>
              <li><a class="nav-link scrollto" href="../../index.html#services">Servicios</a></li>
              <li><a class="nav-link scrollto" href="../../index.html#team">Equipo</a></li>
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
              <li><a class="nav-link scrollto" href="../../index.html#contact">Contáctanos</a></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
          </nav><!-- .navbar -->
          <a href="../../register.html" class="get-started-btn scrollto">Crear cuenta</a>
        </div>
    </header>

    <div class="container">
        <div class="content-wrapper">
            <div class="left-column">
                <div class="plate-circle">
                    <img src="assets/img/platillo1.png" alt="Grilled Fish Salad" class="plate-image">
                </div>
            </div>
            <div class="right-column">
                <div class="dish-details">
                    <h1 class="grilled">Buscador</h1>
                    <br> 
                    
                    <span class="fish">Ingredientes</span>
                    <br>
                    <br>
                    <br>
                    <div>
                        <form action="consultarinfo.jsp" method="post">
                        <div class="search-bar">
                        <input type="text" name="ingrediente" id="campo_ingrediente" placeholder="Buscar ingrediente...">
                        <button type="submit">Buscar</button>
                        </div>
                        </form>
                        <br>
                        <br>
                        <br>
                        <div id="resultados">
                        <c:if test="${not empty ingredientes}">
                        <c:forEach var="item" items="${ingredientes}">
                        <div class="salad">${item.nombre}</div>
                        
                        
                    
                    <div class="nutrition-facts">
                        
                        
                        <div class="nutrition-item">
                            <span class="nutrition-circle" id="calorias">${item.calorias} kcal</span>
                            <span class="nutrition-label">Calories</span>
                        </div>
                        <div class="nutrition-item">
                            <div class="nutrition-circle" id="carbos">${item.carbos} g</div>
                            <span class="nutrition-label">Carbo</span>
                        </div>
                        <div class="nutrition-item">
                            <div class="nutrition-circle" id="proteina">${item.proteinas} g</div>
                            <span class="nutrition-label">Protein</span>
                        </div>
                      
                        <div class="nutrition-item">
                            <div class="nutrition-circle" id="fat">${item.fat} g</div>
                            <span class="nutrition-label">Fat</span>
                        </div>
                    </div>
                         
                    </div>
                </div>
            </div>
        </div>
    </div>
        
            <div class="social-media">
                <!-- Social media icons go here -->
            </div>
        
    

    </body>
</html>

