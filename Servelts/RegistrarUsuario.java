/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelts;

import Controlador.Conexion;
import Controlador.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Wicho
 */
public class RegistrarUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("registro_Nombre");
        String apellidoPat = request.getParameter("registro_ApPaterno");
        String apellidoMat = request.getParameter("registro_ApMat");
        String apellidos = apellidoPat + " " + apellidoMat;
        String usuario = request.getParameter("registro_User");
        String clave = request.getParameter("registro_Password");
        
        Usuario u = null;
        Connection cn = null;
        PreparedStatement pr = null;       
        
        try{
            cn = Conexion.getConexion();
            String sql = "INSERT INTO usuario VALUES (null,'"+nombre+"','"+apellidos+"','"+usuario+"','"+clave+"',1)";
            pr = cn.prepareStatement(sql);
            pr.executeUpdate();            
            
        }catch(SQLException ex){
            ex.printStackTrace();
        }finally{
            try{
                pr.close();
                cn.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
        response.sendRedirect("InicioSesion.jsp");
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
