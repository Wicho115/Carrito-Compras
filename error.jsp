<%-- 
    Document   : error
    Created on : 28/05/2020, 04:49:22 PM
    Author     : Wicho
--%>

<%@page import="java.util.Vector"%>
<%@page import="Controlador.DetalleVenta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%
    HttpSession sesion = request.getSession();
    DetalleVenta dv = new DetalleVenta();
    Vector<DetalleVenta> vdv = null;
    
    int c = Integer.parseInt(request.getParameter("code"));
    if(c == 1){
        vdv = (Vector<DetalleVenta>)sesion.getAttribute("detalleVenta");
        dv = (DetalleVenta)sesion.getAttribute("BorrarProducto");
        
        vdv.removeElement(dv);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="refresh" content="3;url=http://localhost:8080/Carrito_Compras/MostrarProductos.jsp" content="text/html charset=UTF-8" >
        <title>Ha ocurrido un error</title>
        <style>
            *{
                padding: 0;
                margin: 0;
                text-align: center;
                vertical-align: middle;
            }

            body{
                background: url(img/pasto.jpeg)
            }

            header, footer {
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 2rem;
                background-color: #378337;
                color: #F2E2D2;
            }

            .mensaje{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 2rem;
                background-color: #5FAD41;
            }
        </style>
    </head>
    <body>

        <header>
            <h1>¡Tienda de Plantas de "El Loco Dave"!</h1>
        </header>

        <div class="mensaje">
            <!-- En esta parte va el mensaje de que ha ocurrido un error -->
            <br>
            <h1>Lo sentimos, ha ocurrido un error. Vuelva a intentarlo más tarde.</h1>
            <br>
        </div>

        <footer>
            En esta parte va el Copyright y el contacto
        </footer>

    </body>
</html>