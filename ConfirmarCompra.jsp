<%-- 
    Document   : ConfirmarCompra
    Created on : 27/05/2020, 01:24:00 PM
    Author     : luisc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <br>
            <h2>Gracias por comprarpor nosotros, de clic en "Nuestros productos" para seguir comprando</h2>
            <br>
            <h2>También puede serrar sesión el el botón de cerrar sesión</h2>
            <br>
        </div>

        <footer>
            En esta parte va el Copyright y el contacto
        </footer>
        
    </body>
</html>
