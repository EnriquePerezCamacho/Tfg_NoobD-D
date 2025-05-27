<?php
session_start();
require_once 'conexion.php';

// Verificar que se haya recibido el ID del hechizo
if (isset($_GET['id'])) {
    $hechizo_id = intval($_GET['id']);

    // Obtener información del hechizo desde la base de datos
    $query = "SELECT * FROM hechizos WHERE id = ?";
    $stmt = $pdo->prepare($query);
    $stmt->execute([$hechizo_id]);
    $hechizo = $stmt->fetch();

    if (!$hechizo) {
        echo "<p>Hechizo no encontrado.</p>";
        exit();
    }
} else {
    echo "<p>ID de hechizo no proporcionado.</p>";
    exit();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalles del Hechizo - <?php echo htmlspecialchars($hechizo['nombre']); ?></title>
    <link rel="stylesheet" href="hechizos.css">
</head>
<body>
    <h1><?php echo htmlspecialchars($hechizo['nombre']); ?></h1>
    <p><strong>Nivel:</strong> <?php echo htmlspecialchars($hechizo['nivel']); ?></p>
    <p><strong>Tipo:</strong> <?php echo htmlspecialchars($hechizo['tipo']); ?></p>

    <h2>Detalles del Hechizo</h2>
    <p><strong>Descripción:</strong></p>
    <p><?php echo nl2br(htmlspecialchars($hechizo['descripcion'])); ?></p>

    <h2>Información Adicional</h2>
    <p><strong>Alcance:</strong> <?php echo htmlspecialchars($hechizo['alcance']); ?></p>
    <p><strong>Duración:</strong> <?php echo htmlspecialchars($hechizo['duracion']); ?></p>
    <p><strong>Componentes:</strong> <?php echo htmlspecialchars($hechizo['componentes']); ?></p>
    <p><strong>Tiempo de Lanzamiento:</strong> <?php echo htmlspecialchars($hechizo['tiempo_lanzamiento']); ?></p>

    <a href="hechizos.php">Volver a la lista de hechizos</a>
</body>
</html>
