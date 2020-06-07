<%@page import="Controlador.Producto"%>
<%@page import="java.util.Vector"%>
<%@page import="Controlador.DetalleVenta"%>
<%@page import="Controlador.Usuario"%>
<%@page import="Controlador.Venta"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

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
        usuario = (String) sesion.getAttribute("usuario");
    }
%>

<%
    Venta v = (Venta) sesion.getAttribute("Venta");
    Usuario u = (Usuario) sesion.getAttribute("usuarioOB");
    Vector<DetalleVenta> vdv = (Vector<DetalleVenta>) sesion.getAttribute("detalleVenta");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compra Realizada</title>
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

            header, footer {
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 1rem;
                background: url(img/madera.jpg);
                color: #F2E2D2;
            }

            nav{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 1rem;
                background-color: #378337;
                color: #F2E2D2;
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

            .contenedor{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 2rem;
                background-color: #5FAD41;
            }
            
            .mensaje{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 1rem;
                background-color: #5FAD50;
            }

            .ticket{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 2rem;
                background-color: #5FAD50;
                display: flex;
                justify-content: center;
                align-items: center;
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
            <nav><h3>&nbsp;&nbsp;<a href="Carrito.jsp">Tu carrito</a>&nbsp;&nbsp;</h3></nav>
            <nav><h3>&nbsp;&nbsp;<a href="CerrarSesion.jsp">Cerrar Sesión</a>&nbsp;&nbsp;</h3></nav>
        </div>

        <div class="contenedor">
            <!-- Aqui va la el Mensaje de que se realizó la compra -->
            <div class="mensaje">
                <br>
                <h2>Se ha realizado la compra con éxito</h2>
                <h2>Aqui tiene su ticket:</h2>
                <br>
            </div>

            <div class="ticket">
                <table class="tabla" border="3">
                    <tr>
                        <td>Comprador: <%=usuario%></td>
                        <td></td>
                        <td></td>
                        <td>Codigo usuario: <%=u.getCodigo_usuario()%></td>
                    </tr>
                    <tr>
                        <td>Fecha de compra: <%=v.getVenta_fecha()%></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>Nombre del Producto</td>
                        <td>Cantidad comprada</td>
                        <td>Subtotal</td>
                    </tr>

                    <%
                        for (DetalleVenta dv : vdv) {
                            Producto p = new Producto();
                            p = p.buscarProducto(dv.getCodigo_Producto());
                    %>
                    <tr>
                        <td><img src="img/<%=p.getUrlImagen_producto()%>" width="200px"></td>
                        <td><%=p.getNombre_producto()%></td>
                        <td><%=dv.getCantidad_DetalleVenta()%></td>
                        <td><%=dv.getSubtotal_DetalleVenta()%></td>
                    </tr>                    
                    <%
                        }
                    %>
                    <tr>
                        <td></td>
                        <td></td>
                        <td>Total pagado</td>
                        <td><%=v.getVenta_totalpagar()%> soles</td>
                    </tr>
                </table>
            </div>

            <div class="mensaje">
                <br>
                <h2>Gracias por comprar con nosotros, de clic en <a href="MostrarProductos.jsp">"Nuestros productos"</a> para seguir comprando</h2>
                <br>      
            </div>

        </div>
        <%
            vdv.clear();
        %>          
        <footer>
            Tienda El Loco Dave © 2006 || Contacto: 55-7410-8596 || Contacto: 55-4512-7412
        </footer>

    </body>
</html>
