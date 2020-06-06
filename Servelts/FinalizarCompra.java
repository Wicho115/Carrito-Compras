/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelts;

import Controlador.DetalleVenta;
import Controlador.Producto;
import Controlador.Usuario;
import Controlador.Venta;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Wicho
 */
public class FinalizarCompra extends HttpServlet {

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
        
        HttpSession sesion=request.getSession();
        Date dia=new Date();
        Vector<DetalleVenta> vectorDetalles=(Vector<DetalleVenta>)sesion.getAttribute("detalleVenta");;
        Vector<Producto> stockProducto=(Vector<Producto>)sesion.getAttribute("StockProducto");
        Producto prod=new Producto();
        double totalPagar=0;
        for(DetalleVenta dv : vectorDetalles){
            totalPagar+=dv.getSubtotal_DetalleVenta();
        }
        
        Usuario usuario = new Usuario();
        Venta venta=new Venta();
        venta.setUsuario_codigo(usuario.getCodigo_usuario());
        venta.setVenta_fecha(dia.toString());
        venta.setVenta_totalpagar(totalPagar);
        boolean registrarVenta=venta.registrarVenta(venta, vectorDetalles);
        boolean actualizarVenta=prod.actualizarStocks(stockProducto);
        if(registrarVenta != actualizarVenta){
            sesion.setAttribute("Venta", venta);
            response.sendRedirect("ConfirmarCompra.jsp");
        }else{
            response.sendRedirect("error.jsp");
        }
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
