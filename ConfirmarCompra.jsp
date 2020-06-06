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
usuario = (String)sesion.getAttribute("usuario");
}
%>

<%    
    Venta v = (Venta)sesion.getAttribute("Venta");   
    Usuario u = (Usuario)sesion.getAttribute("usuarioOB");
    Vector<DetalleVenta> vdv = (Vector<DetalleVenta>)sesion.getAttribute("detalleVenta");
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
            <!-- Aqui va la el Mensaje de que se realizó la compra -->
            <br>
            <h1>Se ha realizado la compra con éxito</h1>
            <h1>Aqui tiene su ticket:</h1>
            <br>
            <table>
                <tr>
                    <td>Comprador: <%=usuario%></td>
                    <td></td>
                    <td></td>
                    <td>Codigo usuario: <%=v.getUsuario_codigo()%></td>
                </tr>
                <tr>
                    <td>Fecha: <%=v.getVenta_fecha() %></td>
                </tr>
                
                    <%
                        for(DetalleVenta dv : vdv){
                        Producto p = new Producto();
                        p = p.buscarProducto(dv.getCodigo_Producto());
                    %>
                        <tr>
                            <td><img src="img/<%=p.getUrlImagen_producto()%>"</td>
                            <td><%=p.getNombre_producto()%></td>
                            <td><%=dv.getCantidad_DetalleVenta()%></td>
                            <td><%=dv.getSubtotal_DetalleVenta() %></td>
                        </tr>                    
                    <%    
                        }
                    %>
                    <tr>
                        <td>Total pagado</td>
                        <td><%=v.getVenta_totalpagar()%> soles</td>
                    </tr>
            </table>              
                    <h2>Gracias por comprarpor nosotros, de clic en <a href="MostrarProductos.jsp">"Nuestros productos"</a> para seguir comprando</h2>
            <br>
            <h2></h2>
            <br>
        </div>
        <%
            vdv.clear();
        %>          
        <footer>
            En esta parte va el Copyright y el contacto
        </footer>
        
    </body>
</html>
