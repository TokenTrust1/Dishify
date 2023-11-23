package Conexion;
import java.sql.*;
public class ConexionBD {
    private static final String URL = "jdbc:mysql://localhost:3306/Dishify";
    private static final String USUARIO = "root";
    private static final String CONTRASENA = "n0m3l0";
    public static Connection obtenerConexion() throws SQLException {
        return DriverManager.getConnection(URL, USUARIO, CONTRASENA);
    }
}