-- Inserción para Artífice
INSERT INTO clases (nombre, descripcion, requisitos, dado_golpe, vida_nivel1, vida_niveles_sup, competencias, equipo_inicial) VALUES
('Artífice', 
 'Los artífices son inventores mágicos, expertos en imbuir objetos con poderes arcanos.',
 'Requiere acceso a hechicería y conocimiento en herramientas de artesano.',
 '1d8', 
 '8 + modificador de Constitución', 
 '1d8 (o 5) + modificador de Constitución por nivel posterior', 
 'Armaduras ligeras, medias, escudos, armas simples, herramientas de ladrones y manitas, herramientas de artesano. TS: Constitución, Inteligencia. Habilidades: elige dos de Arcana, Historia, Investigación, Medicina, Naturaleza, Percepción, Juego de manos.', 
 'Armadura mediana, ballesta ligera o cualquier arma simple; bolsa de herramientas de artesano; mochila de explorador o de erudito; 2 dagas');

-- Ejemplo de progresión de niveles para Artífice (niveles 1-3)
INSERT INTO progresion (clase_id, nivel, bono_competencia, funciones, cantrips, hechizos_conocidos, ranura_1, ranura_2, ranura_3, ranura_4, ranura_5, ranura_6, ranura_7, ranura_8, ranura_9) VALUES
(1, 1, '+2', 'Magia de artífice, infusiones conocidas (4)', 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 2, '+2', 'Infundir objeto, objetos infundidos (2)', 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 3, '+2', 'Especialista en artífice, rituales mágicos', 2, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-----------------------------------
-- Inserción para Bárbaro
INSERT INTO clases (nombre, descripcion, requisitos, dado_golpe, vida_nivel1, vida_niveles_sup, competencias, equipo_inicial) VALUES
('Bárbaro', 
 'Guerreros feroces impulsados por la furia, expertos en combate cuerpo a cuerpo.',
 'Ninguno.', 
 '1d12', 
 '12 + modificador de Constitución', 
 '1d12 (o 7) + modificador de Constitución por nivel posterior', 
 'Armaduras ligeras, armas simples y marciales. TS: Fuerza, Constitución. Habilidades: elige dos entre Atletismo, Intimidación, Naturaleza, Percepción, Supervivencia.', 
 'Un hacha grande o cualquier arma marcial cuerpo a cuerpo; dos hachas de mano o cualquier arma simple; paquete de explorador y cuatro jabalinas');

-- Ejemplo de progresión de niveles para Bárbaro (niveles 1-3)
INSERT INTO progresion (clase_id, nivel, bono_competencia, funciones, cantrips, hechizos_conocidos, ranura_1, ranura_2, ranura_3, ranura_4, ranura_5, ranura_6, ranura_7, ranura_8, ranura_9) VALUES
(2, 1, '+2', 'Ira, defensa sin armadura', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 2, '+2', 'Ataque temerario, sentido peligroso', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 3, '+2', 'Camino bárbaro (subclase)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

----------------------------------------------
-- Inserción para Bardo
INSERT INTO clases (nombre, descripcion, requisitos, dado_golpe, vida_nivel1, vida_niveles_sup, competencias, equipo_inicial) VALUES
('Bardo', 
 'Los bardos canalizan la magia a través de la música, siendo versátiles en combate y apoyo.',
 'Ninguno.', 
 '1d8', 
 '8 + modificador de Constitución', 
 '1d8 (o 5) + modificador de Constitución por nivel posterior', 
 'Armaduras ligeras, armas simples, ballestas de mano, espadas largas, estoques, espadas cortas. TS: Destreza, Carisma. Habilidades: elige tres cualquiera.', 
 'Un estoque, espada larga o cualquier arma simple; paquete diplomático o de artista; laúd o instrumento musical; armadura de cuero y daga');

-- Ejemplo de progresión de niveles para Bardo (niveles 1-3)
INSERT INTO progresion (clase_id, nivel, bono_competencia, funciones, cantrips, hechizos_conocidos, ranura_1, ranura_2, ranura_3, ranura_4, ranura_5, ranura_6, ranura_7, ranura_8, ranura_9) VALUES
(3, 1, '+2', 'Inspiración bardica (d6), lanzamiento de conjuros', 2, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 2, '+2', 'Canción de descanso (d6), Jack of All Trades', 2, 5, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 3, '+2', 'Subclase bardica, experiencia', 2, 6, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0);

-----------------------------------------------------
-- Insertar clase "Brujo"
INSERT INTO clases (nombre, descripcion, requisitos)
VALUES (
    'Brujo',
    'Los brujos son buscadores del conocimiento que se esconde en el tejido del multiverso. A través de pactos hechos con misteriosos seres de poder sobrenatural, los brujos desbloquean efectos mágicos tanto sutiles como espectaculares.',
    'Debes tener una puntuación de Carisma de 13 o superior para poder entrar o salir de esta clase en varias clases.'
);

-- Obtener el ID de la clase "Brujo"
SET @clase_id = LAST_INSERT_ID();

-- Insertar progresión de niveles del Brujo
INSERT INTO progresion (
    clase_id, nivel, bono_competencia, funciones, cantrips, hechizos_conocidos,
    ranura_1, ranura_2, ranura_3, ranura_4, ranura_5, ranura_6, ranura_7, ranura_8, ranura_9
)
VALUES
(@clase_id, 1, '+2', 'Patrón de otro mundo, Magia del Pacto', 2, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(@clase_id, 2, '+2', 'Invocaciones sobrenaturales', 2, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(@clase_id, 3, '+2', 'Bendición del pacto', 2, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(@clase_id, 4, '+2', 'Mejora de la puntuación de habilidad, versatilidad de Eldritch (opcional)', 3, 5, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(@clase_id, 5, '+3', '', 3, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(@clase_id, 6, '+3', 'Función de mecenas de otro mundo', 3, 7, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(@clase_id, 7, '+3', '', 3, 8, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(@clase_id, 8, '+3', 'Mejora de la puntuación de habilidad, versatilidad de Eldritch (opcional)', 3, 9, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(@clase_id, 9, '+4', '', 3, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(@clase_id, 10, '+4', 'Función de mecenas de otro mundo', 4, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(@clase_id, 11, '+4', 'Arcano Místico (6º nivel)', 4, 11, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(@clase_id, 12, '+4', 'Mejora de la puntuación de habilidad, versatilidad de Eldritch (opcional)', 4, 11, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(@clase_id, 13, '+5', 'Arcano Místico (7º nivel)', 4, 12, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(@clase_id, 14, '+5', 'Función de mecenas de otro mundo', 4, 12, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(@clase_id, 15, '+5', 'Arcano Místico (8º nivel)', 4, 13, 0, 0, 0, 0, 0, 0, 1, 0, 0);
----------------------------------------------------
-- Inserta la clase Clérigo
INSERT INTO clases (nombre, descripcion, requisitos) VALUES (
    'Clérigo',
    'Los clérigos son intermediarios entre el mundo mortal y los planos distantes de los dioses. Tan variados como los dioses a los que sirven, los clérigos se esfuerzan por encarnar la obra de sus deidades. Ningún sacerdote ordinario, un clérigo está imbuido de magia divina.',
    'Debes tener una puntuación de Sabiduría de 13 o superior para poder entrar o salir de esta clase en varias clases.'
);

-- Inserta las características del Clérigo
INSERT INTO caracteristicas_clase (clase_id, seccion, contenido) VALUES
(2, 'Puntos de Vida', 'Dados para Vida: 1d8 por nivel de clérigo. Puntos de Vida en el 1er Nivel: 8 + tu modificador de Constitución. Puntos de Vida en Niveles Superiores: 1d8 (o 5) + tu modificador de Constitución por nivel de clérigo después del 1er.'),
(2, 'Competencias', 'Armadura: Armadura ligera, armadura mediana, escudos. Armas: Todas las armas simples. Herramientas: Ninguna. Tiradas de salvación: Sabiduría, Carisma. Habilidades: Elige dos de Historia, Perspicacia, Medicina, Persuasión y Religión.'),
(2, 'Equipo', '(a) una maza o (b) un martillo de guerra (si es competente); (a) cota de malla, (b) armadura de cuero, o (c) cota de malla (si es competente); (a) una ballesta ligera y 20 flechas o (b) cualquier arma simple; (a) una mochila de sacerdote o (b) una mochila de explorador; Un escudo y un símbolo sagrado.');

-- Inserta la sección de lanzamiento de hechizos
INSERT INTO lanzamiento_hechizos (clase_id, seccion, contenido) VALUES
(2, 'Cantrips', 'En el nivel 1, conoces tres cantrips de tu elección de la lista de hechizos del clérigo. Aprenderás cantrips de clérigo adicionales de tu elección en niveles más altos, como se muestra en la columna Cantrips conocidos de la tabla de clérigos.'),
(2, 'Ranuras de Hechizos', 'La tabla de Clérigo muestra cuántas ranuras de hechizos tienes para lanzar tus hechizos de Clérigo de nivel 1 y superior. Para lanzar uno de estos hechizos, debes gastar una ranura del nivel del hechizo o superior. Recuperas todas las ranuras de hechizos gastadas cuando terminas un largo descanso.'),
(2, 'Preparación de Hechizos', 'Preparas la lista de hechizos de clérigo que están disponibles para que los lances, eligiendo de la lista de hechizos de clérigo. Cuando lo hagas, elige un número de hechizos de clérigo igual a tu modificador de Sabiduría + tu nivel de clérigo (mínimo de un hechizo). Los hechizos deben ser de un nivel para el que tengas ranuras de hechizos.'),
(2, 'Habilidad de Lanzamiento de Hechizos', 'La sabiduría es tu habilidad de lanzar hechizos para tus hechizos de clérigo. Usas tu Sabiduría siempre que un hechizo de clérigo se refiera a tu habilidad de lanzamiento de hechizos. Salvación de hechizo CD = 8 + tu bonificación de competencia + tu modificador de Sabiduría. Modificador de ataque de hechizo = tu bonificación de competencia + tu modificador de sabiduría.'),
(2, 'Lanzamiento Ritual', 'Puedes lanzar un hechizo de clérigo como ritual si ese hechizo tiene la etiqueta de ritual y tienes el hechizo preparado.'),
(2, 'Enfoque de Lanzamiento de Hechizos', 'Puedes usar un símbolo sagrado como foco de lanzamiento de hechizos para tus hechizos de clérigo.');

-- Inserta una fila de ejemplo en la tabla de progresión del Clérigo (solo el primer nivel como muestra)
INSERT INTO progresion_clase (clase_id, nivel, bono_competencia, funciones, cantrips, ranura_nivel_1, ranura_nivel_2, ranura_nivel_3, ranura_nivel_4, ranura_nivel_5, ranura_nivel_6, ranura_nivel_7, ranura_nivel_8, ranura_nivel_9) VALUES
(2, 1, '+2', 'Lanzamiento de hechizos, Dominio divino', 3, 2, 0, 0, 0, 0, 0, 0, 0, 0);
--------------------------------------------------------
-- Insertar la clase Druida
INSERT INTO clases (
    nombre, descripcion, requisitos, dado_golpe, vida_nivel1, vida_niveles_sup, competencias, equipo_inicial
) VALUES (
    'Druida',
    'Ya sea invocando las fuerzas elementales de la naturaleza o emulando a las criaturas del mundo animal, los druidas son una encarnación de la resistencia, la astucia y la furia de la naturaleza. No pretenden dominar la naturaleza, sino que se ven a sí mismos como extensiones de la voluntad indomable de la naturaleza.',
    'Debes tener una puntuación de Sabiduría de 13 o superior para poder entrar o salir de esta clase en varias clases.',
    '1d8',
    '8 + tu modificador de Constitución',
    '1d8 (o 5) + tu modificador de Constitución por nivel de druida después del 1er nivel',
    'Armadura: Armadura ligera, armadura mediana, escudos (los druidas no usan armadura ni escudos hechos de metal)\nArmas: Bastones, dagas, dardos, jabalinas, mazas, bastones, cimitarras, hoces, hondas, lanzas\nHerramientas: Kit de herboristería\nTiradas de salvación: Inteligencia, Sabiduría\nHabilidades: Elige dos de Arcanos, Manejo de Animales, Perspicacia, Medicina, Naturaleza, Percepción, Religión y Supervivencia',
    '(a) un escudo de madera o (b) cualquier arma simple; (a) una cimitarra o (b) cualquier arma cuerpo a cuerpo simple; Armadura de cuero, un pack de explorador y un foco druídico'
);

-- Suponiendo que la clase Druida tiene el ID 1 (verifica el ID real si hay más clases)
-- Insertar progresión de nivel 1
INSERT INTO progresion (
    clase_id, nivel, bono_competencia, funciones, cantrips, hechizos_conocidos, ranura_1, ranura_2, ranura_3, ranura_4, ranura_5, ranura_6, ranura_7, ranura_8, ranura_9
) VALUES (
    1, -- ID de la clase Druida
    1,
    '+2',
    'Druídico, Lanzamiento de hechizos',
    2,
    NULL, -- Si se desea llenar esta columna con la cantidad de hechizos preparados/conocidos, ajusta este valor
    2, -- Ranuras de nivel 1
    0, 0, 0, 0, 0, 0, 0, 0
);
----------------------------------------------------------------
-- Insertar la clase Guardabosques
INSERT INTO clases (nombre, descripcion, requisitos)
VALUES (
    'Guardabosques (Rangers)',
    'Lejos del bullicio de las ciudades y los pueblos, más allá de los setos que protegen las granjas más lejanas de los terrores de la naturaleza, entre los densos árboles de los bosques sin senderos y a través de llanuras anchas y vacías, los guardabosques mantienen su vigilancia interminable.',
    'Debes tener una puntuación de Destreza y una puntuación de Sabiduría de 13 o superior para poder entrar o salir de esta clase en varias clases.'
);

-- Supongamos que el ID generado para la clase anterior es 1. Puedes cambiarlo si necesitas adaptarlo.
-- Insertar progresión por nivel
INSERT INTO progresion_clase (clase_id, nivel, bono_competencia, funciones, hechizos_conocidos, nivel_1, nivel_2, nivel_3, nivel_4, nivel_5) VALUES
(1, 1, '+2', 'Enemigo favorito, Explorador natural, Explorador hábil (opcional), Enemigo favorito (opcional)', '-', '-', '-', '-', '-', '-'),
(1, 2, '+2', 'Estilo de lucha, Lanzamiento de hechizos, Enfoque de lanzamiento de hechizos (opcional)', '2', '2', '-', '-', '-', '-'),
(1, 3, '+2', 'Conciencia primigenia, Cónclave de guardabosques, Conciencia primigenia (opcional)', '3', '3', '-', '-', '-', '-'),
(1, 4, '+2', 'Mejora de la puntuación de habilidad, Versatilidad marcial (opcional)', '3', '3', '-', '-', '-', '-'),
(1, 5, '+3', 'Ataque extra', '4', '4', '2', '-', '-', '-'),
(1, 6, '+3', 'Mejora de Enemigo Favorito, Mejora de Explorador Natural, Mejora de Explorador Hábil (Opcional)', '4', '4', '2', '-', '-', '-'),
(1, 7, '+3', 'Característica del Cónclave de Rangers', '5', '4', '3', '-', '-', '-'),
(1, 8, '+3', 'Mejora de la puntuación de habilidad, Zancada de la Tierra, Versatilidad marcial (opcional)', '5', '4', '3', '-', '-', '-'),
(1, 9, '+4', '-', '6', '4', '3', '2', '-', '-'),
(1, 10, '+4', 'Mejora de Explorador Natural, Esconderse a la Vista, Función de Explorador Hábil (Opcional), Velo de la Naturaleza (Opcional)', '6', '4', '3', '2', '-', '-'),
(1, 11, '+4', 'Característica del Cónclave de Rangers', '7', '4', '3', '3', '-', '-'),
(1, 12, '+4', 'Mejora de la puntuación de habilidad, Versatilidad marcial (opcional)', '7', '4', '3', '3', '-', '-'),
(1, 13, '+5', '-', '8', '4', '3', '3', NULL, NULL);
-------------------------------------------------
-- Insertar la clase Mago
INSERT INTO clases (
    nombre, descripcion, requisitos, dado_golpe, vida_nivel1, vida_niveles_sup,
    competencias, equipo_inicial
) VALUES (
    'Mago',
    'Los magos son usuarios supremos de magia, definidos y unidos como una clase por los hechizos que lanzan. Basándose en el sutil tejido de la magia que impregna el cosmos, los magos lanzan hechizos de fuego explosivo, relámpagos arqueados, engaños sutiles, control mental de fuerza bruta y mucho más.',
    'Debes tener una puntuación de Inteligencia de 13 o superior para poder entrar o salir de esta clase en varias clases.',
    '1d6',
    '6 + modificador de Constitución',
    '1d6 (o 4) + modificador de Constitución por cada nivel de mago después del 1º',
    'Competencia en dagas, dardos, hondas, bastones, ballestas ligeras. Competencia con Inteligencia para lanzamientos de hechizos.',
    'Un bastón, una daga, una mochila de erudito, y un libro de hechizos'
);

-- Obtener el ID insertado de la clase Mago
SET @clase_id = LAST_INSERT_ID();

-- Insertar la progresión de niveles del Mago
INSERT INTO progresion (
    clase_id, nivel, bono_competencia, funciones, cantrips, hechizos_conocidos,
    ranura_1, ranura_2, ranura_3, ranura_4, ranura_5, ranura_6, ranura_7, ranura_8, ranura_9
) VALUES
(@clase_id, 1, '+2', 'Lanzamiento de hechizos, Recuperación Arcana', 3, NULL, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(@clase_id, 2, '+2', 'Tradición Arcana', 3, NULL, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(@clase_id, 3, '+2', 'Fórmulas Cantrip (opcional)', 3, NULL, 4, 2, 0, 0, 0, 0, 0, 0, 0),
(@clase_id, 4, '+2', 'Mejora de la puntuación de habilidad', 4, NULL, 4, 3, 0, 0, 0, 0, 0, 0, 0),
(@clase_id, 5, '+3', '', 4, NULL, 4, 3, 2, 0, 0, 0, 0, 0, 0),
(@clase_id, 6, '+3', 'Función Tradición Arcana', 4, NULL, 4, 3, 3, 0, 0, 0, 0, 0, 0),
(@clase_id, 7, '+3', '', 4, NULL, 4, 3, 3, 1, 0, 0, 0, 0, 0),
(@clase_id, 8, '+3', 'Mejora de la puntuación de habilidad', 4, NULL, 4, 3, 3, 2, 0, 0, 0, 0, 0),
(@clase_id, 9, '+4', '', 4, NULL, 4, 3, 3, 3, 1, 0, 0, 0, 0),
(@clase_id, 10, '+4', 'Función Tradición Arcana', 5, 4, 3, 3, 3, 2, 0, 0, 0, 0, NULL),
(@clase_id, 11, '+4', '', 5, 4, 3, 3, 3, 2, 1, 0, 0, 0, NULL),
(@clase_id, 12, '+4', 'Mejora de la puntuación de habilidad', 5, 4, 3, 3, 3, 2, 1, 0, 0, 0, NULL),
(@clase_id, 13, '+5', '', 5, 4, 3, 3, 3, 2, 1, 1, 0, 0, NULL),
(@clase_id, 14, '+5', 'Función Tradición Arcana', 5, 4, 3, 3, 3, 2, 1, 1, 0, 0, NULL),
(@clase_id, 15, '+5', '', 5, 4, 3, 3, 3, 2, 1, 1, 1, 0, NULL),
(@clase_id, 16, '+5', 'Mejora de la puntuación de habilidad', 5, 4, 3, 3, 3, 2, 1, 1, 1, 0, NULL),
(@clase_id, 17, '+6', '', 5, 4, 3, 3, 3, 2, 1, 1, 1, 1, NULL),
(@clase_id, 18, '+6', 'Dominio de hechizos', 5, 4, 3, 3, 3, 3, 1, 1, 1, 1, NULL),
(@clase_id, 19, '+6', 'Mejora de la puntuación de habilidad', 5, 4, 3, 3, 3, 3, 2, 1, 1, 1, NULL),
(@clase_id, 20, '+6', 'Maestría de hechizos, Firma de hechizo', 5, 4, 3, 3, 3, 3, 2, 2, 1, 1, NULL);
---------------------------------------------------------
-- Insertar la clase Luchador
INSERT INTO clases (
    nombre, descripcion, requisitos, dado_golpe, vida_nivel1, vida_niveles_sup,
    competencias, equipo_inicial
) VALUES (
    'Luchador',
    'Los luchadores comparten un dominio incomparable con las armas y armaduras, y un conocimiento profundo de las habilidades de combate. Están muy familiarizados con la muerte, tanto la reparten como la miran desafiantes a la cara.',
    'Debes tener una puntuación de Destreza o Fuerza de 13 o superior para poder entrar o salir de esta clase en varias clases.',
    '1d10',
    '10 + tu modificador de Constitución',
    '1d10 (o 6) + tu modificador de Constitución por nivel de luchador después del 1er nivel',
    'Armadura: Todas las armaduras, escudos; Armas: Armas simples, armas marciales; Herramientas: Ninguna; Salvación: Fuerza, Constitución; Habilidades: Elige dos de Acrobacia, Manejo de animales, Atletismo, Historia, Perspicacia, Intimidación, Percepción y Supervivencia',
    '(a) cota de malla o (b) cuero, arco largo y 20 flechas; (a) un arma marcial y un escudo o (b) dos armas marciales; (a) una ballesta ligera y 20 flechas o (b) dos hachas de mano'
);

-- Luego de insertar la clase, obtén su ID (por ejemplo 1) y úsalo para insertar la progresión
-- Asegúrate de reemplazar "1" por el ID real si es diferente

INSERT INTO progresion (clase_id, nivel, bono_competencia, funciones, cantrips, hechizos_conocidos,
    ranura_1, ranura_2, ranura_3, ranura_4, ranura_5, ranura_6, ranura_7, ranura_8, ranura_9)
VALUES
(1, 1, '+2', 'Estilo de lucha, Segundo aliento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 2, '+2', 'Oleada de acción (x1)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 3, '+2', 'Arquetipo marcial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 4, '+2', 'Mejora de la puntuación de habilidad, Versatilidad marcial (opcional)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 5, '+3', 'Ataque extra (x1)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 6, '+3', 'Mejora de la puntuación de habilidad, Versatilidad marcial (opcional)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 7, '+3', 'Característica de arquetipo marcial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 8, '+3', 'Mejora de la puntuación de habilidad, Versatilidad marcial (opcional)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 9, '+4', 'Indomable (x1)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 10, '+4', 'Característica de arquetipo marcial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 11, '+4', 'Ataque extra (x2)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 12, '+4', 'Mejora de la puntuación de habilidad, Versatilidad marcial (opcional)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 13, '+5', 'Indomable (x2)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 14, '+5', 'Mejora de la puntuación de habilidad, Versatilidad marcial (opcional)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 15, '+5', 'Característica de arquetipo marcial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 16, '+5', 'Mejora de la puntuación de habilidad, Versatilidad marcial (opcional)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 17, '+6', 'Oleada de acción (x2), Indomable (x3)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 18, '+6', 'Característica de arquetipo marcial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 19, '+6', 'Mejora de la puntuación de habilidad, Versatilidad marcial (opcional)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 20, '+6', 'Ataque extra (x3)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
-------------------------------------------------------
-- Insertar clase Mago
INSERT INTO clases (
    nombre, descripcion, requisitos, dado_golpe,
    vida_nivel1, vida_niveles_sup, competencias, equipo_inicial
) VALUES (
    'Mago',
    'Los magos son usuarios supremos de magia, definidos y unidos como una clase por los hechizos que lanzan. Basándose en el sutil tejido de la magia que impregna el cosmos, los magos lanzan hechizos de fuego explosivo, relámpagos arqueados, engaños sutiles, control mental de fuerza bruta y mucho más.',
    'Debes tener una puntuación de Inteligencia de 13 o superior para poder entrar o salir de esta clase en varias clases.',
    '1d6',
    '6 + tu modificador de Constitución',
    '1d6 (o 4) + tu modificador de Constitución por nivel de mago después del 1º',
    'Competencias con dagas, dardos, hondas, bastones ligeros y ballestas ligeras. No tienen armadura ni escudos.',
    'Un bastón, una daga, un libro de hechizos y un componente arcano.'
);

-- Suponiendo que el id de la clase mago es 1, se insertan los niveles
INSERT INTO progresion (
    clase_id, nivel, bono_competencia, funciones, cantrips, hechizos_conocidos,
    ranura_1, ranura_2, ranura_3, ranura_4, ranura_5, ranura_6, ranura_7, ranura_8, ranura_9
) VALUES
(1, 1, '+2', 'Lanzamiento de hechizos, Recuperación Arcana', 3, NULL, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 2, '+2', 'Tradición Arcana', 3, NULL, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 3, '+2', 'Fórmulas Cantrip (opcional)', 3, NULL, 4, 2, 0, 0, 0, 0, 0, 0, 0),
(1, 4, '+2', 'Mejora de la puntuación de habilidad', 4, NULL, 4, 3, 0, 0, 0, 0, 0, 0, 0),
(1, 5, '+3', '', 4, NULL, 4, 3, 2, 0, 0, 0, 0, 0, 0),
(1, 6, '+3', 'Función Tradición Arcana', 4, NULL, 4, 3, 3, 0, 0, 0, 0, 0, 0),
(1, 7, '+3', '', 4, NULL, 4, 3, 3, 1, 0, 0, 0, 0, 0),
(1, 8, '+3', 'Mejora de la puntuación de habilidad', 4, NULL, 4, 3, 3, 2, 0, 0, 0, 0, 0),
(1, 9, '+4', '', 4, NULL, 4, 3, 3, 3, 1, 0, 0, 0, 0),
(1, 10, '+4', 'Función Tradición Arcana', 5, NULL, 4, 3, 3, 3, 2, 0, 0, 0, 0);
----------------------------------------------
-- Insertar los datos de la clase Monje
INSERT INTO clases (nombre, descripcion, requisitos, dado_golpe, vida_nivel1, vida_niveles_sup, competencias, equipo_inicial)
VALUES (
    'Monje',
    'Los monjes están unidos en su capacidad de aprovechar mágicamente la energía que fluye en sus cuerpos. Ya sea canalizado como una sorprendente muestra de destreza en el combate o como un enfoque más sutil de habilidad defensiva y velocidad, esta energía infunde todo lo que hace un monje.',
    'Debes tener una puntuación de Destreza y una puntuación de Sabiduría de 13 o superior para poder entrar o salir de esta clase en varias clases.',
    '1d8 por nivel de monje',
    '8 + tu modificador de Constitución',
    '1d8 (o 5) + tu modificador de Constitución por nivel de monje después del 1er nivel',
    'Armadura: Ninguna, Armas: Armas simples, espadas cortas, Herramientas: Elige un tipo de herramientas de artesano o un instrumento musical, Tiradas de salvación: Fuerza, Destreza, Habilidades: Elige dos de Acrobacia, Atletismo, Historia, Perspicacia, Religión y Sigilo',
    '(a) una espada corta o (b) cualquier arma simple, (a) un pack de mazmorreo o (b) un pack de explorador, 10 dardos'
);
-- Insertar la progresión del Monje
INSERT INTO progresion (clase_id, nivel, bono_competencia, funciones, puntos_ki, movimiento_sin_armadura, artes_marciales)
VALUES
(1, 1, '+2', 'Defensa sin armadura, Artes marciales', 0, '–', '1d4'),
(1, 2, '+2', 'Ki, Movimiento sin armadura, Arma dedicada (opcional)', 2, '+10 pies', '1d4'),
(1, 3, '+2', 'Tradición monástica, Desviar misiles, Ataque alimentado por ki (opcional)', 3, '+10 pies', '1d4'),
(1, 4, '+2', 'Mejora de la puntuación de habilidad, Caída lenta, Curación acelerada (opcional)', 4, '+10 pies', '1d4'),
(1, 5, '+3', 'Ataque extra, Golpe aturdidor, Puntería enfocada (opcional)', 5, '+10 pies', '1d6'),
(1, 6, '+3', 'Golpes potenciados por Ki, Función de tradición monástica', 6, '+15 pies', '1d6'),
(1, 7, '+3', 'Evasión, Quietud de la mente', 7, '+15 pies', '1d6'),
(1, 8, '+3', 'Mejora de la puntuación de habilidad', 8, '+15 pies', '1d6'),
(1, 9, '+4', 'Mejora de movimiento sin armadura', 9, '+15 pies', '1d6'),
(1, 10, '+4', 'Pureza del cuerpo', 10, '+20 pies', '1d6'),
(1, 11, '+4', 'Característica de la Tradición Monástica', 11, '+20 pies', '1d8'),
(1, 12, '+4', 'Mejora de la puntuación de habilidad', 12, '+20 pies', '1d8'),
(1, 13, '+5', 'Lengua del Sol y de la Luna', 13, '+20 pies', '1d8'),
(1, 14, '+5', 'Alma de diamante', 14, '+25 pies', '1d8'),
(1, 15, '+5', 'Cuerpo atemporal', 15, '+25 pies', '1d8'),
(1, 16, '+5', 'Mejora de la puntuación de habilidad', 16, '+25 pies', '1d8'),
(1, 17, '+6', 'Característica de la Tradición Monástica', 17, '+25 pies', '1d10'),
(1, 18, '+6', 'Cuerpo vacío', 18, '+30 pies', '1d10'),
(1, 19, '+6', 'Mejora de la puntuación de habilidad', 19, '+30 pies', '1d10'),
(1, 20, '+6', 'Ser perfecto', 20, '+30 pies', '1d10');
----------------------------------------------------------
-- Clase: Paladín

INSERT INTO clases (nombre, descripcion, requisitos)
VALUES (
    'Paladín',
    'Ya sea jurando ante el altar de un dios y el testimonio de un sacerdote, en un claro sagrado ante los espíritus de la naturaleza y los seres feéricos, o en un momento de desesperación y dolor con los muertos como único testigo, el juramento de un paladín es un vínculo poderoso.',
    'Debes tener una puntuación de Carisma y una puntuación de Fuerza de 13 o superior para poder entrar o salir de esta clase en varias clases.'
);

-- Características: Puntos de vida

INSERT INTO caracteristicas_clase (clase_id, tipo, descripcion)
VALUES 
((SELECT id FROM clases WHERE nombre = 'Paladín'), 'Puntos de Golpe',
 '1d10 por nivel de paladín. Puntos de golpe en el 1er nivel: 10 + modificador de Constitución. Puntos de golpe en niveles superiores: 1d10 (o 6) + modificador de Constitución por nivel de paladín después del 1er nivel.');

-- Competencias

INSERT INTO competencias_clase (clase_id, armaduras, armas, herramientas, salvaciones, habilidades)
VALUES (
    (SELECT id FROM clases WHERE nombre = 'Paladín'),
    'Todas las armaduras, escudos',
    'Armas simples, armas marciales',
    'Ninguna',
    'Sabiduría, Carisma',
    'Elige dos de Atletismo, Perspicacia, Intimidación, Medicina, Persuasión y Religión'
);

-- Progresión por nivel

INSERT INTO progresion_clase (clase_id, nivel, bono_competencia, funciones, conjuro_nivel_1, conjuro_nivel_2, conjuro_nivel_3, conjuro_nivel_4, conjuro_nivel_5)
VALUES 
-- Nivel 1
((SELECT id FROM clases WHERE nombre = 'Paladín'), 1, '+2', 'Sentido Divino, Imposición de Manos', 0, 0, 0, 0, 0),
-- Nivel 2
(NULL, 2, '+2', 'Estilo de lucha, Lanzamiento de hechizos, Castigo divino', 2, 0, 0, 0, 0),
-- Nivel 3
(NULL, 3, '+2', 'Salud Divina, Juramento Sagrado, Arnés Poder Divino (Opcional)', 3, 0, 0, 0, 0),
-- Nivel 4
(NULL, 4, '+2', 'Mejora de la puntuación de habilidad, Versatilidad marcial (opcional)', 3, 0, 0, 0, 0),
-- Nivel 5
(NULL, 5, '+3', 'Ataque extra', 4, 2, 0, 0, 0),
-- Nivel 6
(NULL, 6, '+3', 'Aura de protección', 4, 2, 0, 0, 0),
-- Nivel 7
(NULL, 7, '+3', 'Función Juramento Sagrado', 4, 3, 0, 0, 0),
-- Nivel 8
(NULL, 8, '+3', 'Mejora de la puntuación de habilidad, Versatilidad marcial (opcional)', 4, 3, 0, 0, 0),
-- Nivel 9
(NULL, 9, '+4', '', 4, 3, 2, 0, 0),
-- Nivel 10
(NULL, 10, '+4', 'Aura de coraje', 4, 3, 2, 0, 0),
-- Nivel 11
(NULL, 11, '+4', 'Castigo divino mejorado', 4, 3, 3, 0, 0),
-- Nivel 12
(NULL, 12, '+4', 'Mejora de la puntuación de habilidad, Versatilidad marcial (opcional)', 4, 3, 3, 0, 0),
-- Nivel 13
(NULL, 13, '+5', '', 4, 3, 3, 1, 0),
-- Nivel 14
(NULL, 14, '+5', 'Toque limpiador', 4, 3, 3, 1, 0),
-- Nivel 15
(NULL, 15, '+5', 'Función Juramento Sagrado', 4, 3, 3, 2, 0),
-- Nivel 16
(NULL, 16, '+5', 'Mejora de la puntuación de habilidad, Versatilidad marcial (opcional)', 4, 3, 3, 2, 0),
-- Nivel 17
(NULL, 17, '+6', '', 4, 3, 3, 3, 1),
-- Nivel 18
(NULL, 18, '+6', 'Mejoras en el aura', 4, 3, 3, 3, 1),
-- Nivel 19
(NULL, 19, '+6', 'Mejora de la puntuación de habilidad, Versatilidad marcial (opcional)', 4, 3, 3, 3, 2),
-- Nivel 20
(NULL, 20, '+6', 'Función Juramento Sagrado', 4, 3, 3, 3, 2);

-- Equipo inicial

INSERT INTO equipo_inicial (clase_id, descripcion)
VALUES 
((SELECT id FROM clases WHERE nombre = 'Paladín'),
 '(a) un arma marcial y un escudo o (b) dos armas marciales; (a) cinco jabalinas o (b) cualquier arma cuerpo a cuerpo simple; (a) una mochila de sacerdote o el equipo otorgado por tu trasfondo');
-------------------------------------------------------
-- Insertar información de la clase Pícaro
INSERT INTO clases (nombre, descripcion, requisitos, dado_golpe, vida_nivel1, vida_niveles_sup, competencias, equipo_inicial)
VALUES 
('Pícaro', 
'Los pícaros confían en la habilidad, el sigilo y las vulnerabilidades de sus enemigos para obtener la ventaja en cualquier situación. Tienen una habilidad especial para encontrar la solución a casi cualquier problema, demostrando un ingenio y versatilidad que es la piedra angular de cualquier grupo de aventuras exitoso.',
'Debes tener una puntuación de Destreza de 13 o superior para poder entrar o salir de esta clase en varias clases.',
'1d8', 
'8 + tu modificador de Constitución',
'1d8 (o 5) + tu modificador de Constitución por nivel de pícaro después del 1er nivel',
'Armadura ligera, Armas simples, ballestas de mano, espadas largas, estoques, espadas cortas, Herramientas de ladrones, Destreza, Inteligencia',
'(a) un estoque o (b) una espada corta, (a) un arco corto y un carcaj de 20 flechas o (b) una espada corta, (a) a burglar\'s pack, (b) dungeoneer\'s pack, or (c) an explorer\'s pack, Leather armor, two daggers, and thieves\' tools'
);

-- Insertar progresión de la clase Pícaro
INSERT INTO progresion (clase_id, nivel, bono_competencia, funciones, cantrips, hechizos_conocidos, ranura_1, ranura_2, ranura_3, ranura_4, ranura_5, ranura_6, ranura_7, ranura_8, ranura_9)
VALUES
(1, 1, '+2', 'Pericia, Ataque furtivo, Canto de los ladrones', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 2, '+2', 'Acción astuta', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 3, '+2', 'Arquetipo pícaro, Puntería firme (opcional)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 4, '+2', 'Mejora de la puntuación de habilidad', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 5, '+3', 'Esquiva misteriosa', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 6, '+3', 'Pericia', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 7, '+3', 'Evasión', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 8, '+3', 'Mejora de la puntuación de habilidad', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 9, '+4', 'Característica de arquetipo pícaro', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 10, '+4', 'Mejora de la puntuación de habilidad', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 11, '+4', 'Talento confiable', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 12, '+4', 'Mejora de la puntuación de habilidad', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 13, '+5', 'Característica de arquetipo pícaro', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 14, '+5', 'Sentido ciego', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 15, '+5', 'Mente resbaladiza', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 16, '+5', 'Mejora de la puntuación de habilidad', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 17, '+6', 'Característica de arquetipo pícaro', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 18, '+6', 'Elusivo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 19, '+6', 'Mejora de la puntuación de habilidad', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 20, '+6', 'Golpe de suerte', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);