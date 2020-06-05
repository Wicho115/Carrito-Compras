<%-- 
    Document   : ComprarProductos
    Created on : 27/05/2020, 01:18:58 PM
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
    int codigo = Integer.parseInt(request.getParameter("codigo"));
    Producto p = new Producto().buscarProducto(codigo);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comprar Productos</title>
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

            .tabla_compra1{
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

            .tabla_compra2{
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
    <script>
        function ComprobarStock() {
            var stock;

            stock = document.Producto.stock.value;
            stock = parseInt(stock);

            var numero = document.Producto.txtCantidadPedir.value;
            numero = parseInt(numero);

            var proximos = stock - numero;

            if (stock === 0) {
                alert("Lo sentimos, esteproducto se ha agotado.");
            } else {
                if (numero === 0) {
                    alert("Porfavor, compre por lo menos un producto");
                } else if (numero < 0) {
                    alert("No puede comprar productos negativos");
                } else {
                    if (proximos !== 0) {
                        if (proximos < 0) {
                            alert("No se puede joven");
                        } else {
                            alert("Ok");
                        }
                    }
                }

            }

        }
    </script>
    <body>

        <header>
            <h1>¡Tienda de Plantas de "El Loco Dave"!</h1>
        </header>
        
        <div class="navegacion">
            <nav><h3>&nbsp;&nbsp;Bienvenido <%=usuario%>&nbsp;&nbsp;</h3></nav>
            <nav><h3>&nbsp;&nbsp;<a href="MostrarProductos.jsp">Nuestros Productos</a>&nbsp;&nbsp;</h3></nav>
            <nav><h3>&nbsp;&nbsp;<a href="CerrarSesion">Cerrar Sesión</a>&nbsp;&nbsp;</h3></nav>
        </div>  

        <div class="tabla_compra1">
            
            <div class="texto">
                <h2>Usted ha elegido: <%=p.getNombre_producto()%></h2>
            </div>
            
            <div class="tabla_compra2">
                <!-- Aqui va la tabla con los productos que se van a comprar -->
                <form name="Producto" action="AgregarCarrito" method="post">
                    <br>
                    <table class="tabla" border="3">
                        <tr>
                            <td>Codigo</td>
                            <td>Nombre</td>
                        </tr>
                        <tr>
                            <td><%=p.getNumero_DetalleVenta()%></td>
                            <td><%=p.getNombre_producto()%></td>
                        </tr>
                        <tr>
                            <td colspan="2"><img src="img/<%=p.getUrlImagen_producto()%>" width="200px"></td>
                        </tr>
                        <tr>
                            <td>Precio</td>
                            <td>Disponible</td>
                        </tr>
                        <tr>
                            <td><%=p.getPrecio_producto()%> Soles</td>
                            <td><input type="text" readonly name="stock" id="stock" value="<%=p.getStock_producto()%>"/></td>
                        </tr>
                        <tr>
                            <td><input name="txtCantidadPedir" type="number" id="txtCantidadPedir" value="1" size="15"></td>
                            <td><input type="button" value="Registrar" onclick="ComprobarStock()"></td>
                        </tr>
                    </table>
                    <br>
                </form>
            </div>
        </div>

        <footer>
            En esta parte va el Copyright y el contacto
        </footer>

    </body>
</html>
