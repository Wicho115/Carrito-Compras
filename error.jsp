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
                margin: 1rem;
                background: url(img/madera.jpg);
                color: #F2E2D2;
            }

            .mensaje{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 2rem;
                background-color: #5FAD41;
            }
            
            .oops{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 1rem;
                background-color: #5FAD50;
            }
            
            .espere{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 2rem;
                background-color: #5FAD50;
                display: flex;
                justify-content: center;
                align-items: center;
            }

        </style>
    </head>
    <body>

        <header>
            <h1>¡Tienda de Plantas de "El Loco Dave"!</h1>
        </header>

        <div class="mensaje">
            <div class="oops">
                <h2>Oops... Ha ocurrido un error.</h2>
            </div>
            
            <div class="espere">
                <br>
                <br>
                <br>
                <h2>Lo sentimos, ha ocurrido un error. Por favor espere, lo estamos redirigiendo a nuestros productos...</h2>
                <br>
                <br>
                <br>
            </div>
        </div>

        <footer>
            Tienda El Loco Dave © 2006 || Contacto: 55-7410-8596 || Contacto: 55-4512-7412
        </footer>

    </body>
</html>