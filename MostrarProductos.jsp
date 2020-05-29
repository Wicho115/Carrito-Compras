<%-- 
    Document   : MostarProductos
    Created on : 27/05/2020, 01:13:51 PM
    Author     : luisc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="Controlador.*" %>

<%@ page session="true" %>
<%
String usuario = "";
HttpSession sesionOk = request.getSession();
if (sesionOk.getAttribute("usuario") == null) {
%>
<jsp:forward page="InicioSesion.jsp">
<jsp:param name="error" value="Es
obligatorio identificarse"/>
</jsp:forward>
<%
} else {
usuario = (String)sesionOk.getAttribute("usuario");
}
%>

<% 
    Producto p = new Producto();
    Vector<Producto> lista = p.listaProductos();    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda de Plantas "El Loco Dave"</title>
        <style type="text/css">

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
                margin: 2rem;
                background-color: #378337;
                color: #F2E2D2;
            }
            
            nav{
                display: inline-block;
                padding: 1rem;
                vertical-align: middle;
            }

            .tabla_productos{
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
        
        <nav>Bienvenido <%=usuario%></nav>
        <nav><a href="MostrarProductos.jsp">Nuestros Productos</a></nav>
        <nav><a href="CerrarSesion">Cerrar Sesión</a></nav>

        <div class="tabla_productos">
            <!-- Aqui va la tabla con los productos -->
            <table>
                <tr>
                    <td>&nbsp;</td>
                    <td>Nombre</td>
                    <td>Precio</td>
                    <td>Unidades Disponibles</td>
                    <td>&nbsp;</td>
                </tr>
                <% 
                    for(Producto prod : lista){
                        String url_pag = "ComprarProductos.jsp?codigo=" + prod.getCodigo_producto();
                %>
                <tr>
                    <td><img src="img/<%=prod.getUrlImagen_producto()%>"</td>
                    <td><%=prod.getNombre_producto()%></td>
                    <td><%=prod.getPrecio_producto()%> Soles</td>
                    <td><%=prod.getStock_producto()%></td>
                    <td><a href="<%=url_pag%>"> Comprar </a></td>
                </tr>                                                
                <%        
                    }
                %>
            </table>
        </div>

        <footer>
            En esta parte va el Copyright y el contacto
        </footer>

    </body>
</html>
