<%-- 
    Document   : iniciarSesion
    Created on : 27 abr 2024, 2:14:38 p.m.
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
        <h1>Iniciar sesión</h1>
        <form action="iniciar" method="post" onsubmit="return validateForm()">
  <input type="text" name="usuario" placeholder="nombre de usuario" required><br>
  <input type="password" name="pass" required><br>
  <input type="submit" value="Iniciar sesión">
</form>

<script>
function validateForm() {
  // Obtener los valores de los campos
  const usuario = document.forms[0].elements["usuario"].value;
  const password = document.forms[0].elements["pass"].value;

  // Validar el nombre de usuario (no vacío)
  if (usuario === "") {
    alert("El nombre de usuario es obligatorio");
    return false;
  }

  // Validar la contraseña (no vacía)
  if (password === "") {
    alert("La contraseña es obligatoria");
    return false;
  }

  // Validar longitud de la contraseña (máximo 15 caracteres)
  if (password.length > 15) {
    alert("La contraseña no puede tener más de 15 caracteres");
    return false;
  }

  // Validar que la contraseña no contenga espacios
  if (password.includes(" ")) {
    alert("La contraseña no puede contener espacios");
    return false;
  }

  // Si todas las validaciones pasan, retorna true para permitir el envío del formulario
  return true;
}
</script>

        <!-- comment <form action="iniciar" method="post">
            <input type="text" name="usuario" placeholder="nombre de usuario"><br>
            <input type="password" name="pass"><br>
            <input type="submit" value="Iniciar sesión">
        </form>
        <br>
         -->
        No tienes una cuenta...<a href="registro.jsp">Registrar</a>
    </body>
</html>
