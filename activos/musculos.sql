-- phpMyAdmin SQL Dump

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `musculos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificacion`
--

DROP TABLE IF EXISTS `clasificacion`;
CREATE TABLE IF NOT EXISTS `clasificacion` (
  `Idcl` int(2) NOT NULL,
  `ncl` varchar(24) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `Idf` int(1) DEFAULT NULL,
  PRIMARY KEY (`Idcl`),
  KEY `Idf` (`Idf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clasificacion`
--

INSERT INTO `clasificacion` (`Idcl`, `ncl`, `Idf`) VALUES
(1, 'Musculos de la cabeza', 1),
(2, 'Musculos del cuello', 1),
(3, 'Músculos del tronco', 1),
(4, 'Músculos del corazon', 3),
(5, 'Músculos de los miembros', 1),
(6, 'el esofago', 2),
(7, 'el estomago', 2),
(8, 'abdomen', 1),
(9, 'la vejiga', 2),
(10, 'el intestino', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estructura`
--

DROP TABLE IF EXISTS `estructura`;
CREATE TABLE IF NOT EXISTS `estructura` (
  `Ide` int(2) NOT NULL,
  `ne` varchar(27) DEFAULT NULL,
  `Idcl` int(2) DEFAULT NULL,
  PRIMARY KEY (`Ide`),
  KEY `Idcl` (`Idcl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estructura`
--

INSERT INTO `estructura` (`Ide`, `ne`, `Idcl`) VALUES
(1, 'biceps', 5),
(2, 'trapecio', 3),
(3, 'digástrico', 1),
(4, 'masetero', 1),
(5, 'miocardio', 4),
(6, 'temporal', 1),
(7, 'epicardio', 4),
(8, 'Frontal', 1),
(9, 'Occipital', 1),
(10, 'Auricular superior', 1),
(11, 'Mirtiforme', 1),
(12, 'Superciliar', 1),
(13, 'Buccinador', 1),
(14, 'Cigomático mayor', 1),
(15, 'Cigomático menor', 1),
(16, 'Oblicuo inferior', 1),
(17, 'endocarpio', 4),
(18, 'Oblicuo superior', 1),
(19, 'Palatogloso', 1),
(20, 'Geniogloso', 1),
(21, 'Deltoides', 5),
(22, 'Sternocleidomastoid', 2),
(23, 'triceps', 5),
(24, 'oblicuo externo del abdomen', 8),
(25, 'oblicuo interno abdominal', 8),
(26, 'recto abdominal', 8),
(27, 'esternotiroideo', 2),
(28, 'tirohioideo', 2),
(29, 'milohioideo', 2),
(30, 'Pectoral mayor', 3),
(31, 'Pectoral menor', 3),
(32, 'Serrato mayor', 3),
(33, 'Dorsal ancho', 3),
(34, 'Pronador cuadrado', 5),
(35, 'antebrazo', 5),
(36, 'gluteo mediano', 5),
(37, 'gluteo mayor', 5),
(38, 'bíceps femoral', 5),
(39, 'Quadriceps femoral', 5),
(40, 'gastrocnemio', 5),
(41, 'membrana mucosa', 6),
(42, 'Esfínter esofágico inferior', 6),
(43, 'Capa muscular', 6),
(44, 'membrana mucosa', 8),
(45, 'cuerpo', 7),
(46, 'Región pilórica', 7),
(47, 'Curvatura menor', 7),
(48, 'Curvatura mayor', 7),
(49, 'intestino grueso', 10),
(50, 'intestino delgado', 10),
(51, 'Capa serosa', 9),
(52, 'Capa muscular', 9),
(53, 'membrana mucosa', 9),
(54, 'oblicou tranverso', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma`
--

DROP TABLE IF EXISTS `forma`;
CREATE TABLE IF NOT EXISTS `forma` (
  `Idf` int(1) NOT NULL,
  `nf` varchar(19) DEFAULT NULL,
  PRIMARY KEY (`Idf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `forma`
--

INSERT INTO `forma` (`Idf`, `nf`) VALUES
(1, 'Musculo Esqueletico'),
(2, 'Musculo Lisos'),
(3, 'Musculo Cardiacos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idiomas`
--

DROP TABLE IF EXISTS `idiomas`;
CREATE TABLE IF NOT EXISTS `idiomas` (
  `Ididio` int(1) NOT NULL,
  `nidio` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`Ididio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `idiomas`
--

INSERT INTO `idiomas` (`Ididio`, `nidio`) VALUES
(1, 'Ingles'),
(2, 'Frances'),
(3, 'Italiano'),
(4, 'Portugues');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `user`, `pass`) VALUES
(1, 'ebby', '123456'),
(2, 'ebby', 'beltran'),
(3, 'ebby', 'beltran'),
(4, 'ebby', 'beltran'),
(5, 'ebby', 'beltran'),
(6, 'ebby', 'beltran'),
(7, 'ebby', 'beltran'),
(8, 'ebby', 'beltran'),
(9, 'ebby', 'beltran'),
(10, 'ebby', 'beltran'),
(11, 'ebby', 'beltran'),
(12, 'ebby', 'beltran');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nombrer` int(11) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_usuario`
--

DROP TABLE IF EXISTS `rol_usuario`;
CREATE TABLE IF NOT EXISTS `rol_usuario` (
  `usuario_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL,
  UNIQUE KEY `usuario_id` (`usuario_id`),
  UNIQUE KEY `rol_id` (`rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traduccion`
--

DROP TABLE IF EXISTS `traduccion`;
CREATE TABLE IF NOT EXISTS `traduccion` (
  `Idt` int(3) NOT NULL,
  `nt` varchar(32) DEFAULT NULL,
  `ide` int(2) DEFAULT NULL,
  `ididio` int(1) DEFAULT NULL,
  PRIMARY KEY (`Idt`),
  KEY `ide` (`ide`),
  KEY `ididio` (`ididio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `traduccion`
--

INSERT INTO `traduccion` (`Idt`, `nt`, `ide`, `ididio`) VALUES
(1, 'digastric', 3, 1),
(2, 'digastrique', 3, 2),
(3, 'digastrico', 3, 3),
(4, 'digastrico', 3, 4),
(5, 'masseter', 4, 1),
(6, 'masséter', 4, 2),
(7, 'massetere', 4, 3),
(8, 'masseter', 4, 4),
(9, 'temporal', 6, 1),
(10, 'temps', 6, 2),
(11, 'temporale', 6, 3),
(12, 'tempo', 6, 4),
(13, 'frontal', 8, 1),
(14, 'frontal', 8, 2),
(15, 'frontale', 8, 3),
(16, 'frontal', 8, 4),
(17, 'occipital', 9, 1),
(18, 'occipital', 9, 2),
(19, 'occipitale', 9, 3),
(20, 'occipital', 9, 4),
(21, 'Headset top', 10, 1),
(22, 'Top casque', 10, 2),
(23, 'Auricolare top', 10, 3),
(24, 'Top de fone de ouvido', 10, 4),
(25, 'mirtiforme', 11, 1),
(26, 'mirtiforme', 11, 2),
(27, 'mirtiforme', 11, 3),
(28, 'mirtiforme', 11, 4),
(29, 'supercilii', 12, 1),
(30, 'supercilii', 12, 2),
(31, 'corrugatore', 12, 3),
(32, 'supercílio', 12, 4),
(33, 'buccinator', 13, 1),
(34, 'buccinateur', 13, 2),
(35, 'buccinator', 13, 3),
(36, 'bucinador', 13, 4),
(37, 'zygomaticus major', 14, 1),
(38, 'zygomatique majeur', 14, 2),
(39, 'grande zigomatico', 14, 3),
(40, 'principal zigomático', 14, 4),
(41, 'Zygomaticus minor', 15, 1),
(42, 'Mineur zygomatique', 15, 2),
(43, 'piccolo zigomatico', 15, 3),
(44, 'menor zigomático', 15, 4),
(45, 'Inferior oblique', 16, 1),
(46, 'oblique inférieur', 16, 2),
(47, 'obliquo inferiore', 16, 3),
(48, 'oblíquo inferior', 16, 4),
(49, 'oblique top', 18, 1),
(50, 'oblique supérieur', 18, 2),
(51, 'obliquo superiore', 18, 3),
(52, 'oblíquo superior', 18, 4),
(53, 'palatoglossus', 19, 1),
(54, 'palatoglossus', 19, 2),
(55, 'palatoglossus', 19, 3),
(56, 'palatoglosso', 19, 4),
(57, 'genioglossus', 20, 1),
(58, 'génioglosse', 20, 2),
(59, 'genioglosso', 20, 3),
(60, 'genioglosso', 20, 4),
(61, 'myocardial', 5, 1),
(62, 'myocardique', 5, 2),
(63, 'del miocardio', 5, 3),
(64, 'miocárdica', 5, 4),
(65, 'epicardium', 7, 1),
(66, 'épicarde', 7, 2),
(67, 'epicardio', 7, 3),
(68, 'epicárdio', 7, 4),
(69, 'endocarp', 17, 1),
(70, 'endocarpe', 17, 2),
(71, 'endocarpo', 17, 3),
(72, 'endocarpo', 17, 4),
(73, 'biceps', 1, 1),
(74, 'biceps', 1, 2),
(75, 'bicipite', 1, 3),
(76, 'bíceps', 1, 4),
(77, 'Trapeze', 2, 1),
(78, 'Trapèze', 2, 2),
(79, 'Trapezio', 2, 3),
(80, 'Trapézio', 2, 4),
(81, 'deltoid', 21, 1),
(82, 'deltoïde', 21, 2),
(83, 'deltoide', 21, 3),
(84, 'deltoide', 21, 4),
(85, 'ternocleidomastoid', 22, 1),
(86, 'sternocléidomastoïdien', 22, 2),
(87, 'sternocleidomastoideo', 22, 3),
(88, 'esternocleidomastoideo', 22, 4),
(89, 'pectoralis major', 30, 1),
(90, 'grand pectoral', 30, 2),
(91, 'grande pettorale', 30, 3),
(92, 'peitoral maior', 30, 4),
(93, 'pectoralis minor', 31, 1),
(94, 'pectoralis minor', 31, 2),
(95, 'pettorale minore', 31, 3),
(96, 'peitoral menor', 31, 4),
(97, 'greater Serrato', 32, 1),
(98, 'Serrato supérieure', 32, 2),
(99, 'maggiore Serrato', 32, 3),
(100, 'Serrato maior', 32, 4),
(101, 'triceps', 23, 1),
(102, 'triceps', 23, 2),
(103, 'tricipiti', 23, 3),
(104, 'tríceps', 23, 4),
(105, 'Abdominal external oblique', 24, 1),
(106, 'Abdominaux obliques externes', 24, 2),
(107, 'obliquo esterno dell\'addome', 24, 3),
(108, 'Abdominal oblíquo externo', 24, 4),
(109, 'oblique internal abdominal', 25, 1),
(110, 'abdominaux obliques internes', 25, 2),
(111, 'addominale obliquo interno', 25, 3),
(112, 'abdominal oblíquo interno', 25, 4),
(113, 'transverse abdominal', 54, 1),
(114, 'transverse de l’abdomen', 54, 2),
(115, 'Trasverso addominale', 54, 3),
(116, 'transverso abdominal', 54, 4),
(117, 'straight abdominal', 26, 1),
(118, 'grand droit', 26, 2),
(119, 'addominale dritto', 26, 3),
(120, 'reto abdominal', 26, 4),
(121, 'esternotiroideo', 27, 1),
(122, 'esternotiroideo', 27, 2),
(123, 'esternotiroideo', 27, 3),
(124, 'esternotiroideo', 27, 4),
(125, 'thyrohyoid', 28, 1),
(126, 'thyrohyoid', 28, 2),
(127, 'thyrohyoid', 28, 3),
(128, 'thyrohyoid', 28, 4),
(129, 'mylohyoid', 29, 1),
(130, 'mylohyoidien', 29, 2),
(131, 'miloioideo', 29, 3),
(132, 'milohioideu', 29, 4),
(133, 'wide dorsal', 33, 1),
(134, 'grand dorsal', 33, 2),
(135, 'Larghezza posteriore', 33, 3),
(136, 'grande dorsal', 33, 4),
(137, 'pronator square', 34, 1),
(138, 'carré pronateur', 34, 2),
(139, 'Piazza pronatore', 34, 3),
(140, 'quadrado pronador', 34, 4),
(141, 'forearm', 35, 1),
(142, 'Avant-bras', 35, 2),
(143, 'Avambraccio', 35, 3),
(144, 'antebraço', 35, 4),
(145, 'gluteus medium', 36, 1),
(146, 'moyen fessier', 36, 2),
(147, 'medio gluteo', 36, 3),
(148, 'glúteo médio', 36, 4),
(149, 'gluteus greater', 37, 1),
(150, 'Grand fessier', 37, 2),
(151, 'gluteo maggiore', 37, 3),
(152, 'glúteo maior', 37, 4),
(153, 'Quadriceps femoris', 39, 1),
(154, 'Quadriceps fémoral', 39, 2),
(155, 'Quadricipite femorale', 39, 3),
(156, 'Quadríceps femoral', 39, 4),
(157, 'biceps femoris', 38, 1),
(158, 'biceps fémoral', 38, 2),
(159, 'bicipite femorale', 38, 3),
(160, 'bíceps femoral', 38, 4),
(161, 'Gastrocnemius', 40, 1),
(162, 'gastrocnémien', 40, 2),
(163, 'Gastrocnemio', 40, 3),
(164, 'gastrocnêmio', 40, 4),
(165, 'mucous membrane', 41, 1),
(166, 'membrane muqueuse', 41, 2),
(167, 'membrana mucosa', 41, 3),
(168, 'membrana mucosa', 41, 4),
(169, 'Muscle cover', 43, 1),
(170, 'Couverture de muscle', 43, 2),
(171, 'Copertura del muscolo', 43, 3),
(172, 'Capa muscular', 43, 4),
(173, 'Lower esophageal sphincter', 42, 1),
(174, 'Oesophage de sphincter inférieur', 42, 2),
(175, 'Sfintere esofageo inferiore', 42, 3),
(176, 'Esfíncter esofágico inferior', 42, 4),
(177, 'mucous membrane', 44, 1),
(178, 'membrane muqueuse', 44, 2),
(179, 'membrana mucosa', 44, 3),
(180, 'membrana mucosa', 44, 4),
(181, 'Body', 45, 1),
(182, 'Corps', 45, 2),
(183, 'Corpo', 45, 3),
(184, 'Corpo', 45, 4),
(185, 'Region pyloric', 46, 1),
(186, 'Région du pylore', 46, 2),
(187, 'Regione pilorica', 46, 3),
(188, 'Região pilórica', 46, 4),
(189, 'Greater curvature', 48, 1),
(190, 'Une plus grande courbure', 48, 2),
(191, 'Curvatura maggiore', 48, 3),
(192, 'Curvatura maior', 48, 4),
(193, 'Lesser curvature', 47, 1),
(194, 'Courbure inférieure', 47, 2),
(195, 'Curvatura inferiore', 47, 3),
(196, 'Curvatura menor', 47, 4),
(197, 'Serous cover', 51, 1),
(198, 'Couverture de la séreuse', 51, 2),
(199, 'Copertura sieroso', 51, 3),
(200, 'Capa serosa', 51, 4),
(201, 'Muscle cover', 52, 1),
(202, 'Couverture de muscle', 52, 2),
(203, 'Copertura del muscolo', 52, 3),
(204, 'Capa muscular', 52, 4),
(205, 'mucous membrane', 53, 1),
(206, 'membrane muqueuse', 53, 2),
(207, 'membrana mucosa', 53, 3),
(208, 'membrana mucosa', 53, 4),
(209, 'intestine thick', 49, 1),
(210, 'gros intestin', 49, 2),
(211, 'intestino crasso', 49, 3),
(212, 'intestino grosso', 49, 4),
(213, 'small intestine', 50, 1),
(214, 'intestin grêle', 50, 2),
(215, 'intestino tenue', 50, 3),
(216, 'intestino delgado', 50, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `email`, `password`, `fecha`) VALUES
(1, 'ebby', 'beltran', 'ebby@gmail.com', '$2y$04$JNQJOOGHm6L8Uux07pdMEOzrDGYMKJNflO5sQi6UtR0xPzSN1sy7e', '2021-05-25');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  ADD CONSTRAINT `clasificacion_ibfk_1` FOREIGN KEY (`Idf`) REFERENCES `forma` (`Idf`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estructura`
--
ALTER TABLE `estructura`
  ADD CONSTRAINT `estructura_ibfk_1` FOREIGN KEY (`Idcl`) REFERENCES `clasificacion` (`Idcl`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `rol_usuario`
--
ALTER TABLE `rol_usuario`
  ADD CONSTRAINT `rol_usuario_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rol_usuario_ibfk_2` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `traduccion`
--
ALTER TABLE `traduccion`
  ADD CONSTRAINT `traduccion_ibfk_1` FOREIGN KEY (`ide`) REFERENCES `estructura` (`Ide`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `traduccion_ibfk_2` FOREIGN KEY (`ididio`) REFERENCES `idiomas` (`Ididio`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
