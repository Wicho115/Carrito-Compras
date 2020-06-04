<%-- 
    Document   : MostrarProductos
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
        usuario = (String) sesionOk.getAttribute("usuario");
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

            .tabla_productos1{
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

            .tabla_productos2{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 2rem;
                background-color: #5FAD50;
            }

            .tabla{
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

        <div class="tabla_productos1">
            <div class="texto">
                <h2>Estos son nuestros productos</h2>
            </div>
            <!-- Aqui va la tabla con los productos -->
            <div class="tabla_productos2">
                <br>
                <table class="tabla" border="3">
                    <tr>
                        <td>&nbsp;</td>
                        <td>Nombre</td>
                        <td>Precio</td>
                        <td>Unidades Disponibles</td>
                        <td>&nbsp;</td>
                    </tr>
                    <%
                        for (Producto prod : lista) {
                            String url_pag = "ComprarProductos.jsp?codigo=" + prod.getCodigo_producto();
                    %>
                    <tr>
                        <td><img src="img/<%=prod.getUrlImagen_producto()%>" width="200px"></td>
                        <td><%=prod.getNombre_producto()%></td>
                        <td><%=prod.getPrecio_producto()%> Soles</td>
                        <td><%=prod.getStock_producto()%></td>
                        <td><a href="<%=url_pag%>"> Comprar </a></td>
                    </tr>                                                
                    <%
                        }
                    %>
                </table>
                <br>
            </div>
        </div>

        <footer>
            En esta parte va el Copyright y el contacto
        </footer>

    </body>
</html>
