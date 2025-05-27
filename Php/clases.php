<?php
session_start();
require_once '../conexion.php';

// Obtener todas las clases desde la base de datos
$query = "SELECT * FROM clases";
$stmt = $pdo->prepare($query);
$stmt->execute();
$clases = $stmt->fetchAll();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clases</title>
    <link rel="stylesheet" href="../Styleclases.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&family=Roboto&display=swap" rel="stylesheet">
</head>
<body>
    <!-- Incluir el menú de navegación -->
<header>
        <nav>
            <div class="container">
            <ul>
                <li><button onclick="location.href='index.php'">Inicio</button></li>
                <li><button onclick="location.href='razas.php'">Razas</button></li>
                <li><button onclick="location.href='subclases.php'">Subclases</button></li>
                <li><button onclick="location.href='hechizos.php'">Hechizos</button></li>
                <li><button onclick="location.href='Dados.html'">Dados</button></li>
                <li><button onclick="location.href='perfil.php'">Perfil</button></li>
            </ul>
            </div>
        </nav>
        </div>
    </header>

        <section class="bienvenida">
        <h2>Elige tu linaje</h2>
        <p>Las razas de este mundo son tan diversas como los reinos que habitan. Desde la majestuosidad dracónica hasta la astucia de los medianos, cada raza ofrece un camino único en la aventura.</p>
    </section>

<main>
       <div class="class-container">
            <?php
            $clases = [
            ["nombre" => "Artífice", "img" => "../imagenes/ArtificieroDado.PNG", "desc" => "Fabricantes de objetos imbuidos de magia, los artífices se definen por su naturaleza inventiva.", "url" => "../clase/clases/artifice.php"],
            ["nombre" => "Bárbaro", "img" => "../imagenes/BarbaroDado.PNG", "desc" => "Para todos los bárbaros, la ira es un poder que alimenta un frenesí de batalla.", "url" => "../clase/clases/barbaro.html"],
            ["nombre" => "Bardo", "img" => "../imagenes/BardoDado.PNG", "desc" => "Un bardo teje magia a través de palabras y música para inspirar o manipular.", "url" => "../clase/clases/bardo.html"],
            ["nombre" => "Cazador de Sangre", "img" => "../imagenes/error.PNG", "desc" => "Guerreros astutos y arcanos que han unido su esencia a las criaturas oscuras.", "url" => "../clase/clases/cazadorsangre.html"],
            ["nombre" => "Clérigo", "img" => "../imagenes/ClerigoDado.PNG", "desc" => "Intermediarios entre el mundo mortal y los dioses, imbuidos de magia divina.", "url" => "../clase/clases/clerigo.html"],
            ["nombre" => "Druida", "img" => "../imagenes/DruidaDado.PNG", "desc" => "Encarnaciones de la resistencia y furia de la naturaleza.", "url" => "../clase/clases/druida.html"],
            ["nombre" => "Luchador", "img" => "../imagenes/LuchadorDado.PNG", "desc" => "Dominan las armas y enfrentan la muerte con valentía.", "url" => "../clase/clases/luchador.html"],
            ["nombre" => "Monje", "img" => "../imagenes/MonjeDado.PNG", "desc" => "Canalizan la energía interior en forma de velocidad y destreza.", "url" => "../clase/clases/monje.php"],
            ["nombre" => "Paladín", "img" => "../imagenes/PaladinDado.PNG", "desc" => "Guerreros que han jurado proteger mediante juramentos sagrados.", "url" => "../clase/clases/paladin.html"],
            ["nombre" => "Guardabosque", "img" => "../imagenes/RangerDado.PNG", "desc" => "Vigilantes solitarios que dominan la naturaleza.", "url" => "../clase/clases/guardabosque.html"],
            ["nombre" => "Pillo", "img" => "../imagenes/PicaroDado.PNG", "desc" => "Maestros del sigilo y el ingenio en combate.", "url" => "../clase/clases/pillo.html"],
            ["nombre" => "Hechicero", "img" => "../imagenes/HechiceroDado.PNG", "desc" => "Nacidos con el poder arcano corriendo por sus venas.", "url" => "../clase/clases/hechicero.html"],
            ["nombre" => "Brujo", "img" => "../imagenes/HechiceroDado.PNG", "desc" => "Pactan con seres sobrenaturales para obtener poder.", "url" => "../clase/clases/brujo.html"],
            ["nombre" => "Mago", "img" => "../imagenes/MagoDado.PNG", "desc" => "Usuarios supremos de magia a través del estudio y conocimiento.", "url" => "../clase/clases/mago.html"],
        ];

          
        foreach ($clases as $clase) {
            echo '<div class="class-card">';
            echo '<img src="' . $clase["img"] . '" alt="' . $clase["nombre"] . '">';
            echo '<h2>' . $clase["nombre"] . '</h2>';
            echo '<p>' . $clase["desc"] . '</p>';
            echo '<a href="' . $clase["url"] . '" class="select-class-link">¡Explora esta clase!</a>';
            echo '</div>';
        }
        ?>
    </div>

    <footer>
        <p>&copy; 2025 Guía de Clases. Todos los derechos reservados.</p>
    </footer>
</body>
</html>