<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Artífice - D&D</title>
    <link rel="stylesheet" href="StyleDeClases.Css">

</head>
<body>
     <!-- Botón flotante para volver a Clases -->
    <a href="../../Php/clases.php" class="btn-volver">← Volver a Clases</a>
    <a href="#top" class="btn-subir">↑ Subir</a>

    <header>
        <nav>
            <ul>
                <li><button onclick="location.href='../../Php/clases.php'">Clases</button></li>
                <li><button onclick="location.href='../../Php/razas.php'">Razas</button></li>
                <li><button onclick="location.href='../../Php/subclases.php'">Subclases</button></li>
                <li><button onclick="location.href='../../Php/hechizos.php'">Hechizos</button></li>
                <li><button onclick="location.href='../../Php/Dados.html'">Dados</button></li>
                <li><button onclick="location.href='../../Php/perfil.php'">Perfil</button></li>
            </ul>
        </nav>
    </header>

    <h1>Artífice</h1>
    <p>Maestros de la invención, los artífices utilizan el ingenio y la magia para desbloquear capacidades extraordinarias en los objetos. Ven la magia como un sistema complejo que espera ser decodificado y luego aprovechado en sus hechizos e inventos. Puedes encontrar todo lo que necesitas para jugar con uno de estos inventores en las siguientes secciones.</p>

    <p>Los artífices usan una variedad de herramientas para canalizar su poder arcano. Para lanzar un hechizo, un artífice puede usar suministros de alquimista para crear un elixir potente, suministros de calígrafo para inscribir un sello de poder o herramientas de tinker para crear un amuleto temporal. La magia de los artífices está ligada a sus herramientas y sus talentos, y pocos otros personajes pueden producir la herramienta adecuada para un trabajo tan bien como un artífice.</p>

    <p>Debes tener una puntuación de Inteligencia de 13 o superior para poder entrar o salir de esta clase en varias clases.</p>

    <h2>Ranuras de Hechizo por Nivel</h2>
    <table>
        <thead>
            <tr>
                <th>Nivel</th>
                <th>Bono de Competencia</th>
                <th>Funciones</th>
                <th>Infusiones Conocidas</th>
                <th>Objetos Infundidos</th>
                <th>Cantrips Conocidos</th>
                <th>1º</th>
                <th>2º</th>
                <th>3º</th>
                <th>4º</th>
                <th>5º</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1º</td>
                <td>+2</td>
                <td>Retoques mágicos, lanzamiento de hechizos</td>
                <td>-</td>
                <td>-</td>
                <td>2</td>
                <td>2</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td>2º</td>
                <td>+2</td>
                <td>Objeto de infusión</td>
                <td>4</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td>3º</td>
                <td>+2</td>
                <td>Artificiero Especialista, La Herramienta Adecuada para el Trabajo</td>
                <td>4</td>
                <td>2</td>
                <td>2</td>
                <td>3</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td>4º</td>
                <td>+2</td>
                <td>Mejora de la puntuación de habilidad</td>
                <td>4</td>
                <td>2</td>
                <td>2</td>
                <td>3</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td>5º</td>
                <td>+3</td>
                <td>Función Especialista en artífices</td>
                <td>4</td>
                <td>2</td>
                <td>2</td>
                <td>4</td>
                <td>2</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td>6º</td>
                <td>+3</td>
                <td>Experiencia en herramientas</td>
                <td>6</td>
                <td>3</td>
                <td>2</td>
                <td>4</td>
                <td>2</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td>7º</td>
                <td>+3</td>
                <td>Destello de genialidad</td>
                <td>6</td>
                <td>3</td>
                <td>2</td>
                <td>4</td>
                <td>3</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td>8º</td>
                <td>+3</td>
                <td>Mejora de la puntuación de habilidad</td>
                <td>6</td>
                <td>3</td>
                <td>2</td>
                <td>4</td>
                <td>3</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <!-- Agregar más filas según el contenido adicional -->
        </tbody>
    </table>

    <h2 class="section-title">Códigos de Creación: La Ciencia que Dobla la Realidad</h2>
    <a href="../../HechizosClases/HArtifice.html" class="btn">Secretos de Ingenio Arcano</a>

    <h2 class="section-title">Características de la Clase</h2>
    <p>Como artífice, obtienes las siguientes características de clase:</p>

    <h3>Puntos de Vida</h3>
    <p><strong>Dados de Golpe:</strong> 1d8 por nivel de artífice</p>
    <p><strong>Puntos de Golpe en el 1er Nivel:</strong> 8 + tu modificador de Constitución</p>
    <p><strong>Puntos de Golpe en Niveles Superiores:</strong> 1d8 (o 5) + tu modificador de Constitución por nivel de artífice después del 1er nivel</p>

    <h3>Competencias</h3>
    <ul>
        <li><strong>Armadura:</strong> Armadura ligera, armadura mediana, escudos</li>
        <li><strong>Armas:</strong> Armas simples</li>
        <li><strong>Herramientas:</strong> Herramientas de ladrones, herramientas de manitas, un tipo de herramientas de artesano de su elección</li>
        <li><strong>Tiradas de salvación:</strong> Constitución, Inteligencia</li>
        <li><strong>Habilidades:</strong> Elige dos de Arcana, Historia, Investigación, Medicina, Naturaleza, Percepción, Juego de manos</li>
    </ul>
<div class="seccion-detalle equipo">
    <h3>Equipo</h3>
    <p>Comienzas con el siguiente equipo, además del equipo otorgado por tu experiencia:</p>
    <ul>
        <li>Dos armas simples cualesquiera</li>
        <li>Una ballesta ligera y 20 flechas</li>
        <li>(a) Armadura de cuero con tachuelas o (b) Cota de malla</li>
        <li>Herramientas de ladrones y una mochila de mazmorrero</li>
        <li>Alternativamente, puede comenzar con 5d4x10 de oro inicial</li>
    </ul>
</div>
    <h3>Regla Opcional: Dominio de Armas de Fuego</h3>
    <p>Los secretos de las armas de pólvora han sido descubiertos en varios rincones del multiverso de D&D. Si tu Dungeon Master usa las reglas sobre armas de fuego en la Guía del Dungeon Master y tu artífice ha estado expuesto al funcionamiento de tales armas, tu artífice es competente con ellas.</p>
<div class="seccion-detalle equipo">   
    <h3>Retoques Mágicos</h3>
    <p>En el nivel 1, has aprendido a invertir una chispa de magia en objetos mundanos. Para usar esta habilidad, debes tener a mano las herramientas de los ladrones o las herramientas de los artesanos. A continuación, tocas un pequeño objeto no mágico como acción y le das una de las siguientes propiedades mágicas de tu elección:</p>
    <ul>
        <li><strong>Objeto Luminoso:</strong> El objeto arroja una luz brillante en un radio de 5 pies y una luz tenue durante 5 pies adicionales.</li>
        <li><strong>Mensaje grabado:</strong> Cada vez que es tocado por una criatura, el objeto emite un mensaje grabado que se puede escuchar hasta a 10 pies de distancia. El mensaje se pronuncia cuando se otorga esta propiedad al objeto, y la grabación no puede durar más de 6 segundos.</li>
        <li><strong>Sonido o olor:</strong> El objeto emite continuamente un olor o un sonido no verbal (viento, olas, chirridos o similares). El fenómeno elegido es perceptible hasta a 10 pies de distancia.</li>
        <li><strong>Efecto visual:</strong> Aparece un efecto visual estático en una de las superficies del objeto. Este efecto puede ser una imagen, hasta 25 palabras de texto, líneas y formas, o una mezcla de estos elementos, como desees.</li>
    </ul>
    <p>El inmueble elegido tiene una duración indefinida. Como acción, puedes tocar el objeto y finalizar la propiedad antes de tiempo.</p>
    <p>Puedes otorgar magia a varios objetos, tocando un objeto cada vez que usas esta función, aunque un solo objeto solo puede tener una propiedad a la vez. El número máximo de objetos que puedes afectar con esta función a la vez es igual a tu modificador de Inteligencia (mínimo de un objeto). Si intentas superar el máximo, la propiedad más antigua finaliza inmediatamente y, a continuación, se aplica la nueva propiedad.</p>
</div>

    <h3>Lanzamiento de Hechizos</h3>
    <p>Has estudiado el funcionamiento de la magia y cómo lanzar hechizos, canalizando la magia a través de objetos. Para los observadores, no parece que estés lanzando hechizos de una manera convencional; Parece que produces maravillas a partir de objetos mundanos e inventos extravagantes.</p>

    <h3>Herramientas necesarias</h3>
    <p>Produces tus efectos de hechizo de artífice a través de tus herramientas. Debes tener un foco de lanzamiento de hechizos, específicamente herramientas de ladrones o algún tipo de herramienta de artesano, a mano cuando lances cualquier hechizo con esta función de lanzamiento de hechizos (lo que significa que el hechizo tiene un componente "M" cuando lo lanzas). Debe ser competente con la herramienta para usarla de esta manera. Consulte el capítulo de equipo en el Manual del jugador para obtener descripciones de estas herramientas.</p>
    <p>Después de que obtengas la función Infundir objeto en el 2º nivel, también puedes usar cualquier objeto que lleve una de tus infusiones como foco de lanzamiento de hechizos.</p>

    <h3>Cantrips (hechizos de nivel 0)</h3>
    <p>En el nivel 1, conoces dos cantrips de tu elección de la lista de hechizos de artífice. En los niveles superiores, aprenderá cantrips de artífice adicionales de su elección, como se muestra en la columna Cantrips conocidos de la tabla Artificiero.</p>
    <p>Cuando subes de nivel en esta clase, puedes reemplazar uno de los cantrips de artífice que conoces con otro cantrip de la lista de hechizos de artífice.</p>

    <h3>Preparación y lanzamiento de hechizos</h3>
    <p>La tabla de Artífice muestra cuántas ranuras de hechizos tienes para lanzar tus hechizos de Artífice. Para lanzar uno de tus hechizos de artífice de nivel 1 o superior, debes gastar una ranura del nivel del hechizo o superior. Recuperas todas las ranuras de hechizos gastadas cuando terminas un largo descanso.</p>
    <p>Preparas la lista de hechizos de artífice que están disponibles para que los lances, eligiendo de la lista de hechizos de artífice. Cuando lo hagas, elige un número de hechizos de artífice igual a tu modificador de Inteligencia + la mitad de tu nivel de artífice, redondeado hacia abajo (mínimo de un hechizo). Los hechizos deben ser de un nivel para el que tengas ranuras de hechizos.</p>
    <p>Por ejemplo, si eres un artífice de 5º nivel, tienes cuatro ranuras de hechizos de 1º nivel y dos de 2º nivel. Con una Inteligencia de 14, tu lista de hechizos preparados puede incluir cuatro hechizos de 1º o 2º nivel, en cualquier combinación. Si preparas el hechizo de nivel 1 Curar heridas, puedes lanzarlo usando una ranura de nivel 1 o una ranura de nivel 2. Lanzar el hechizo no lo elimina de tu lista de hechizos preparados.</p>
    <p>Puedes cambiar tu lista de hechizos preparados cuando termines un descanso largo. Preparar una nueva lista de hechizos de artífice requiere tiempo dedicado a jugar con tus enfoques de lanzamiento de hechizos: al menos 1 minuto por nivel de hechizo para cada hechizo de tu lista.</p>

    <h3>Habilidad de lanzamiento de hechizos</h3>
    <p>La inteligencia es tu habilidad para lanzar hechizos para tus hechizos de artífice; Tu comprensión de la teoría detrás de la magia te permite manejar estos hechizos con una habilidad superior. Usas tu Inteligencia siempre que un hechizo de artífice se refiera a tu habilidad de lanzamiento de hechizos. Además, usas tu modificador de Inteligencia cuando estableces la CD de la tirada de salvación para un hechizo de artífice que lanzas y cuando haces una tirada de ataque con uno.</p>
    <p>CD de salvación de hechizo = 8 + tu bonificación de competencia + tu modificador de inteligencia</p>
    <p>Modificador de ataque con hechizos = tu bonificación de competencia + tu modificador de inteligencia</p>
    <p>Lanzamiento ritual</p>
    <p>Puedes lanzar un hechizo de artífice como ritual si ese hechizo tiene la etiqueta de ritual y tienes el hechizo preparado.    </p>


    <h3>Objeto de infusión</h3>
    <p>En el nivel 2, has obtenido la capacidad de imbuir objetos mundanos con ciertas infusiones mágicas, convirtiendo esos objetos en objetos mágicos.</p>

    <h3>Infusiones conocidas</h3>
    <p>Cuando obtengas esta función, elige cuatro infusiones de artífice para aprender. Aprendes infusiones adicionales de tu elección cuando alcanzas ciertos niveles en esta clase, como se muestra en la columna Infusiones conocidas de la tabla Artífice.</p>
    <p>Cada vez que subas de nivel en esta clase, puedes reemplazar una de las infusiones de artífice que aprendiste por una nueva.</p>

    <h3>Infundir un objeto</h3>
    <p>Cada vez que termines un largo descanso, puedes tocar un objeto no mágico e imbuirlo con una de tus infusiones de artífice, convirtiéndolo en un objeto mágico. Una infusión funciona solo en ciertos tipos de objetos, como se especifica en la descripción de la infusión. Si el objeto requiere sintonía, puedes sintonizarte con él en el instante en que lo infundas. Si decides sintonizar con el objeto más tarde, debes hacerlo utilizando el proceso normal de sintonía (consulta las reglas de sintonía en la Guía del Dungeon Master).</p>
    <p>Tu infusión permanece en un objeto indefinidamente, pero cuando mueres, la infusión desaparece después de un número de días igual a tu modificador de inteligencia (mínimo de 1 día). La infusión también desaparece si reemplaza su conocimiento de la infusión.</p>
    <p>Puedes infundir más de un objeto no mágico al final de un largo descanso; el número máximo de objetos aparece en la columna Elementos infundidos de la tabla Artífice. Debes tocar cada uno de los objetos, y cada una de tus infusiones puede estar en un solo objeto a la vez. Además, ningún objeto puede soportar más de una de sus infusiones a la vez. Si intenta exceder su número máximo de infusiones, la infusión más antigua finaliza y luego se aplica la nueva infusión.</p>
    <p>Si una infusión termina en un objeto que contiene otras cosas, como una bolsa de almacenamiento, su contenido aparece inofensivamente dentro y alrededor de su espacio.</p>

    <h3>Especialista en Artífice</h3>
    <p>En el 3er nivel, tú eliges el tipo de especialista que eres. Su elección le otorga funciones en el 5º nivel y nuevamente en el 9º y 15º nivel.</p>
    <table>
        <thead>
            <tr>
                <th>Especialidad</th>
                <th>Fuente</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Alquimista</td>
                <td>El caldero de Tasha de todo, Eberron: Resurgiendo de la última guerra</td>
            </tr>
            <tr>
                <td>Armero</td>
                <td>El caldero de todo de Tasha, Arcanos Desenterrados 69 - Subclases, Parte 3</td>
            </tr>
            <tr>
                <td>Artillero</td>
                <td>El caldero de Tasha de todo, Eberron: Resurgiendo de la última guerra</td>
            </tr>
            <tr>
                <td>Herrero de batalla</td>
                <td>El caldero de Tasha de todo, Eberron: Resurgiendo de la última guerra</td>
            </tr>
            <tr>
                <td>Archivero</td>
                <td>Arcanos Desenterrados 58 - Artífice</td>
            </tr>
        </tbody>
    </table>

<!-- 🔽 NUEVA SECCIÓN INTERACTIVA 🔽 -->
<h2>Características por Nivel</h2>
<div id="botones-caracteristicas">
    <button onclick="filtrarCaracteristicas('todos')">Todos</button>
    <button onclick="filtrarCaracteristicas('3')">Nivel 3</button>
    <button onclick="filtrarCaracteristicas('4')">Nivel 4</button>
    <button onclick="filtrarCaracteristicas('6')">Nivel 6</button>
    <button onclick="filtrarCaracteristicas('7')">Nivel 7</button>
    <button onclick="filtrarCaracteristicas('8')">Nivel 8</button>
    <button onclick="filtrarCaracteristicas('10')">Nivel 10</button>
    <button onclick="filtrarCaracteristicas('11')">Nivel 11</button>
    <button onclick="filtrarCaracteristicas('14')">Nivel 14</button>
    <button onclick="filtrarCaracteristicas('18')">Nivel 18</button>
    <button onclick="filtrarCaracteristicas('20')">Nivel 20</button>
</div>

<table id="tabla-caracteristicas">
    <thead>
        <tr>
            <th>Nivel</th>
            <th>Característica</th>
            <th>Descripción</th>
        </tr>
    </thead>
    <tbody>
        <!-- Generado por JS -->
    </tbody>
</table>
<!-- 🔽 SCRIPT DE FUNCIONALIDAD -->
<script>
    const caracteristicas = [
        { nivel: 3, nombre: "La herramienta adecuada para el trabajo", descripcion: "Puedes crear mágicamente un conjunto de herramientas de artesano en un espacio desocupado." },
        { nivel: 4, nombre: "Mejora de la puntuación de habilidad", descripcion: "Aumenta puntuaciones de habilidad en 2 o dos puntuaciones en 1. No excede 20." },
        { nivel: 6, nombre: "Experiencia en herramientas", descripcion: "Doble competencia en pruebas de habilidad con herramientas." },
        { nivel: 7, nombre: "Destello de genialidad", descripcion: "Puedes añadir tu INT a pruebas de habilidad o salvación tuyas o de otros." },
        { nivel: 8, nombre: "Mejora de la puntuación de habilidad", descripcion: "Aumenta puntuaciones de habilidad como antes." },
        { nivel: 10, nombre: "Experto en objetos mágicos", descripcion: "Puedes sintonizar 4 objetos mágicos; fabricar más rápido y barato." },
        { nivel: 11, nombre: "Objeto de almacenamiento de hechizos", descripcion: "Puedes almacenar un hechizo en un objeto para que otro lo lance." },
        { nivel: 14, nombre: "Objeto mágico Savant", descripcion: "Sintoniza hasta 5 objetos mágicos. Ignora requisitos de uso." },
        { nivel: 18, nombre: "Maestro de objetos mágicos", descripcion: "Puedes sintonizar hasta 6 objetos mágicos." },
        { nivel: 20, nombre: "Alma de artificio", descripcion: "+1 a TS por cada objeto sintonizado. Puedes sobrevivir a 0 PV una vez." }
    ];
    
    function generarTabla(nivelFiltro = "todos") {
        const cuerpo = document.querySelector("#tabla-caracteristicas tbody");
        cuerpo.innerHTML = "";
        caracteristicas.forEach(carac => {
            if (nivelFiltro === "todos" || carac.nivel == nivelFiltro) {
                const fila = document.createElement("tr");
                fila.innerHTML = `
                    <td>${carac.nivel}</td>
                    <td>${carac.nombre}</td>
                    <td>${carac.descripcion}</td>
                `;
                cuerpo.appendChild(fila);
            }
        });
    }
    
    function filtrarCaracteristicas(nivel) {
        generarTabla(nivel);
    }
    
    document.addEventListener("DOMContentLoaded", () => {
        generarTabla();
    });
    </script>

</body>
</html>
