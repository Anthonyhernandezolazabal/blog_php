-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3366
-- Tiempo de generación: 04-05-2023 a las 16:56:52
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ingytalbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `introduccion` text NOT NULL,
  `contenido` text NOT NULL,
  `link_contenido` text NOT NULL,
  `autor` text NOT NULL,
  `imagen_principal` text NOT NULL,
  `estado` varchar(20) NOT NULL DEFAULT 'A',
  `id_tipo` int(11) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`id_blog`, `titulo`, `introduccion`, `contenido`, `link_contenido`, `autor`, `imagen_principal`, `estado`, `id_tipo`, `fecha_registro`) VALUES
(33, 'Análisis predictivo', 'haciendo uso de las redes neuronales convolucionales. ', '<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: ES; mso-fareast-language: ES; mso-bidi-language: AR-SA;\">haciendo uso de las redes neuronales convolucionales. Finalmente, para llegar a los resultados, esta investigaci&oacute;n utiliz&oacute; dos bases de datos de im&aacute;genes de fondo de ojo, Messidor y Messidor 2, para clasificar el estado de esta enfermedad seg&uacute;n el n&uacute;mero de lesiones. Sin embargo, el resultado de la base de datos Messidor basado en la puntuaci&oacute;n de la evaluaci&oacute;n del &iacute;ndice kappa arrojaron un puntaje de 0,64, lo que indica que tiene una buena fuerza de consistencia, mientras que la puntuaci&oacute;n de la base de datos Messidor 2 es 0,56, lo que indica que el grado de consistencia es moderado. Se tom&oacute; en consideraci&oacute;n esta tesis porque propone una metodolog&iacute;a haciendo uso de las redes neuronales convolucionales y el grado de impacto que puede tener para a un diagn&oacute;stico r&aacute;pido sobre los m&eacute;dicos y pacientes.</span></p>', 'https://itbussiness.net/blog/hpenimblestorage/', 'itbadmin', '625f5bdb10804-acceso-credito.png', 'A', 15, '2022-04-20 01:03:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `correo` text NOT NULL,
  `comentario` text NOT NULL,
  `avatar` varchar(50) NOT NULL,
  `id_blog` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_contrato`
--

CREATE TABLE `detalle_contrato` (
  `id_det_contrato` int(11) NOT NULL,
  `id_ubicacion` int(11) DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruta_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_informacion`
--

CREATE TABLE `empresa_informacion` (
  `id_empresa` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quienes_somos` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_prueba`
--

CREATE TABLE `empresa_prueba` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `web` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa_prueba`
--

INSERT INTO `empresa_prueba` (`id`, `nombre`, `correo`, `direccion`, `telefono`, `web`) VALUES
(55, 'scarrasco@ingytal.com', 'Motupe #802', '929967144', 'www.xxx.co', ''),
(56, 'achingo@ingytal.com', 'Guabos #804', '929967144', 'www.xxx.co', ''),
(57, 'dchoez@gmail.com', 'Treboles #800', '929967144', 'www.xxx.co', ''),
(58, 'scarrasco@ingytal.com', 'Motupe #802', '929967144', 'www.xxx.co', ''),
(59, 'achingo@ingytal.com', 'Guabos #804', '929967144', 'www.xxx.co', ''),
(60, 'dchoez@gmail.com', 'Treboles #800', '929967144', 'www.xxx.co', ''),
(61, 'scarrasco@ingytal.com', 'Motupe #802', '929967144', 'www.xxx.co', ''),
(62, 'achingo@ingytal.com', 'Guabos #804', '929967144', 'www.xxx.co', ''),
(63, '{correo}', '{direccion}', '{telefono}', '{web}', '{status}'),
(64, 'dchoez@gmail.com', 'Treboles #800', '929967144', 'www.xxx.co', ''),
(65, 'scarrasco@ingytal.com', 'Motupe #802', '929967144', 'www.xxx.co', ''),
(66, 'achingo@ingytal.com', 'Guabos #804', '929967144', 'www.xxx.co', ''),
(67, '{correo}', '{direccion}', '{telefono}', '{web}', '{status}'),
(68, 'dchoez@gmail.com', 'Treboles #800', '929967144', 'www.xxx.co', ''),
(69, 'scarrasco@ingytal.com', 'Motupe #802', '929967144', 'www.xxx.co', ''),
(70, 'achingo@ingytal.com', 'Guabos #804', '929967144', 'www.xxx.co', ''),
(71, '{correo}', '{direccion}', '{telefono}', '{web}', '{status}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria_fotos`
--

CREATE TABLE `galeria_fotos` (
  `id_galeria` int(11) NOT NULL,
  `id_ubicacion` int(11) DEFAULT NULL,
  `tipo` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `galeria_fotos`
--

INSERT INTO `galeria_fotos` (`id_galeria`, `id_ubicacion`, `tipo`, `titulo`, `descripcion`, `imagen`) VALUES
(1, 4, 'Plano de Ubicación', 'Título 2', 'Desc Prueba 1', '1603444884.jpg'),
(2, 6, 'Fotografía del Predio', 'Título Foto 1', 'Descripción del área', '1603443111.jpg'),
(4, 2, 'Fotografía del Predio', 'Título 1', 'Subtítulo 2', '1603455983.jpg'),
(5, 2, 'Fotografía del Predio', 'Título n', 'Descripción n', '1603456064.jpg'),
(6, 2, 'Plano de Ubicación', 'Plano 1', 'Descripción Plano 1', '1603456162.jpg'),
(9, 2, 'Entorno del Predio', 'Título Entorno 1', 'Descripción Entorno 1', '1603456371.jpg'),
(10, 2, 'Entorno del Predio', 'Título Entorno 2', 'Descripción Entorno 2', '1603456395.jpg'),
(11, 2, 'Propuesta Alternativa', '', '', '1604225113.jpg'),
(12, 2, 'Propuesta Alternativa', '', '', '1604225124.jpg'),
(13, 2, 'Propuesta Alternativa', '', '', '1604225138.jpg'),
(14, 2, 'Propuesta Alternativa', '', '', '1604225147.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interesados`
--

CREATE TABLE `interesados` (
  `id_interesado` int(11) NOT NULL,
  `id_ubicacion` int(11) DEFAULT NULL,
  `nombre` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono_celular` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mensaje` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `landing_detalle`
--

CREATE TABLE `landing_detalle` (
  `id` int(11) NOT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `nombre_completo` varchar(255) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `landing_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `landing_detalle`
--

INSERT INTO `landing_detalle` (`id`, `codigo`, `nombre_completo`, `telefono`, `landing_id`) VALUES
(2, NULL, 'Halina Razuri Rubio', '976701459', 1),
(3, NULL, 'Daniel Burga VIlla', '912541221', 1),
(4, NULL, 'Ana Rojas', '987554778', 1),
(5, NULL, 'Anthony Hernandez Olazabal', '964825664', 1),
(6, NULL, 'Manuel', '985898785', 1),
(7, NULL, 'Eduardo', '965898785', 1),
(8, NULL, 'Marcelo', '232123232', 1),
(9, NULL, 'Rosa Rubio', '922145587', 1),
(10, NULL, 'Jose Perez', '966588747', 1),
(11, NULL, 'Carlos Razuri Rubio', '999866587', 1),
(12, NULL, 'Estefany Aray', '977828440', 1),
(13, NULL, 'Proyectos', '965856221', 1),
(14, NULL, 'Prueba', '213123123', 1),
(15, NULL, 'admin', '123131231', 1),
(16, NULL, 'Pruebados', '099987766', 1),
(17, NULL, 'Halina Razuri Rubio', '976701459', 1),
(19, NULL, 'Anthony', '964825664', 1),
(20, NULL, 'Halina', '976701459', 1),
(21, NULL, 'Halinad', '972638484', 1),
(22, NULL, 'Estefany Aray', '977828440', 1),
(24, NULL, 'Estefany Aray', '897895759', 1),
(25, NULL, 'Estefany Aray', '977828440', 1),
(26, NULL, 'angel', '926270474', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `landing_page`
--

CREATE TABLE `landing_page` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `landing_page`
--

INSERT INTO `landing_page` (`id`, `nombre`, `descripcion`) VALUES
(1, 'smartcontact', 'Landing Page de SmartContact'),
(2, 'RegistroRN', 'Landing Page con 4 campos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `landing_registro`
--

CREATE TABLE `landing_registro` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `celular` varchar(9) NOT NULL,
  `email` varchar(255) NOT NULL,
  `registrado` datetime NOT NULL DEFAULT current_timestamp(),
  `landing_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `landing_registro`
--

INSERT INTO `landing_registro` (`id`, `nombre`, `empresa`, `celular`, `email`, `registrado`, `landing_id`) VALUES
(6, 'Halina', 'ABC', '976701459', 'halinarazuri@ingytal.com', '2022-03-09 15:41:13', 2),
(7, 'Rosa Rubio', '123', '976012547', 'halinarazuri@ingytal.com', '2022-03-09 15:41:46', 2),
(8, 'Manuel castro', 'Ingytal', '937207315', 'mcmanolito@gmail.com', '2022-03-09 15:42:32', 2),
(9, 'Johan', 'Catedratico', '950322506', 'johanburgosbardales1974@yahoo.com', '2022-03-09 18:35:32', 2),
(10, 'Johan', 'Catedratico', '950322506', 'johanburgosbardales1974@yahoo.com', '2022-03-09 18:35:32', 2),
(11, 'fernando', 'pros', '930361079', 'fernando_5zg@hotmail.com', '2022-03-09 19:13:09', 2),
(12, 'FERNANDO', 'pros', '930361079', 'fernando_5zg@hotmail.com', '2022-03-09 19:13:25', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mision`
--

CREATE TABLE `mision` (
  `id_mision_i` int(11) NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 NOT NULL,
  `imagen` varchar(100) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mision`
--

INSERT INTO `mision` (`id_mision_i`, `descripcion`, `imagen`) VALUES
(23, 'Somos una empresa conformada por un equipo de profesionales orientados al desarrollo de soluciones avanzadas a la vanguardia de tecnologías emergentes que permitan acelerar la transformación digital de las empresas, para situarlas dentro del contexto de la cuarta revolución industrial..', '1636119324.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `idpermiso` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`idpermiso`, `nombre`) VALUES
(1, 'Locales'),
(2, 'Galería de Fotos'),
(3, 'Videos'),
(4, 'Slider');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propuesta`
--

CREATE TABLE `propuesta` (
  `id_propuesta` int(11) NOT NULL,
  `id_ubicacion` int(11) DEFAULT NULL,
  `nombre` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quienes_somos`
--

CREATE TABLE `quienes_somos` (
  `id_quienes_somos` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `quienes_somos`
--

INSERT INTO `quienes_somos` (`id_quienes_somos`, `descripcion`, `imagen`) VALUES
(15, 'Somos una empresa especializada en tecnología que ofrece soluciones innovadoras que permiten optimizar y desarrollar oportunidades para el crecimiento de las empresas como aliados estratégicos. \r\nAutomatizamos tus procesos repetitivos, manuales y rutinarias, por procesos robóticos, para mejorar los indicadores de gestión, utilizando la tecnología RPA e inteligencia artificial.', '1636119150.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_servicio` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_servicio`, `nombre`, `descripcion`, `imagen`) VALUES
(1, 'INGENYUS', 'Hacemos realidad tu propuesta de innovación, mediante el desarrollo, adaptación y mejora tecnológica.\r\nIdentificamos fondos concursables acordes al sector productivo de tu empresa, formulando y diseñando la propuesta técnica o plan de negocio de acuerdo a las bases del concurso, para lograr resultados exitosos, acompañándote durante su implementación y cierre del proyecto.', '1636058343.jpeg'),
(2, 'RPA - Automatización de procesos robóticos', 'Implementamos herramientas de tecnología de software que permite automatizar tareas repetitivas, manuales y rutinarias en los procesos comerciales para mejorar los indicadores en los distintos procesos de su empresa. \r\n\r\n\r\n\r\nGarantizamos seguridad y trazabilidad de datos. Nuestro partner Rocketbot es la empresa líder de RPA en Hispanoamérica, sus áreas de aplicación en distintas industrias como banca y financiera, seguros, logística, cuidado y salud, ecommerce y retail, entre otros.', '1636045693.jpg'),
(3, 'Chat Bots', 'Te ofrecemos una herramienta tecnológica que permite a tus clientes mantener una conversación a través de un software que se integra a un sistema de mensajería (Messenger y Whatsapp). Nuestro sistema está programado para que interactúe con el cliente y resuelva dudas, sin una persona física contestando, con la ventaja de estar siempre disponibles para los usuarios en cualquier horario.', '1636053912.jpg'),
(4, 'Visión por computadora', 'Nuestro servicio brinda una confiabilidad al 100%, ya que elimina cualquier elemento de subjetividad y brinda un mayor control en los procesos, reduciendo costes y afectando positivamente en la trazabilidad, la seguridad industrial, al control de logística y procesos, así como al soporte a la propia producción.', '1636048238.jpg'),
(5, 'Smart Contact', 'Ofrecemos excelente planificación y ejecución de campañas interactivas de Marketing SMS, para que llegue a su público y clientes de manera precisa e inteligente, ya que el 98% de los usuarios abre los SMS al momento de su recepción. Envíe PDF, Páginas web, Códigos QR, audio o video totalmente personalizables.', '1636045809.jpg'),
(15, 'Smart Web', 'Ofrecemos tecnologías de infraestructura crítica configuradas para problemas específicos, hardware y software inteligentes de rápida implementación y soluciones a la medida para satisfacer sus necesidades y requisitos específicos. \r\n\r\nLa gestión de proyectos de TI incluye la supervisión de los proyectos de desarrollo de software, instalaciones de hardware, actualizaciones de red, despliegues de computación en nube y virtualización, proyectos de gestión de datos y análisis de negocios, y la implementación de servicios de TI.', '1636048322.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `slider`
--

INSERT INTO `slider` (`id_slider`, `titulo`, `descripcion`, `imagen`) VALUES
(1, 'Ingenio &amp;  Talento', 'WORK IN THE FUTURE', '1605593838.jpg'),
(2, 'Innovando', 'a través de la inteligencia artificial', '1636120033.jpeg'),
(3, 'Servicio integral', 'para automatizar tus procesos', '1636119927.jpg'),
(4, 'Te acompañamos', 'en la formulación de tus proyectos', '1605561846.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_servicios`
--

CREATE TABLE `sub_servicios` (
  `id_subservicio` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 NOT NULL,
  `imagen` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `servicio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sub_servicios`
--

INSERT INTO `sub_servicios` (`id_subservicio`, `nombre`, `descripcion`, `imagen`, `servicio_id`) VALUES
(15, 'Quick Sell Premium', 'Envío masivo de mensajes a tus clientes o potenciales clientes usando nuestra base de datos de más de 100,000 contactos.', '1635954289.jpg', 1),
(16, 'Usuario Ppruebaaaa', 'prueba', '1636059843.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_blog`
--

CREATE TABLE `tipo_blog` (
  `id` int(11) NOT NULL,
  `tipo` text NOT NULL,
  `descripcion` text NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_blog`
--

INSERT INTO `tipo_blog` (`id`, `tipo`, `descripcion`, `estado`) VALUES
(15, 'Tecnología', '', 'A'),
(16, 'AAA2', 'SDA', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id_ubicacion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `propuesta_negocio` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_via` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre_via` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero` int(6) DEFAULT NULL,
  `distrito` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provincia` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departamento` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `piso_actual` int(3) DEFAULT NULL,
  `parametro_municipal` int(3) DEFAULT NULL,
  `tipo_predio` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uso_actual` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uso_parametro_municipal` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `partida_registral` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_actual` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_total` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_tachada` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lindero_frente` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lindero_derecha` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lindero_izquierda` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lindero_fondo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`id_ubicacion`, `id_usuario`, `nombre`, `descripcion`, `imagen`, `propuesta_negocio`, `tipo_via`, `nombre_via`, `numero`, `distrito`, `provincia`, `departamento`, `piso_actual`, `parametro_municipal`, `tipo_predio`, `uso_actual`, `uso_parametro_municipal`, `partida_registral`, `estado_actual`, `area_total`, `area_tachada`, `lindero_frente`, `lindero_derecha`, `lindero_izquierda`, `lindero_fondo`, `activo`) VALUES
(2, 1, 'Visión por computadora', 'Descripción de la ocupación', '1606927076.jpg', 'CANCHAS SINTETICAS PARA DEPORTE - RESIDENCIAL- COMERCIO', 'Sistemas', 'Avenida', 0, 'Chiclayo', 'Chiclayo', 'Chiclayo', 0, 8, '8', 'Urbano', '-', 'P11045797', 'Desocupado', 'Desocupado', '4,718.00 m2', '10.00 m2 aprox', 'Con Av. Paseo del Deporte en linea recta de 42.00ml', 'Con Propiedad de SBPCH  en línea quebrada de 03 tramos: 70.616m,  59.50 ml y 18.011 m.', 'Con Calle La Quebrada en línea recta de 88.627ml', 1),
(4, 1, 'Lenguaje Natural', 'Descripción App', '1606927096.jpg', '', 'Móvil', 'Francisco Cabrera', 534, 'Chiclayo', 'Chiclayo', 'Lambayeque', 0, 1, 'Urbano Valor Históri', 'Desocupado', 'Residencial Comercial Vecinal', 'P10124445', 'Desocupado', '267.10m2', '-', 'Con la Ca. Francisco Cabrera, en línea recta de 9.95 ml', 'Con el lote 4, en línea recta de 27.40 ml.', 'Con el lote 6, en línea recta de 28.20 ml', 'Con los lotes 18 y 20, en línea recta de 9.30 ml.', 1),
(6, 1, 'Chatbot', 'Descripción ERP', '1606927111.jpg', '', 'Calle', 'San José', 927, 'Chiclayo', 'Chiclayo', 'Lambayeque', 0, 4, 'Urbano', '--', 'Comercio Residencial / RDM', 'P10165934', 'Desocupado', '189.37 m2', '--', 'Con la Ca. San José, en línea recta de 4.90 ml.', 'Con el sublote 26, en línea recta de 38.67 ml.', 'Con el lote 6, en línea recta de 28.20 ml', 'Con el lote 4A, en línea recta de 4.90 ml.', 1),
(12, 1, 'Aplicaciones Móviles', '', '1606927132.jpg', '', 'Inteligencia Artificial', '', 0, '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', 1),
(13, 1, 'Soluciones tecnológicas a medida', '', '1606927149.jpg', '', '', '', 0, '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', 1),
(14, 1, 'Campañas de Marketing Digital', '', '1606927165.jpg', '', '', '', 0, '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_documento` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_documento` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cargo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `clave` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `cargo`, `login`, `clave`, `imagen`, `activo`) VALUES
(1, 'Hanny Joanne Ramos', 'DNI', '12345678', '', '', '', '', 'hjoanne', '16bc7cec4588fe89aa84a2d058d7b42c986b67532dd118f4d951ad6a5faabc79', '1605511998.png', 1),
(2, 'Omar Bancayan Chero', 'DNI', '87654321', 'Zarumilla 300', NULL, NULL, NULL, 'obancayan', 'obancayan-123', '', 1),
(3, 'Miluska Nicho Gómez', 'DNI', '44140114', 'Casa 123', '015464561', 'mngomez_sy@outlook.com', 'Superadmin', 'mngomez', 'c6979391b767cdbb19793f12ea309bf1fc294f2f24babdbeee466cdceee89b26', '1604697566.png', 1),
(9, 'Valeria Cubas', 'DNI', '11223344', '', '', '', '', 'acubas', '86fd57308d6ee305c2c539aa11dae259bd9311be36d8950ea64b53af5468a01b', '', 1),
(10, 'Estefanía Perez', 'DNI', '423423', 'casa c', '', '', '', '', '2c0eaec2f05b6c7fe7982683e3773b5d8d7a01e33d04dfcb162add8bd99bee9a', '', 1),
(11, 'Ana Torres', 'DNI', '44140114', '', '', '', '', '', 'f7d062d662826ed95869851db06bb539b402047baee53a00e0aa35bfbe98265d', '', 1),
(14, 'Roxana', 'DNI', '342342', '', '', '', '', '', 'cd372fb85148700fa88095e3492d3f9f5beb43e555e5ff26d95f5a6adc36f8e6', '', 1),
(15, 'Hallina', NULL, NULL, NULL, NULL, 'hrazuri@ingytal.com', NULL, 'hrazuri@ingytal.com', 'hrazuri', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_permiso`
--

CREATE TABLE `usuario_permiso` (
  `id_usuario_permiso` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idpermiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `usuario_permiso`
--

INSERT INTO `usuario_permiso` (`id_usuario_permiso`, `idusuario`, `idpermiso`) VALUES
(1, 9, 2),
(2, 9, 3),
(3, 9, 4),
(4, 1, 1),
(5, 1, 2),
(6, 2, 1),
(7, 2, 2),
(8, 3, 3),
(9, 9, 1),
(10, 9, 2),
(11, 9, 3),
(12, 9, 4),
(13, 1, 1),
(14, 1, 2),
(15, 1, 1),
(16, 1, 2),
(17, 11, 1),
(18, 11, 1),
(19, 11, 1),
(20, 11, 2),
(24, 10, 1),
(25, 10, 2),
(29, 14, 1),
(30, 14, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` (
  `id_videos` int(11) NOT NULL,
  `id_ubicacion` int(11) DEFAULT NULL,
  `nombre` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vision`
--

CREATE TABLE `vision` (
  `id_vision_i` int(11) NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 NOT NULL,
  `imagen` varchar(100) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vision`
--

INSERT INTO `vision` (`id_vision_i`, `descripcion`, `imagen`) VALUES
(6, 'Ser una empresa líder en soluciones de inteligencia artificial con sistemas altamente autónomos que beneficien a la humanidad a través de la generación de valor y con un alto nivel de satisfacción de sus clientes, con tecnologías innovadoras para su transformación digital.', '1636119186.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `id_blog` (`id_blog`);

--
-- Indices de la tabla `detalle_contrato`
--
ALTER TABLE `detalle_contrato`
  ADD PRIMARY KEY (`id_det_contrato`) USING BTREE,
  ADD KEY `detalle_contrato_ubicacion_fk` (`id_ubicacion`) USING BTREE;

--
-- Indices de la tabla `empresa_informacion`
--
ALTER TABLE `empresa_informacion`
  ADD PRIMARY KEY (`id_empresa`) USING BTREE;

--
-- Indices de la tabla `empresa_prueba`
--
ALTER TABLE `empresa_prueba`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galeria_fotos`
--
ALTER TABLE `galeria_fotos`
  ADD PRIMARY KEY (`id_galeria`) USING BTREE,
  ADD KEY `fotos_ubicacion_fk` (`id_ubicacion`) USING BTREE;

--
-- Indices de la tabla `interesados`
--
ALTER TABLE `interesados`
  ADD PRIMARY KEY (`id_interesado`) USING BTREE,
  ADD KEY `interesado_ubicacion_fk` (`id_ubicacion`) USING BTREE;

--
-- Indices de la tabla `landing_detalle`
--
ALTER TABLE `landing_detalle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `landing_id` (`landing_id`);

--
-- Indices de la tabla `landing_page`
--
ALTER TABLE `landing_page`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `landing_registro`
--
ALTER TABLE `landing_registro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `landing_id` (`landing_id`);

--
-- Indices de la tabla `mision`
--
ALTER TABLE `mision`
  ADD PRIMARY KEY (`id_mision_i`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`idpermiso`) USING BTREE;

--
-- Indices de la tabla `propuesta`
--
ALTER TABLE `propuesta`
  ADD PRIMARY KEY (`id_propuesta`) USING BTREE,
  ADD KEY `fk_propuesta_ubicacion` (`id_ubicacion`) USING BTREE;

--
-- Indices de la tabla `quienes_somos`
--
ALTER TABLE `quienes_somos`
  ADD PRIMARY KEY (`id_quienes_somos`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indices de la tabla `sub_servicios`
--
ALTER TABLE `sub_servicios`
  ADD PRIMARY KEY (`id_subservicio`),
  ADD KEY `servicio_id` (`servicio_id`);

--
-- Indices de la tabla `tipo_blog`
--
ALTER TABLE `tipo_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id_ubicacion`) USING BTREE,
  ADD KEY `ubicacion_usuario_fk` (`id_usuario`) USING BTREE;

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`) USING BTREE;

--
-- Indices de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD PRIMARY KEY (`id_usuario_permiso`) USING BTREE,
  ADD KEY `fk_usuario_permiso_usuario` (`idusuario`) USING BTREE,
  ADD KEY `fk_usuario_permiso_permiso` (`idpermiso`) USING BTREE;

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id_videos`) USING BTREE,
  ADD KEY `videos_ubicacion` (`id_ubicacion`) USING BTREE;

--
-- Indices de la tabla `vision`
--
ALTER TABLE `vision`
  ADD PRIMARY KEY (`id_vision_i`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detalle_contrato`
--
ALTER TABLE `detalle_contrato`
  MODIFY `id_det_contrato` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresa_informacion`
--
ALTER TABLE `empresa_informacion`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresa_prueba`
--
ALTER TABLE `empresa_prueba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `galeria_fotos`
--
ALTER TABLE `galeria_fotos`
  MODIFY `id_galeria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `interesados`
--
ALTER TABLE `interesados`
  MODIFY `id_interesado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `landing_detalle`
--
ALTER TABLE `landing_detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `landing_page`
--
ALTER TABLE `landing_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `landing_registro`
--
ALTER TABLE `landing_registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `mision`
--
ALTER TABLE `mision`
  MODIFY `id_mision_i` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `propuesta`
--
ALTER TABLE `propuesta`
  MODIFY `id_propuesta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `quienes_somos`
--
ALTER TABLE `quienes_somos`
  MODIFY `id_quienes_somos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sub_servicios`
--
ALTER TABLE `sub_servicios`
  MODIFY `id_subservicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tipo_blog`
--
ALTER TABLE `tipo_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `id_ubicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  MODIFY `id_usuario_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
  MODIFY `id_videos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vision`
--
ALTER TABLE `vision`
  MODIFY `id_vision_i` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_blog`) REFERENCES `blog` (`id_blog`);

--
-- Filtros para la tabla `detalle_contrato`
--
ALTER TABLE `detalle_contrato`
  ADD CONSTRAINT `detalle_contrato_ubicacion_fk` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id_ubicacion`);

--
-- Filtros para la tabla `galeria_fotos`
--
ALTER TABLE `galeria_fotos`
  ADD CONSTRAINT `fotos_ubicacion_fk` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id_ubicacion`);

--
-- Filtros para la tabla `interesados`
--
ALTER TABLE `interesados`
  ADD CONSTRAINT `interesado_ubicacion_fk` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id_ubicacion`);

--
-- Filtros para la tabla `landing_detalle`
--
ALTER TABLE `landing_detalle`
  ADD CONSTRAINT `landing_detalle_ibfk_1` FOREIGN KEY (`landing_id`) REFERENCES `landing_page` (`id`);

--
-- Filtros para la tabla `landing_registro`
--
ALTER TABLE `landing_registro`
  ADD CONSTRAINT `landing_registro_ibfk_1` FOREIGN KEY (`landing_id`) REFERENCES `landing_page` (`id`);

--
-- Filtros para la tabla `propuesta`
--
ALTER TABLE `propuesta`
  ADD CONSTRAINT `fk_propuesta_ubicacion` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id_ubicacion`);

--
-- Filtros para la tabla `sub_servicios`
--
ALTER TABLE `sub_servicios`
  ADD CONSTRAINT `sub_servicios_ibfk_1` FOREIGN KEY (`servicio_id`) REFERENCES `servicio` (`id_servicio`);

--
-- Filtros para la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD CONSTRAINT `ubicacion_usuario_fk` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD CONSTRAINT `fk_usuario_permiso_permiso` FOREIGN KEY (`idpermiso`) REFERENCES `permiso` (`idpermiso`),
  ADD CONSTRAINT `fk_usuario_permiso_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ubicacion` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id_ubicacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
