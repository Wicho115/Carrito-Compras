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
                        <td>Subtotal</td>
                    </tr>
                    <%
                        int prod_1=0,prod_2=0,prod_3=0,prod_4=0,prod_5=0,prod_6=0,prod_7=0,prod_8=0,prod_9=0,prod_10=0,prod_11=0,prod_12=0,prod_13=0,prod_14=0,prod_15=0,prod_16=0,prod_17=0,prod_18=0,prod_19=0,prod_20=0;
                        
                        int total = 0;
                        for (DetalleVenta dv : vdv) {
                        Producto p = new Producto();
                        p = p.buscarProducto(dv.getCodigo_Producto());
                        switch(dv.getCodigo_Producto()){
                            
                            case 1:
                                if(dv.getCantidad_DetalleVenta() + prod_1 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_1 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                                
                            case 2:
                                if(dv.getCantidad_DetalleVenta() + prod_2 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_2 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                                
                            case 3:
                                if(dv.getCantidad_DetalleVenta() + prod_3 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_3 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                                
                            case 4:
                                if(dv.getCantidad_DetalleVenta() + prod_4 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_4 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                            case 5:
                                if(dv.getCantidad_DetalleVenta() + prod_5 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_5 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                            case 6:
                                if(dv.getCantidad_DetalleVenta() + prod_6 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_6 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                            case 7:
                                if(dv.getCantidad_DetalleVenta() + prod_7 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_7 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                            case 8:
                                if(dv.getCantidad_DetalleVenta() + prod_8 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_8 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                            case 9:
                                if(dv.getCantidad_DetalleVenta() + prod_9 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_9 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                            case 10:
                                if(dv.getCantidad_DetalleVenta() + prod_10 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_10 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                            case 11:
                                if(dv.getCantidad_DetalleVenta() + prod_11 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_11 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                            case 12:
                                if(dv.getCantidad_DetalleVenta() + prod_12 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_12 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                            case 13:
                                if(dv.getCantidad_DetalleVenta() + prod_13 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_13 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                            case 14:
                                if(dv.getCantidad_DetalleVenta() + prod_14 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_14 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                            case 15:
                                if(dv.getCantidad_DetalleVenta() + prod_15 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_15 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                            case 16:
                                if(dv.getCantidad_DetalleVenta() + prod_16 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_16 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                            case 17:
                                if(dv.getCantidad_DetalleVenta() + prod_17 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_17 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                            case 18:
                                if(dv.getCantidad_DetalleVenta() + prod_18 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_18 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                            case 19:
                                if(dv.getCantidad_DetalleVenta() + prod_19 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_19 += dv.getCantidad_DetalleVenta();
                                }
                                break;
                            case 20:
                                if(dv.getCantidad_DetalleVenta() + prod_20 > p.getStock_producto()){
                                    //vdv.removeElement(dv);
                                    sesion.setAttribute("BorrarProducto", dv);
                                    response.sendRedirect("error.jsp?code=1");                                    
                                }else{
                                    prod_20 += dv.getCantidad_DetalleVenta();
                                }
                                break;                                
                        }
                    %>
                    <tr>
                        <td> <img src="img/<%=p.getUrlImagen_producto()%>" </td>
                        <td> <%=p.getNombre_producto()%></td>
                        <td> <%=p.getPrecio_producto()%> </td>
                        <td> <%=dv.getCantidad_DetalleVenta()%> </td>
                        <td> <%=dv.getSubtotal_DetalleVenta()%></td>
                    </tr>                                                
                    <%
                        total += dv.getSubtotal_DetalleVenta();
                        }
                    %>
                    <tr> <!-- Esto nomas es para dividir --> </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>Total a pagar:</td>
                        <td> <%=total %> Pesos</td>
                        <td>&nbsp;</td>                        
                        <td>&nbsp;</td>                        
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td><a href="FinalizarCompra">FINALIZAR COMPRA</a></td>
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
