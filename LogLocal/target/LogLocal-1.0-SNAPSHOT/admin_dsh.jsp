<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.util.*" %>

<!--Validacion de Inicio de Sesion-->
<%
    // Verificar si el token está presente en el almacenamiento local
    String token = (String) request.getSession().getAttribute("token");
%>
<script>
    var token = localStorage.getItem('token');
    console.log("Token recuperado del almacenamiento local: " + token);
    if (!token) {
        // Si el token no está presente, redirigir al usuario al inicio de sesión
        window.location.href = "index.jsp";
    }
</script>
<%
%>

<!--html-->
<html>
<head>
    <title>ADMIN</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uuid/8.3.2/uuid.min.js"></script>
    <script src="js/script.js"></script>
</head>
<body>
<h1>HOLA ADMIN :D</h1>

<!--Boton de cierre de sesion-->
<button onclick="cerrarSesion()">Cerrar Sesión</button>
</body>
</html>