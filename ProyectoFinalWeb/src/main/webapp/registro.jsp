<%-- 
    Document   : registro
    Created on : 27 abr 2024, 2:14:54 p.m.
    Author     : Yeisi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registrar usuario</h1>
        <form action="nuevousuario" method="post">
            <input type="text" name="usuario" placeholder="nombre de usuario"><br>
            <input type="password" name="pass"><br>
            <input type="submit" value="Registrar Usuario">
        </form>
    </body>
</html>
