// Abrir el modal de login al hacer clic en el botón Perfil
document.getElementById('profileButton').addEventListener('click', function() {
    document.getElementById('loginModal').style.display = 'flex';
});

// Cerrar el modal al hacer clic en la X
document.getElementById('closeModal').addEventListener('click', function() {
    document.getElementById('loginModal').style.display = 'none';
});

// Cerrar el modal si se hace clic fuera de la caja del modal
window.addEventListener('click', function(event) {
    if (event.target == document.getElementById('loginModal')) {
        document.getElementById('loginModal').style.display = 'none';
    }
});

// Manejo de la sesión de usuario (simulación)
document.getElementById('loginForm').addEventListener('submit', function(event) {
    event.preventDefault();
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;

    // Aquí podrías agregar validación o envío de datos a un servidor
    alert('Bienvenido ' + username + '!');
    document.getElementById('loginModal').style.display = 'none';
});

const frases = [
    "¡Que los dados estén a tu favor!",
    "Nunca subestimes a un pícaro con iniciativa alta.",
    "¿Preparado para la tirada de salvación contra aburrimiento?",
    "¡El DM lo ve todo!",
    "No olvides tu hoja de personaje...",
    "La inspiración puede cambiar el destino."
];

window.addEventListener('DOMContentLoaded', () => {
    const fraseElemento = document.getElementById("frase");
    fraseElemento.textContent = frases[Math.floor(Math.random() * frases.length)];
});
