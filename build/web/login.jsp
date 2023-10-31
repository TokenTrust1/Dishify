<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.io.*"%>
<%
    Connection conec = null;
    PreparedStatement pstat = null;
    ResultSet results = null;
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        conec = DriverManager.getConnection("jdbc:mysql://localhost:3308/"
        +"data_ds?autoreReconnect=true&useSSL=false", "root", "n0m3l0");
        pstat = conec.prepareStatement("select * from users where usuario = ? and contra = ?");
        String contraa = request.getParameter("password");
        String usuarioo = request.getParameter("username");
        pstat.setString(1, usuarioo);
        pstat.setString(2, contraa);
        results = pstat.executeQuery();
        if(results.next()){
            String user = results.getString("usuario");
            String name = results.getString("nombre");
            String role = results.getString("rol");
            String password = results.getString("contra");
            session.setAttribute("user", user);
            session.setAttribute("password", password);
            session.setAttribute("name", name);
            session.setAttribute("role", role);
            response.sendRedirect("homeAdmin.html");
        }
        else {
            response.sendRedirect("registrarse.html?noExiste=true");
        }
    }
    catch(SQLException error){
        out.print(error.toString());
    }
%>
