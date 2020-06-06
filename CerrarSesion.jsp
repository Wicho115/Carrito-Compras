
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>

<% HttpSession sesion = request.getSession();
   sesion.invalidate();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="refresh" content="5" content="text/html; charset=UTF-8" url="InicioSesion.jsp">
        <title>Cerrando Sesion</title>
    </head>
    <body>
        <h1>Gracias por todo, Estamos Cerrando su sesion...</h1>
    </body>
</html>
