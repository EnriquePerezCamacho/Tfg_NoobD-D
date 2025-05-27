<?php
session_start();
require_once '../conexion.php';

if (!isset($_SESSION['usuario_id'])) {
    header('Location: ./Php/login.php');
    exit();
}

if (!isset($_GET['id'])) {
    header('Location: ../Php/perfil.php');
    exit();
}

$id_ficha = intval($_GET['id']);
$usuario_id = $_SESSION['usuario_id'];

try {
    $query = "SELECT * FROM fichas WHERE id = :id AND usuario_id = :usuario_id";
    $stmt = $pdo->prepare($query);
    $stmt->execute(['id' => $id_ficha, 'usuario_id' => $usuario_id]);
    $ficha = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$ficha) {
        echo "Ficha no encontrada o no tienes permiso para verla.";
        exit();
    }
} catch (Exception $e) {
    echo "Error al obtener la ficha: " . $e->getMessage();
    exit();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Ficha de <?php echo htmlspecialchars($ficha['nombre']); ?></title>
    <style>
        * {
            margin: 0; padding: 0; box-sizing: border-box;
        }

        body {
            background-image: url('https://st5.depositphotos.com/1001735/64454/i/450/depositphotos_644548132-stock-photo-old-yellowed-open-book-black.jpg'); /* Fondo libro centrado */
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            font-family: 'Georgia', serif;
            color: #2b2b2b;
            padding: 40px 20px;
        }

        header {
            text-align: center;
            padding: 25px 0 10px;
            color: #3a2a1c;
            font-size: 34px;
            font-weight: bold;
            text-shadow: 1px 1px 2px #e9ddc2;
        }

        .volver {
            text-align: center;
            margin-bottom: 40px;
        }

        .volver button {
    background: linear-gradient(to bottom, #5c1e1e, #3c0f0f);
    color: #f5e6c4;
    padding: 10px 20px;
    border: 2px solid #8b0000;
    border-radius: 8px;
    font-weight: bold;
    font-family: 'Cinzel', serif;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 4px 8px #000;
        }

        .volver button:hover {
            background-color: #2980b9;
        }

        .book {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 60px;
            padding: 0 20px;
        }

.page {
    background-color: rgba(255, 255, 255, 0.95);
    padding: 45px 50px;
    border-radius: 14px;
    width: 700px;
    max-width: 95vw;
    box-shadow: 0 0 20px rgba(0,0,0,0.3);
}

.page h2 {
    text-align: center;
    font-size: 35px; /* AGRANDADO */
    color: #5b3a1e;
    border-bottom: 2px solid #cbb792;
    margin-bottom: 25px;
    padding-bottom: 5px;
}

.page p {
    font-size: 25px; /* AGRANDADO */
    margin-bottom: 18px;
    line-height: 1.9;
}


        .page strong {
            color: #3c2d1f;
        }

        @media (max-width: 1100px) {
            .book {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
</head>
<body>

<header>Ficha de Personaje - <?php echo htmlspecialchars($ficha['nombre']); ?></header>

<div class="volver">
    <button onclick="window.location.href='../Php/perfil.php'">← Volver al perfil</button>
</div>

<div class="book">
    <div class="page">
        <h2>Datos Básicos</h2>
        <p><strong>Nombre:</strong> <?php echo htmlspecialchars($ficha['nombre']); ?></p>
        <p><strong>Nivel:</strong> <?php echo htmlspecialchars($ficha['nivel']); ?></p>
        <p><strong>Clase:</strong> <?php echo htmlspecialchars($ficha['clase']); ?></p>
        <p><strong>Subclase:</strong> <?php echo htmlspecialchars($ficha['subclase']); ?></p>
        <p><strong>Raza:</strong> <?php echo htmlspecialchars($ficha['raza']); ?></p>
        <p><strong>Subraza:</strong> <?php echo htmlspecialchars($ficha['subraza']); ?></p>
        <p><strong>Trasfondo:</strong> <?php echo htmlspecialchars($ficha['trasfondo']); ?></p>
        <p><strong>Alineamiento:</strong> <?php echo htmlspecialchars($ficha['alineamiento']); ?></p>
    </div>

    <div class="page">
        <h2>Atributos y Hechizos</h2>
        <p><strong>Fuerza:</strong> <?php echo htmlspecialchars($ficha['fuerza'] ?? 'N/A'); ?></p>
        <p><strong>Destreza:</strong> <?php echo htmlspecialchars($ficha['destreza'] ?? 'N/A'); ?></p>
        <p><strong>Constitución:</strong> <?php echo htmlspecialchars($ficha['constitucion'] ?? 'N/A'); ?></p>
        <p><strong>Inteligencia:</strong> <?php echo htmlspecialchars($ficha['inteligencia'] ?? 'N/A'); ?></p>
        <p><strong>Sabiduría:</strong> <?php echo htmlspecialchars($ficha['sabiduria'] ?? 'N/A'); ?></p>
        <p><strong>Carisma:</strong> <?php echo htmlspecialchars($ficha['carisma'] ?? 'N/A'); ?></p>

        <h2>Equipo y Hechizos</h2>
        <p><strong>Equipo:</strong><br><?php echo nl2br(htmlspecialchars($ficha['equipo'] ?? 'Sin equipo.')); ?></p>
        <p><strong>Hechizos:</strong><br><?php echo nl2br(htmlspecialchars($ficha['hechizos'] ?? 'Sin hechizos.')); ?></p>
    </div>
</div>

</body>
</html>
