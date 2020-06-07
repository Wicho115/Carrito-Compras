<%-- 
    Document   : Pago
    Created on : 6/06/2020, 02:33:11 PM
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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

            .porfavor{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 1rem;
                background-color: #5FAD50;
            }

            .pagos{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 2rem;
                background-color: #5FAD50;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .datos{
                border: 4px solid rgb(58, 86, 131);
                border-radius: 10px;
            }

        </style>
    </head>
    <script>

        function CamposVacíos() {
            var tarjeta, nombre, fecha, cvc;

            tarjeta = document.getElementById("tarjeta").value;
            nombre = document.getElementById("nombre").value;
            fecha = document.getElementById("fecha").value;
            cvc = document.getElementById("cvc").value;

            if (tarjeta === "") {
                alert("Favor de llenar todos los campos");
            } else if (nombre === "") {
                alert("Favor de llenar todos los campos");
            } else if (fecha === "") {
                alert("Favor de llenar todos los campos");
            } else if (cvc === "") {
                alert("Favor de llenar todos los campos");
            } else {
                Espacios();
            }
        }

        function Espacios() {
            var tarjeta, cvc;
            var noValido = /\s/;

            tarjeta = document.getElementById("tarjeta").value;
            cvc = document.getElementById("cvc").value;

            if (noValido.test(tarjeta)) { // se chequea el regex de que el string no tenga espacio
                alert("El numero de tarjeta no puede contener espacios en blanco");
                return false;
            } else if (noValido.test(cvc)) {
                alert("El CVC no puede contener espacios en blanco");
                return false;
            } else {
                Letras();
            }
        }

        function Letras() {
            var tarjeta, cvc;

            tarjeta = document.getElementById("tarjeta").value;
            cvc = document.getElementById("cvc").value;

            if (isNaN(tarjeta)) {
                alert("El número de tarjeta es incorrecto");
                return false;
            } else if (isNaN(cvc)) {
                alert("El CVC es incorrecto");
                return false;
            } else {
                LongitudCorrecta();
            }
        }

        function LongitudCorrecta() {
            var tarjeta, cvc, tarjeta2, cvc2;

            tarjeta = document.getElementById("tarjeta").value;
            cvc = document.getElementById("cvc").value;
            tarjeta2 = tarjeta.length;
            cvc2 = cvc.length;

            if (tarjeta2 != 16) {
                alert("El número de tarjeta debe tener 16 caracteres");
            } else if (cvc2 != 3) {
                alert("El CVC debe tener 3 caracteres");
            } else {
                document.pagar.submit();
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
            <nav><h3>&nbsp;&nbsp;<a href="Carrito.jsp">Tu carrito</a>&nbsp;&nbsp;</h3></nav>
            <nav><h3>&nbsp;&nbsp;<a href="CerrarSesion.jsp">Cerrar Sesión</a>&nbsp;&nbsp;</h3></nav>
        </div>

        <div class="contenedor">
            <div class="porfavor">
                <h2>Por favor, elije un método de pago</h2>
            </div>

            <div class="pagos">
                <form name="pagar" action="FinalizarCompra">
                    <table class="datos" border="3">
                        <tr>
                            <td>Tipo de tarjeta</td>
                            <td>
                                <select name="tipopago" id="tipopago">
                                    <option>PayPal</option>
                                    <option>Visa</option>
                                    <option>MasterCard</option>
                                </select> 
                            </td>                                       
                        </tr>
                        <tr>
                            <td>Número de Tajeta:</td>
                            <td><input type="text" name="tarjeta" id="tarjeta"></td>
                        </tr>
                        <tr>
                            <td>Nombre del Propietario:</td>
                            <td><input type="text" name="nombre" id="nombre"></td>                       
                        </tr>
                        <tr>
                            <td>Fecha de expiración:</td>
                            <td><input type="month" name="fecha" id="fecha" required></td>                       
                        </tr>
                        <tr>
                            <td>CVC</td>
                            <td><input type="text" maxlenght="3" name="cvc" id="cvc"></td>                       
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="button" value="Finalizar Compra" onclick="CamposVacíos()"></td>
                        </tr>
                    </table>
                </form>                
            </div>
        </div>

        <footer>
            Tienda El Loco Dave © 2006 || Contacto: 55-7410-8596 || Contacto: 55-4512-7412
        </footer>

    </body>
</html>
