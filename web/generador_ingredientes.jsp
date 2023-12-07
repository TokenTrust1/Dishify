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
    <title>Grilled Fish Salad</title>
    <link rel="stylesheet" href="assets/css/PDFUNC.css">
    
</head>
<body>
  
    <nav class="navbar">
        <a href="PD.html">Regresar</a>
    </nav>

    <div class="container">
        <div class="content-wrapper">
            <div class="left-column">
                <div class="plate-circle">
                    <img src="platillo1.png" alt="Grilled Fish Salad" class="plate-image">
                    <div class="price-tag">$12</div>
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
                        <form action="BuscarIngredientes" method="GET">
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

