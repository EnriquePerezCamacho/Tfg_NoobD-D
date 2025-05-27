<?php
session_start();
require_once 'conexion.php';

// Verificar que se haya recibido el ID de la subclase
if (isset($_GET['id'])) {
    $subclase_id = intval($_GET['id']);

    // Obtener información de la subclase desde la base de datos
    $query = "SELECT subclases.*, clases.nombre AS clase_nombre 
              FROM subclases 
              JOIN clases ON subclases.clase_id = clases.id 
              WHERE subclases.id = ?";
    $stmt = $pdo->prepare($query);
    $stmt->execute([$subclase_id]);
    $subclase = $stmt->fetch();

    if (!$subclase) {
        echo "<p>Subclase no encontrada.</p>";
        exit();
    }
} else {
    echo "<p>ID de subclase no proporcionado.</p>";
    exit();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalles de la Subclase - <?php echo htmlspecialchars($subclase['nombre']); ?></title>
    <link rel="stylesheet" href="subclases.css">
</head>
<body>
    <h1><?php echo htmlspecialchars($subclase['nombre']); ?></h1>
    <p><strong>Clase Principal:</strong> <?php echo htmlspecialchars($subclase['clase_nombre']); ?></p>
    <p><strong>Fuente:</strong> <?php echo htmlspecialchars($subclase['fuente']); ?></p>

    <h2>Descripción</h2>
    <p>
        <?php 
        if (!empty($subclase['descripcion'])) {
            echo nl2br(htmlspecialchars($subclase['descripcion']));
        } else {
            echo "No hay descripción disponible para esta subclase.";
        }
        ?>
    </p>

    <a href="subclases.php">Volver a la lista de subclases</a>
</body>
</html>
