<%-- 
    Document   : InicioSesionRegistrado
    Created on : 22/05/2020, 07:42:54 PM
    Author     : Wicho
--%>

<%@page contentType="text/html; charset=iso-8859-1" language="java" session="true" import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de Sesión</title>
        <style type="text/css">
            <!--    

            *{
                padding: 0;
                margin: 0;
                text-align: center;
                vertical-align: middle;
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
                background-color: #5FAD50;
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

            .contenedor{
                border: 4px solid rgb(37, 27, 14);
                border-radius: 30px;
                margin: 2rem;
                background-color: #5FAD41;
            }

            .tabla{
                border: 4px solid rgb(58, 86, 131);
                border-radius: 10px;
            }

            tr, td, input{
                font-family: Arial, Helvetica, sans-serif;
            }

            -->    
        </style>
    </head>
    <script>
        
        function CampoVacio(){
        var usuario, contraseña;

        usuario = document.getElementById("login_Usuario").value;
        contraseña = document.getElementById("login_Contraseña").value;

        if (usuario === "") {
            alert("Favor de llenar todos los campos");
        }else if (contraseña === ""){
            alert("Favor de llenar todos los campos");
        }else{
            CamposEspacios();
        }

    }

    function CamposEspacios() {
        //alert("Comprobando espacios");
        var usuario, contraseña;
        var noValido = /\s/;

        usuario = document.getElementById("login_Usuario").value;
        contraseña = document.getElementById("login_Contraseña").value;

        if (noValido.test(usuario)) { // se chequea el regex de que el string no tenga espacio
            alert("El usuario no puede contener espacios en blanco");
            return false;
        }else if (noValido.test(contraseña)) {
            alert("La contraseña no puede contener espacios en blanco");
            return false;
        }else{
            document.inicio_Sesion2.submit();
        }
    }
        
    </script>
    <body>

        <header>
            <h1>¡Tienda de Plantas de "El Loco Dave"!</h1>
        </header>

        <div class="contenedor">
            <aside>
                <h2>Gracias por crear una cuenta con nosotros</h2>
                <br></br>
                <h4>A continuación Ingresa los datos de tu nueva cuenta para iniciar sesión</h4>
                <br></br>
            </aside>
            <article>
                <br></br>
                <table class="tabla">
                    <form name="inicio_Sesion2" action="VerificarUsuario" method="post">
                        <tr>
                            <td>
                                Usuario
                            </td>
                            <td>
                                <input type="text" name="login_Usuario" id="login_Usuario"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Contraseña
                            </td>
                            <td>
                                <input type="password" name="login_Contraseña" id="login_Contraseña"/>
                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                            <td>
                                <input type="button" name="Button_Inicio" value="Iniciar Sesion" onclick="CampoVacio()"/>
                            </td>
                        </tr>
                    </form>                    
                </table>
                <br></br>
            </article>
        </div>

        <footer>
            En esta parte va el Copyright y el contacto
        </footer>

    </body>
</html>
