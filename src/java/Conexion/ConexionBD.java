package Conexion;
import java.sql.*;
public class ConexionBD {
    private static final String URL = "jdbc:mysql://localhost:3306/Dishify";
    private static final String USUARIO = "root";
    private static final String CONTRASENA = "1234";
    
    public static Connection obtenerConexion() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USUARIO, CONTRASENA);
    }
}
