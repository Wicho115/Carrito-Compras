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
                background-color: #5FAD50;
                padding: 1rem;
                margin: 1rem;
                border-radius: 10px;
            }

            article{
                width: 40%;
                display: flex;
                justify-content: center;
                align-items: center;
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
    <script>
        
    function CamposVacíos() {
        var nombre, appat, apmat, usuario;
        var contraseña;
        var contraseñaCon;

        nombre = document.Registro_form.registro_Nombre.value;
        appat = document.Registro_form.registro_ApPaterno.value;
        apmat = document.Registro_form.registro_ApMat.value;
        usuario = document.Registro_form.registro_User.value;
        contraseña = document.Registro_form.registro_Password.value;
        contraseñaCon = document.Registro_form.registro_Password2.value;

        //Comprobar que los campos están completos
        if (nombre === "") {
            alert("Favor de llenar todos los campos");
        } else if (appat === "") {
            alert("Favor de llenar todos los campos");
        } else if (apmat === "") {
            alert("Favor de llenar todos los campos");
        } else if (usuario === "") {
            alert("Favor de llenar todos los campos");
        } else if (contraseña === "") {
            alert("Favor de llenar todos los campos");
        } else if (contraseñaCon === "") {
            alert("Favor de llenar todos los campos");
        } else {
            ComprobarEspacios();
        }
    }

    function ComprobarEspacios() {
        //alert("Comprobando espacios");
        var usuario, contraseña;
        var noValido = /\s/;

        usuario = document.Registro_form.registro_User.value;
        contraseña = document.Registro_form.registro_Password.value;

        if (noValido.test(usuario)) { // se chequea el regex de que el string no tenga espacio
            alert("El ususario no puede contener espacios en blanco");
            return false;
        }else if (noValido.test(contraseña)) {
            alert("La contraseña no puede contener espacios en blanco");
            return false;
        }else {
             //alert("No se detectaron espacios");
            ContraseñasIguales();
        }
    }

    function ContraseñasIguales(){
        var contraseña;
        var contraseñaCon;

        contraseña = document.Registro_form.registro_Password.value;
        contraseñaCon = document.Registro_form.registro_Password2.value;

        if (contraseña === contraseñaCon) {
                document.Registro_form.submit();
            }
            else {
                alert("Las contraseñas no coinciden");
            }
    }
        
    </script>
    <body>

        <header>
            <h1>¡Tienda de Plantas de "El Loco Dave"!</h1>
        </header>

        <div class="registro">
            <aside class="aside">
                <h1>Ingrese sus datos para poder Registrar el usuario</h1>
            </aside>
            <article>
                <form name="Registro_form" action="RegistrarUsuario" method="post">
                    <table class="tabla">
                        <tr>
                            <td>
                                Nombre:
                            </td>
                            <td>
                                <input type="text" name="registro_Nombre" id="registro_Nombre" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Apellido Paterno:
                            </td>
                            <td>
                                <input type="text" name="registro_ApPaterno" id="registro_ApPaterno" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Apellido Materno:
                            </td>
                            <td>
                                <input type="text" name="registro_ApMat" id="registro_ApMat" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Usuario:
                            </td>
                            <td>
                                <input type="text" name="registro_User" id="registro_User"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Contraseña:
                            </td>
                            <td>
                                <input type="password" name="registro_Password" id="registro_Password"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Confirmar contraseña:
                            </td>
                            <td>
                                <input type="text" name="registro_Password2" id="registro_Password2"/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <input class="boton" type="button" name="Button_Registrar" value="Registrarse" onclick="CamposVacíos()"/>
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
