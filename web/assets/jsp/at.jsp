<!DOCTYPE html>
<%@ page import="Conexion.ConexionBD" %>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <style>
            body {
                font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
                margin: 0;
                padding: 0;
                display: flex; /* Utiliza flexbox para la disposición */
                height: 100vh;
                background-color: #f2f2f2;
            }

            /* Barra de navegación para Regresar y Administrador */
            .navbar {
                width: 100px; /* Ancho fijo para la barra de navegación */
                background-color: #fff;
                display: flex;
                flex-direction: column;
                justify-content: flex-start;
                align-items: center;
                border-right: 1px solid #ddd;
                padding: 10px;
                height: 100vh;
            }

            
            .navbar a {
                padding: 10px;
                text-decoration: none;
                color: #007bff;
                font-size: 16px;
                text-align: center;
                display: flex;
                align-items: center;
                transition: transform 0.3s ease; /* Animación suave para la transformación */
            }

            .navbar a:hover {
                text-decoration: none; /* Quitamos el subrayado al pasar el ratón */
            }

            .navbar a.back-arrow {
                color: black; /* Color negro para la flecha */
                font-size: 24px; /* Tamaño inicial de la flecha */
            }

            .navbar a.back-arrow:hover {
                transform: scale(1.5); /* Aumentamos el tamaño de la flecha en un 50% al pasar el ratón */
                color: #505050; /* Cambiamos el color al pasar el ratón para un efecto más suave */
            }

            /* Contenedor para la barra de chats y la barra de navegación */
            .sidebar-container {
                display: flex;
                height: 100vh;
            }

            /* Barra lateral para la lista de chats */
            .chat-sidebar {
                width: 150px; /* Ancho fijo para la barra lateral de chats */
                background-color: #fff;
                overflow-y: auto;
                border-right: 1px solid #ddd;
            }

            /* Lista de chats */
            .chat-list {
                list-style: none;
                padding: 0;
                margin: 0;
                width: 100%;
                padding-top: 70px;
            }

            .chat-list-item {
                padding: 10px;
                border-bottom: 1px solid #eee;
                cursor: pointer;
                text-align: center;
            }

            .chat-list-item:hover {
                background-color: #f9f9f9;
            }

            /* Área principal para la visualización del chat */
            .chat-area {
                flex-grow: 1; /* Ocupa el espacio restante */
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: flex-start;
                padding: 20px;
            }

            .chat-header {
                font-size: 1.5em;
                color: #4A4A4A;
                margin-bottom: 20px;
                width: 100%;
            }

            #output {
                width: calc(100% - 40px); /* Ajustar el ancho para el padding */
                height: 75vh;
                border: 1px solid #ddd;
                padding: 15px;
                overflow-y: auto;
                background-color: #fff;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.05);
                border-radius: 10px;
                margin-bottom: 10px;
            }

            #message_input {
                width: calc(100% - 40px);
                padding: 12px 15px;
                margin-bottom: 10px;
                border: 2px solid #ccc;
                border-radius: 20px;
                box-shadow: 0 2px 4px 0 rgba(0,0,0,0.1);
            }
            
            #username_input{
                width: calc(100% - 40px);
                padding: 12px 15px;
                margin-bottom: 10px;
                border: 2px solid #ccc;
                border-radius: 20px;
                box-shadow: 0 2px 4px 0 rgba(0,0,0,0.1);
            }

            button {
                padding: 10px 20px;
                background-color: #808080;
                color: white;
                border: none;
                border-radius: 20px;
                cursor: pointer;
                transition: background-color 0.2s ease;
                box-shadow: 0 2px 4px 0 rgba(0,0,0,0.1);
            }

            button:hover {
                background-color: #696969;
            }
        </style>
        <%
        // Obtener datos de la sesión
        String user = (String) session.getAttribute("user");
        String name = (String) session.getAttribute("name");

        
    %>
        <title>Atención al cliente</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <!-- Contenedor para la barra de navegación y la barra de chats -->
        <div class="sidebar-container">
            <!-- Barra de navegación -->
            <div class="navbar">
                <a href="home.jsp" class="back-arrow">&#8962;</a>
            </div>
            <!-- Barra lateral para los chats -->
            <div class="chat-sidebar">
        <ul class="chat-list" id="chatList">
            <!-- Los chats individuales se añadirán aquí dinámicamente -->
        </ul>
    </div>
</div>
<div class="chat-area">
    <div class="chat-header" id="chatHeader">Selecciona un chat</div>
    <div id="output" class="message-area">
        <!-- Los mensajes del chat activo se mostrarán aquí -->
    </div>
    <input id="username_input" type="text" placeholder="Escribe tu usuario" value="<%=user%>" readonly="true">
    <input id="message_input" type="text" placeholder="Escribe tu mensaje aquí...">
    <button onclick="send()">Enviar mensaje</button>
</div>

        <script src="../js/websocket.js"></script>
    </body>
</html>



