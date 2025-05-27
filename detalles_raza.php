<?php
session_start();
require_once 'conexion.php';

// Verificar que se haya recibido el ID de la raza
if (isset($_GET['id'])) {
    $raza_id = intval($_GET['id']);

    // Obtener información de la raza desde la base de datos
    $query = "SELECT * FROM raza WHERE id = ?";
    $stmt = $pdo->prepare($query);
    $stmt->execute([$raza_id]);
    $raza = $stmt->fetch();

    if (!$raza) {
        echo "<p>Raza no encontrada.</p>";
        exit();
    }
} else {
    echo "<p>ID de raza no proporcionado.</p>";
    exit();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalles de la Raza - <?php echo htmlspecialchars($raza['nombre']); ?></title>
    <link rel="stylesheet" href="razas.css">
</head>
<body>
    <h1><?php echo htmlspecialchars($raza['nombre']); ?></h1>
    <p><strong>Origen:</strong> <?php echo htmlspecialchars($raza['origen']); ?></p>
    <p><strong>Descripción:</strong> <?php echo nl2br(htmlspecialchars($raza['descripcion'])); ?></p>
    <p><strong>Velocidad:</strong> <?php echo htmlspecialchars($raza['velocidad']); ?> pies</p>
    <p><strong>Visión en la Oscuridad:</strong> <?php echo htmlspecialchars($raza['vision_oscuridad']); ?></p>
    <p><strong>Idiomas:</strong> <?php echo htmlspecialchars($raza['idiomas']); ?></p>

    <h2>Rasgos Raciales</h2>
    <?php
    // Obtener rasgos raciales asociados a la raza
    $query_rasgos = "SELECT * FROM rasgo_racial WHERE id_raza = ?";
    $stmt_rasgos = $pdo->prepare($query_rasgos);
    $stmt_rasgos->execute([$raza_id]);
    $rasgos = $stmt_rasgos->fetchAll();
    ?>

    <?php if (count($rasgos) > 0): ?>
        <ul>
            <?php foreach ($rasgos as $rasgo): ?>
                <li><strong><?php echo htmlspecialchars($rasgo['nombre']); ?>:</strong> <?php echo nl2br(htmlspecialchars($rasgo['descripcion'])); ?></li>
            <?php endforeach; ?>
        </ul>
    <?php else: ?>
        <p>No se encontraron rasgos raciales para esta raza.</p>
    <?php endif; ?>

    <a href="razas.php">Volver a la lista de razas</a>
</body>
</html>
