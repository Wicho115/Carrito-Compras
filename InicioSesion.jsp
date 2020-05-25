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
            
        -->    
        </style>
    </head>
    
    <body>
        <header>
            
            <h1>¡Tienda de Plantas de "El Loco Dave"!</h1>
            
        </header>
            <h2>Inicia sesion con tu cuenta planta c:</h2>
        <table>
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
                <td colspan="2">¿Aún no tienes cuenta con nostros? <a href="Registro.jsp">Registrate!</a></td>
            </tr>
        </table>
    </body>
</html>
