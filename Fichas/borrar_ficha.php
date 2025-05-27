<?php
session_start();
require_once '../conexion.php';

// Verificar si el usuario está autenticado
if (!isset($_SESSION['usuario_id'])) {
    header("Location: ../Php/login.php");
    exit();
}

// Verificar si se ha recibido el ID de la ficha
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['id_ficha'])) {
    $usuario_id = $_SESSION['usuario_id'];
    $id_ficha = intval($_POST['id_ficha']);

    try {
        // Verificar que la ficha pertenece al usuario autenticado
        $query = "SELECT * FROM fichas WHERE id = :id AND usuario_id = :usuario_id";
        $stmt = $pdo->prepare($query);
        $stmt->execute(['id' => $id_ficha, 'usuario_id' => $usuario_id]);
        $ficha = $stmt->fetch();

        if ($ficha) {
            // Eliminar la ficha
            $deleteQuery = "DELETE FROM fichas WHERE id = :id";
            $deleteStmt = $pdo->prepare($deleteQuery);
            $deleteStmt->execute(['id' => $id_ficha]);
        }

    } catch (Exception $e) {
        // Manejo del error (opcional)
        $_SESSION['error'] = "Error al borrar la ficha: " . $e->getMessage();
    }
}

// Redirigir de nuevo al perfil
header("Location: ../Php/perfil.php");
exit();
