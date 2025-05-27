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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }

        body {
            background-image: url('https://st5.depositphotos.com/1001735/64454/i/450/depositphotos_644548132-stock-photo-old-yellowed-open-book-black.jpg');
            background-size: cover;
            background-position: center;
            font-family: 'Georgia', serif;
            color: #2b2b2b;
            padding: 40px 20px;
        }

        header {
            text-align: center;
            font-size: 2.5em;
            color: #4b2e14;
            margin-bottom: 30px;
            text-shadow: 2px 2px 4px #decdb6;
        }

        #ficha-container {
            max-width: 1600px;
            margin: 0 auto;
            display: flex;
            justify-content: center;
        }

        .book {
            display: flex;
            width: 100%;
            gap: 100px;
            justify-content: center;
        }

        .page {
            width: 48%;
            background-color: rgba(255, 248, 225, 0.94);
            padding: 35px;
            border-radius: 12px;
            box-shadow: 0 0 18px rgba(0,0,0,0.3);
        }

        fieldset {
            border: 1px solid #c2a97e;
            margin-bottom: 30px;
            padding: 18px 20px;
            border-radius: 10px;
        }

        legend h2 {
            font-size: 1.6em;
            color: #5b3a1e;
            text-shadow: 1px 1px 1px #e0d3b0;
        }

        .grid-2 {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 16px 30px;
        }

        .atributos-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 18px 30px;
        }

        .atributo {
            display: flex;
            flex-direction: column;
        }

        input[type="text"],
        input[type="number"],
        textarea,
        select {
            width: 100%;
            padding: 12px;
            margin-top: 5px;
            background: #fdf9e4;
            border: 1px solid #a0875e;
            border-radius: 8px;
            font-size: 16px; /* Tamaño aumentado */
        }

        textarea {
            min-height: 80px;
        }

        .large-textarea {
            min-height: 180px;
            font-size: 15px;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
            font-size: 16px; /* Tamaño aumentado */
            color: #442a13;
        }

        .modificador {
            font-size: 15px;
            font-weight: bold;
            color: #623b11;
            margin-top: 6px;
        }

        button {
            padding: 14px 24px;
            font-size: 18px;
            background-color: #bb8c3c;
            color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            margin: 14px auto 0;
            display: block;
        }

        button:hover {
            background-color: #9f7530;
        }

        .grid-2 label input[type="checkbox"] {
            margin-right: 6px;
        }

        .imagen-container {
            width: 100%;
            margin-top: 40px;
            text-align: center;
        }

        .imagen-container label {
            display: block;
            margin-bottom: 10px;
            font-size: 16px;
        }

        .imagen-container input[type="file"] {
            display: block;
            margin: 0 auto;
            font-size: 14px;
        }
    </style>
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
                            <label>Clase</label><input type="text" name="clase" required>
                            <label>Subclase</label><input type="text" name="subclase">
                            <label>Raza</label><input type="text" name="raza" required>
                            <label>Subraza</label><input type="text" name="subraza">
                            <label>Trasfondo</label><input type="text" name="trasfondo">
                            <label>Alineamiento</label><input type="text" name="alineamiento">
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

    <script>
        function calcularModificador(valor) {
            return Math.floor((valor - 10) / 2);
        }

        function actualizarModificador(atributo) {
            const input = document.getElementById(atributo);
            const span = document.getElementById('mod_' + atributo);
            const valor = parseInt(input.value);
            if (!isNaN(valor)) {
                const mod = calcularModificador(valor);
                span.textContent = 'Modificador: ' + (mod >= 0 ? '+' : '') + mod;
            } else {
                span.textContent = 'Modificador: +0';
            }
        }

        function guardarComoPDF() {
            const element = document.body;
            html2pdf().from(element).save('ficha_dnd.pdf');
        }
    </script>
</body>
</html>
