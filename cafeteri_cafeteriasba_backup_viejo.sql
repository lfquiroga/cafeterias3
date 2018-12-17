DROP DATABASE IF EXISTS cafeteri_cafeteriasba;
CREATE DATABASE cafeteri_cafeteriasba;
USE cafeteri_cafeteriasba;

-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-12-2018 a las 23:06:07
-- Versión del servidor: 5.6.41
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cafeteri_cafeteriasba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_categoria_de_cafeteria`
--

CREATE TABLE `r_categoria_de_cafeteria` (
  `ID_categoria_de_cafeteria` int(10) UNSIGNED NOT NULL,
  `fk_categoria` int(10) UNSIGNED NOT NULL,
  `fk_cafeteria` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `r_categoria_de_cafeteria`
--

INSERT INTO `r_categoria_de_cafeteria` (`ID_categoria_de_cafeteria`, `fk_categoria`, `fk_cafeteria`) VALUES
(1, 1, 2),
(2, 3, 1),
(3, 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_categoria_de_nota`
--

CREATE TABLE `r_categoria_de_nota` (
  `ID_categoria_de_nota` int(10) UNSIGNED NOT NULL,
  `fk_categoria` int(10) UNSIGNED NOT NULL,
  `fk_nota` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `r_categoria_de_nota`
--

INSERT INTO `r_categoria_de_nota` (`ID_categoria_de_nota`, `fk_categoria`, `fk_nota`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_comentario_de_cafeteria`
--

CREATE TABLE `r_comentario_de_cafeteria` (
  `ID_comentario_de_cafeteria` int(10) UNSIGNED NOT NULL,
  `fk_cafeteria` int(10) UNSIGNED NOT NULL,
  `fk_comentario` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_imagen_de_cafeteria`
--

CREATE TABLE `r_imagen_de_cafeteria` (
  `ID_imagen_de_cafeteria` int(10) UNSIGNED NOT NULL,
  `fk_cafeteria` int(10) UNSIGNED NOT NULL,
  `fk_imagen` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_imagen_de_nota`
--

CREATE TABLE `r_imagen_de_nota` (
  `ID_imagen_de_nota` int(10) UNSIGNED NOT NULL,
  `fk_nota` int(10) UNSIGNED NOT NULL,
  `fk_imagen` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_producto_de_cafeteria`
--

CREATE TABLE `r_producto_de_cafeteria` (
  `ID_producto_de_cafeteria` int(10) UNSIGNED NOT NULL,
  `fk_producto` int(10) UNSIGNED NOT NULL,
  `fk_cafeteria` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_producto_de_menu`
--

CREATE TABLE `r_producto_de_menu` (
  `ID_producto_de_menu` int(10) UNSIGNED ZEROFILL NOT NULL,
  `fk_producto` int(10) UNSIGNED NOT NULL,
  `fk_menu` int(10) UNSIGNED NOT NULL,
  `fk_cafeteria` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_cafeteria`
--

CREATE TABLE `t_cafeteria` (
  `ID_cafeteria` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `sitio_web` varchar(45) DEFAULT NULL,
  `sucursal` varchar(45) DEFAULT NULL,
  `horario_apertura` time DEFAULT NULL,
  `horario_cierre` time DEFAULT NULL,
  `valoracion` int(10) UNSIGNED DEFAULT NULL,
  `votos` int(11) UNSIGNED DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_cafeteria`
--

INSERT INTO `t_cafeteria` (`ID_cafeteria`, `nombre`, `direccion`, `telefono`, `email`, `sitio_web`, `sucursal`, `horario_apertura`, `horario_cierre`, `valoracion`, `votos`, `status`, `descripcion`) VALUES
(1, 'Saints Cafe', 'Ciudad de la Paz 2300', '47060016', 'allsaints@gmail.com', 'allsaintscafe.com.ar', 'Belgrano', '08:00:00', '22:00:00', 5, 1, 'activo', '  All Saints Café cree en la calidad sobre todas las cosas. Compran directamente a pequeños podructores cafeteros alrededor del mundo. El café utilizado proviene de microlotes de origen único, en lo posible orgánicos y sustentables, de la mas alta calidad puntuados en cata de 84 puntos en adelante.  El café es tostado siguiendo los más rigurosos stándares de calidad.  El resultado se disfruta en cada taza. Cuentan con una máquina de tostar café Probat Roadster, marca más antigua y lider en el segmento de torrefacción y microtorrefacción. De origen aleman, es utilizada por los principales speciality coffee shops del mundo.'),
(2, 'Café Tortoni', 'Av. de Mayo 825', '43424328', 'cafetortoni@gmail.com', 'www.cafetortoni.com.ar', 'Microcentro', '08:15:00', '01:00:00', 4, 1, 'activo', 'El Tortoni es el paradigma del café porteño, pero poco se sabe de sus orígenes.Apenas un inmigrante francés de apellido Touan decidió inaugurarlo a fines de 1858, el nombre lo tomó prestado del de un establecimiento del Boulevard des Italiens, en el que se reunía la elite de la cultura parisina del siglo XIX.   A fines del siglo, el bar fue adquirido por otro francés: don Celestino Curutchet, a quien el poeta Allende Iragorri describiera como el típico viejito sabio francés, menudo de cuerpo y fuerte de espíritu,\r\n\r\n\r\nestilaba la clásica perilla alargada, ojos vivísimos y usaba un casquete árabe de seda negra, casi un personaje de historieta que agregaba otro acento peculiar a la fisonomía el lugar.   El local era frecuentado por un grupo de pintores, escritores, periodistas y músicos que formaban la Agrupación de Gente de Artes y Letras, liderada por Benito Quinquela Martin.\r\n\r\n\r\nEn mayo de 1926 forman La Peña, y le piden a Don Celestino Curutchet, que les deje usar la bodega del subsuelo. El dueño acepta encantado, porque según sus palabras los artistas gastan poco, pero le dan lustre y fama al café.   En este café parece que el tiempo se hubiera detenido como en un daguerrotipo, cuando en él la gente juega al billar, a las cartas, o simplemente toman un café entre amigos, el local es cada vez más una parte indispensable de la historia porteña. '),
(3, 'Coffee Town', 'Bolivar 976', '43007333', 'coffeetown@gmail.com', 'www.coffeetowncompany.com', 'San Telmo', '08:30:00', '20:30:00', 3, 1, 'activo', 'Después de años de recorrer cafetales, de trabajar directamente con los caficultores en América Latina y África y de perfeccionarnos en los mejores centros internacionales decidimos crear Coffee Town en el corazón de Buenos Aires y con filosofía propia; ofrecer los mejores cafés del mundo a un precio justo.  Somos un grupo de profesionales (Baristas, maestros tostadores y los únicos catadores profesionales del país) que trabajamos para garantizar la máxima calidad en todos los momentos del café (crudo, tostado y en la bebida).  Nuestros catadores analizan los granos de café antes y después de ser tostados para asegurar que los estándares de sus cafés y sus puntuaciones de cata sean siempre Grand Cru o de Especialidad y Premium. Los maestros tostadores estudian cada café y realizan las curvas de tueste indicadas para optimizar su aroma, sabor y cuerpo. Los baristas aplican rigurosamente las técnicas correctas de preparación según los protocolos internacionales y utilizan el método más adecuado para cada tipo de café.  La responsabilidad que cada uno de nosotros pone en su tarea, hace de Coffee Town la primera cafetería de cafés de Especialidad en Argentina y epicentro del café saludable en esta parte del mundo.  Desde el Mercado de San Telmo, inmersos en un ambiente de alimentos gourmet, quienes hacemos Coffee Town le proponemos a través de nuestros cafés iniciar juntos un viaje por la ruta de los sentidos'),
(4, 'gggcc', 'Av. Las heras 2779', '1169507390', 'hernanmalonso@gmail.com', 'www.herni.com.ar', 'Palermo', '09:00:00', '20:00:00', 0, 0, 'inactivo', ''),
(5, 'zzz', 'Larrea 1740', '1169507390', 'hernanmalonso@gmail.com', 'www.herni.com.ar', 'Recoleta', '08:00:00', '19:00:00', 0, 0, 'inactivo', ''),
(6, 'Prueba Edicion', 'Peron 1450', '1169507390', 'hernanmalonso@gmail.com', 'www.herni.com.ar', 'San Telmo', '09:00:00', '22:00:00', 0, 0, 'inactivo', ''),
(7, 'Prueba Uno', 'Av Prueba 203', '11692837472', 'prueba@cafeprueba.com.ar', 'prueba.com.ar', 'Pruebauno', '09:00:00', '20:00:00', 0, 0, 'activo', ''),
(8, 'Prueba Dos Alpha', 'Av. Prueba 290', '1123435232', 'prueba@cafeprueba.com.ar', 'prueba.com.ar', 'PruebaDos', '08:00:00', '19:00:00', 0, 0, 'activo', ''),
(10, 'La Biela', 'Av. Pres. Manuel Quintana 596', '48040449', 'info@labiela.com', 'www.labiela.com', 'Recoleta', '07:00:00', '02:00:00', 4, NULL, 'activo', ''),
(11, 'La Giralda', 'Av. Corrientes 1453', '43713846', '', 'la-giralda-cafeteria.negocio.site', 'Balvanera', '08:00:00', '23:00:00', 3, NULL, 'activo', ''),
(12, 'El Gato Negro', 'Av. Corrientes 1669', '43741730', 'info@donvictoriano.com.ar', 'www.donvictoriano.com.ar', 'Balvanera', '09:00:00', '00:00:00', 4, NULL, 'activo', ''),
(13, 'La Caravelle', 'Lavalle 726', '43221673', '', NULL, 'Microcentro', '09:00:00', '19:00:00', 4, NULL, 'activo', ''),
(14, 'Cocu Boulangerie', 'Malabia 1510', '48314675', 'info@cocu.com.ar', 'cocu.com.ar', 'Palermo', '09:00:00', '20:00:00', 4, NULL, 'activo', ''),
(15, 'Lattente', 'Thames 1891', '48331676', 'info@cafelattente.com', 'www.cafelattente.com', 'Palermo', '09:00:00', '20:00:00', 4, NULL, 'activo', ''),
(16, 'London City', 'Av. de Mayo 591', '43429057', '', 'www.londoncity.com.ar', 'Microcentro', '06:00:00', '00:00:00', 4, NULL, 'activo', ''),
(17, 'Las Violetas', 'Av. Rivadavia 3899', '49587387', 'contacto@lasvioletas.com', 'www.lasvioletas.com', 'Balvanera', '06:00:00', '01:00:00', 4, NULL, 'activo', ''),
(18, 'Adorado San Telmo', 'Bolivar 347', '32214460', 'hola@adoradobar.com', 'www.adoradobar.com', 'Monserrat', '08:00:00', '20:00:00', 4, NULL, 'activo', ''),
(19, 'Bar Café Metro', 'Cerrito 528', '43824692', '', 'bar-cafe-metro.negocio.site', 'San NicolÃ¡s', '07:00:00', '00:00:00', 4, NULL, 'activo', ''),
(20, 'Tienda de Café', 'Av. de Mayo 799', '43425424', 'hola@tiendadecafe.com.ar', 'www.tiendadecafe.com.ar', 'Monserrat', '07:00:00', '21:00:00', 4, NULL, 'activo', ''),
(21, 'Havanna', 'Av. de Mayo 615', '43315411', '', 'www.havanna.com.ar', 'Monserrat', '08:00:00', '21:00:00', 4, NULL, 'activo', ''),
(22, 'Ramón', 'Adolfo Alsina 702', '43424513', '', NULL, 'Monserrat', '07:00:00', '18:00:00', 3, NULL, 'activo', ''),
(23, 'Bocanada', 'Piedras 320', '43423037', 'bocanada.restobar@gmail.com', NULL, 'Monserrat', '08:00:00', '21:00:00', 4, NULL, 'activo', ''),
(24, 'Café Martínez', 'Av. de Mayo 699', '43315582', 'info@cafemartinez.com.ar', 'www.cafemartinez.com', 'Microcentro', '07:00:00', '20:00:00', 4, NULL, 'activo', ''),
(25, 'Establecimiento General de Café', 'Lavalle 1701', '43716742', 'info@estcafe.com.ar', 'establecimientocafe.com.ar', 'Microcentro', '08:00:00', '19:00:00', 4, NULL, 'activo', ''),
(26, 'El Banderí­n', 'Guardia Vieja 3601', '48627757', '', 'elbanderin.com.ar', 'Almagro', '08:30:00', '23:00:00', 4, NULL, 'activo', ''),
(27, 'Alimentari', 'Moreno 945', '43310012', '', 'www.alimentari.com', 'Monserrat', '07:30:00', '16:00:00', 3, NULL, 'activo', ''),
(28, 'La Puerto Rico', 'Adolfo Alsina 416', '43312215', 'contacto@lapuertoricocafe.com.ar', 'www.lapuertoricocafe.com.ar', 'Microcentro', '07:00:00', '20:00:00', 4, NULL, 'activo', ''),
(29, 'Café Zavaléa', 'BolÃ­var 1422', '41490964', 'cafezavalia@gmail.com', NULL, 'San Telmo', '14:00:00', '19:30:00', 4, NULL, 'activo', ''),
(30, 'Lobo Café Puerto Madero', 'Pierina Dealessi 1330', '45178195', '', 'www.lobo.cafe', 'Puerto Madero', '08:00:00', '00:00:00', 3, NULL, 'activo', ''),
(31, 'ConfiterÃ­a La UniÃ³n', 'Av. Belgrano 1101', '43832987', '', NULL, 'Monserrat', '07:00:00', '20:00:00', 3, NULL, 'activo', ''),
(32, 'Bar BritÃ¡nico', 'Av. Brasil 399', '43612107', '', NULL, 'San Telmo', '06:00:00', '03:00:00', 4, NULL, 'activo', ''),
(33, 'Caffé del Doge', 'ParanÃ¡ 905', '48116927', 'info@caffedeldoge.com.ar', 'caffedeldoge.com.ar', 'San NicolÃ¡s', '07:00:00', '21:00:00', 3, NULL, 'activo', ''),
(34, 'Le Blé', 'Marcelo Torcuato de Alvear 2199', '48228979', 'pasion@leble.com.ar', 'www.leble.com.ar', 'Recoleta', '08:00:00', '20:00:00', 4, NULL, 'activo', ''),
(35, 'Palacete Express', 'Uruguay 467', '43712312', '', NULL, 'San NicolÃ¡s', '08:30:00', '19:30:00', 4, NULL, 'activo', ''),
(36, 'La Paz', 'Av. Corrientes 1593', '43733647', '', NULL, 'San NicolÃ¡s', '08:00:00', '01:00:00', 3, NULL, 'activo', ''),
(37, 'Gaspar Café', 'Esmeralda 624', '43260279', 'contacto@gasparcafe.com.ar', 'www.gasparcafe.com.ar', 'Microcentro', '08:00:00', '19:00:00', 4, NULL, 'activo', ''),
(38, 'Ola Rolls&Café', 'Suipacha 743', '50261943', '', NULL, 'Microcentro', '07:30:00', '19:00:00', 4, NULL, 'activo', ''),
(39, 'PlÃ¡cido Café Bar', 'Juncal 2107', '48245778', '', 'placido-cafe-bar.business.site', 'Recoleta', '08:30:00', '20:00:00', 4, NULL, 'activo', ''),
(40, 'Smeterling', 'Uruguay 1308', '48139700', 'info@smeterling.com', 'www.smeterling.com', 'Recoleta', '10:00:00', '20:00:00', 4, NULL, 'activo', ''),
(41, 'Petit ColÃ³n', 'Libertad 505', '43827306', 'info@petitcolon.com.ar', 'petitcolon.com.ar', 'San NicolÃ¡s', '07:00:00', '23:30:00', 4, NULL, 'activo', ''),
(42, 'Arisco Bar', 'Av. Callao 1391', '48131512', '', NULL, 'Recoleta', '08:30:00', '22:00:00', 4, NULL, 'activo', ''),
(43, 'Tuo Tempo', 'Av. PueyrredÃ³n 1205', '49611046', '', NULL, 'Recoleta', '07:30:00', '21:00:00', 4, NULL, 'activo', ''),
(44, 'Café Dos Escudos', 'Juncal 901', '43270135', 'info@dosescudos.net', 'www.dosescudos.net', 'San NicolÃ¡s', '07:00:00', '20:30:00', 4, NULL, 'activo', ''),
(45, 'Tango CafeterÃ­a', 'Av. Pres. Roque SÃ¡enz PeÃ±a 864', '43288088', '', NULL, 'Microcentro', '07:00:00', '19:00:00', 4, NULL, 'activo', ''),
(46, 'Tostado Café Club', 'Av. CÃ³rdoba 1501', '08005552233', 'hola@tostadocafeclub.com', 'www.tostadocafeclub.com', 'San NicolÃ¡s', '08:00:00', '20:00:00', 4, NULL, 'activo', ''),
(47, 'Import Coffee Company', 'Libertad 1150', '48117764', '', NULL, 'Retiro', '09:00:00', '21:00:00', 4, NULL, 'activo', ''),
(48, 'Datri Café', 'Paraguay 901', '43288383', '', NULL, NULL, '07:55:00', '19:30:00', 4, NULL, 'activo', ''),
(49, 'Bar La Academia', 'Callao 368', '43722765', 'bar_laacademia@hotmail.com', NULL, 'San NicolÃ¡s', '00:00:00', '23:59:00', 3, NULL, 'activo', ''),
(50, 'Café Valerio', 'Lavalle 799', '43939456', '', NULL, 'San NicolÃ¡s', '06:00:00', '02:00:00', 4, NULL, 'activo', ''),
(51, 'Mar Azul', 'TucumÃ¡n 1700', '58114347', 'cafemarazul@yahoo.com.ar', 'cafemarazul.wixsite.com/cafemarazul', 'San NicolÃ¡s', '08:00:00', '20:00:00', 4, NULL, 'activo', ''),
(52, 'BogotÃ¡', 'Montevideo 1300', '48119163', '', NULL, NULL, '07:00:00', '23:00:00', 4, NULL, 'activo', ''),
(53, 'Le Moulin de la Fleur', 'Talcahuano 888', '48117509', '', NULL, 'San NicolÃ¡s', '08:00:00', '21:00:00', 4, NULL, 'activo', ''),
(54, 'Café Parisien', 'Lavalle 999', '4325-2126', '', NULL, 'San NicolÃ¡s', '08:00:00', '01:00:00', 3, NULL, 'activo', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_categoria_cafeteria`
--

CREATE TABLE `t_categoria_cafeteria` (
  `ID_categoria` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_categoria_cafeteria`
--

INSERT INTO `t_categoria_cafeteria` (`ID_categoria`, `descripcion`) VALUES
(1, 'Clasica'),
(2, 'Gourmet'),
(3, 'Especialidad'),
(4, 'Experiencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_categoria_nota`
--

CREATE TABLE `t_categoria_nota` (
  `ID_categoria_nota` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_categoria_nota`
--

INSERT INTO `t_categoria_nota` (`ID_categoria_nota`, `descripcion`) VALUES
(1, 'Tendencia'),
(2, 'Recomendacion'),
(3, 'Descubrir');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_categoria_producto`
--

CREATE TABLE `t_categoria_producto` (
  `ID_categoria_producto` int(10) UNSIGNED NOT NULL,
  `descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_categoria_producto`
--

INSERT INTO `t_categoria_producto` (`ID_categoria_producto`, `descripcion`) VALUES
(1, 'Accesorios'),
(2, 'Comida'),
(3, 'Bebida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_comentarios`
--

CREATE TABLE `t_comentarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `comentario` text,
  `fecha_comentario` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) NOT NULL,
  `fk_usuario` int(10) UNSIGNED NOT NULL,
  `id_cafeteria` int(11) NOT NULL,
  `puntaje` tinyint(1) NOT NULL DEFAULT '0',
  `estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_comentarios`
--

INSERT INTO `t_comentarios` (`id`, `comentario`, `fecha_comentario`, `status`, `fk_usuario`, `id_cafeteria`, `puntaje`, `estado`) VALUES
(1, 'La responsabilidad que cada uno de nosotros pone en su tarea, hace de Coffee Town la primera cafetería de cafés de Especialidad en Argentina y epicentro del café saludable en esta parte del mundo.\r\n\r\nDesde el Mercado de San Telmo, inmersos en un ambiente de alimentos gourmet, quienes hacemos Coffee Town le proponemos a través de nuestros cafés iniciar juntos un viaje por la ruta de los sentidos ', '2018-11-25 03:00:00', 'activo', 30, 3, 3, 1),
(2, 'Desde el Mercado de San Telmo, inmersos en un ambiente de alimentos gourmet, quienes hacemos Coffee Town le proponemos a través de nuestros cafés iniciar juntos un viaje por la ruta de los sentidos\n\nDesde el Mercado de San Telmo, inmersos en un ambiente de alimentos gourmet, quienes hacemos Coffee Town le proponemos a través de nuestros cafés iniciar juntos un viaje por la ruta de los sentidos', '2018-11-24 03:00:00', 'activo', 30, 3, 5, 1),
(3, 'HOLA PROBANDO COMENTARIOS EN ESTA CAFETERIA HERMOSA', '2018-11-25 23:37:35', 'activo', 30, 3, 1, 1),
(4, 'gdfgdfgdfg', '2018-11-26 03:10:16', 'inactivo', 30, 3, 3, 0),
(5, '4144444444', '2018-11-29 03:20:26', 'inactivo', 30, 3, 1, 0),
(6, '4144444444', '2018-11-29 03:20:32', 'inactivo', 30, 3, 1, 0),
(7, 'ghhhhhhh5555555555555555555', '2018-11-29 03:23:21', 'inactivo', 30, 3, 1, 0),
(8, 'ghhhhhhh5555555555555555555', '2018-11-29 03:23:23', 'inactivo', 30, 3, 1, 0),
(9, '1111111111111111111111111111111111111111111111', '2018-11-29 03:24:15', 'inactivo', 30, 3, 1, 0),
(10, '2222222222222222222222222222222222222222222222', '2018-11-29 03:25:13', 'activo', 30, 3, 1, 1),
(11, 'uuuuuuuuuuuuu', '2018-11-29 03:25:32', 'activo', 29, 3, 1, 1),
(12, '121212 12 12 \n12 12 \n12 1\n2 ', '2018-11-29 03:48:39', 'activo', 30, 3, 1, 1),
(13, '6546546546546546546546546546546', '2018-11-29 03:57:40', 'activo', 30, 3, 4, 1),
(14, 'probando cagfeteria numero asasd', '2018-11-29 13:47:54', 'activo', 30, 1, 1, 1),
(15, 'DEJANDO COMENTARIO DE PRUEBA !!', '2018-11-29 21:05:01', 'activo', 30, 1, 1, 1),
(16, 'TEST CAFETERIA', '2018-11-30 16:38:21', 'inactivo', 31, 1, 1, 0),
(17, 'TEST CAFETERIATEST CAFETERIATEST CAFETERIATEST CAFETERIATEST CAFETERIA\nhóla \ne´zé¿?ñ', '2018-12-01 14:21:09', 'inactivo', 31, 1, 1, 0),
(18, '<script>alert(\'hola\')</script>', '2018-12-01 14:21:33', 'inactivo', 31, 1, 1, 0),
(19, NULL, '2018-12-01 14:37:48', 'inactivo', 31, 1, 1, 0),
(20, NULL, '2018-12-01 14:48:30', 'inactivo', 31, 1, 1, 0),
(21, NULL, '2018-12-01 14:48:51', 'inactivo', 31, 1, 1, 0),
(22, NULL, '2018-12-01 14:51:29', 'inactivo', 31, 1, 1, 0),
(23, 'ytrtyrty4564564564', '2018-12-01 16:10:10', 'inactivo', 31, 1, 3, 0),
(24, '<script>alert(\'hola\')</script>', '2018-12-01 16:10:27', 'inactivo', 31, 1, 3, 0),
(25, 'vbvbbnbvbv', '2018-12-01 18:42:35', 'inactivo', 31, 1, 1, 0),
(26, 'fghgfhgfhfghfghfgh', '2018-12-01 18:46:01', 'inactivo', 31, 1, 4, 0),
(27, 'retrtertertert', '2018-12-01 19:07:10', 'inactivo', 31, 1, 1, 0),
(28, 'ghjghjghjghjg', '2018-12-01 19:11:05', 'inactivo', 31, 1, 1, 0),
(29, 'ghjghjghjghj', '2018-12-01 19:11:08', 'inactivo', 31, 1, 4, 0),
(30, 'ghjghjghj66666', '2018-12-01 19:11:19', 'inactivo', 31, 1, 4, 0),
(31, 'fhghfghfghfg', '2018-12-01 19:20:20', 'inactivo', 31, 1, 1, 0),
(32, 'ºº11111111111111111111111111111111112222222222222222222222222222222222222', '2018-12-01 19:32:58', 'inactivo', 31, 1, 5, 0),
(33, '22222222222222', '2018-12-01 19:34:29', 'inactivo', 31, 1, 5, 0),
(34, '66666656565', '2018-12-01 19:38:04', 'inactivo', 31, 1, 1, 0),
(35, 'wwwwwwwwwwwwwwwwwwwwwwwwww', '2018-12-01 19:38:31', 'inactivo', 31, 1, 1, 0),
(36, '1111111111111111111111111111111', '2018-12-01 20:08:24', 'inactivo', 31, 1, 1, 0),
(37, '1111111111111111111111111111', '2018-12-01 22:57:28', 'activo', 31, 2, 1, 1),
(38, 'hoa dejando comentario', '2018-12-09 18:38:04', 'activo', 31, 2, 1, 1),
(39, 'Reseña de prueba 01', '2018-12-11 19:05:21', 'activo', 1, 2, 5, 1),
(40, 'La biela reseña 01', '2018-12-11 19:11:23', 'activo', 61, 10, 4, 1),
(41, 'La biela reseña 2', '2018-12-11 19:11:42', 'activo', 61, 10, 1, 1),
(42, 'La biela reseña 3', '2018-12-11 19:11:58', 'activo', 61, 10, 1, 1),
(43, 'La biela reseña 4', '2018-12-11 19:12:23', 'activo', 61, 10, 1, 1),
(44, 'La biela reseña 4', '2018-12-11 19:12:23', 'activo', 61, 10, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_imagen`
--

CREATE TABLE `t_imagen` (
  `ID_imagen` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `ubicacion_fisica` varchar(45) DEFAULT NULL,
  `nombre_sistema` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_menu`
--

CREATE TABLE `t_menu` (
  `ID_menu` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `precio` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_nota`
--

CREATE TABLE `t_nota` (
  `ID_nota` int(10) UNSIGNED NOT NULL,
  `titulo_nota` varchar(45) NOT NULL,
  `nota` text NOT NULL,
  `creacion_nota` date DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `fk_cafeteria` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_nota`
--

INSERT INTO `t_nota` (`ID_nota`, `titulo_nota`, `nota`, `creacion_nota`, `status`, `fk_cafeteria`) VALUES
(1, 'El boom de los cafÃ© gourmet de Buenos Aires', 'Dicen que, alguna vez, Buenos Aires tuvo un cafÃ© en cada esquina y que en los barrios la noche peregrinaba de un local a otro. Era una ciudad con tiempo para arreglar el mundo desde una mesa de cafÃ©, con el bolsillo suelto y las esperanzas apretadas. En las mesas, un pocillo de cafÃ© se alargaba interminablemente, tanto como la nostalgia impregnada por el humo de un cigarrillo.', '2018-10-02', 'activo', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_privacidad_usuario`
--

CREATE TABLE `t_privacidad_usuario` (
  `ID_privacidad` int(10) UNSIGNED NOT NULL,
  `activo_inactivo` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_privacidad_usuario`
--

INSERT INTO `t_privacidad_usuario` (`ID_privacidad`, `activo_inactivo`) VALUES
(1, 1),
(2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_producto`
--

CREATE TABLE `t_producto` (
  `ID_producto` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `fk_categoria` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_producto`
--

INSERT INTO `t_producto` (`ID_producto`, `nombre`, `precio`, `descripcion`, `status`, `fk_categoria`) VALUES
(1, 'Filtro de Acero', '150', 'Filtro de acero para una cafetera clasica', 'activo', 1),
(2, 'Cupcake de Arandanos', '50', 'Cupcake relleno de arandanos', 'activo', 2),
(3, 'Cafe Expresso', '70', 'Expresso', 'activo', 3),
(4, 'Jugo de Naranja', '45', 'Jugo exprimido de naranja', 'activo', 3),
(5, 'Juego de tazas', '205', 'Juego de 6 tazas de cafe', 'activo', 1),
(6, 'Granos de cafe Colombianos', '89', 'Granos de cafe importados de Colombia', 'activo', 1),
(7, 'NickName', '50', 'Sarazita', 'activo', 1),
(8, 'Producto PruebaEditada', '105', 'Comidita de prueba editada y mas cara', 'inactivo', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_rol_usuario`
--

CREATE TABLE `t_rol_usuario` (
  `ID_rol_usuario` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_rol_usuario`
--

INSERT INTO `t_rol_usuario` (`ID_rol_usuario`, `descripcion`) VALUES
(1, 'Admin'),
(2, 'Usuario'),
(3, 'Cafeteria'),
(4, 'Moderador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_usuario`
--

CREATE TABLE `t_usuario` (
  `ID_usuario` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `pass` varchar(60) NOT NULL,
  `fecha_registro` varchar(45) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `ubicacion_foto` varchar(45) DEFAULT NULL,
  `fk_rol_usuario` int(10) UNSIGNED NOT NULL,
  `fk_privacidad` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_usuario`
--

INSERT INTO `t_usuario` (`ID_usuario`, `nombre`, `apellido`, `email`, `pass`, `fecha_registro`, `status`, `ubicacion_foto`, `fk_rol_usuario`, `fk_privacidad`) VALUES
(1, 'Hernan', 'Alonso', 'halonso@cafeteriasba.com.ar', '$2y$10$Fv337AhPZTXY5FHyGFYypepMTwzjf0H0FQ7f/uEJCtOt9vbcsoD6.', '2018-09-23', 'activo', NULL, 1, 1),
(2, 'Pepe Editado', 'Moderador', 'Pepito@cafeteriasba.com.ar', '$2y$10$ajU6kdVqIB6eitw9KFgAy.IEMw3jUQGcd/T89iMRwsda0lc4uwUz6', '2018-10-10', 'activo', NULL, 4, 1),
(3, 'lalo-cafeteria', 'quiroga', 'lalo@gmail.com', '$2y$10$ncMlXRw5wtpt1Mxb12YHO.zC4fvkCYzfmg0ipkLjpBjO88TW4LsP2', '18-11-01', 'activo', NULL, 2, 1),
(27, 'lalo-cafeteria', NULL, 'lalo123123123123@gmail.com', '$2y$10$/NhX0WmT9MRVQ9/0ZeN.o.kR61s4T4sRMU9gB/8EgdczG3TPSULhO', '18-11-01', 'activo', NULL, 2, 1),
(28, 'lalo-cafeteria', NULL, 'lalo123123123123123123@gmail.com', '$2y$10$IoEHDLpzknr3V3srLumfyOWkFk6VWs0adCJ/8mW24VKu4sy8Um7bO', '18-11-01', 'activo', NULL, 2, 1),
(29, 'laureano', NULL, 'admin@gmail.com', '$2y$10$tinGvzbs7ZQrYNqOyKGmY.RYGzUmzRtAE5gxQ4cXiio6BwciJsHZW', '18-11-11', 'activo', NULL, 1, 1),
(30, 'lalocafes', NULL, 'lalo1@gmail.com', '$2y$10$jKnOrvOkdn9hTwmNc69OT.dBj7ov/Zz1WqJRk4yq2qLO3m83jWoda', '18-11-19', 'activo', NULL, 2, 1),
(31, 'laureano', NULL, 'lalo.q2121@gmail.com', '$2y$10$sC.A7ON3r7fQ7Uei9o6NiO1YfpCYpzLz8UsdipXrwzPjcBcx/LuXu', '18-11-30', 'activo', NULL, 2, 1),
(32, 'guidoasdd', NULL, 'gmenichetti@sysone.com', '$2y$10$53DJ1f05Jk/KhBOo1FNyNe2Ho4ocCmcTnokPjj3tOqPxyRz7Ei3bu', '18-12-03', 'activo', NULL, 2, 1),
(33, '1000 1000', NULL, '1000@gmail.com', '$2y$10$MQXaBhcYrxTBOsnx9lYez.7EXPafxxulUq8zXm1ZXDK2HEIk1hY8y', '18-12-03', 'activo', NULL, 2, 1),
(34, '1002 1002', NULL, '1002@gmail.com', '$2y$10$tRTQrFmrqQon0zmgdPqBJ.XGgJYKOfoLceqVorWJZnjAiZ513SwNi', '18-12-03', 'activo', NULL, 2, 1),
(35, '1001 1001', NULL, '1001@gmail.com', '$2y$10$F09pK0TDyvnTOzXj6uQCxOHLfn3IsTan7S8ajt8NxVRIwJ0Xddpjm', '18-12-03', 'activo', NULL, 2, 1),
(36, '1004 1004', NULL, '1004@gmail.com', '$2y$10$FgkT//Viu0SO/d3KezpSiOrkRDSp3FCFc36K27qTAG5mGD6XxO3a6', '18-12-03', 'activo', NULL, 2, 1),
(37, '1003 1003', NULL, '1003@gmail.com', '$2y$10$aZ1woxLN6TSsS0dktqKFWuk5dH0i63cColf0HI2FOgwT2VDEwUjSm', '18-12-03', 'activo', NULL, 2, 1),
(38, '1005 1005', NULL, '1005@gmail.com', '$2y$10$DgtJQLiGjkdzvamuCPsNcemxC3BhxnQVhW8wuKMXaiZkeEIaIVQxe', '18-12-03', 'activo', NULL, 2, 1),
(39, '1006 1006', NULL, '1006@gmail.com', '$2y$10$lpE0VcgPKG6mxRA4Lt2Khug/bCz8DhGjKKIsW6FlQKAxTlkCUkoQq', '18-12-03', 'activo', NULL, 2, 1),
(40, '1007 1007', NULL, '1007@gmail.com', '$2y$10$NvWLZUnn2Bn1QQ1fWZyoheSXniYbUVwQsV4TDRhKgEGoiFG0GFZ2u', '18-12-03', 'activo', NULL, 2, 1),
(41, '1008 1008', NULL, '1008@gmail.com', '$2y$10$CNEJsHTA.rhEERFGBefYT.Ti5URG.w//RmU8n74Sal7itZmaLO7ze', '18-12-03', 'activo', NULL, 2, 1),
(42, '1009 1009', NULL, '1009@gmail.com', '$2y$10$SApPW/XEul9I0r4QdInW3u0PViyUErRH9Rs3uK5C21jqxl.skf9WO', '18-12-03', 'activo', NULL, 2, 1),
(43, '1010 1010', NULL, '1010@gmail.com', '$2y$10$GyJOrXhwdVbyfgId3t9IWOfx8O0ZY4nAYn49nSsZAUCVbpPAU0TtS', '18-12-03', 'activo', NULL, 2, 1),
(44, '1011 1011', NULL, '1011@gmail.com', '$2y$10$S82nxl7aql7c9C9wd2.rIeXsG9Y8paV.ZIADkizAXkBHIUZrKdnUq', '18-12-03', 'activo', NULL, 2, 1),
(45, '1012 1012', NULL, '1012@gmail.com', '$2y$10$.DntjOLVtsprYR3DE0SES.NudswL.jjDRwcKLptWP61AIuSju5y96', '18-12-03', 'activo', NULL, 2, 1),
(46, '1013 1013', NULL, '1013@gmail.com', '$2y$10$hO34Zzr8ocH/L1xlkA3ZHOZ9Kw6lRMFdmmhQutVq6rOwif3m0lLsK', '18-12-03', 'activo', NULL, 2, 1),
(47, '1014 1014', NULL, '1014@gmail.com', '$2y$10$RGkfIcpyMFl4lRuvoAHa4OWY1FDGtTMwqtz/67lxAvFZP8rg6nKg.', '18-12-03', 'activo', NULL, 2, 1),
(48, '1015 1015', NULL, '1015@gmail.com', '$2y$10$Jj1VrivJXNT3jme3IUVBLOYCuNeTweLd9NZ7R/Fq1tGE.0hM7gxSS', '18-12-03', 'activo', NULL, 2, 1),
(49, '1016 1016', NULL, '1016@gmail.com', '$2y$10$faBOU9cqiMFj3UBSPtYz5.9TER6p3to8uCAyjMRn1SwP.aZ8NqgNO', '18-12-03', 'activo', NULL, 2, 1),
(50, '1017 1017', NULL, '1017@gmail.com', '$2y$10$zGTfuS8qnREfwuqoifcLTOmDf6AMi1QijCIBP6tk59cngvgM6D7Cu', '18-12-03', 'activo', NULL, 2, 1),
(51, '1018 1018', NULL, '1018@gmail.com', '$2y$10$1esbmlxUS8pJqt1HLl5BdunhWhCp3AgIqaehmvYtz4pDpufIpDiUe', '18-12-03', 'activo', NULL, 2, 1),
(52, '1019 1019', NULL, '1019@gmail.com', '$2y$10$EgP.20EAtBbqO6szL9YT9euXD8jF0JxmgJeCkbK2myZ4sHQVKJ9iW', '18-12-03', 'activo', NULL, 2, 1),
(53, '1020 1020', NULL, '1020@gmail.com', '$2y$10$3Ho04d2qV5heFjifuORkTuszwWfhPl/DrZibTlfHKm7k0bBoSq5y.', '18-12-03', 'activo', NULL, 2, 1),
(54, '1021 1021', NULL, '1021@gmail.com', '$2y$10$bKyUy5JqON8zwo4WBsYf9ew8Vwy1sKopB2kuWPPq0Zsobf9HMBTTy', '18-12-03', 'activo', NULL, 2, 1),
(55, '1025 1025', NULL, '1025@gmail.com', '$2y$10$2UkyzKXJ94kGLLgp1Q5VAOMOL.y48W/y7CRN28kv07ReEFTlodN46', '18-12-03', 'activo', NULL, 2, 1),
(56, '1027 1027', NULL, '1027@gmail.com', '$2y$10$06yPzHHyuDfY6DmWqfuSFe5qiEf3/GjjI8UfbONvS7GKGFiIRZ4o6', '18-12-03', 'activo', NULL, 2, 1),
(57, '1022 1022', NULL, '1022@gmail.com', '$2y$10$8C9rsQ8sXIEmm.Z/haqG.uTmbFp9eEZY2vDr671HMOcZ6qSy3TkK6', '18-12-03', 'activo', NULL, 2, 1),
(58, '1023 1023', NULL, '1023@gmail.com', '$2y$10$PRvG5zcL3RibDQakZ6TANuKAosL0suYn.GLRUrz6VjXwxegVhZx/e', '18-12-03', 'activo', NULL, 2, 1),
(59, '1035 1035', NULL, '1035@gmail.com', '$2y$10$CFr6DR9RxlArruvKknBTeeUM4t2OKuREt.oRb.9hFinIGzmDDHmUK', '18-12-03', 'activo', NULL, 2, 1),
(60, 'carlos', 'lloveras', 'carloslloveras@gmail.com', '$2y$10$0Xje0xaYs.u4Cl42wKdAm.Izc49k6SFEHjTLsmY/0m5NrDlBnp8NG', '18-12-11', 'activo', NULL, 1, 1),
(61, 'usertest', 'usertest', 'usertest@cafeteriasba.com', '$2y$10$3SZfOiz6ZqhIPJ54A57v..3rg6vL3EAHd1GyFy7lhOcHC1nOZnFa.', '18-12-11', 'activo', NULL, 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `r_categoria_de_cafeteria`
--
ALTER TABLE `r_categoria_de_cafeteria`
  ADD PRIMARY KEY (`ID_categoria_de_cafeteria`),
  ADD UNIQUE KEY `ID_categoria_de_cafeteria_UNIQUE` (`ID_categoria_de_cafeteria`),
  ADD KEY `fk_categoria_cafeteria_has_cafeteria_cafeteria1_idx` (`fk_cafeteria`),
  ADD KEY `fk_categoria_cafeteria_has_cafeteria_categoria_cafeteria1_idx` (`fk_categoria`);

--
-- Indices de la tabla `r_categoria_de_nota`
--
ALTER TABLE `r_categoria_de_nota`
  ADD PRIMARY KEY (`ID_categoria_de_nota`),
  ADD UNIQUE KEY `ID_categoria_de_nota_UNIQUE` (`ID_categoria_de_nota`),
  ADD KEY `fk_categoria_nota_has_nota_nota1_idx` (`fk_nota`),
  ADD KEY `fk_categoria_nota_has_nota_categoria_nota1_idx` (`fk_categoria`);

--
-- Indices de la tabla `r_comentario_de_cafeteria`
--
ALTER TABLE `r_comentario_de_cafeteria`
  ADD PRIMARY KEY (`ID_comentario_de_cafeteria`),
  ADD UNIQUE KEY `ID_comentario_de_cafeteria_UNIQUE` (`ID_comentario_de_cafeteria`),
  ADD KEY `fk_cafeteria_has_comentarios_comentarios1_idx` (`fk_comentario`),
  ADD KEY `fk_cafeteria_has_comentarios_cafeteria1_idx` (`fk_cafeteria`);

--
-- Indices de la tabla `r_imagen_de_cafeteria`
--
ALTER TABLE `r_imagen_de_cafeteria`
  ADD PRIMARY KEY (`ID_imagen_de_cafeteria`),
  ADD UNIQUE KEY `Imagen_de_Cafeteriacol_UNIQUE` (`ID_imagen_de_cafeteria`),
  ADD KEY `fk_cafeteria_has_imagen_imagen1_idx` (`fk_imagen`),
  ADD KEY `fk_cafeteria_has_imagen_cafeteria1_idx` (`fk_cafeteria`);

--
-- Indices de la tabla `r_imagen_de_nota`
--
ALTER TABLE `r_imagen_de_nota`
  ADD PRIMARY KEY (`ID_imagen_de_nota`),
  ADD UNIQUE KEY `ID_imagen_de_nota_UNIQUE` (`ID_imagen_de_nota`),
  ADD KEY `fk_nota_has_imagen_imagen1_idx` (`fk_imagen`),
  ADD KEY `fk_nota_has_imagen_nota1_idx` (`fk_nota`);

--
-- Indices de la tabla `r_producto_de_cafeteria`
--
ALTER TABLE `r_producto_de_cafeteria`
  ADD PRIMARY KEY (`ID_producto_de_cafeteria`),
  ADD UNIQUE KEY `ID_producto_de_cafeteria_UNIQUE` (`ID_producto_de_cafeteria`),
  ADD KEY `fk_producto_has_cafeteria_cafeteria1_idx` (`fk_cafeteria`),
  ADD KEY `fk_producto_has_cafeteria_producto1_idx` (`fk_producto`);

--
-- Indices de la tabla `r_producto_de_menu`
--
ALTER TABLE `r_producto_de_menu`
  ADD PRIMARY KEY (`ID_producto_de_menu`),
  ADD UNIQUE KEY `t_producto_has_t_menucol_UNIQUE` (`ID_producto_de_menu`),
  ADD KEY `fk_t_producto_has_t_menu_t_menu1_idx` (`fk_menu`),
  ADD KEY `fk_t_producto_has_t_menu_t_producto1_idx` (`fk_producto`),
  ADD KEY `fk_t_producto_has_t_menu_t_cafeteria1_idx` (`fk_cafeteria`);

--
-- Indices de la tabla `t_cafeteria`
--
ALTER TABLE `t_cafeteria`
  ADD PRIMARY KEY (`ID_cafeteria`),
  ADD UNIQUE KEY `ID_cafeteria_UNIQUE` (`ID_cafeteria`);

--
-- Indices de la tabla `t_categoria_cafeteria`
--
ALTER TABLE `t_categoria_cafeteria`
  ADD PRIMARY KEY (`ID_categoria`),
  ADD UNIQUE KEY `ID_categoria_UNIQUE` (`ID_categoria`);

--
-- Indices de la tabla `t_categoria_nota`
--
ALTER TABLE `t_categoria_nota`
  ADD PRIMARY KEY (`ID_categoria_nota`),
  ADD UNIQUE KEY `ID_categoria_de_notas_UNIQUE` (`ID_categoria_nota`);

--
-- Indices de la tabla `t_categoria_producto`
--
ALTER TABLE `t_categoria_producto`
  ADD PRIMARY KEY (`ID_categoria_producto`),
  ADD UNIQUE KEY `ID_categoria_producto_UNIQUE` (`ID_categoria_producto`);

--
-- Indices de la tabla `t_comentarios`
--
ALTER TABLE `t_comentarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID_comentario_UNIQUE` (`id`),
  ADD KEY `fk_comentarios_usuario1_idx` (`fk_usuario`);

--
-- Indices de la tabla `t_imagen`
--
ALTER TABLE `t_imagen`
  ADD PRIMARY KEY (`ID_imagen`),
  ADD UNIQUE KEY `ID_imagen_UNIQUE` (`ID_imagen`);

--
-- Indices de la tabla `t_menu`
--
ALTER TABLE `t_menu`
  ADD PRIMARY KEY (`ID_menu`),
  ADD UNIQUE KEY `ID_menu_UNIQUE` (`ID_menu`);

--
-- Indices de la tabla `t_nota`
--
ALTER TABLE `t_nota`
  ADD PRIMARY KEY (`ID_nota`),
  ADD UNIQUE KEY `ID_nota_UNIQUE` (`ID_nota`),
  ADD KEY `fk_nota_cafeteria1_idx` (`fk_cafeteria`);

--
-- Indices de la tabla `t_privacidad_usuario`
--
ALTER TABLE `t_privacidad_usuario`
  ADD PRIMARY KEY (`ID_privacidad`),
  ADD UNIQUE KEY `ID_privacidad_UNIQUE` (`ID_privacidad`);

--
-- Indices de la tabla `t_producto`
--
ALTER TABLE `t_producto`
  ADD PRIMARY KEY (`ID_producto`),
  ADD UNIQUE KEY `ID_producto_UNIQUE` (`ID_producto`),
  ADD KEY `fk_producto_categoria_producto1_idx` (`fk_categoria`);

--
-- Indices de la tabla `t_rol_usuario`
--
ALTER TABLE `t_rol_usuario`
  ADD PRIMARY KEY (`ID_rol_usuario`),
  ADD UNIQUE KEY `ID_rolUsuario_UNIQUE` (`ID_rol_usuario`);

--
-- Indices de la tabla `t_usuario`
--
ALTER TABLE `t_usuario`
  ADD PRIMARY KEY (`ID_usuario`),
  ADD UNIQUE KEY `ID_usuario_UNIQUE` (`ID_usuario`),
  ADD KEY `fk_usuario_rol_usuario_idx` (`fk_rol_usuario`),
  ADD KEY `fk_usuario_privacidad_usuario1_idx` (`fk_privacidad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `r_categoria_de_cafeteria`
--
ALTER TABLE `r_categoria_de_cafeteria`
  MODIFY `ID_categoria_de_cafeteria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `r_categoria_de_nota`
--
ALTER TABLE `r_categoria_de_nota`
  MODIFY `ID_categoria_de_nota` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `r_comentario_de_cafeteria`
--
ALTER TABLE `r_comentario_de_cafeteria`
  MODIFY `ID_comentario_de_cafeteria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `r_imagen_de_cafeteria`
--
ALTER TABLE `r_imagen_de_cafeteria`
  MODIFY `ID_imagen_de_cafeteria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `r_imagen_de_nota`
--
ALTER TABLE `r_imagen_de_nota`
  MODIFY `ID_imagen_de_nota` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `r_producto_de_cafeteria`
--
ALTER TABLE `r_producto_de_cafeteria`
  MODIFY `ID_producto_de_cafeteria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_cafeteria`
--
ALTER TABLE `t_cafeteria`
  MODIFY `ID_cafeteria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT de la tabla `t_categoria_cafeteria`
--
ALTER TABLE `t_categoria_cafeteria`
  MODIFY `ID_categoria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `t_categoria_nota`
--
ALTER TABLE `t_categoria_nota`
  MODIFY `ID_categoria_nota` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `t_categoria_producto`
--
ALTER TABLE `t_categoria_producto`
  MODIFY `ID_categoria_producto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `t_comentarios`
--
ALTER TABLE `t_comentarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `t_imagen`
--
ALTER TABLE `t_imagen`
  MODIFY `ID_imagen` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_menu`
--
ALTER TABLE `t_menu`
  MODIFY `ID_menu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_nota`
--
ALTER TABLE `t_nota`
  MODIFY `ID_nota` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_privacidad_usuario`
--
ALTER TABLE `t_privacidad_usuario`
  MODIFY `ID_privacidad` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `t_producto`
--
ALTER TABLE `t_producto`
  MODIFY `ID_producto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `t_rol_usuario`
--
ALTER TABLE `t_rol_usuario`
  MODIFY `ID_rol_usuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `t_usuario`
--
ALTER TABLE `t_usuario`
  MODIFY `ID_usuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `r_categoria_de_cafeteria`
--
ALTER TABLE `r_categoria_de_cafeteria`
  ADD CONSTRAINT `fk_categoria_cafeteria_has_cafeteria_cafeteria1` FOREIGN KEY (`fk_cafeteria`) REFERENCES `t_cafeteria` (`ID_cafeteria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_categoria_cafeteria_has_cafeteria_categoria_cafeteria1` FOREIGN KEY (`fk_categoria`) REFERENCES `t_categoria_cafeteria` (`ID_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `r_categoria_de_nota`
--
ALTER TABLE `r_categoria_de_nota`
  ADD CONSTRAINT `fk_categoria_nota_has_nota_categoria_nota1` FOREIGN KEY (`fk_categoria`) REFERENCES `t_categoria_nota` (`ID_categoria_nota`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_categoria_nota_has_nota_nota1` FOREIGN KEY (`fk_nota`) REFERENCES `t_nota` (`ID_nota`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `r_comentario_de_cafeteria`
--
ALTER TABLE `r_comentario_de_cafeteria`
  ADD CONSTRAINT `fk_cafeteria_has_comentarios_cafeteria1` FOREIGN KEY (`fk_cafeteria`) REFERENCES `t_cafeteria` (`ID_cafeteria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cafeteria_has_comentarios_comentarios1` FOREIGN KEY (`fk_comentario`) REFERENCES `t_comentarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `r_imagen_de_cafeteria`
--
ALTER TABLE `r_imagen_de_cafeteria`
  ADD CONSTRAINT `fk_cafeteria_has_imagen_cafeteria1` FOREIGN KEY (`fk_cafeteria`) REFERENCES `t_cafeteria` (`ID_cafeteria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cafeteria_has_imagen_imagen1` FOREIGN KEY (`fk_imagen`) REFERENCES `t_imagen` (`ID_imagen`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `r_imagen_de_nota`
--
ALTER TABLE `r_imagen_de_nota`
  ADD CONSTRAINT `fk_nota_has_imagen_imagen1` FOREIGN KEY (`fk_imagen`) REFERENCES `t_imagen` (`ID_imagen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_nota_has_imagen_nota1` FOREIGN KEY (`fk_nota`) REFERENCES `t_nota` (`ID_nota`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `r_producto_de_cafeteria`
--
ALTER TABLE `r_producto_de_cafeteria`
  ADD CONSTRAINT `fk_producto_has_cafeteria_cafeteria1` FOREIGN KEY (`fk_cafeteria`) REFERENCES `t_cafeteria` (`ID_cafeteria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_producto_has_cafeteria_producto1` FOREIGN KEY (`fk_producto`) REFERENCES `t_producto` (`ID_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `r_producto_de_menu`
--
ALTER TABLE `r_producto_de_menu`
  ADD CONSTRAINT `fk_t_producto_has_t_menu_t_cafeteria1` FOREIGN KEY (`fk_cafeteria`) REFERENCES `t_cafeteria` (`ID_cafeteria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_t_producto_has_t_menu_t_menu1` FOREIGN KEY (`fk_menu`) REFERENCES `t_menu` (`ID_menu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_t_producto_has_t_menu_t_producto1` FOREIGN KEY (`fk_producto`) REFERENCES `t_producto` (`ID_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `t_comentarios`
--
ALTER TABLE `t_comentarios`
  ADD CONSTRAINT `fk_comentarios_usuario1` FOREIGN KEY (`fk_usuario`) REFERENCES `t_usuario` (`ID_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `t_nota`
--
ALTER TABLE `t_nota`
  ADD CONSTRAINT `fk_nota_cafeteria1` FOREIGN KEY (`fk_cafeteria`) REFERENCES `t_cafeteria` (`ID_cafeteria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `t_producto`
--
ALTER TABLE `t_producto`
  ADD CONSTRAINT `fk_producto_categoria_producto1` FOREIGN KEY (`fk_categoria`) REFERENCES `t_categoria_producto` (`ID_categoria_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `t_usuario`
--
ALTER TABLE `t_usuario`
  ADD CONSTRAINT `fk_usuario_privacidad_usuario1` FOREIGN KEY (`fk_privacidad`) REFERENCES `t_privacidad_usuario` (`ID_privacidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_rol_usuario` FOREIGN KEY (`fk_rol_usuario`) REFERENCES `t_rol_usuario` (`ID_rol_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
