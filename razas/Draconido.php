<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Small Dracónido</title>
    <link rel="stylesheet" href="../IntroRazas.css">
</head>
<body>
    <header>
        <nav>
            <div class="container">
                <ul>
            <ul>
                <li><button onclick="location.href='../Php/index.php'">Inicio</button></li>
                <li><button onclick="location.href='../Php/clases.php'">Clases</button></li>
                <li><button onclick="location.href='../Php/razas.php'">Razas</button></li>
                <li><button onclick="location.href='../Php/subclases.php'">Subclases</button></li>
                <li><button onclick="location.href='../Php/hechizos.php'">Hechizos</button></li>
                <li><button onclick="location.href='../Php/Dados.html'">Dados</button></li>
                <li><button onclick="location.href='../Php/perfil.php'">Perfil</button></li>
            </ul>
            </div>
        </nav>
    </header>

    <main>
        <div class="card-draconido">
            <img src="https://i.imgur.com/4Ug9LOp.jpg" alt="Small Dracónido">
            <h1>Small Dracónido</h1>
        </div>

        <p class="intro-text">Tu herencia dracónida se manifiesta en una serie de rasgos que compartes con otros dracónidos. Los dracónidos tienden hacia los extremos en la guerra cósmica entre el bien y el mal. La mayoría son buenos, pero los que se ponen de lado del mal pueden ser terriblemente malignos.</p>

        <section class="razas">
            <h2>Origen</h2>
            <p>Reglas básicas</p>

            <h2>Rasgos raciales Dracónido</h2>
            <div class="rasgos-raciales">
                <h3>Velocidad</h3>
                <p>30 pies</p>

                <h3>Linaje dracónico</h3>
                <p>Tienes un antepasado dragón. Elige un tipo de dragón de la tabla de antepasado dragón...</p>
                <ul>
                    <li>Azul - Relámpago</li>
                    <li>Blanco - Frío</li>
                    <li>Rojo - Fuego</li>
                    <!-- ... -->
                </ul>
            </div>

            <h3>Ataque de aliento</h3>
            <p>Puedes usar tu acción para exhalar energía destructiva...</p>

            <h3>Resistencia al daño</h3>
            <p>Tienes resistencia al tipo de daño asociado con tu antepasado dragón.</p>

            <h3>Idiomas</h3>
            <p>Puedes hablar, leer y escribir común y dracónico.</p>

            <div class="modificadores">
                <h3>Modificadores</h3>
                <ul>
                    <li>+2 Fuerza</li>
                    <li>+1 Carisma</li>
                </ul>
            </div>
        </section>

        <button class="siguiente-raza" onclick="location.href='../Php/razas.Php'">Volver a Razas</button>
    </main>
</body>
</html>
