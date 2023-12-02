/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servicios;
import Conexion.ConexionBD;
import VAR.ingredientes;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Alumno
 */
public class BuscarIngredientes extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ingrediente = request.getParameter("ingrediente");

        // Lógica para obtener los ingredientes de la base de datos
        List<ingredientes> listaIngredientes = new ArrayList<>();// Llama a tu método de búsqueda aquí
        if (ingrediente != null && !ingrediente.trim().isEmpty()) {
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;

            try {
                ConexionBD conexion = new ConexionBD() {};
                conn = conexion.obtenerConexion();
                if (conn == null) {
                throw new ServletException("No se pudo establecer la conexión a la base de datos");
                }
                String sql = "SELECT * FROM ingredientes WHERE nombre LIKE ?";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, "%" + ingrediente + "%");
                rs = pstmt.executeQuery();

                while (rs.next()) {
                    ingredientes ing = new ingredientes();
                    ing.setNombre(rs.getString("nombre"));
                    ing.setCalorias(rs.getInt("calorias"));
                    ing.setCarbos(rs.getInt("carbos"));
                    ing.setProteinas(rs.getInt("proteina"));
                    ing.setFat(rs.getInt("fat"));
                    listaIngredientes.add(ing);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(BuscarIngredientes.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    if (rs != null) rs.close();
                    if (pstmt != null) pstmt.close();
                    if (conn != null) conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        }

        request.setAttribute("ingredientes", listaIngredientes);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/assets/jsp/generador ingredientes.jsp");
        dispatcher.forward(request, response);
    }
}
