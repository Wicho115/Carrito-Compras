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
        <title>JSP Page</title>
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
                        for (DetalleVenta dv : vdv) {
                        Producto p = new Producto();
                        p = p.buscarProducto(dv.getCodigo_Producto());
                    %>
                    <tr>
                        <td></td>
                    </tr>                                                
                    <%
                        }
                    %>
                    <tr>
                    <a href="SFinalizarCompra">FINALIZAR COMPRA</a>
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
