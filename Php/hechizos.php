<?php
require_once '../conexion.php';

// Obtener filtros
$clase = $_GET['clase'] ?? '';
$nivel = $_GET['nivel'] ?? '';

// Consulta base
$sql = "SELECT * FROM hechizos WHERE 1=1";
$params = [];

if (!empty($clase)) {
    $sql .= " AND clase_id = ?";
    $params[] = $clase;
}

if ($nivel !== '') {
    $sql .= " AND nivel = ?";
    $params[] = $nivel;
}

$stmt = $pdo->prepare($sql);
$stmt->execute($params);
$hechizos = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Obtener clases para el filtro
$clases = $pdo->query("SELECT id, nombre FROM clases ORDER BY nombre")->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Hechizos por Clase</title>
    <link rel="stylesheet" href="../hechizos.css">
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><button onclick="location.href='../index.html'">Inicio</button></li>
                <li><button onclick="location.href='clases.php'">Clases</button></li>
                <li><button onclick="location.href='razas.php'">Razas</button></li>
                <li><button onclick="location.href='subclases.php'">SubClases</button></li>
                <li><button onclick="location.href='fichas.php'">Fichas</button></li>
                <li><button onclick="location.href='help.php'">Help</button></li>
                <li><button onclick="location.href='perfil.php'">Perfil</button></li>
            </ul>
        </nav>
    </header>

    <main>
        <h1 style="text-align:center; color:#5b2c04; font-family: Cinzel;">Hechizos por Clase</h1>

        <form method="get" class="filtro-form">
            <label>Clase:
                <select name="clase">
                    <option value="">-- Todas --</option>
                    <?php foreach ($clases as $c): ?>
                        <option value="<?= $c['id'] ?>" <?= $clase == $c['id'] ? 'selected' : '' ?>>
                            <?= htmlspecialchars($c['nombre']) ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </label>

            <label>Nivel:
                <select name="nivel">
                    <option value="">-- Todos --</option>
                    <?php for ($i = 0; $i <= 9; $i++): ?>
                        <option value="<?= $i ?>" <?= $nivel == $i ? 'selected' : '' ?>><?= $i ?></option>
                    <?php endfor; ?>
                </select>
            </label>

            <button type="submit">Filtrar</button>
        </form>

        <table class="tabla-hechizos">
            <thead>
                <tr>
                    <th>NOMBRE</th>
                    <th>ESCUELA</th>
                    <th>TIEMPO DE LANZAMIENTO</th>
                    <th>DISTANCIA</th>
                    <th>DURACIÓN</th>
                    <th>COMPONENTES</th>
                    <th>CLASE</th>
                    <th>ENLACE</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($hechizos as $hechizo): ?>
                    <tr>
                        <td><?= htmlspecialchars($hechizo['nombre']) ?></td>
                        <td><?= htmlspecialchars($hechizo['escuela']) ?></td>
                        <td><?= htmlspecialchars($hechizo['tiempo_casting']) ?></td>
                        <td><?= htmlspecialchars($hechizo['gama']) ?></td>
                        <td><?= htmlspecialchars($hechizo['duracion']) ?></td>
                        <td><?= htmlspecialchars($hechizo['componentes']) ?></td>
                        <td>
                            <?php
                            $claseQuery = $pdo->prepare("SELECT nombre FROM clases WHERE id = ?");
                            $claseQuery->execute([$hechizo['clase_id']]);
                            echo htmlspecialchars($claseQuery->fetchColumn());
                            ?>
                        </td>
                        <td><a href="<?= htmlspecialchars($hechizo['enlace']) ?>" target="_blank">Ver</a></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </main>
</body>
</html>
