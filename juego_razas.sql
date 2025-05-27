-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2025 a las 17:29:11
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `juego_razas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `requisitos` text DEFAULT NULL,
  `dado_golpe` varchar(10) DEFAULT NULL,
  `vida_nivel1` varchar(100) DEFAULT NULL,
  `vida_niveles_sup` varchar(100) DEFAULT NULL,
  `competencias` text DEFAULT NULL,
  `equipo_inicial` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id`, `nombre`, `descripcion`, `requisitos`, `dado_golpe`, `vida_nivel1`, `vida_niveles_sup`, `competencias`, `equipo_inicial`) VALUES
(1, 'Artífice', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Bardo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Clerigo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Druida', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Guardabosque', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Paladin', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichas`
--

CREATE TABLE `fichas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nivel` int(11) NOT NULL,
  `clase` varchar(100) NOT NULL,
  `subclase` varchar(100) DEFAULT NULL,
  `raza` varchar(100) NOT NULL,
  `subraza` varchar(100) DEFAULT NULL,
  `trasfondo` text DEFAULT NULL,
  `alineamiento` varchar(100) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `fuerza` int(11) DEFAULT NULL,
  `destreza` int(11) DEFAULT NULL,
  `constitucion` int(11) DEFAULT NULL,
  `inteligencia` int(11) DEFAULT NULL,
  `sabiduria` int(11) DEFAULT NULL,
  `carisma` int(11) DEFAULT NULL,
  `equipo` text DEFAULT NULL,
  `hechizos` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fichas`
--

INSERT INTO `fichas` (`id`, `usuario_id`, `nombre`, `nivel`, `clase`, `subclase`, `raza`, `subraza`, `trasfondo`, `alineamiento`, `imagen`, `fuerza`, `destreza`, `constitucion`, `inteligencia`, `sabiduria`, `carisma`, `equipo`, `hechizos`) VALUES
(10, 1, 'Amigo', 1, 'Bárbaro', 'Berserker', 'Humano', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1, 'Amigo', 1, 'Bárbaro', 'Berserker', 'Humano', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 1, 'Amigo', 1, 'Bárbaro', 'Berserker', 'Humano', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 1, 'Amigo', 1, 'Bárbaro', 'Berserker', 'Humano', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 1, 'Amigo', 1, 'Bárbaro', 'Berserker', 'Humano', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 1, 'Hola', 1, 'Bárbaro', 'Berserker', 'Humano', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hechizos`
--

CREATE TABLE `hechizos` (
  `id` int(11) NOT NULL,
  `clase_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `nivel` int(11) NOT NULL,
  `escuela` varchar(50) DEFAULT NULL,
  `tiempo_casting` varchar(100) DEFAULT NULL,
  `gama` varchar(100) DEFAULT NULL,
  `duracion` varchar(100) DEFAULT NULL,
  `componentes` varchar(100) DEFAULT NULL,
  `enlace` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hechizos`
--

INSERT INTO `hechizos` (`id`, `clase_id`, `nombre`, `nivel`, `escuela`, `tiempo_casting`, `gama`, `duracion`, `componentes`, `enlace`) VALUES
(271, 1, 'Salpicaduras de ácido', 0, 'Conjuro', '1 Acción', '60 Pies', 'Instantáneo', 'V, S', 'hechizo_salpicaduras_acido.html'),
(272, 1, 'Hoja retumbante', 0, 'Evocación', '1 Acción', 'Yo (radio de 5 pies)', '1 ronda', 'S, M', 'hechizo_hoja_retumbante.html'),
(273, 1, 'Crear hoguera', 0, 'Conjuro', '1 Acción', '60 Pies', 'Concentración, hasta 1 minuto', 'V, S', 'hechizo_crear_hoguera.html'),
(274, 1, 'Luces danzantes', 0, 'Evocación', '1 Acción', '120 Pies', 'Concentración, hasta 1 minuto', 'V, S, M', 'hechizo_luces_danzantes.html'),
(275, 1, 'Proyectil de fuego', 0, 'Evocación', '1 Acción', '120 Pies', 'Instantáneo', 'V, S', 'hechizo_proyectil_fuego.html'),
(276, 1, 'Escarcha mordiente', 0, 'Evocación', '1 Acción', '60 Pies', 'Instantáneo', 'V, S', 'hechizo_escarcha_mordiente.html'),
(277, 1, 'Hoja de llama verde', 0, 'Evocación', '1 Acción', 'Yo (radio de 5 pies)', 'Instantáneo', 'S, M', 'hechizo_hoja_flama_verde.html'),
(278, 1, 'Guía', 0, 'Adivinación', '1 Acción', 'Toque', 'Concentración, hasta 1 minuto', 'V, S', 'hechizo_guia.html'),
(279, 1, 'Luz', 0, 'Evocación', '1 Acción', 'Toque', '1 hora', 'V, M', 'hechizo_luz.html'),
(280, 1, 'Atracción de relámpago', 0, 'Evocación', '1 Acción', 'Yo (radio de 15 pies)', 'Instantáneo', 'V', 'hechizo_atraccion_relampago.html'),
(281, 1, 'Mano de mago', 0, 'Conjuro', '1 Acción', '30 Pies', '1 minuto', 'V, S', 'hechizo_mano_mago.html'),
(282, 1, 'Piedra mágica', 0, 'Transmutación', '1 Acción bonus', 'Toque', '1 minuto', 'V, S', 'hechizo_piedra_magica.html'),
(283, 1, 'Remendar', 0, 'Transmutación', '1 Minuto', 'Toque', 'Instantáneo', 'V, S, M', 'hechizo_remendar.html'),
(284, 1, 'Mensaje', 0, 'Transmutación', '1 Acción', '120 Pies', '1 ronda', 'V, S, M', 'hechizo_mensaje.html'),
(285, 1, 'Rocío venenoso', 0, 'Conjuro', '1 Acción', '10 Pies', 'Instantáneo', 'V, S', 'hechizo_rocio_venenoso.html'),
(286, 1, 'Prestidigitación', 0, 'Transmutación', '1 Acción', '10 Pies', 'Hasta 1 hora', 'V, S', 'hechizo_prestidigitacion.html'),
(287, 1, 'Rayos de escarcha', 0, 'Evocación', '1 Acción', '60 Pies', 'Instantáneo', 'V, S', 'hechizo_rayos_escarcha.html'),
(288, 1, 'Resistencia', 0, 'Abjuración', '1 Acción', 'Toque', 'Concentración, hasta 1 minuto', 'V, S, M', 'hechizo_resistencia.html'),
(289, 1, 'Toque electrizante', 0, 'Evocación', '1 Acción', 'Toque', 'Instantáneo', 'V, S', 'hechizo_toque_electrizante.html'),
(290, 1, 'Preservar moribundo', 0, 'Nigromancia', '1 Acción', 'Toque', 'Instantáneo', 'V, S', 'hechizo_preservar_moribundo.html'),
(291, 1, 'Estallido de espadas', 0, 'Conjuro', '1 Acción', 'Yo (radio de 5 pies)', 'Instantáneo', 'V', 'hechizo_estallido_espadas.html'),
(292, 1, 'Látigo de espinas', 0, 'Transmutación', '1 Acción', '30 Pies', 'Instantáneo', 'V, S, M', 'hechizo_latigo_espinas.html'),
(293, 1, 'Estruendo de trueno', 0, 'Evocación', '1 Acción', 'Yo (radio de 5 pies)', 'Instantáneo', 'S', 'hechizo_estruendo_trueno.html'),
(294, 1, 'Misil Mágico', 1, 'Evocación', '1 Acción', '120 Pies', 'Instantáneo', 'V, S', 'hechizo_misil_magico.html'),
(295, 1, 'Escudo', 1, 'Abjuración', '1 Reacción', 'Personal', '1 ronda', 'V, S', 'hechizo_escudo.html'),
(296, 1, 'Rayo de escarcha', 1, 'Evocación', '1 Acción', '60 Pies', 'Instantáneo', 'V, S', 'hechizo_rayo_escarcha.html'),
(297, 1, 'Durabilidad de la piedra', 1, 'Abjuración', '1 Acción', 'Toque', 'Concentración, hasta 1 hora', 'V, S, M', 'hechizo_durabilidad_piedra.html'),
(298, 1, 'Armadura de mago', 1, 'Abjuración', '1 Acción', 'Toque', '8 horas', 'V, S, M', 'hechizo_armadura_mago.html'),
(299, 1, 'Detectar enemigos invisibles', 1, 'Conjuro', '1 Acción', '30 pies', 'Concentración, hasta 1 minuto', 'V, S, M', 'hechizo_enemigos_invisibles.html'),
(300, 1, 'Absorber elementos', 1, 'Abjuración', '1 Reacción', 'Personal', '1 ronda', 'S', 'hechizo_absorber_elementos.html'),
(301, 1, 'Alarma', 1, 'Abjuración', '1 Minuto', '30 pies', '8 horas', 'V, S, M', 'hechizo_alarma.html'),
(302, 1, 'Arma arcana (UA)', 1, 'Transmutación', '1 Acción bonus', 'Personal', 'Concentración, hasta 1 hora', 'V, S', 'hechizo_arma_arcana.html'),
(303, 1, 'Catapulta', 1, 'Transmutación', '1 Acción', '60 pies', 'Instantáneo', 'S', 'hechizo_catapulta.html'),
(304, 1, 'Curar heridas', 1, 'Evocación', '1 Acción', 'Toque', 'Instantáneo', 'V, S', 'hechizo_curar_heridas.html'),
(305, 1, 'Detectar magia', 1, 'Adivinación', '1 Acción', 'Personal', 'Concentración, hasta 10 minutos', 'V, S', 'hechizo_detectar_magia.html'),
(306, 1, 'Disfrazarse', 1, 'Ilusión', '1 Acción', 'Personal', '1 hora', 'V, S', 'hechizo_disfrazarse.html'),
(307, 1, 'Retirada expeditiva', 1, 'Transmutación', '1 Acción bonus', 'Personal', 'Concentración, hasta 10 minutos', 'V, S', 'hechizo_retirada_expeditiva.html'),
(308, 1, 'Fuego feérico', 1, 'Evocación', '1 Acción', '60 pies', 'Concentración, hasta 1 minuto', 'V', 'hechizo_fuego_feerico.html'),
(309, 1, 'Falsa vida', 1, 'Nigromancia', '1 Acción', 'Personal', '1 hora', 'V, S, M', 'hechizo_falsa_vida.html'),
(310, 1, 'Caída de pluma', 1, 'Transmutación', '1 Reacción', '60 pies', '1 minuto', 'V, M', 'hechizo_caida_pluma.html'),
(311, 1, 'Grasa', 1, 'Conjuro', '1 Acción', '60 pies', '1 minuto', 'V, S, M', 'hechizo_grasa.html'),
(312, 1, 'Identificar', 1, 'Adivinación', '1 Minuto', 'Toque', 'Instantáneo', 'V, S, M', 'hechizo_identificar.html'),
(313, 1, 'Salto', 1, 'Transmutación', '1 Acción', 'Toque', '1 minuto', 'V, S, M', 'hechizo_salto.html'),
(314, 1, 'Zancada amplia', 1, 'Transmutación', '1 Acción', 'Toque', '1 hora', 'V, S, M', 'hechizo_zancada_amplia.html'),
(315, 1, 'Purificar comida y bebida', 1, 'Transmutación', '1 Acción', '10 pies', 'Instantáneo', 'V, S', 'hechizo_purificar_comida.html'),
(316, 1, 'Santuario', 1, 'Abjuración', '1 Acción bonus', '30 pies', '1 minuto', 'V, S, M', 'hechizo_santuario.html'),
(317, 1, 'Trampa', 1, 'Abjuración', '1 Minuto', 'Toque', 'Hasta ser activada', 'V, S, M', 'hechizo_trampa.html'),
(318, 1, 'Brebaje cáustico de Tasha', 1, 'Evocación', '1 Acción', 'Personal (línea de 30 pies)', 'Concentración, hasta 1 minuto', 'V, S, M', 'hechizo_brebaje_caustico.html'),
(319, 1, 'Refuerzo', 2, 'Abjuración', '1 Acción', '30 Pies', '8 horas', 'V, S, M', 'hechizo_refuerzo.html'),
(320, 1, 'Burbuja de aire', 2, 'Conjuro', '1 Acción', '60 Pies', '24 horas', 'S', 'hechizo_burbuja_aire.html'),
(321, 1, 'Alterar apariencia', 2, 'Transmutación', '1 Acción', 'Personal', 'Concentración, hasta 1 hora', 'V, S', 'hechizo_alterar_apariencia.html'),
(322, 1, 'Candado arcano', 2, 'Abjuración', '1 Acción', 'Toque', 'Hasta ser disipado', 'V, S, M', 'hechizo_candado_arcano.html'),
(323, 1, 'Imagen borrosa', 2, 'Ilusión', '1 Acción', 'Personal', 'Concentración, hasta 1 minuto', 'V', 'hechizo_imagen_borrosa.html'),
(324, 1, 'Llama continua', 2, 'Evocación', '1 Acción', 'Toque', 'Hasta ser disipada', 'V, S, M', 'hechizo_llama_continua.html'),
(325, 1, 'Visión en la oscuridad', 2, 'Transmutación', '1 Acción', 'Toque', '8 horas', 'V, S, M', 'hechizo_vision_oscuridad.html'),
(326, 1, 'Potenciar habilidad', 2, 'Transmutación', '1 Acción', 'Toque', 'Concentración, hasta 1 hora', 'V, S, M', 'hechizo_potenciar_habilidad.html'),
(327, 1, 'Agrandar/reducir', 2, 'Transmutación', '1 Acción', '30 pies', 'Concentración, hasta 1 minuto', 'V, S, M', 'hechizo_agrandar_reducir.html'),
(328, 1, 'Calentar metal', 2, 'Transmutación', '1 Acción', '60 pies', 'Concentración, hasta 1 minuto', 'V, S, M', 'hechizo_calentar_metal.html'),
(329, 1, 'Invisibilidad', 2, 'Ilusión', '1 Acción', 'Toque', 'Concentración, hasta 1 hora', 'V, S, M', 'hechizo_invisibilidad.html'),
(330, 1, 'Paseo cinético', 2, 'Transmutación', '1 Acción bonus', 'Personal', 'Concentración, hasta 1 minuto', 'S', 'hechizo_paseo_cinetico.html'),
(331, 1, 'Restauración menor', 2, 'Abjuración', '1 Acción', 'Toque', 'Instantáneo', 'V, S', 'hechizo_restauracion_menor.html'),
(332, 1, 'Levitación', 2, 'Transmutación', '1 Acción', '60 pies', 'Concentración, hasta 10 minutos', 'V, S, M', 'hechizo_levitacion.html'),
(333, 1, 'Boca mágica', 2, 'Ilusión', '1 Minuto', '30 pies', 'Hasta ser disipado', 'V, S, M', 'hechizo_boca_magica.html'),
(334, 1, 'Arma mágica', 2, 'Transmutación', '1 Acción bonus', 'Toque', 'Concentración, hasta 1 hora', 'V, S', 'hechizo_arma_magica.html'),
(335, 1, 'Protección contra veneno', 2, 'Abjuración', '1 Acción', 'Toque', '1 hora', 'V, S', 'hechizo_proteccion_veneno.html'),
(336, 1, 'Pirotécnia', 2, 'Transmutación', '1 Acción', '60 pies', 'Instantáneo', 'V, S', 'hechizo_pirotecnia.html'),
(337, 1, 'Truco con la cuerda', 2, 'Transmutación', '1 Acción', 'Toque', '1 hora', 'V, S, M', 'hechizo_truco_cuerda.html'),
(338, 1, 'Ver lo invisible', 2, 'Adivinación', '1 Acción', 'Personal', '1 hora', 'V, S, M', 'hechizo_ver_invisible.html'),
(339, 1, 'Escribir en el cielo', 2, 'Transmutación', '1 Acción', 'Visual', 'Concentración, hasta 1 día', 'V, S', 'hechizo_escribir_cielo.html'),
(340, 1, 'Trepar como araña', 2, 'Transmutación', '1 Acción', 'Toque', 'Concentración, hasta 1 hora', 'V, S, M', 'hechizo_trepar_arana.html'),
(341, 1, 'Vórtice de teletransporte', 2, 'Conjuro', '1 Acción', '90 pies', 'Instantáneo', 'V, S', 'hechizo_vortice_teletransporte.html'),
(342, 1, 'Telaraña', 2, 'Conjuro', '1 Acción', '60 pies', 'Concentración, hasta 1 hora', 'V, S, M', 'hechizo_telaraña.html'),
(343, 1, 'Zancada de Ashardalon', 3, 'Transmutación', '1 Acción bonus', 'Personal', 'Concentración, hasta 1 minuto', 'V, S', 'hechizo_zancada_ashardalon.html'),
(344, 1, 'Parpadear', 3, 'Transmutación', '1 Acción', 'Personal', '1 minuto', 'V, S', 'hechizo_parpadear.html'),
(345, 1, 'Siesta felina', 3, 'Encantamiento', '1 Acción', '30 pies', '10 minutos', 'S, M', 'hechizo_siesta_felina.html'),
(346, 1, 'Crear comida y agua', 3, 'Conjuro', '1 Acción', '30 pies', 'Instantáneo', 'V, S', 'hechizo_crear_comida_agua.html'),
(347, 1, 'Disipar magia', 3, 'Abjuración', '1 Acción', '120 pies', 'Instantáneo', 'V, S', 'hechizo_disipar_magia.html'),
(348, 1, 'Arma elemental', 3, 'Transmutación', '1 Acción', 'Toque', 'Concentración, hasta 1 hora', 'V, S', 'hechizo_arma_elemental.html'),
(349, 1, 'Flechas llameantes', 3, 'Transmutación', '1 Acción', 'Toque', 'Concentración, hasta 1 hora', 'V, S', 'hechizo_flechas_llameantes.html'),
(350, 1, 'Zancada de fuego (UA)', 3, 'Transmutación', '1 Acción bonus', 'Personal', 'Concentración, hasta 1 minuto', 'V, S', 'hechizo_zancada_fuego.html'),
(351, 1, 'Volar', 3, 'Transmutación', '1 Acción', 'Toque', 'Concentración, hasta 10 minutos', 'V, S, M', 'hechizo_volar.html'),
(352, 1, 'Glifo de protección', 3, 'Abjuración', '1 Hora', 'Toque', 'Hasta ser disipado o activado', 'V, S, M', 'hechizo_glifo_proteccion.html'),
(353, 1, 'Prisa', 3, 'Transmutación', '1 Acción', '30 pies', 'Concentración, hasta 1 minuto', 'V, S, M', 'hechizo_prisa.html'),
(354, 1, 'Casa de naipes (UA)', 3, 'Conjuro', '1 Minuto', 'Toque', '24 horas', 'V, S, M', 'hechizo_casa_naipes.html'),
(355, 1, 'Fortaleza mental', 3, 'Abjuración', '1 Acción', '30 pies', 'Concentración, hasta 1 hora', 'V', 'hechizo_fortaleza_mental.html'),
(356, 1, 'Protección contra energía', 3, 'Abjuración', '1 Acción', 'Toque', 'Concentración, hasta 1 hora', 'V, S', 'hechizo_proteccion_energia.html'),
(357, 1, 'Revivir', 3, 'Nigromancia', '1 Acción', 'Toque', 'Instantáneo', 'V, S, M', 'hechizo_revivir.html'),
(358, 1, 'Sirviente diminuto', 3, 'Transmutación', '1 Minuto', 'Toque', '8 horas', 'V, S', 'hechizo_sirviente_diminuto.html'),
(359, 1, 'Respirar bajo el agua', 3, 'Transmutación', '1 Acción', '30 pies', '24 horas', 'V, S, M', 'hechizo_respirar_agua.html'),
(360, 1, 'Caminar sobre el agua', 3, 'Transmutación', '1 Acción', '30 pies', '1 hora', 'V, S, M', 'hechizo_caminar_agua.html'),
(361, 1, 'Ojo Arcano', 4, 'Adivinación', '1 Acción', '30 pies', 'Concentración, hasta 1 hora', 'V, S, M', 'hechizo_ojo_arcano.html'),
(362, 1, 'Perdición Elemental', 4, 'Transmutación', '1 Acción', '90 pies', 'Concentración, hasta 1 minuto', 'V, S', 'hechizo_perdicion_elemental.html'),
(363, 1, 'Fabricar', 4, 'Transmutación', '10 Minutos', '120 pies', 'Instantáneo', 'V, S', 'hechizo_fabricar.html'),
(364, 1, 'Libertad de Movimiento', 4, 'Abjuración', '1 Acción', 'Toque', '1 hora', 'V, S, M', 'hechizo_libertad_movimiento.html'),
(365, 1, 'Cofre Secreto de Leomund', 4, 'Conjuro', '1 Acción', 'Toque', 'Instantáneo', 'V, S, M', 'hechizo_cofre_secreto.html'),
(366, 1, 'Perro Fiel de Mordenkainen', 4, 'Conjuro', '1 Acción', '30 pies', '8 horas', 'V, S, M', 'hechizo_perro_fiel.html'),
(367, 1, 'Santuario Privado de Mordenkainen', 4, 'Abjuración', '10 Minutos', '120 pies', '24 horas', 'V, S, M', 'hechizo_santuario_privado.html'),
(368, 1, 'Esfera Resiliente de Otiluke', 4, 'Evocación', '1 Acción', '30 pies', 'Concentración, hasta 1 minuto', 'V, S, M', 'hechizo_esfera_resiliente.html'),
(369, 1, 'Formar Piedra', 4, 'Transmutación', '1 Acción', 'Toque', 'Instantáneo', 'V, S, M', 'hechizo_formar_piedra.html'),
(370, 1, 'Piel de Piedra', 4, 'Abjuración', '1 Acción', 'Toque', 'Concentración, hasta 1 hora', 'V, S, M', 'hechizo_piel_piedra.html'),
(371, 1, 'Invocar Constructo', 4, 'Conjuro', '1 Acción', '90 pies', 'Concentración, hasta 1 hora', 'V, S, M', 'hechizo_invocar_constructo.html'),
(372, 1, 'Puño de hierro', 5, 'Evocación', '1 Acción', '60 pies', 'Instantáneo', 'V, S', 'hechizo_puño_iron.html'),
(373, 1, 'Teletransportación menor', 5, 'Conjuro', '1 Acción', '30 pies', 'Instantáneo', 'V, S, M', 'hechizo_teletransportacion_menor.html'),
(374, 1, 'Resurrección', 5, 'Necromancia', '1 Acción', 'Toque', 'Instantáneo', 'V, S, M', 'hechizo_resurreccion.html'),
(375, 1, 'Objetos animados', 5, 'Transmutación', '1 Acción', '120 pies', 'Concentración, hasta 1 minuto', 'V, S', 'hechizo_objetos_animados.html'),
(376, 1, 'Mano de Bigby', 5, 'Evocación', '1 Acción', '120 pies', 'Concentración, hasta 1 minuto', 'V, S, M', 'hechizo_mano_bigby.html'),
(377, 1, 'Crear timón de nave espacial', 5, 'Transmutación', '1 Acción', 'Toque', 'Instantáneo', 'V, S, M', 'hechizo_crear_timon_nave_espacial.html'),
(378, 1, 'Creación', 5, 'Ilusión', '1 Minuto', '30 pies', 'Especial', 'V, S, M', 'hechizo_creacion.html'),
(379, 1, 'Restauración mayor', 5, 'Abjuración', '1 Acción', 'Toque', 'Instantáneo', 'V, S, M', 'hechizo_restauracion_mayor.html'),
(380, 1, 'Empoderamiento de habilidades', 5, 'Transmutación', '1 Acción', 'Toque', 'Concentración, hasta 1 hora', 'V, S', 'hechizo_empoderamiento_habilidades.html'),
(381, 1, 'Transmutar roca', 5, 'Transmutación', '1 Acción', '120 pies', 'Instantáneo', 'V, S, M', 'hechizo_transmutar_roca.html'),
(382, 1, 'Muro de piedra', 5, 'Evocación', '1 Acción', '120 pies', 'Concentración, hasta 10 minutos', 'V, S, M', 'hechizo_muro_piedra.html'),
(383, 1, 'Salpicaduras de ácido', 0, 'Conjuro', '1 Acción', '60 Pies', 'Instantáneo', 'V, S', 'hechizo_salpicaduras_acido.html'),
(384, 1, 'Hoja retumbante', 0, 'Evocación', '1 Acción', 'Yo (radio de 5 pies)', '1 ronda', 'S, M', 'hechizo_hoja_retumbante.html'),
(385, 1, 'Crear hoguera', 0, 'Conjuro', '1 Acción', '60 Pies', 'Concentración, hasta 1 minuto', 'V, S', 'hechizo_crear_hoguera.html'),
(386, 1, 'Luces danzantes', 0, 'Evocación', '1 Acción', '120 Pies', 'Concentración, hasta 1 minuto', 'V, S, M', 'hechizo_luces_danzantes.html'),
(387, 1, 'Proyectil de fuego', 0, 'Evocación', '1 Acción', '120 Pies', 'Instantáneo', 'V, S', 'hechizo_proyectil_fuego.html'),
(388, 1, 'Escarcha mordiente', 0, 'Evocación', '1 Acción', '60 Pies', 'Instantáneo', 'V, S', 'hechizo_escarcha_mordiente.html'),
(389, 1, 'Hoja de llama verde', 0, 'Evocación', '1 Acción', 'Yo (radio de 5 pies)', 'Instantáneo', 'S, M', 'hechizo_hoja_flama_verde.html'),
(390, 1, 'Guía', 0, 'Adivinación', '1 Acción', 'Toque', 'Concentración, hasta 1 minuto', 'V, S', 'hechizo_guia.html'),
(391, 1, 'Luz', 0, 'Evocación', '1 Acción', 'Toque', '1 hora', 'V, M', 'hechizo_luz.html'),
(392, 1, 'Atracción de relámpago', 0, 'Evocación', '1 Acción', 'Yo (radio de 15 pies)', 'Instantáneo', 'V', 'hechizo_atraccion_relampago.html'),
(393, 1, 'Mano de mago', 0, 'Conjuro', '1 Acción', '30 Pies', '1 minuto', 'V, S', 'hechizo_mano_mago.html'),
(394, 1, 'Piedra mágica', 0, 'Transmutación', '1 Acción bonus', 'Toque', '1 minuto', 'V, S', 'hechizo_piedra_magica.html'),
(395, 1, 'Remendar', 0, 'Transmutación', '1 Minuto', 'Toque', 'Instantáneo', 'V, S, M', 'hechizo_remendar.html'),
(396, 1, 'Mensaje', 0, 'Transmutación', '1 Acción', '120 Pies', '1 ronda', 'V, S, M', 'hechizo_mensaje.html'),
(397, 1, 'Rocío venenoso', 0, 'Conjuro', '1 Acción', '10 Pies', 'Instantáneo', 'V, S', 'hechizo_rocio_venenoso.html'),
(398, 1, 'Prestidigitación', 0, 'Transmutación', '1 Acción', '10 Pies', 'Hasta 1 hora', 'V, S', 'hechizo_prestidigitacion.html'),
(399, 1, 'Rayos de escarcha', 0, 'Evocación', '1 Acción', '60 Pies', 'Instantáneo', 'V, S', 'hechizo_rayos_escarcha.html'),
(400, 1, 'Resistencia', 0, 'Abjuración', '1 Acción', 'Toque', 'Concentración, hasta 1 minuto', 'V, S, M', 'hechizo_resistencia.html'),
(401, 1, 'Toque electrizante', 0, 'Evocación', '1 Acción', 'Toque', 'Instantáneo', 'V, S', 'hechizo_toque_electrizante.html'),
(402, 1, 'Preservar moribundo', 0, 'Nigromancia', '1 Acción', 'Toque', 'Instantáneo', 'V, S', 'hechizo_preservar_moribundo.html'),
(403, 1, 'Estallido de espadas', 0, 'Conjuro', '1 Acción', 'Yo (radio de 5 pies)', 'Instantáneo', 'V', 'hechizo_estallido_espadas.html'),
(404, 1, 'Látigo de espinas', 0, 'Transmutación', '1 Acción', '30 Pies', 'Instantáneo', 'V, S, M', 'hechizo_latigo_espinas.html'),
(405, 1, 'Estruendo de trueno', 0, 'Evocación', '1 Acción', 'Yo (radio de 5 pies)', 'Instantáneo', 'S', 'hechizo_estruendo_trueno.html'),
(406, 1, 'Misil Mágico', 1, 'Evocación', '1 Acción', '120 Pies', 'Instantáneo', 'V, S', 'hechizo_misil_magico.html'),
(407, 1, 'Escudo', 1, 'Abjuración', '1 Reacción', 'Personal', '1 ronda', 'V, S', 'hechizo_escudo.html'),
(408, 1, 'Rayo de escarcha', 1, 'Evocación', '1 Acción', '60 Pies', 'Instantáneo', 'V, S', 'hechizo_rayo_escarcha.html'),
(409, 1, 'Durabilidad de la piedra', 1, 'Abjuración', '1 Acción', 'Toque', 'Concentración, hasta 1 hora', 'V, S, M', 'hechizo_durabilidad_piedra.html'),
(410, 1, 'Armadura de mago', 1, 'Abjuración', '1 Acción', 'Toque', '8 horas', 'V, S, M', 'hechizo_armadura_mago.html'),
(411, 1, 'Detectar enemigos invisibles', 1, 'Conjuro', '1 Acción', '30 pies', 'Concentración, hasta 1 minuto', 'V, S, M', 'hechizo_enemigos_invisibles.html'),
(412, 1, 'Absorber elementos', 1, 'Abjuración', '1 Reacción', 'Personal', '1 ronda', 'S', 'hechizo_absorber_elementos.html'),
(413, 1, 'Alarma', 1, 'Abjuración', '1 Minuto', '30 pies', '8 horas', 'V, S, M', 'hechizo_alarma.html'),
(414, 1, 'Arma arcana (UA)', 1, 'Transmutación', '1 Acción bonus', 'Personal', 'Concentración, hasta 1 hora', 'V, S', 'hechizo_arma_arcana.html'),
(415, 1, 'Catapulta', 1, 'Transmutación', '1 Acción', '60 pies', 'Instantáneo', 'S', 'hechizo_catapulta.html'),
(416, 1, 'Curar heridas', 1, 'Evocación', '1 Acción', 'Toque', 'Instantáneo', 'V, S', 'hechizo_curar_heridas.html'),
(417, 1, 'Detectar magia', 1, 'Adivinación', '1 Acción', 'Personal', 'Concentración, hasta 10 minutos', 'V, S', 'hechizo_detectar_magia.html'),
(418, 1, 'Disfrazarse', 1, 'Ilusión', '1 Acción', 'Personal', '1 hora', 'V, S', 'hechizo_disfrazarse.html'),
(419, 1, 'Retirada expeditiva', 1, 'Transmutación', '1 Acción bonus', 'Personal', 'Concentración, hasta 10 minutos', 'V, S', 'hechizo_retirada_expeditiva.html'),
(420, 1, 'Fuego feérico', 1, 'Evocación', '1 Acción', '60 pies', 'Concentración, hasta 1 minuto', 'V', 'hechizo_fuego_feerico.html'),
(421, 1, 'Falsa vida', 1, 'Nigromancia', '1 Acción', 'Personal', '1 hora', 'V, S, M', 'hechizo_falsa_vida.html'),
(422, 1, 'Caída de pluma', 1, 'Transmutación', '1 Reacción', '60 pies', '1 minuto', 'V, M', 'hechizo_caida_pluma.html'),
(423, 1, 'Grasa', 1, 'Conjuro', '1 Acción', '60 pies', '1 minuto', 'V, S, M', 'hechizo_grasa.html'),
(424, 1, 'Identificar', 1, 'Adivinación', '1 Minuto', 'Toque', 'Instantáneo', 'V, S, M', 'hechizo_identificar.html'),
(425, 1, 'Salto', 1, 'Transmutación', '1 Acción', 'Toque', '1 minuto', 'V, S, M', 'hechizo_salto.html'),
(426, 1, 'Zancada amplia', 1, 'Transmutación', '1 Acción', 'Toque', '1 hora', 'V, S, M', 'hechizo_zancada_amplia.html'),
(427, 1, 'Purificar comida y bebida', 1, 'Transmutación', '1 Acción', '10 pies', 'Instantáneo', 'V, S', 'hechizo_purificar_comida.html'),
(428, 1, 'Santuario', 1, 'Abjuración', '1 Acción bonus', '30 pies', '1 minuto', 'V, S, M', 'hechizo_santuario.html'),
(429, 1, 'Trampa', 1, 'Abjuración', '1 Minuto', 'Toque', 'Hasta ser activada', 'V, S, M', 'hechizo_trampa.html'),
(430, 1, 'Brebaje cáustico de Tasha', 1, 'Evocación', '1 Acción', 'Personal (línea de 30 pies)', 'Concentración, hasta 1 minuto', 'V, S, M', 'hechizo_brebaje_caustico.html'),
(431, 1, 'Refuerzo', 2, 'Abjuración', '1 Acción', '30 Pies', '8 horas', 'V, S, M', 'hechizo_refuerzo.html'),
(432, 1, 'Burbuja de aire', 2, 'Conjuro', '1 Acción', '60 Pies', '24 horas', 'S', 'hechizo_burbuja_aire.html'),
(433, 1, 'Alterar apariencia', 2, 'Transmutación', '1 Acción', 'Personal', 'Concentración, hasta 1 hora', 'V, S', 'hechizo_alterar_apariencia.html'),
(434, 1, 'Candado arcano', 2, 'Abjuración', '1 Acción', 'Toque', 'Hasta ser disipado', 'V, S, M', 'hechizo_candado_arcano.html'),
(435, 1, 'Imagen borrosa', 2, 'Ilusión', '1 Acción', 'Personal', 'Concentración, hasta 1 minuto', 'V', 'hechizo_imagen_borrosa.html'),
(436, 1, 'Llama continua', 2, 'Evocación', '1 Acción', 'Toque', 'Hasta ser disipada', 'V, S, M', 'hechizo_llama_continua.html'),
(437, 1, 'Visión en la oscuridad', 2, 'Transmutación', '1 Acción', 'Toque', '8 horas', 'V, S, M', 'hechizo_vision_oscuridad.html'),
(438, 1, 'Potenciar habilidad', 2, 'Transmutación', '1 Acción', 'Toque', 'Concentración, hasta 1 hora', 'V, S, M', 'hechizo_potenciar_habilidad.html'),
(439, 1, 'Agrandar/reducir', 2, 'Transmutación', '1 Acción', '30 pies', 'Concentración, hasta 1 minuto', 'V, S, M', 'hechizo_agrandar_reducir.html'),
(440, 1, 'Calentar metal', 2, 'Transmutación', '1 Acción', '60 pies', 'Concentración, hasta 1 minuto', 'V, S, M', 'hechizo_calentar_metal.html'),
(441, 1, 'Invisibilidad', 2, 'Ilusión', '1 Acción', 'Toque', 'Concentración, hasta 1 hora', 'V, S, M', 'hechizo_invisibilidad.html'),
(442, 1, 'Paseo cinético', 2, 'Transmutación', '1 Acción bonus', 'Personal', 'Concentración, hasta 1 minuto', 'S', 'hechizo_paseo_cinetico.html'),
(443, 1, 'Restauración menor', 2, 'Abjuración', '1 Acción', 'Toque', 'Instantáneo', 'V, S', 'hechizo_restauracion_menor.html'),
(444, 1, 'Levitación', 2, 'Transmutación', '1 Acción', '60 pies', 'Concentración, hasta 10 minutos', 'V, S, M', 'hechizo_levitacion.html'),
(445, 1, 'Boca mágica', 2, 'Ilusión', '1 Minuto', '30 pies', 'Hasta ser disipado', 'V, S, M', 'hechizo_boca_magica.html'),
(446, 1, 'Arma mágica', 2, 'Transmutación', '1 Acción bonus', 'Toque', 'Concentración, hasta 1 hora', 'V, S', 'hechizo_arma_magica.html'),
(447, 1, 'Protección contra veneno', 2, 'Abjuración', '1 Acción', 'Toque', '1 hora', 'V, S', 'hechizo_proteccion_veneno.html'),
(448, 1, 'Pirotécnia', 2, 'Transmutación', '1 Acción', '60 pies', 'Instantáneo', 'V, S', 'hechizo_pirotecnia.html'),
(449, 1, 'Truco con la cuerda', 2, 'Transmutación', '1 Acción', 'Toque', '1 hora', 'V, S, M', 'hechizo_truco_cuerda.html'),
(450, 1, 'Ver lo invisible', 2, 'Adivinación', '1 Acción', 'Personal', '1 hora', 'V, S, M', 'hechizo_ver_invisible.html'),
(451, 1, 'Escribir en el cielo', 2, 'Transmutación', '1 Acción', 'Visual', 'Concentración, hasta 1 día', 'V, S', 'hechizo_escribir_cielo.html'),
(452, 1, 'Trepar como araña', 2, 'Transmutación', '1 Acción', 'Toque', 'Concentración, hasta 1 hora', 'V, S, M', 'hechizo_trepar_arana.html'),
(453, 1, 'Vórtice de teletransporte', 2, 'Conjuro', '1 Acción', '90 pies', 'Instantáneo', 'V, S', 'hechizo_vortice_teletransporte.html'),
(454, 1, 'Telaraña', 2, 'Conjuro', '1 Acción', '60 pies', 'Concentración, hasta 1 hora', 'V, S, M', 'hechizo_telaraña.html'),
(455, 1, 'Zancada de Ashardalon', 3, 'Transmutación', '1 Acción bonus', 'Personal', 'Concentración, hasta 1 minuto', 'V, S', 'hechizo_zancada_ashardalon.html'),
(456, 1, 'Parpadear', 3, 'Transmutación', '1 Acción', 'Personal', '1 minuto', 'V, S', 'hechizo_parpadear.html'),
(457, 1, 'Siesta felina', 3, 'Encantamiento', '1 Acción', '30 pies', '10 minutos', 'S, M', 'hechizo_siesta_felina.html'),
(458, 1, 'Crear comida y agua', 3, 'Conjuro', '1 Acción', '30 pies', 'Instantáneo', 'V, S', 'hechizo_crear_comida_agua.html'),
(459, 1, 'Disipar magia', 3, 'Abjuración', '1 Acción', '120 pies', 'Instantáneo', 'V, S', 'hechizo_disipar_magia.html'),
(460, 1, 'Arma elemental', 3, 'Transmutación', '1 Acción', 'Toque', 'Concentración, hasta 1 hora', 'V, S', 'hechizo_arma_elemental.html'),
(461, 1, 'Flechas llameantes', 3, 'Transmutación', '1 Acción', 'Toque', 'Concentración, hasta 1 hora', 'V, S', 'hechizo_flechas_llameantes.html'),
(462, 1, 'Zancada de fuego (UA)', 3, 'Transmutación', '1 Acción bonus', 'Personal', 'Concentración, hasta 1 minuto', 'V, S', 'hechizo_zancada_fuego.html'),
(463, 1, 'Volar', 3, 'Transmutación', '1 Acción', 'Toque', 'Concentración, hasta 10 minutos', 'V, S, M', 'hechizo_volar.html'),
(464, 1, 'Glifo de protección', 3, 'Abjuración', '1 Hora', 'Toque', 'Hasta ser disipado o activado', 'V, S, M', 'hechizo_glifo_proteccion.html'),
(465, 1, 'Prisa', 3, 'Transmutación', '1 Acción', '30 pies', 'Concentración, hasta 1 minuto', 'V, S, M', 'hechizo_prisa.html'),
(466, 1, 'Casa de naipes (UA)', 3, 'Conjuro', '1 Minuto', 'Toque', '24 horas', 'V, S, M', 'hechizo_casa_naipes.html'),
(467, 1, 'Fortaleza mental', 3, 'Abjuración', '1 Acción', '30 pies', 'Concentración, hasta 1 hora', 'V', 'hechizo_fortaleza_mental.html'),
(468, 1, 'Protección contra energía', 3, 'Abjuración', '1 Acción', 'Toque', 'Concentración, hasta 1 hora', 'V, S', 'hechizo_proteccion_energia.html'),
(469, 1, 'Revivir', 3, 'Nigromancia', '1 Acción', 'Toque', 'Instantáneo', 'V, S, M', 'hechizo_revivir.html'),
(470, 1, 'Sirviente diminuto', 3, 'Transmutación', '1 Minuto', 'Toque', '8 horas', 'V, S', 'hechizo_sirviente_diminuto.html'),
(471, 1, 'Respirar bajo el agua', 3, 'Transmutación', '1 Acción', '30 pies', '24 horas', 'V, S, M', 'hechizo_respirar_agua.html'),
(472, 1, 'Caminar sobre el agua', 3, 'Transmutación', '1 Acción', '30 pies', '1 hora', 'V, S, M', 'hechizo_caminar_agua.html'),
(473, 1, 'Ojo Arcano', 4, 'Adivinación', '1 Acción', '30 pies', 'Concentración, hasta 1 hora', 'V, S, M', 'hechizo_ojo_arcano.html'),
(474, 1, 'Perdición Elemental', 4, 'Transmutación', '1 Acción', '90 pies', 'Concentración, hasta 1 minuto', 'V, S', 'hechizo_perdicion_elemental.html'),
(475, 1, 'Fabricar', 4, 'Transmutación', '10 Minutos', '120 pies', 'Instantáneo', 'V, S', 'hechizo_fabricar.html'),
(476, 1, 'Libertad de Movimiento', 4, 'Abjuración', '1 Acción', 'Toque', '1 hora', 'V, S, M', 'hechizo_libertad_movimiento.html'),
(477, 1, 'Cofre Secreto de Leomund', 4, 'Conjuro', '1 Acción', 'Toque', 'Instantáneo', 'V, S, M', 'hechizo_cofre_secreto.html'),
(478, 1, 'Perro Fiel de Mordenkainen', 4, 'Conjuro', '1 Acción', '30 pies', '8 horas', 'V, S, M', 'hechizo_perro_fiel.html'),
(479, 1, 'Santuario Privado de Mordenkainen', 4, 'Abjuración', '10 Minutos', '120 pies', '24 horas', 'V, S, M', 'hechizo_santuario_privado.html'),
(480, 1, 'Esfera Resiliente de Otiluke', 4, 'Evocación', '1 Acción', '30 pies', 'Concentración, hasta 1 minuto', 'V, S, M', 'hechizo_esfera_resiliente.html'),
(481, 1, 'Formar Piedra', 4, 'Transmutación', '1 Acción', 'Toque', 'Instantáneo', 'V, S, M', 'hechizo_formar_piedra.html'),
(482, 1, 'Piel de Piedra', 4, 'Abjuración', '1 Acción', 'Toque', 'Concentración, hasta 1 hora', 'V, S, M', 'hechizo_piel_piedra.html'),
(483, 1, 'Invocar Constructo', 4, 'Conjuro', '1 Acción', '90 pies', 'Concentración, hasta 1 hora', 'V, S, M', 'hechizo_invocar_constructo.html'),
(484, 1, 'Puño de hierro', 5, 'Evocación', '1 Acción', '60 pies', 'Instantáneo', 'V, S', 'hechizo_puño_iron.html'),
(485, 1, 'Teletransportación menor', 5, 'Conjuro', '1 Acción', '30 pies', 'Instantáneo', 'V, S, M', 'hechizo_teletransportacion_menor.html'),
(486, 1, 'Resurrección', 5, 'Necromancia', '1 Acción', 'Toque', 'Instantáneo', 'V, S, M', 'hechizo_resurreccion.html'),
(487, 1, 'Objetos animados', 5, 'Transmutación', '1 Acción', '120 pies', 'Concentración, hasta 1 minuto', 'V, S', 'hechizo_objetos_animados.html'),
(488, 1, 'Mano de Bigby', 5, 'Evocación', '1 Acción', '120 pies', 'Concentración, hasta 1 minuto', 'V, S, M', 'hechizo_mano_bigby.html'),
(489, 1, 'Crear timón de nave espacial', 5, 'Transmutación', '1 Acción', 'Toque', 'Instantáneo', 'V, S, M', 'hechizo_crear_timon_nave_espacial.html'),
(490, 1, 'Creación', 5, 'Ilusión', '1 Minuto', '30 pies', 'Especial', 'V, S, M', 'hechizo_creacion.html'),
(491, 1, 'Restauración mayor', 5, 'Abjuración', '1 Acción', 'Toque', 'Instantáneo', 'V, S, M', 'hechizo_restauracion_mayor.html'),
(492, 1, 'Empoderamiento de habilidades', 5, 'Transmutación', '1 Acción', 'Toque', 'Concentración, hasta 1 hora', 'V, S', 'hechizo_empoderamiento_habilidades.html'),
(493, 1, 'Transmutar roca', 5, 'Transmutación', '1 Acción', '120 pies', 'Instantáneo', 'V, S, M', 'hechizo_transmutar_roca.html'),
(494, 1, 'Muro de piedra', 5, 'Evocación', '1 Acción', '120 pies', 'Concentración, hasta 10 minutos', 'V, S, M', 'hechizo_muro_piedra.html');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicios_sesion`
--

CREATE TABLE `inicios_sesion` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT current_timestamp(),
  `direccion_ip` varchar(39) DEFAULT NULL COMMENT 'Compatible con IPv6',
  `exito` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modificador_racial`
--

CREATE TABLE `modificador_racial` (
  `id` int(11) NOT NULL,
  `id_raza` int(11) DEFAULT NULL,
  `atributo` varchar(50) DEFAULT NULL,
  `bonificacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `nombre_completo` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `biografia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rasgo_racial`
--

CREATE TABLE `rasgo_racial` (
  `id` int(11) NOT NULL,
  `id_raza` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `raza`
--

CREATE TABLE `raza` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `origen` text DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `velocidad` int(11) DEFAULT NULL,
  `vision_oscuridad` int(11) DEFAULT NULL COMMENT 'Rango en pies',
  `trance` text DEFAULT NULL,
  `idiomas` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `razas`
--

CREATE TABLE `razas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `enlace` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subclases`
--

CREATE TABLE `subclases` (
  `id` int(11) NOT NULL,
  `clase_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `fuente` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contrasena_hash` varchar(255) NOT NULL COMMENT 'Contraseña cifrada con bcrypt',
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `email`, `contrasena_hash`, `fecha_registro`, `password`) VALUES
(1, 'enrique', 'enriqueperezcamacho20001@gmail.com', '$2y$10$NT.b.M83V4M0tyDam2684u2SxHrgv/CkY25rSSXSayOB4zd92kRvO', '2025-05-16 10:30:48', NULL),
(2, 'Jose', 'EnriquePerez@gmail.com', '', '2025-05-23 10:18:22', '$2y$10$VGvQLAae9768i2v6VdhFKeZmlqVeooK1hVIHgAu4j8zNtBXELJjoG'),
(3, 'DarkFireBreak1', 'EnriquePere@gmail.com', '', '2025-05-23 10:18:48', '$2y$10$asrt6xgf9KwwKq777HXFKuU9wwhlJzR6IaoKrNMJO7xqQFX89A0mG');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fichas`
--
ALTER TABLE `fichas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `hechizos`
--
ALTER TABLE `hechizos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clase_id` (`clase_id`);

--
-- Indices de la tabla `inicios_sesion`
--
ALTER TABLE `inicios_sesion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `modificador_racial`
--
ALTER TABLE `modificador_racial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_raza` (`id_raza`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `rasgo_racial`
--
ALTER TABLE `rasgo_racial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_raza` (`id_raza`);

--
-- Indices de la tabla `raza`
--
ALTER TABLE `raza`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `razas`
--
ALTER TABLE `razas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subclases`
--
ALTER TABLE `subclases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clase_id` (`clase_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_usuario_nombre` (`nombre_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `fichas`
--
ALTER TABLE `fichas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `hechizos`
--
ALTER TABLE `hechizos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;

--
-- AUTO_INCREMENT de la tabla `inicios_sesion`
--
ALTER TABLE `inicios_sesion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modificador_racial`
--
ALTER TABLE `modificador_racial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rasgo_racial`
--
ALTER TABLE `rasgo_racial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `raza`
--
ALTER TABLE `raza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `razas`
--
ALTER TABLE `razas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subclases`
--
ALTER TABLE `subclases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `fichas`
--
ALTER TABLE `fichas`
  ADD CONSTRAINT `fichas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `hechizos`
--
ALTER TABLE `hechizos`
  ADD CONSTRAINT `hechizos_ibfk_1` FOREIGN KEY (`clase_id`) REFERENCES `clases` (`id`);

--
-- Filtros para la tabla `inicios_sesion`
--
ALTER TABLE `inicios_sesion`
  ADD CONSTRAINT `inicios_sesion_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `modificador_racial`
--
ALTER TABLE `modificador_racial`
  ADD CONSTRAINT `modificador_racial_ibfk_1` FOREIGN KEY (`id_raza`) REFERENCES `raza` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD CONSTRAINT `perfiles_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `rasgo_racial`
--
ALTER TABLE `rasgo_racial`
  ADD CONSTRAINT `rasgo_racial_ibfk_1` FOREIGN KEY (`id_raza`) REFERENCES `raza` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `subclases`
--
ALTER TABLE `subclases`
  ADD CONSTRAINT `subclases_ibfk_1` FOREIGN KEY (`clase_id`) REFERENCES `clases` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
