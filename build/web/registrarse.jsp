<!DOCTYPE html>
<head>
    <title>Dishify - Registro</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <script>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String usuario = request.getParameter("username");
    String contraseña = request.getParameter("password");
    String ccontraseña = request.getParameter("cpassword");
    String nombre = request.getParameter("nombre");
    String rol = request.getParameter("rol");

    Connection conn = null;
    PreparedStatement pstmt = null;
    String dbURL = "jdbc:mysql://localhost:3308/data_ds";
    String dbUser = "root";
    String dbPassword = "n0m3l0";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
        if (contraseña.equals(ccontraseña)) {
            String insertQuery = "INSERT INTO users (usuario, contra, nombre, rol) VALUES (?, ?, ?, ?)";
            pstmt = conn.prepareStatement(insertQuery);
            pstmt.setString(1, usuario);
            pstmt.setString(2, contraseña);
            pstmt.setString(3, nombre);
            pstmt.setString(4, rol);

            int rowsAffected = pstmt.executeUpdate();

            if (rowsAffected > 0) {
                response.sendRedirect("login.html?registroExitoso=true");
            } else {
                response.sendRedirect("registrarse.html?registroFallido=true");
            }
        } else {
            %>alert("Las contraseñas no coinciden");<%
        }
    } catch (ClassNotFoundException | SQLException e) {
        response.sendRedirect("registrarse.html?registroFallido=true");
    } finally {
        if (pstmt != null) {
            pstmt.close();
        }
        if (conn != null) {
            conn.close();
        }
    }
%>
</script>
</head>

<body>
    <header>
        <div class="container">
            <a href="index.html" id="logo"><img src="Images/Logo.png" alt="DishifyMx"></a>
            <nav>
                <a href="index.html">Inicio</a>
                <a href="index.html#servicios">Servicios</a>
                <a href="index.html#acerca">Acerca de</a>
                <a href="index.html#info">Contacto</a>
            </nav>
        </div>
    </header>
    <section id="home">
        <div class="form_container">
            <div class="login_form">
                <form action="registrarse.jsp">
                    <h2>Crear Cuenta</h2>
                    <div class="input_box">
                        <input type="text" id="username" name="username" placeholder="Ingrese su usuario" required value="<%= usuario %>">
                        <i class="uil uil-user"></i>
                    </div>
                    <div class="input_box">
                        <input type="password" id="password" name="password" placeholder="Ingrese su contraseña" required value="<%= contraseña %>">
                        <i class="uil uil-lock password"></i>
                        <i class="uil uil-eye-slash pw_hide"></i>
                    </div>
                    <div class="input_box">
                        <input type="password" id="cpassword" name="cpassword" placeholder="Confirmar contraseña" required value="<%= ccontraseña %>">
                        <i class="uil uil-lock password"></i>
                        <i class="uil uil-eye-slash pw_hide"></i>
                    </div>
                    <div class="input_box">
                        <input type="text" id="nombre" name="nombre" placeholder="Ingrese su nombre" required value="<%= nombre %>">
                        <i class="uil uil-user"></i>
                    </div>
                    <div class="input_box">
                        <input type="text" id="rol" name="rol" placeholder="Ingrese su rol" required value="<%= rol %>">
                        <i class="uil uil-user"></i>
                    </div>
                    <input type="submit" class="button" value="Crear cuenta" onclick="validateMessage();validarContra();">
                    <div class="error">
                        <p id="error-message" class="error"></p>
                    </div>
                </form>
                <h6><a href="login.html">¿Ya tienes cuenta? Ingresa</a></h6>
            </div>
        </div>
    </section>
    <footer>
        <div class="container">
            <p>&copy; HIP, Medica Star.</p>
        </div>
    </footer>
</body>
</html>