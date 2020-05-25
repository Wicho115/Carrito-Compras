<%-- 
    Document   : Registro
    Created on : 22/05/2020, 04:04:56 PM
    Author     : Wicho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <style type="text/css">
            <!--

            *{
                padding: 0;
                margin: 0;               
                vertical-align: middle;
            }

            header,footer,.registro,.aside{
                text-align: center;
            }

            header, footer {
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 2rem;
                background-color: #378337;
                color: #F2E2D2;
            }

            body{
                background: url(img/pasto.jpeg)
            }

            article,aside{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;                   
                height: 170px;
                display: inline-block;
                text-align: justify;
                background-color: white;
                padding: 1rem;
                margin: 1rem;
                border-radius: 10px;
            }

            article{
                width: 40%;
            }
            aside{
                width: 20%;
            }

            .registro{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 2rem;
                background-color: #5FAD41;
            }

            .tabla{
                border: 4px solid rgb(58, 86, 131);
                border-radius: 10px;
            }

            .boton{
                text-align: center;
            }

            td{
                font-family: Arial, Helvetica, sans-serif;
            }

            input, tr{
                font-family: Arial, Helvetica, sans-serif;
            }

            -->
        </style>
    </head>
    <script src="Verificar_Contraseña.js"></script>
    <body>

        <header>
            <h1>¡Tienda de Plantas de "El Loco Dave"!</h1>
        </header>

        <div class="registro">
            <aside class="aside">
                <h1>Ingrese sus datos para poder Registrar el usuario</h1>
            </aside>
            <article>
                <form name="Registro_form" method="post">
                    <table class="tabla">
                        <tr>
                            <td>
                                Nombre:
                            </td>
                            <td>
                                <input type="text" name="registro_Nombre" id="registro_Nombre" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Apellido Paterno:
                            </td>
                            <td>
                                <input type="text" name="registro_ApPaterno" id="registro_ApPaterno" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Apellido Materno:
                            </td>
                            <td>
                                <input type="text" name="registro_ApMat" id="registro_ApMat" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Usuario:
                            </td>
                            <td>
                                <input type="text" name="registro_User" id="registro_User" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Contraseña:
                            </td>
                            <td>
                                <input type="text" name="registro_Password" id="registro_Password" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Confirmar contraseña:
                            </td>
                            <td>
                                <input type="text" name="registro_Password2" id="registro_Password2" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <input class="boton" type="button" name="Button_Registrar" value="Registrarse" onclick="ComprobarContraseñas()"/>
                            </td>
                        </tr>
                    </table>   
                </form>
            </article>           
        </div>    

        <footer>
            En esta parte va el Copyright y el contacto
        </footer>

    </body>
</html>
