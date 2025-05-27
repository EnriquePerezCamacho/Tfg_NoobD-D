<?php
session_start();
require_once 'conexion.php';

// Verificar si el usuario está autenticado
if (!isset($_SESSION['usuario_id'])) {
    header("Location: login.php");
    exit();
}

$usuario_id = $_SESSION['usuario_id'];

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['imagen'])) {
    $imagen = $_FILES['imagen'];

    if ($imagen['error'] === 0) {
        $ext = pathinfo($imagen['name'], PATHINFO_EXTENSION);
        $nombre_imagen = 'perfil_' . $usuario_id . '.' . $ext;
        $ruta_imagen = 'imagenes/' . $nombre_imagen;

        // Mover la imagen subida a la carpeta de imágenes
        move_uploaded_file($imagen['tmp_name'], $ruta_imagen);

        // Actualizar la imagen en la base de datos
        $query = "UPDATE usuarios SET imagen_perfil = ? WHERE id = ?";
        $stmt = $pdo->prepare($query);
        $stmt->execute([$ruta_imagen, $usuario_id]);

        header("Location: perfil.php");
        exit();
    } else {
        echo "Error al subir la imagen.";
    }
}
0
