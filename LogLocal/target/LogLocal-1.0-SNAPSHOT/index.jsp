<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADMINISTRACION</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uuid/8.3.2/uuid.min.js"></script>
</head>
<body>
<div class="login-container">
    <img src="img/inicio_sesion.png" alt="Imagen de inicio de sesión" class="login-image">
    <h2>INICIO SESION ADMINISTRACION</h2>
    <form id="login-form">
        <div class="form-group">
            <label for="username">Usuario:</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div class="form-group">
            <label for="password">PIN:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <button type="submit">Continuar</button>
    </form>
    <div id="error-message" class="error-message"></div>
</div>

<script src="js/script.js"></script>
</body>
</html>
