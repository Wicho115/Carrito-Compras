
package Servelts;

import Controlador.DetalleVenta;
import Controlador.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/*
 * @author Wicho
 */
public class AgregarCarrito extends HttpServlet {

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
            HttpSession sesion = request.getSession();
            Vector<DetalleVenta> VecDetVen = null;
            
            Vector<Producto> VecProd = null;
            
            if(sesion.getAttribute("detalleVenta") != null){
                VecDetVen = (Vector<DetalleVenta>)sesion.getAttribute("detalleVenta"); 
                VecProd = (Vector<Producto>)sesion.getAttribute("StockProducto");
            }else{
                VecDetVen = new Vector<DetalleVenta>();
                VecProd = new Vector<Producto>();
            }
            
            int cantidad_Pedir = Integer.parseInt(request.getParameter("Cantidad"));
            int codigo_Producto = Integer.parseInt(request.getParameter("codigo_Prod"));
            Producto pr = new Producto();
            pr = pr.buscarProducto(codigo_Producto);
            double sub = pr.getPrecio_producto() * cantidad_Pedir;
            
            DetalleVenta dv = new DetalleVenta();
            dv.setNumero_DetalleVenta(VecDetVen.size()+1);
            dv.setCodigo_Producto(codigo_Producto);
            dv.setSubtotal_DetalleVenta(sub);
            dv.setCantidad_DetalleVenta(cantidad_Pedir);
            
            VecDetVen.add(dv);
            sesion.setAttribute("detalleVenta", VecDetVen);
            
            pr.setStock_producto(pr.getStock_producto() - cantidad_Pedir);
            VecProd.add(pr);
            sesion.setAttribute("StockProducto", VecProd);
            
            response.sendRedirect("Carrito.jsp");
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
