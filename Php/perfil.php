<?php
session_start();
require_once '../conexion.php';

// Verificar si el usuario está autenticado
if (!isset($_SESSION['usuario_id'])) {
    header("Location: ../Php/login.php");
    exit();
}

$usuario_id = $_SESSION['usuario_id'];
$fichas = [];

try {
    $query = "SELECT * FROM fichas WHERE usuario_id = :usuario_id";
    $stmt = $pdo->prepare($query);
    $stmt->execute(['usuario_id' => $usuario_id]);
    $fichas = $stmt->fetchAll();
} catch (Exception $e) {
    $error = "Error al obtener las fichas: " . $e->getMessage();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil de Usuario</title>
    <link rel="stylesheet" href="../StylePerfil.Css">
</head>
<body>

<?php include 'menu.php'; ?>

<main class="perfil-container">
    <h1>Perfil de Usuario</h1>
    <h2>Mis Fichas de Personaje</h2>

    <?php if (isset($error)): ?>
        <p style="color: red;"><?php echo $error; ?></p>
    <?php endif; ?>

    <?php if (count($fichas) === 0): ?>
        <p>No tienes fichas de personaje todavía.</p>
    <?php endif; ?>

    <div class="botones-acciones" style="margin-bottom: 20px;">
        <button onclick="window.location.href='../Fichas/ficha.php'" class="btn-crear">Crear Perosnaje</button>
        <button onclick="window.location.href='../Fichas/fichaAutoCompletable.php'" class="btn-crear">Ficha AutoRellenable</button>
    </div>

    <div class="cards-container">
        <?php foreach ($fichas as $ficha): ?>
            <div class="ficha-card">
                <?php
                $rutaImg = !empty($ficha['imagen']) && file_exists('../' . $ficha['imagen'])
                    ? '../' . $ficha['imagen']
                    : '../imagenes/placeholder.png';
                ?>
                <img src="<?php echo $rutaImg; ?>" alt="Imagen de Personaje" class="ficha-img">
                <h3><?php echo htmlspecialchars($ficha['nombre']); ?></h3>
                <p>Nivel: <?php echo htmlspecialchars($ficha['nivel']); ?></p>

                <div style="display: flex; justify-content: center; gap: 10px; margin-top: 10px;">
                    <form action="../Fichas/borrar_ficha.php" method="post">
                        <input type="hidden" name="id_ficha" value="<?php echo $ficha['id']; ?>">
                        <button type="submit" class="btn-delete">Borrar</button>
                    </form>
                    <button onclick="window.location.href='../Fichas/ver_ficha.php?id=<?php echo $ficha['id']; ?>'">Ver</button>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</main>

</body>
</html>


