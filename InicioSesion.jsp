<%-- 
    
--%>

<%@page contentType="text/html; charset=iso-8859-1" language="java" session="true" import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd>
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
                
                .formulario{
                    border: 4px solid rgb(58, 86, 131);
                    border-radius: 30px;
                    
                    display: flex;
                    width: 90%;
                }

                tr, td, input{
                    font-family: Arial, Helvetica, sans-serif;
                }

                -->    
            </style>
    </head>

    <body>

        <header>
            <h1>¡Tienda de Plantas de "El Loco Dave"!</h1>
        </header>

        <div class="contenedor">
            <aside>
                <h2>Inicia sesion con tu cuenta planta c:</h2>
                <br></br>
                <h4>Existen muchos beneficios de tener una cuenta con nosotros :D</h4>
                <br></br>
            </aside>
            <article>
                <br></br>
                <!-- <div class="formulario"> -->
                    <table class="tabla">
                        <form name="inicioSesion" action="VerificarUsuario" method="post">
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
                                    <input type="text" name="login_Contraseña" id="login_Contraseña"/>
                                </td>
                            </tr>
                            <tr>
                                <td>

                                </td>
                                <td>
                                    <input type="submit" name="Button_Inicio" value="Iniciar Sesion"/>
                                </td>
                            </tr>
                        </form>
                        <tr>
                            <td colspan="2">¿Aún no tienes cuenta con nosotros? <a href="Registro.jsp">Registrate!</a></td>
                        </tr>
                    </table>
                <!-- </div> -->    
                <br></br>
            </article>
        </div>

        <footer>
            En esta parte va el Copyright y el contacto
        </footer>

    </body>
</html>
