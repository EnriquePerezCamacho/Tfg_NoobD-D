<?php
session_start();
require_once '../conexion.php';

// Obtener todas las subclases desde la base de datos
$query = "SELECT subclases.*, clases.nombre AS clase_nombre 
          FROM subclases 
          JOIN clases ON subclases.clase_id = clases.id";
$stmt = $pdo->prepare($query);
$stmt->execute();
$subclases = $stmt->fetchAll();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Subclases a Nivel 3</title>
    <link rel="stylesheet" href="../clase/subclases/StyleSubclase.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&family=Montserrat:wght@600&display=swap" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
</head>
<body>
    <header>
        <nav>
            <div class="container">
            <ul>
                <li><button onclick="location.href='index.php'">Inicio</button></li>
                <li><button onclick="location.href='razas.php'">Razas</button></li>
                <li><button onclick="location.href='clases.php'">Clases</button></li>
                <li><button onclick="location.href='hechizos.php'">Hechizos</button></li>
                <li><button onclick="location.href='Dados.html'">Dados</button></li>
                <li><button onclick="location.href='perfil.php'">Perfil</button></li>
            </ul>
            </div>
        </nav>
    </header>

<section>
    <h2>Elige una clase para ver sus subclases</h2>
    <div id="botones-clases" style="text-align:center; margin: 2rem 0;">
        <button onclick="actualizarTabla('Artífice')">Artífice</button>
        <button onclick="actualizarTabla('Bárbaro')">Bárbaro</button>
        <button onclick="actualizarTabla('Bardo')">Bardo</button>
        <button onclick="actualizarTabla('Clérigo')">Clérigo</button>
        <button onclick="actualizarTabla('Druida')">Druida</button>
        <button onclick="actualizarTabla('Luchador')">Luchador</button>
        <button onclick="actualizarTabla('Monje')">Monje</button>
        <button onclick="actualizarTabla('Paladín')">Paladín</button>
        <button onclick="actualizarTabla('Guarda Bosque')">Guarda Bosque</button>
        <button onclick="actualizarTabla('Pícaro')">Pícaro</button>
        <button onclick="actualizarTabla('Hechicero')">Hechicero</button>
        <button onclick="actualizarTabla('Brujo')">Brujo</button>
        <button onclick="actualizarTabla('Mago')">Mago</button>
    </div>

    <table id="tabla-subclases" style="width: 100%; border-collapse: collapse;">
        <thead>
            <tr>
                <th style="text-align: left; padding: 10px;">Subclase</th>
            </tr>
        </thead>
        <tbody></tbody>
    </table>
</section>

<script>
const subclases = {
    "Artífice": [
        { nombre: "Alquimista", enlace: "../clase/subclases/artifice/alquimista.html"},
        { nombre: "Armero", enlace: "../clase/subclases/artifice/armero.html"},
        { nombre: "Artillero", enlace: "../clase/subclases/artifice/artillero.html" },
        { nombre: "Herrero de batalla", enlace: "../clase/subclases/artifice/herrerobatalla.html" }
    ],
    "Bárbaro": [
        { nombre: "Senda del Guardián Ancestral", enlace: "../clase/subclases/barbaro/guardiaAncestral.html" },
        { nombre: "Senda del Guerrero Furioso", enlace: "../clase/subclases/barbaro/guerrero.html" },
        { nombre: "Senda de la Bestia", enlace: "../clase/subclases/barbaro/bestia.html" },
        { nombre: "Senda del Berserker", enlace: "../clase/subclases/barbaro/berserker.html" },
        { nombre: "Senda del Gigante", enlace: "../clase/subclases/barbaro/gigante.html" },
        { nombre: "Senda del Heraldo de la Tormenta", enlace: "../clase/subclases/barbaro/heraldo.html" },
        { nombre: "Senda del Guerrero Tótem", enlace: "../clase/subclases/barbaro/guerreroToten.html" },
        { nombre: "Senda de la Magia Salvaje", enlace: "../clase/subclases/barbaro/magiaSalvaje.html" },
        { nombre: "Senda del Fanático", enlace: "../clase/subclases/barbaro/fanatico.html" }
    ],
    "Bardo": [
        { nombre: "Colegio de la Creación", enlace: "../clase/subclases/bardo/creacion.html" },
        { nombre: "Colegio de la Elocuencia", enlace: "../clase/subclases/bardo/elocuencia.html" },
        { nombre: "Colegio del Glamour", enlace: "../clase/subclases/bardo/glamour.html" },
        { nombre: "Colegio del Saber", enlace: "../clase/subclases/bardo/sabiduria.html" },
        { nombre: "Colegio de los Espíritus", enlace: "../clase/subclases/bardo/espiritus.html" },
        { nombre: "Colegio de las Espadas", enlace: "../clase/subclases/bardo/espadas.html" },
        { nombre: "Colegio del Valor", enlace: "../clase/subclases/bardo/valo.html" },
        { nombre: "Colegio de los Susurros", enlace: "../clase/subclases/bardo/susurros.html" }
    ],
    "Clérigo": [
        { nombre: "Dominio de los Arcanos", enlace: "../clase/subclases/clerigo/arcano.html" },
        { nombre: "Dominio de la Muerte", enlace: "../clase/subclases/clerigo/muerte.html" },
        { nombre: "Dominio de la Forja", enlace: "../clase/subclases/clerigo/forja.html" },
        { nombre: "Dominio de la Tumba", enlace: "../clase/subclases/clerigo/tumba.html" },
        { nombre: "Dominio del Conocimiento", enlace: "../clase/subclases/clerigo/conocimiento.html" },
        { nombre: "Dominio de la Vida", enlace: "../clase/subclases/clerigo/vida.html" },
        { nombre: "Dominio de la Luz", enlace: "../clase/subclases/clerigo/luz.html" },
        { nombre: "Dominio de la Naturaleza", enlace: "../clase/subclases/clerigo/naturaleza.html" },
        { nombre: "Dominio del Orden", enlace: "../clase/subclases/clerigo/orden.html" },
        { nombre: "Dominio de la Paz", enlace: "../clase/subclases/clerigo/paz.html" },
        { nombre: "Dominio de la Tempestad", enlace: "../clase/subclases/clerigo/tempestad.html" },
        { nombre: "Dominio del Engaño", enlace: "../clase/subclases/clerigo/engaño.html" },
        { nombre: "Dominio del Trueno", enlace: "../clase/subclases/clerigo/crepuscular.html" }
    ],
    "Druida": [
        { nombre: "Círculo de los sueños", enlace: "../clase/subclases/druida/sueños.html" },
        { nombre: "Círculo de la tierra", enlace: "../clase/subclases/druida/tierra.html" },
        { nombre: "Círculo de la luna", enlace: "../clase/subclases/druida/luna.html" },
        { nombre: "Círculo del pastor", enlace: "../clase/subclases/druida/pastor.html" },
        { nombre: "Círculo de las esporas", enlace: "../clase/subclases/druida/esporas.html" },
        { nombre: "Círculo de las estrellas", enlace: "../clase/subclases/druida/estrellas.html" },
        { nombre: "Círculo del fuego salvaje", enlace: "../clase/subclases/druida/fuegoforestal.html" }
    ],
    "Luchador": [
        { nombre: "Arquero Arcano", enlace: "../clase/subclases/luchador/arqueroArcano.html" },
        { nombre: "Estandarte", enlace: "../clase/subclases/luchador/estandarte.html" },
        { nombre: "Maestro de batalla", enlace: "../clase/subclases/luchador/maestrobatalla.html" },
        { nombre: "Caballero", enlace: "../clase/subclases/luchador/caballero.html" },
        { nombre: "Campeón", enlace: "../clase/subclases/luchador/campeon.html" },
        { nombre: "Caballero del Eco", enlace: "../clase/subclases/luchador/caballerEco.html" },
        { nombre: "Caballero Arcano", enlace: "../clase/subclases/luchador/caballeroEldritch.html" },
        { nombre: "Guerrero Psíquico", enlace: "../clase/subclases/luchador/psi.html" },
        { nombre: "Caballero Rúnico", enlace: "../clase/subclases/luchador/caballeroRunico.html" },
        { nombre: "Samurái", enlace: "../clase/subclases/luchador/samurai.html" }
    ],
    "Monje": [
        { nombre: "Camino de la Misericordia", enlace: "../clase/subclases/monje/misericordia.html" },
        { nombre: "Camino del Dragón Ascendente", enlace: "../clase/subclases/monje/dragonAscenfente.html" },
        { nombre: "Camino del Ser Astral", enlace: "../clase/subclases/monje/yoAstral.html" },
        { nombre: "Camino del Maestro Borracho", enlace: "../clase/subclases/monje/maestroBorracho.html" },
        { nombre: "Camino de los Cuatro Elementos", enlace: "../clase/subclases/monje/cuatroElementos.html" },
        { nombre: "Camino del Kensei", enlace: "../clase/subclases/monje/kensei.html" },
        { nombre: "Camino de la Larga Muerte", enlace: "../clase/subclases/monje/largaMuerte.html" },
        { nombre: "Camino de la Mano Abierta", enlace: "../clase/subclases/monje/manoAbierta.html" },
        { nombre: "Camino de la Sombra", enlace: "../clase/subclases/monje/sombra.html" },
        { nombre: "Camino del Alma Solar", enlace: "../clase/subclases/monje/almaSol.html" }
    ],
    "Paladín": [
        { nombre: "Juramento de los Antiguos", enlace: "../clase/subclases/paladin/ancestros.html" },
        { nombre: "Juramento de Conquista", enlace: "../clase/subclases/paladin/conquista.html" },
        { nombre: "Juramento de la Corona", enlace: "../clase/subclases/paladin/corona.html" },
        { nombre: "Juramento de Devoción", enlace: "../clase/subclases/paladin/devocion.html" },
        { nombre: "Juramento de Gloria", enlace: "../clase/subclases/paladin/gloria.html" },
        { nombre: "Juramento de Redención", enlace: "../clase/subclases/paladin/redencion.html" },
        { nombre: "Juramento de Venganza", enlace: "../clase/subclases/paladin/venganza.html" },
        { nombre: "Juramento de los Vigilantes", enlace: "../clase/subclases/paladin/vigilante.html" },
        { nombre: "Juramento Rompedor", enlace: "../clase/subclases/paladin/rompejuramentos.html" }
    ],
    "Guarda Bosque": [
        { nombre: "Cónclave del Maestro de las Bestias", enlace: "../clase/subclases/guardabosque/maestroBestia.html" },
        { nombre: "Guardián de los Drake", enlace: "../clase/subclases/guardabosque/guardianDragones.html" },
        { nombre: "Vagabundo Fey", enlace: "../clase/subclases/guardabosque/vagabundoHadas.html" },
        { nombre: "Cónclave del Acechador de las Tinieblas", enlace: "../clase/subclases/guardabosque/acechador.html" },
        { nombre: "Cónclave del Caminante del Horizonte", enlace: "../clase/subclases/guardabosque/caminante.html" },
        { nombre: "Cónclave del Cazador", enlace: "../clase/subclases/guardabosque/cazadores.html" },
        { nombre: "Cónclave del Matador de Monstruos", enlace: "../clase/subclases/guardabosque/cazadoresMounstruos.html" },
        { nombre: "Guardián del Enjambre", enlace: "../clase/subclases/guardabosque/enjambre.html" }
    ],
    "Pícaro": [
        { nombre: "Tramposo arcano", enlace: "../clase/subclases/picaro/index.html" },
        { nombre: "Asesino", enlace: "../clase/subclases/picaro/aseesino.html" },
        { nombre: "Inquisitivo", enlace: "../clase/subclases/picaro/curioso.html" },
        { nombre: "Mente maestra", enlace: "../clase/subclases/picaro/mente.html" },
        { nombre: "Fantasma", enlace: "#" },
        { nombre: "Explorador", enlace: "../clase/subclases/picaro/explorador.html" },
        { nombre: "Cuchillo del alma", enlace: "../clase/subclases/picaro/cuchilloAlma.html" },
        { nombre: "Espadachín", enlace: "../clase/subclases/picaro/espadachin.html" },
        { nombre: "Ladrón", enlace: "../clase/subclases/picaro/ladron.html" }
    ],
    "Hechicero": [
        { nombre: "Mente aberrante", enlace: "../clase/subclases/hechizero/menteAberrante.html" },
        { nombre: "Alma mecánica", enlace: "../clase/subclases/hechizero/almaMecanica.html" },
        { nombre: "Linaje dracónico", enlace: "../clase/subclases/hechizero/linajeDraconico.html" },
        { nombre: "Alma divina", enlace: "../clase/subclases/hechizero/almaDivina.html" },
        { nombre: "Hechicería lunar", enlace: "../clase/subclases/hechizero/hechiceraLunar.html" },
        { nombre: "Magia de las sombras", enlace: "../clase/subclases/hechizero/magiaSobras.html" },
        { nombre: "Hechicería de tormenta", enlace: "../clase/subclases/hechizero/hechiceraTormenta.html" },
        { nombre: "Magia salvaje", enlace: "../clase/subclases/hechizero/magiaSalvaje.html" }
    ],
    "Brujo": [
        { nombre: "Archfey", enlace: "../clase/subclases/brujo/archfey.html" },
        { nombre: "Celestial", enlace: "../clase/subclases/brujo/celestial.html" },
        { nombre: "Insondable", enlace: "../clase/subclases/brujo/insondable.html" },
        { nombre: "Demonio", enlace: "../clase/subclases/brujo/demonio.html" },
        { nombre: "El Genio", enlace: "../clase/subclases/brujo/genio.html" },
        { nombre: "Gran Antiguo", enlace: "../clase/subclases/brujo/granAntiguo.html" },
        { nombre: "Espada Hex", enlace: "../clase/subclases/brujo/hex.html" },
        { nombre: "No-muerto", enlace: "../clase/subclases/brujo/noMuerto.html" },
        { nombre: "Inmortal", enlace: "../clase/subclases/brujo/inmortal.html" }
    ],
    "Mago": [
        { nombre: "Escuela de Abjuración", enlace: "../clase/subclases/mago/abjuracion.html" },
        { nombre: "Escuela de Canto de Espadas", enlace: "../clase/subclases/mago/cantoEspada.html" },
        { nombre: "Escuela de Cronurgia", enlace: "../clase/subclases/mago/cronurgia.html" },
        { nombre: "Escuela de Conjuración", enlace: "../clase/subclases/mago/conjuracion.html" },
        { nombre: "Escuela de Adivinación", enlace: "../clase/subclases/mago/adivinacion.html" },
        { nombre: "Escuela de Encantamiento", enlace: "../clase/subclases/mago/encantamiento.html" },
        { nombre: "Escuela de Evocación", enlace: "../clase/subclases/mago/evocacion.html" },
        { nombre: "Escuela de Gravedad", enlace: "../clase/subclases/mago/gravedad.html" },
        { nombre: "Escuela de Ilusión", enlace: "../clase/subclases/mago/ilusion.html" },
        { nombre: "Escuela de Nigromancia", enlace: "../clase/subclases/mago/nigromancia.html" },
        { nombre: "Orden de Escribas", enlace: "../clase/subclases/mago/escriba.html" },
        { nombre: "Escuela de Transmutación", enlace: "../clase/subclases/mago/transmutacion.html" },
        { nombre: "Escuela de Magia de Guerra", enlace: "../clase/subclases/mago/magiaGuerra.html" }
    ]
};


function actualizarTabla(clase) {
    const tabla = document.getElementById('tabla-subclases').getElementsByTagName('tbody')[0];
    tabla.innerHTML = "";

    if (!subclases[clase]) {
        tabla.innerHTML = `<tr><td colspan="2">No hay subclases disponibles para esta clase.</td></tr>`;
        return;
    }

    subclases[clase].forEach(sub => {
        const row = tabla.insertRow();
        row.innerHTML = `
            <td style="padding: 10px;"><a href="${sub.enlace}" target="_blank">${sub.nombre}</a></td>
            <td style="padding: 10px;">-</td>
        `;
    });
}

// Mostrar subclases de una clase al cargar
actualizarTabla('Artífice');
</script>
</body>
</html>
