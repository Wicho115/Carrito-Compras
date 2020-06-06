<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Controlador.*" %>

<%@ page session="true" %>
<%
String usuario = "";
HttpSession sesion = request.getSession();
if (sesion.getAttribute("usuario") == null) {
%>
<jsp:forward page="login.jsp">
<jsp:param name="error" value="Es
obligatorio identificarse"/>
</jsp:forward>
<%
} else {
usuario = (String)sesion.getAttribute("usuario");
}
%>








<%
    Vector<DetalleVenta> vdv = (Vector<DetalleVenta>)sesion.getAttribute("detalleVenta");
   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda de Plantas "El Loco Dave"</title>
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

            header, footer, nav{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 1rem;
                background-color: #378337;
                color: #F2E2D2;
            }

            nav{
                display: inline-block;                
                vertical-align: middle;
                background-color: #5FAD50;
            }
            
            a{
                color: white;
            }
            
            .navegacion{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 2rem;
                background-color: #5FAD41;
            }
            
            .contenedor_carrito{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 2rem;
                background-color: #5FAD41;
            }
            
            .texto{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 1rem;
                background-color: #5FAD50;
            }
            
            .tabla_productos{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 2rem;
                background-color: #5FAD50;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            
            .carrito{
                border: 4px solid rgb(58, 86, 131);
                border-radius: 10px;
            }
            
        </style>
    </head>
    <body>
        
        <header>
            <h1>¡Tienda de Plantas de "El Loco Dave"!</h1>
        </header>

        <div class="navegacion">
            <nav><h3>&nbsp;&nbsp;Bienvenido <%=usuario%>&nbsp;&nbsp;</h3></nav>
            <nav><h3>&nbsp;&nbsp;<a href="MostrarProductos.jsp">Nuestros Productos</a>&nbsp;&nbsp;</h3></nav>
            <nav><h3>&nbsp;&nbsp;<a href="CerrarSesion">Cerrar Sesión</a>&nbsp;&nbsp;</h3></nav>
        </div>       

        <div class="contenedor_carrito">
            <div class="texto">
                <h2>Este es tu carrito de Compras</h2>
            </div>
            <!-- Aqui va la tabla con los productos -->
            <div class="tabla_productos">
                <br>
                <table class="carrito" border="3">
                    <tr>
                        <td>&nbsp;</td>
                        <td>Nombre</td>
                        <td>Precio por Unidad</td>
                        <td>Unidades Solicitadas</td>
                        <td>&nbsp;</td>
                    </tr>
                    <%
                        for (DetalleVenta dv : vdv) {
                        Producto p = new Producto();
                        p = p.buscarProducto(dv.getCodigo_Producto());
                    %>
                    <tr>
                        <td> <!-- La imagen --> </td>
                        <td> <!-- El Nombre --> </td>
                        <td> <!-- Precio de unidad --> </td>
                        <td> <!-- Cantidad pedida --> </td>
                    </tr>                                                
                    <%
                        }
                    %>
                    <tr> <!-- Esto nomas es para dividir --> </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>Total a pagar:</td>
                        <td> <!-- El total que se va a pagar --></td>
                        <td>&nbsp;</td>                        
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td><a href="SFinalizarCompra">FINALIZAR COMPRA</a></td>
                    </tr>
                </table>
                <br>
            </div>
        </div>

        <footer>
            En esta parte va el Copyright y el contacto
        </footer>
    </body>
</html>
