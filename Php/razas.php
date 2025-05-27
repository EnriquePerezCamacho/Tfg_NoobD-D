<?php
session_start();
require_once '../conexion.php';

// Obtener todas las razas desde la base de datos
$query = "SELECT * FROM razas";
$stmt = $pdo->prepare($query);
$stmt->execute();
$razas = $stmt->fetchAll();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Razas D&D</title>
    <link rel="stylesheet" href="../StyleRazas.css">
</head>
<body>
    <header>
        <h1>Razas de Personaje</h1>
        <nav>
            <ul>
            <ul>
                <li><button onclick="location.href='index.php'">Inicio</button></li>
                <li><button onclick="location.href='clases.php'">Clases</button></li>
                <li><button onclick="location.href='subclases.php'">Subclases</button></li>
                <li><button onclick="location.href='hechizos.php'">Hechizos</button></li>
                <li><button onclick="location.href='Dados.html'">Dados</button></li>
                <li><button onclick="location.href='perfil.php'">Perfil</button></li>
            </ul>
        </nav>
    </header>

    <section class="bienvenida">
        <h2>Elige tu linaje</h2>
        <p>Las razas de este mundo son tan diversas como los reinos que habitan. Desde la majestuosidad dracónica hasta la astucia de los medianos, cada raza ofrece un camino único en la aventura.</p>
    </section>

    <div class="race-container">
        <?php
        $razas = [
            ["nombre" => "Dragonio", "img" => "../imagenes/Dragonido.png", "desc" => "Hijos del linaje dracónico, portan escamas y aliento elemental.", "url" => "../razas/Draconido.php"],
            ["nombre" => "Elfo", "img" => "../imagenes/Elfo.png", "desc" => "Gráciles, longevos y sabios, maestros del arco y la magia.", "url" => "../razas/elfo.Php"],
            ["nombre" => "Enano", "img" => "../imagenes/Enano.png", "desc" => "Forjados en piedra, tenaces y con corazón ardiente.", "url" => "../razas/enano.html"],
            ["nombre" => "Gnomo", "img" => "../imagenes/Gnomo.png", "desc" => "Pequeños inventores con chispa y encanto natural.", "url" => "../razas/gnomo.html"],
            ["nombre" => "Humano", "img" => "../imagenes/HumanoError.png", "desc" => "Adaptables y ambiciosos, con variedad infinita.", "url" => "../razas/humano.html"],
            ["nombre" => "Mediano", "img" => "../imagenes/MEdiano.png", "desc" => "Amables y valientes, famosos por su suerte.", "url" => "../razas/mediano.html"],
            ["nombre" => "Orco", "img" => "../imagenes/Orco.png", "desc" => "Criaturas de fuerza bruta y espíritu salvaje.", "url" => "../razas/orco.html"],
            ["nombre" => "SemiElfo", "img" => "../imagenes/SemiElfo.png", "desc" => "Puente entre culturas, versátiles y carismáticos.", "url" => "../razas/semielfo.html"],
            ["nombre" => "Tiefling", "img" => "../imagenes/Tiefling.png", "desc" => "Marcados por la sangre infernal, orgullosos y poderosos.", "url" => "../razas/tiefling.html"],
        ];

        foreach ($razas as $raza) {
            echo '<div class="race-card">';
            echo '<img src="' . $raza["img"] . '" alt="' . $raza["nombre"] . '">';
            echo '<h2>' . $raza["nombre"] . '</h2>';
            echo '<p>' . $raza["desc"] . '</p>';
            echo '<a href="' . $raza["url"] . '" class="select-race-link">¡Explora esta raza!</a>';
            echo '</div>';
        }
        ?>
    </div>

    <footer>
        <p>&copy; 2025 Guía de Razas. Todos los derechos reservados.</p>
    </footer>
</body>
</html>