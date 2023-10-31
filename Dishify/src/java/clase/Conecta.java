package clase;
import java.sql.*;
public class Conecta {
    Connection cnx = null;
    public Connection conectar() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            cnx = DriverManager.getConnection("jdbc:mysql://localhost:3308/dishify?autoReconnect=true&useSSL=false", "root", "n0m3l0");
            System.out.println("Conexión exitosa a la base de datos.");
        } catch (ClassNotFoundException | SQLException error) {
            System.out.println("Error al conectar a la base de datos: " + error.toString());
        }
        return cnx;
    }
}