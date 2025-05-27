Dragonico
-- Insertar raza ejemplo: Small Dracónido
INSERT INTO raza (nombre, origen, descripcion, velocidad, vision_oscuridad, trance, idiomas)
VALUES (
    'Small Dracónido',
    'Reglas básicas',
    'Tu herencia dracónida se manifiesta en una serie de rasgos que compartes con otros dracónidos. Los dracónidos tienden hacia los extremos en la guerra cósmica entre el bien y el mal. La mayoría son buenos, pero los que se ponen de lado del mal pueden ser terriblemente malignos.',
    30,
    NULL,
    NULL,
    'Común, Dracónico'
);

-- Insertar rasgos raciales
INSERT INTO rasgo_racial (id_raza, nombre, descripcion) VALUES
(1, 'Linaje dracónico', 'Tienes un antepasado dragón. Tu arma de aliento y tu resistencia al daño están determinadas por el tipo de dragón.'),
(1, 'Ataque de aliento', 'Puedes usar tu acción para exhalar energía destructiva...'),
(1, 'Resistencia al daño', 'Tienes resistencia al tipo de daño asociado con tu antepasado dragón.');

-- Insertar modificadores raciales
INSERT INTO modificador_racial (id_raza, atributo, bonificacion) VALUES
(1, 'Fuerza', '+2'),
(1, 'Carisma', '+1');

Elfo
-- Insertar raza ejemplo: Small Elfo
INSERT INTO raza (nombre, origen, descripcion, velocidad, vision_oscuridad, trance, idiomas)
VALUES (
    'Small Elfo',
    'Reglas básicas',
    'Los elfos circulan libremente por las tierras de los humanos, donde siempre son bienvenidos pero rara vez se sienten en casa. Conocidos por su poesía, danza, canto, sabiduría y afinidad con la magia, los elfos aprecian la belleza sencilla y natural.',
    30,
    'Puedes ver en la oscuridad a 60 pies como si fuese luz tenue, y en penumbra como si fuese luz brillante. En oscuridad total ves en escala de grises.',
    'En lugar de dormir, los elfos meditan profundamente durante 4 horas al día. Este estado de trance te proporciona los mismos beneficios que un descanso largo para los humanos.',
    'Común, Élfico'
);

-- Insertar rasgos raciales
-- NOTA: Asegúrate de reemplazar el id_raza por el ID correspondiente en tu base de datos
INSERT INTO rasgo_racial (id_raza, nombre, descripcion) VALUES
(2, 'Linaje feérico', 'Tienes ventaja en las tiradas de salvación contra encantamientos y no puedes ser dormido mágicamente.'),
(2, 'Trance', 'En lugar de dormir, los elfos meditan profundamente durante 4 horas al día. Este estado de trance te proporciona los mismos beneficios que un descanso largo para los humanos.'),
(2, 'Visión en la oscuridad', 'Puedes ver en la oscuridad a 60 pies como si fuese luz tenue, y en penumbra como si fuese luz brillante. En oscuridad total ves en escala de grises.'),
(2, 'Idiomas', 'Puedes hablar, leer y escribir en común y en élfico.'),
(2, 'Competencia', 'Tienes competencia en la habilidad de Percepción.');

-- Insertar modificadores raciales
INSERT INTO modificador_racial (id_raza, atributo, bonificacion) VALUES
(2, 'Destreza', '+2');

Enano
-- Insertar raza ejemplo: Small Enano
INSERT INTO raza (nombre, origen, descripcion, velocidad, vision_oscuridad, trance, idiomas)
VALUES (
    'Small Enano',
    'Reglas básicas',
    'Los enanos son célebres por su destreza en combate, su resistencia formidable y su conocimiento profundo de la tierra y la forja. Aunque reservados con los extraños, son leales y generosos con quienes se ganan su confianza.',
    25,
    'Puedes ver en la penumbra hasta 60 pies como si fuera luz brillante y en la oscuridad como si fuera penumbra. En oscuridad total ves en escala de grises.',
    NULL,
    'Común, Enano'
);

-- Insertar rasgos raciales
-- Recuerda reemplazar el ID si no es el 3 en tu base de datos
INSERT INTO rasgo_racial (id_raza, nombre, descripcion) VALUES
(3, 'Velocidad enana', 'Tu velocidad no se ve reducida al portar armadura pesada.'),
(3, 'Fortaleza enana', 'Tienes ventaja en las tiradas de salvación contra veneno y resistencia al daño por veneno.'),
(3, 'Afinidad con la piedra', 'En pruebas de Inteligencia (Historia) relacionadas con mampostería, duplicas tu bonificador por competencia.'),
(3, 'Idiomas', 'Puedes hablar, leer y escribir en común y enano. El idioma enano tiene sonidos guturales y consonantes marcadas.'),
(3, 'Competencia en armas', 'Tienes competencia con hacha de mano, hacha de batalla, martillo de guerra y martillo ligero.'),
(3, 'Herramientas de artesano', 'Tienes competencia con herramientas de artesano: armero, cervecero o albañil (elige una).');

-- Insertar modificadores raciales
INSERT INTO modificador_racial (id_raza, atributo, bonificacion) VALUES
(3, 'Constitución', '+2');

Gnomo
-- Insertar raza: Gnomo
INSERT INTO raza (nombre, origen, descripcion, velocidad, vision_oscuridad, trance, idiomas)
VALUES (
    'Gnomo',
    'Reglas básicas',
    'Los gnomos son conocidos por su ingenio, su pasión por la invención y su entusiasmo por el conocimiento. Aunque sus habilidades son muy valoradas, muchos prefieren vivir entre los suyos, en madrigueras confortables excavadas bajo verdes colinas.',
    25,
    'Gracias a su vida subterránea, los gnomos pueden ver en la penumbra hasta 60 pies como si fuera luz brillante, y en oscuridad como si fuera penumbra. No pueden distinguir colores en la oscuridad, solo tonos de gris.',
    NULL,
    'Común, Gnomo'
);

-- Insertar rasgos raciales del Gnomo
-- Asegúrate de que el id_raza coincida con el ID real del gnomo en tu base de datos
INSERT INTO rasgo_racial (id_raza, nombre, descripcion) VALUES
(4, 'Astucia de gnomo', 'Tienes ventaja en todas las tiradas de salvación de Inteligencia, Sabiduría y Carisma contra magia.'),
(4, 'Idiomas', 'Puedes hablar, leer y escribir común y gnomo. El idioma gnomo, que emplea la grafía enana, es famoso por sus tratados técnicos y su conocimiento sobre la naturaleza.');

-- Insertar modificadores raciales del Gnomo
INSERT INTO modificador_racial (id_raza, atributo, bonificacion) VALUES
(4, 'Inteligencia', '+2');

Humano
-- Insertar raza: Humano
INSERT INTO raza (nombre, origen, descripcion, velocidad, vision_oscuridad, trance, idiomas)
VALUES (
    'Humano',
    'Reglas básicas',
    'Los humanos son la raza común más joven en muchos mundos. Llegaron tarde comparados con otras razas, como los elfos, enanos o dragones. Su esperanza de vida más corta podría ser lo que impulsa su ambición y deseo de lograr todo lo posible.',
    30,
    NULL,
    NULL,
    'Común, otro idioma de elección'
);

-- Insertar rasgos raciales del Humano
INSERT INTO rasgo_racial (id_raza, nombre, descripcion) VALUES
(2, 'Adaptabilidad', 'Los humanos son conocidos por su capacidad para adaptarse rápidamente a cualquier entorno o situación.'),
(2, 'Ambición', 'Su corta esperanza de vida les impulsa a conseguir mucho en poco tiempo.'),
(2, 'Diversidad de habilidades', 'Los humanos pueden destacarse en una gran variedad de disciplinas.');

-- Insertar modificadores raciales del Humano
INSERT INTO modificador_racial (id_raza, atributo, bonificacion) VALUES
(2, 'Fuerza', '+1'),
(2, 'Destreza', '+1'),
(2, 'Constitución', '+1'),
(2, 'Inteligencia', '+1'),
(2, 'Sabiduría', '+1'),
(2, 'Carisma', '+1');

-- Insertar raza: Semielfo
INSERT INTO raza (nombre, origen, descripcion, velocidad, vision_oscuridad, trance, idiomas)
VALUES (
    'Semielfo',
    'Reglas básicas',
    'Los semielfos poseen una combinación de características humanas y élficas. Comparten la inclinación caótica de su herencia élfica, valoran la libertad y la expresión personal, y suelen ser impredecibles o incluso poco fiables. No les agradan las reglas estrictas ni las jerarquías.',
    30,
    'Hasta 60 pies en la oscuridad, visión en penumbra',
    NULL,
    'Común, Élfico, otro idioma de elección'
);

-- Insertar rasgos raciales del Semielfo
INSERT INTO rasgo_racial (id_raza, nombre, descripcion) VALUES
(3, 'Visión en la oscuridad', 'Gracias a tu sangre élfica, puedes ver en la penumbra hasta 60 pies como si fuera luz brillante, y en la oscuridad como si fuera penumbra. No puedes distinguir colores en la oscuridad, solo tonos de gris.'),
(3, 'Ancestro feérico', 'Tienes ventaja en las tiradas de salvación contra quedar hechizado y eres inmune a quedarte dormido por efectos mágicos.');

-- Insertar modificadores raciales del Semielfo
INSERT INTO modificador_racial (id_raza, atributo, bonificacion) VALUES
(3, 'Carisma', '+2'),
(3, 'Fuerza', '+1'),
(3, 'Destreza', '+1'),
(3, 'Constitución', '+1'),
(3, 'Inteligencia', '+1'),
(3, 'Sabiduría', '+1');

-- Insertar habilidades de competencia
INSERT INTO habilidad_competencia (id_raza, nombre) VALUES
(3, 'Habilidad 1 a elegir'),
(3, 'Habilidad 2 a elegir');

Semiorco
-- Insertar raza: Semiorco
INSERT INTO raza (nombre, origen, descripcion, velocidad, vision_oscuridad, trance, idiomas, edad, tamano)
VALUES (
    'Semiorco',
    'Reglas básicas',
    'Los semiorcos heredan la fuerza y la brutalidad de su linaje orco. Suelen tener una inclinación hacia el caos y una actitud directa, y quienes se crían entre orcos tienden a desarrollar una moralidad más salvaje y violenta.',
    30,
    'Hasta 60 pies en la oscuridad, visión en penumbra',
    NULL,
    'Común, Orca',
    'Alcanza la adultez a los 14 años y rara vez vive más de 75.',
    'Mediano'
);

-- Insertar rasgos raciales del Semiorco
INSERT INTO rasgo_racial (id_raza, nombre, descripcion) VALUES
(4, 'Visión en la oscuridad', 'Gracias a tu sangre orca, puedes ver en la penumbra hasta 60 pies como si fuera luz brillante, y en la oscuridad como si fuera penumbra. No puedes distinguir colores en la oscuridad, solo tonos de gris.'),
(4, 'Aguante incansable', 'Cuando tus puntos de golpe se reducen a 0 pero no mueres inmediatamente, puedes quedarte con 1 punto de golpe. No puedes volver a usar esta característica hasta que completes un descanso prolongado.'),
(4, 'Ataques salvajes', 'Cuando logres un golpe crítico con un ataque cuerpo a cuerpo, puedes volver a tirar uno de los dados de daño del arma y sumarlo al daño adicional del crítico.');

-- Insertar modificadores raciales del Semiorco
INSERT INTO modificador_racial (id_raza, atributo, bonificacion) VALUES
(4, 'Fuerza', '+2'),
(4, 'Constitución', '+1');

-- Insertar habilidades de competencia
INSERT INTO habilidad_competencia (id_raza, nombre) VALUES
(4, 'Intimidar');

Tiefling
-- Insertar raza: Tiefling
INSERT INTO raza (nombre, origen, descripcion, velocidad, vision_oscuridad, trance, idiomas)
VALUES (
    'Tiefling',
    'Reglas básicas',
    'Aunque los tieflings no son necesariamente malignos por naturaleza, su linaje infernal suele llevarlos por caminos caóticos o peligrosos. Muchos enfrentan prejuicios y desafíos sociales debido a su aspecto demoníaco.',
    30,
    'Hasta 60 pies en la oscuridad, visión en penumbra',
    NULL,
    'Común, Infernal'
);

-- Insertar rasgos raciales del Tiefling
INSERT INTO rasgo_racial (id_raza, nombre, descripcion) VALUES
(5, 'Visión en la oscuridad', 'Puedes ver en la penumbra hasta 60 pies como si fuera luz brillante, y en la oscuridad como si fuera penumbra. No distingues colores en la oscuridad, solo tonos de gris.'),
(5, 'Legado infernal', 'Conoces el truco Taumaturgia. Al alcanzar nivel 3, puedes lanzar Represión infernal como conjuro de nivel 2 una vez por descanso prolongado. A nivel 5, puedes lanzar Oscuridad una vez por descanso prolongado. El atributo de lanzamiento es Carisma.'),
(5, 'Resistencia infernal', 'Tienes resistencia al daño por fuego.');

-- Insertar modificadores raciales del Tiefling
INSERT INTO modificador_racial (id_raza, atributo, bonificacion) VALUES
(5, 'Carisma', '+2'),
(5, 'Inteligencia', '+1');

-- Insertar conjuros preparados del Tiefling
INSERT INTO hechizo_preparado (id_raza, hechizo) VALUES
(5, 'Taumaturgia'),
(5, 'Represión infernal'),
(5, 'Oscuridad');
