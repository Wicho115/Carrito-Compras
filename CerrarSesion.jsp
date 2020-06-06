
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>

<% HttpSession sesion = request.getSession();
   sesion.invalidate();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="refresh" content="5;url=http://localhost:8080/Carrito_Compras/InicioSesion.jsp" content="text/html charset=UTF-8" >
        <title>Cerrando Sesion</title>
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

            .contenedor{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 2rem;
                background-color: #5FAD41;
            }
            
            .cerrando{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 1rem;
                background-color: #5FAD50;
            }

            .gracias{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 2rem;
                background-color: #5FAD50;
                justify-content: center;
                align-items: center;
            }
            
        </style>
    </head>
    <body>
        
        <header>
            <h1>¡Tienda de Plantas de "El Loco Dave"!</h1>
        </header>
        
        <div class="contenedor">
            <div class="cerrando">
                <h2>Cerrando sesión...</h2>
            </div>

            <div class="gracias">
                <br>
                <br>
                <br>
                <h2>Muchas gracias por comprar con nosotros. Vuelve pronto.</h2>
                <br>
                <br>
                <h2>Estamos cerrando tu sesión. Por favor espere.</h2>
                <br>
                <br>
                <br>
            </div>
        </div>

        <footer>
            En esta parte va el Copyright y el contacto
        </footer>

    </body>
</html>
