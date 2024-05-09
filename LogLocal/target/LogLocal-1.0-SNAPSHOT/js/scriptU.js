document.addEventListener('DOMContentLoaded', function () {
    const form = document.getElementById('login-form');
    const errorMessage = document.getElementById('error-message');

    form.addEventListener('submit', function (event) {
        event.preventDefault();
        const username = document.getElementById('username').value.trim();
        const password = document.getElementById('password').value.trim();

        // Se busca al usuario en la lista de usuarios
        const user = usuarios.find(u => u.usuario === username && u.contraseña === password);

        // Verificamos si se encuentra el usuario
        if (user) {

            // Generacion del Token con la biblioteca uuid
            const token = uuid.v4();
            console.log("Token generado:", token);

            // Se guarda el token en el almacenamiento local
            localStorage.setItem('token', token);

            // Comentarios en consola para verificar el funcionamiento
            console.log("Redirigiendo a admin_dsh.jsp");
            //Se redirige a la pagina de usuarios
            window.location.href = 'user_dsh.jsp';
        } else {
            errorMessage.textContent = 'Usuario o contraseña incorrectos.';
        }
    });
});

//Usuarios
const usuarios = [
    { usuario: 'Criss', contraseña: '123456' },
    { usuario: 'Levi', contraseña: '1526' },
];

//Funciona para cerrar sesion y elimar el token en local.
function cerrarSesion() {
    // Eliminar el token del almacenamiento local
    localStorage.removeItem('token');
    // Redirigir a la página de inicio de sesión
    window.location.href = 'LogUs.jsp';
}