<?php
session_start();
require_once '../conexion.php';

if (!isset($_SESSION['usuario_id'])) {
    header('Location: ../Php/login.php');
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nombre = $_POST['nombre'];
    $nivel = $_POST['nivel'];
    $clase = $_POST['clase'];
    $subclase = $_POST['subclase'] ?? null;
    $raza = $_POST['raza'];
    $subraza = $_POST['subraza'] ?? null;
    $trasfondo = $_POST['trasfondo'];
    $alineamiento = $_POST['alineamiento'];
    $fuerza = $_POST['fuerza'];
$destreza = $_POST['destreza'];
$constitucion = $_POST['constitucion'];
$inteligencia = $_POST['inteligencia'];
$sabiduria = $_POST['sabiduria'];
$carisma = $_POST['carisma'];

$equipo = $_POST['equipo'];
$hechizos = $_POST['hechizos'];

    $imagen_personaje = null;
    if (isset($_FILES['imagen_personaje']) && $_FILES['imagen_personaje']['error'] === UPLOAD_ERR_OK) {
        $directorio = "../imagenes/personajes/";
        if (!is_dir($directorio)) {
            mkdir($directorio, 0755, true);
        }

        $nombreArchivo = uniqid() . "_" . basename($_FILES['imagen_personaje']['name']);
        $ruta_imagen = $directorio . $nombreArchivo;

        if (move_uploaded_file($_FILES['imagen_personaje']['tmp_name'], $ruta_imagen)) {
            $imagen_personaje = 'imagenes/personajes/' . $nombreArchivo;
        }
    }

$sql = "INSERT INTO fichas (usuario_id, nombre, nivel, clase, subclase, raza, subraza, trasfondo, alineamiento, imagen, fuerza, destreza, constitucion, inteligencia, sabiduria, carisma, equipo, hechizos)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

$stmt = $pdo->prepare($sql);
$stmt->execute([
    $_SESSION['usuario_id'], $nombre, $nivel, $clase, $subclase, $raza, $subraza,
    $trasfondo, $alineamiento, $imagen_personaje,
    $fuerza, $destreza, $constitucion, $inteligencia, $sabiduria, $carisma,
    $equipo, $hechizos
]);

    header('Location: ../Php/perfil.php');
    exit();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Ficha de Personaje</title>
    <link rel="stylesheet" href="../Fichas/ficha.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
    <script src="../Fichas/ficha.js" defer></script>
</head>
<body>
    <header>Ficha de Personaje</header>

    <div id="ficha-container">
        <form method="post" action="ficha.php" enctype="multipart/form-data">
            <div class="book">
                <!-- Página Izquierda -->
                <div class="page">
                    <fieldset>
                        <legend><h2>Datos Básicos</h2></legend>
                        <div class="grid-2">
                            <label>Nombre</label><input type="text" name="nombre" required>
                            <label>Nivel</label><input type="number" name="nivel" min="1" max="20" value="1" required>

                            <label>Clase</label>
                            <select name="clase" id="clase" onchange="cargarSubclases()" required></select>

                            <label>Subclase</label>
                            <select name="subclase" id="subclase"></select>

                            <label>Raza</label>
                            <select name="raza" id="raza" onchange="cargarSubrazas()" required></select>

                            <label>Subraza</label>
                            <select name="subraza" id="subraza"></select>

                            <label>Trasfondo</label><input type="text" name="trasfondo" placeholder="Ej: Forastero, Noble">
                            <label>Alineamiento</label><input type="text" name="alineamiento" placeholder="Ej: Caótico Bueno">
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend><h2>Atributos</h2></legend>
                        <div class="atributos-grid">
                            <?php
                            $atributos = ['fuerza', 'destreza', 'constitucion', 'inteligencia', 'sabiduria', 'carisma'];
                            foreach ($atributos as $atributo) {
                                echo "
                                <div class='atributo'>
                                    <label>" . ucfirst($atributo) . "</label>
                                    <input type='number' name='{$atributo}' id='{$atributo}' min='1' max='30' oninput='actualizarModificador(\"{$atributo}\")'>
                                    <span id='mod_{$atributo}' class='modificador'>Modificador: +0</span>
                                </div>";
                            }
                            ?>
                        </div>
                    </fieldset>
                </div>

                <!-- Página Derecha -->
                <div class="page">
                    <fieldset>
                        <legend><h2>Idiomas y Habilidades</h2></legend>
                        <textarea name="idiomas" placeholder="Idiomas (Ej: Común, Élfico)"></textarea>
                        <div class="grid-2" id="habilidades-container">
                            <label><input type="checkbox" name="habilidades[]" value="Acrobacias"> Acrobacias</label>
                            <label><input type="checkbox" name="habilidades[]" value="Arcanos"> Arcanos</label>
                            <label><input type="checkbox" name="habilidades[]" value="Atletismo"> Atletismo</label>
                            <label><input type="checkbox" name="habilidades[]" value="Historia"> Historia</label>
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend><h2>Equipo y Hechizos</h2></legend>
                        <textarea class="large-textarea" name="equipo" placeholder="Equipo"></textarea>
                        <textarea class="large-textarea" name="hechizos" placeholder="Hechizos"></textarea>
                    </fieldset>

                    <button type="submit">Guardar Ficha</button>
                    <button type="button" onclick="guardarComoPDF()">Guardar como PDF</button>

                    <div class="imagen-container">
                        <label>Imagen del personaje</label>
                        <input type="file" name="imagen_personaje" accept="image/*">
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
