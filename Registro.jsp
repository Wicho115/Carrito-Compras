
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <script src="Verificar_Contraseña.js"></script>
    <body>
        <form name="Registro_form" method="post">
            <table>
                <tr>
                    <td colspan="2">
                        <h1>Ingrese sus datos para poder Registrar el usuario</h1>  
                    </td>
                </tr>
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
                    <td colspan="2">
                        <input type="button" name="Button_Registrar" value="Registrarse" onclick="ComprobarContraseñas()"/>
                    </td>
                </tr>
            </table>   
        </form>
    </body>
</html>
