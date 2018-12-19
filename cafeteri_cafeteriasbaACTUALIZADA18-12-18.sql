-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-12-2018 a las 21:21:14
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
(1, 3, 1),
(2, 1, 2),
(3, 4, 3),
(4, 3, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 3, 8),
(9, 3, 9),
(10, 1, 10),
(11, 1, 11),
(12, 2, 12),
(13, 4, 13),
(14, 3, 14),
(15, 4, 15),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 3, 19),
(20, 1, 20),
(21, 3, 21),
(22, 1, 22),
(23, 3, 23),
(24, 4, 24),
(25, 4, 25),
(26, 1, 26),
(27, 3, 27),
(28, 2, 28),
(29, 4, 29),
(30, 4, 30),
(31, 2, 31),
(32, 3, 32),
(33, 3, 33),
(34, 3, 34),
(35, 2, 35),
(36, 4, 36),
(37, 4, 37),
(38, 4, 38),
(39, 4, 39),
(40, 3, 40),
(41, 3, 41),
(42, 4, 42),
(43, 4, 43),
(44, 4, 44),
(45, 4, 45),
(46, 3, 46),
(47, 3, 47),
(48, 4, 48),
(49, 1, 49),
(50, 4, 50),
(51, 2, 51),
(52, 2, 52),
(53, 1, 53),
(54, 1, 54),
(55, 1, 55);

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
  `telefono` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `sitio_web` varchar(45) DEFAULT NULL,
  `sucursal` varchar(45) DEFAULT NULL,
  `horario_apertura` time DEFAULT NULL,
  `horario_cierre` time DEFAULT NULL,
  `valoracion` int(10) UNSIGNED DEFAULT NULL,
  `votos` int(11) UNSIGNED DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `descripcion` text,
  `id_usuario` int(11) DEFAULT NULL,
  `img_portada` text,
  `coordenadas_maps` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_cafeteria`
--

INSERT INTO `t_cafeteria` (`ID_cafeteria`, `nombre`, `direccion`, `telefono`, `email`, `sitio_web`, `sucursal`, `horario_apertura`, `horario_cierre`, `valoracion`, `votos`, `status`, `descripcion`, `id_usuario`, `img_portada`, `coordenadas_maps`) VALUES
(1, 'All Saints Café', 'Ciudad de la Paz 2300', '47060016', 'allsaints@gmail.com', 'allsaintscafe.com.ar', 'Belgrano', '07:00:00', '22:00:00', 5, 1, 'activo', 'All Saints Café cree en la calidad sobre todas las cosas. Compran directamente a pequeños podructores cafeteros alrededor del mundo. El café utilizado proviene de microlotes de origen único, en lo posible orgánicos y sustentables, de la mas alta calidad puntuados en cata de 84 puntos en adelante.  El café es tostado siguiendo los más rigurosos stándares de calidad.  El resultado se disfruta en cada taza. Cuentan con una máquina de tostar café Probat Roadster, marca más antigua y lider en el segmento de torrefacción y microtorrefacción. De origen aleman, es utilizada por los principales speciality coffee shops del mundo.', 31, 'cafe_01.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3285.71348871307!2d-58.46150218530834!3d-34.56080898047058!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcb5d4c4929eb1%3A0xd069655c700ba877!2sAll+Saints+Cafe!5e0!3m2!1ses-419!2sar!4v1540520105926'),
(2, 'Café Tortoni', 'Av. de Mayo 825', '43424328', 'cafetortoni@gmail.com', 'www.cafetortoni.com.ar', 'Microcentro', '08:00:00', '01:00:00', 4, 1, 'activo', 'El Tortoni es el paradigma del café porteño, pero poco se sabe de sus orígenes.Apenas un inmigrante francés de apellido Touan decidió inaugurarlo a fines de 1858, el nombre lo tomó prestado del de un establecimiento del Boulevard des Italiens, en el que se reunía la elite de la cultura parisina del siglo XIX.   A fines del siglo, el bar fue adquirido por otro francés: don Celestino Curutchet, a quien el poeta Allende Iragorri describiera como el típico viejito sabio francés, menudo de cuerpo y fuerte de espíritu, estilaba la clásica perilla alargada, ojos vivísimos y usaba un casquete árabe de seda negra, casi un personaje de historieta que agregaba otro acento peculiar a la fisonomía el lugar.   El local era frecuentado por un grupo de pintores, escritores, periodistas y músicos que formaban la Agrupación de Gente de Artes y Letras, liderada por Benito Quinquela Martin.\r\n\r\nEn mayo de 1926 forman La Peña, y le piden a Don Celestino Curutchet, que les deje usar la bodega del subsuelo. El dueño acepta encantado, porque según sus palabras los artistas gastan poco, pero le dan lustre y fama al café.   En este café parece que el tiempo se hubiera detenido como en un daguerrotipo, cuando en él la gente juega al billar, a las cartas, o simplemente toman un café entre amigos, el local es cada vez más una parte indispensable de la historia porteña.', 31, 'cafe_02.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3283.822365206582!2d-58.38040078530671!3d-34.60865308045826!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccad19d1e5cd3%3A0x520b8220bc17c42d!2sCaf%C3%A9+Tortoni!5e0!3m2!1ses-419!2sar!4v1545094126621'),
(3, 'Coffee Town', 'Bolivar 976', '43007333', 'coffeetown@gmail.com', 'www.coffeetowncompany.com', 'San Telmo', '08:30:00', '20:30:00', 3, 1, 'activo', 'Después de años de recorrer cafetales, de trabajar directamente con los caficultores en América Latina y África y de perfeccionarnos en los mejores centros internacionales decidimos crear Coffee Town en el corazón de Buenos Aires y con filosofía propia; ofrecer los mejores cafés del mundo a un precio justo.  Somos un grupo de profesionales (Baristas, maestros tostadores y los únicos catadores profesionales del país) que trabajamos para garantizar la máxima calidad en todos los momentos del café (crudo, tostado y en la bebida). <br> \r\nNuestros catadores analizan los granos de café antes y después de ser tostados para asegurar que los estándares de sus cafés y sus puntuaciones de cata sean siempre Grand Cru o de Especialidad y Premium. Los maestros tostadores estudian cada café y realizan las curvas de tueste indicadas para optimizar su aroma, sabor y cuerpo. Los baristas aplican rigurosamente las técnicas correctas de preparación según los protocolos internacionales y utilizan el método más adecuado para cada tipo de café. <br> \r\nLa responsabilidad que cada uno de nosotros pone en su tarea, hace de Coffee Town la primera cafetería de cafés de Especialidad en Argentina y epicentro del café saludable en esta parte del mundo.  Desde el Mercado de San Telmo, inmersos en un ambiente de alimentos gourmet, quienes hacemos Coffee Town le proponemos a través de nuestros cafés iniciar juntos un viaje por la ruta de los sentidos.', 31, 'cafe_03.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3283.4017183802694!2d-58.37486068530636!3d-34.61928728045545!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccb2b5cb315cb%3A0xf60b668e9c1dec85!2sCoffee+Town!5e0!3m2!1ses-419!2sar!4v1545094812792'),
(4, 'La Biela', 'Av. Pres. Manuel Quintana 596', '48040449', 'info@labiela.com', 'www.labiela.com', 'Recoleta', '07:00:00', '02:00:00', 4, NULL, 'activo', 'En el abanico de lugares clásicos de la ciudad porteña, uno de los referentes mas vivos y calificados es La Biela.  El histórico bar del elegante barrio de La Recoleta mantiene intacto su prestigio y prosapia como centro de reunión de una clientela regular que se nutre también de los visitantes ocasionales que al pasar por Buenos Aires tienen una cita obligada con La Biela, uno de los reductos que otorgan a la ciudad su inconfundible aire elegante y cosmopolita.<br>La Biela es el típico café porteño. No solo por su historia, que comienza hace más de 150 años, sino también por la decoración, las comodidades, la ubicación, los servicios que brinda y la cálida atención dispensada por su calificado personal.', 69, 'cafe_04.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.6435585878057!2d-58.393008885307275!3d-34.587884580463644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccaa3084d783d%3A0xab74a347736bd212!2sLa+Biela!5e0!3m2!1ses-419!2sar!4v1545094884868'),
(5, 'La Giralda', 'Av. Corrientes 1453', '43713846', '', 'la-giralda-cafeteria.negocio.site', 'Balvanera', '08:00:00', '23:00:00', 3, NULL, 'activo', 'Se encuentra desde el año 1930 en Avenida Corrientes 1453, en el sector céntrico de la arteria en donde abundan los teatros y cines,​ donde hay una intensa vida cultural y nocturna. El café se mantiene con su mobiliario austero y original: las paredes blancas y recubiertas con azulejos del mismo color y paños de vidrio espejado, la vieja barra de madera a lo largo de uno de los laterales, y las mesas de madera y mármol. Conserva varios elementos distintivos que ha tenido desde sus inicios, como las luces de neón o el mármol de las mesas, los guardapolvos característicos de los mozos del puerto o las azucareras de vidrio, entre otros.<br>  Ocupa la planta baja de un edificio de departamentos de estilo francés que fue construido en 1915, aunque la cafetería se instaló allí en 1951. En su fachada mantiene los viejos revestimientos de madera, con dos marquesinas para exhibir productos tradicionales y una sola ventana de guillotina.', 69, 'cafe_05.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.008986007593!2d-58.3894410853069!3d-34.603934280459434!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccac69fc4c36b%3A0x62730694bc8c34e4!2sLa+Giralda!5e0!3m2!1ses-419!2sar!4v1545095041883'),
(6, 'El Gato Negro', 'Av. Corrientes 1669', '43741730', 'info@donvictoriano.com.ar', 'www.donvictoriano.com.ar', 'Balvanera', '09:00:00', '00:00:00', 4, NULL, 'activo', 'Famosa en Buenos Aires por sus especias, cafés y tés, la casa mantiene intacto el estilo de un almacén elegante: mostradores y vitrinas de roble y fresno Italiano, arañas holandesas de bronce, sillas Thonet, expertos y amables vendedores. En el interior de la tienda, que está invadido por un cautivante aroma, se exhiben para la venta semillas y hierbas aromáticas, condimentos, sales dietéticas, especias en frascos y especieros de porcelana, y una selección de chocolates, salsas, frutas glaceadas y pescados envasados. También tés y cafés exóticos que son tostados artesanalmente en el mismo local y con la misma tostadora de la época de origen del almacén y pueden ser tomados en cualquiera de sus pequeñas y redondas mesas de madera acompañado de algo dulce.<br> En el primer piso posee un salón en el que se pueden comer una variedad de platos de autor, como filet de abadejo en fondue de cebolla, risotto al azafrán con camarones y pastas caseras o importadas de Italia.3​ También suelen ofrecerse en él espectáculos unipersonales o shows musicales intimistas de jazz o de tango.', 0, 'cafe_06.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.000910693586!2d-58.39250968530689!3d-34.60413848045944!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccac168638181%3A0xbf85da27fe23193b!2sEl+Gato+Negro!5e0!3m2!1ses-419!2sar!4v1545095147101'),
(7, 'La Caravelle', 'Lavalle 726', '43221673', '', NULL, 'Microcentro', '09:00:00', '19:00:00', 4, NULL, 'activo', 'Le Caravelle es un café de la colectividad italiana. Toda su estética refiere a ese país. Pero, también se juntan arquitectos, diseñadores, cinéfilos y futbolistas. Las glorias del Racing de Pizzutti solían frecuentarlo (también César Luis Menotti). <br> Es un sitio muy recomendable para los que recorren el centro. La ciudad no tiene muchos lugares para tomar café solamente de pie (o lo son infinitamente menos que los que tienen mesas) y éste es un tesoro intacto. <br> Al igual que algunos de sus mozos que son los mismos que cuando iba de purrete. Hay habitués que afirman (comparto) que sirven el mejor capuccino de Buenos Aires e incluso se animaron a filmarlo.', 0, 'cafe_07.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.069577214147!2d-58.37932518530689!3d-34.602402080459875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccacc1f4b75bb%3A0xbf0eaf8786adae3b!2sLe+Caravelle!5e0!3m2!1ses-419!2sar!4v1545095339266'),
(8, 'Cocu Boulangerie', 'Malabia 1510', '48314675', 'info@cocu.com.ar', 'cocu.com.ar', 'Palermo', '09:00:00', '20:00:00', 4, NULL, 'activo', 'Cocu ofrece productos caseros de gran calidad, frescos y equilibrados, elaborados según las técnicas tradicionales de Francia en un espacio cálido y acogedor. <br> Siempre cerca de nuestros clientes: para reforzar los sentidos te invita a sumergirte en la maravillosa experiencia de ver al chef panadero horneando sus más exquisitas recetas a la vista de todos... un momento único para compartir! <br> Date una vuelta y descubrí una extensa gama de productos franceses tales como el famoso croissant o la baguette, pero también fórmulas de lunches: sandwiches, ensaladas, quiches, cakes salados y deliciosos postres en pleno Palermo! La esquina francesa de Buenos Aires.', 0, 'cafe_08.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.51018281971!2d-58.43014848530724!3d-34.59125848046267!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcca780f9ce04b%3A0x928a6e0e6fa80a4a!2sCocu+Boulangerie!5e0!3m2!1ses-419!2sar!4v1545095375491'),
(9, 'Lattente', 'Thames 1891', '48331676', 'info@cafelattente.com', 'www.cafelattente.com', 'Palermo', '09:00:00', '20:00:00', 4, NULL, 'activo', 'Sorprende la cantidad de sensaciones e historias que puede contar una taza de café. Pero alguna vez te preguntaste, ¿cuál es el pasado detrás del macchiato que bebes cada mañana en la barra de Thames al 1891?. Esa historia ¿tendrá alguna relación con el fenómeno palermitaño de los profesos “lattente lovers”?', 0, 'cafe_09.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.7111968078525!2d-58.43029858530738!3d-34.58617348046413!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcb58607ceec99%3A0x17eb58a9c773c80c!2sLattente!5e0!3m2!1ses-419!2sar!4v1545095448330'),
(10, 'London City', 'Av. de Mayo 591', '43429057', '', 'www.londoncity.com.ar', 'Microcentro', '06:00:00', '00:00:00', 4, NULL, 'activo', 'Situado en pleno corazón de la city porteña, desde el 28 de Septiembre de 1954, “London City” fue refugio de poetas, artistas, políticos, que transitaban desde el Palacio Municipal hasta el edificio del Consejo Deliberante, periodistas que entraban y salían del vecino edificio del diario La Prensa y de los porteños y turistas que paseaban y trabajaban a lo largo de la hermosa Avenida de Mayo.', 0, 'cafe_10.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3283.8281672864664!2d-58.37708828530668!3d-34.60850638045822!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccad3ac16ce41%3A0x613d6e53fc808781!2sLondon+City!5e0!3m2!1ses-419!2sar!4v1545095499464'),
(11, 'Las Violetas', 'Av. Rivadavia 3899', '49587387', 'contacto@lasvioletas.com', 'www.lasvioletas.com', 'Balvanera', '06:00:00', '01:00:00', 4, NULL, 'activo', 'La ciudad de Buenos Aires, fundada dos veces junto al Río de la Plata, creció de espaldas a él y sufrió los mismos cambios y vaivenes que su política. Algunos edificios fueron demolidos y reconstruidos hasta tres veces (entre ellos el Teatro Colón y la Casa de Gobierno) con otros cánones edilicios que primero fueron coloniales, luego itálicos y por ultimo franceses, esto a comienzos del siglo XX según las ideas de los arquitectos de las escuelas francesas, entusiasmados por los dictados de la Ecole de Beaux Arts de París que construyeron los grandes boulevares y edificios de esa ciudad. \r\n\r\nLa avenida Rivadavia, camino de carretas, unía la Plaza de Mayo con el oeste lejano hacia Flores. Durante la epidemia de fiebre amarilla en 1870 la gente de clase pudiente buscó refugio en las zonas altas, entre ellas Flores, lugar de veraneo, unida a la ciudad por el Ferrocarril Oeste. En 1876 la compañía Anglo Argentina construyó en esa calle Rivadavia uno de los primeros tranvías a caballo. \r\n\r\nLa prosperidad económica de la década de 1880 produjo una enorme expansión de la ciudad y sus alrededores. Florecieron los nuevos edificios, los negocios. La ciudad quiere dejar de ser “la gran aldea”. \r\n\r\nAunque la esquina de Medrano y Rivadavia está a sólo 4 Km. de la Plaza de Mayo, era un lugar “donde el diablo perdió el poncho”. \r\n\r\nAllí se instaló una confitería, con doradas arañas y mármoles italianos. El día de la inauguración, un 21 de Septiembre de 1884, hasta el ministro Carlos Pellegrini, futuro presidente del país, se hizo presente transportado por un tranvía especial acompañado por muchos de sus distinguidos amigos. Sus mesas fueron lugar de encuentro de artistas y escritores entre ellos Roberto Arlt y politicos de la época. \r\n\r\nPero es alrededor de la década de 1920 cuando se construyó el actual edificio. Con sus vidrieras y puertas de vidrios curvos, sus vitrales franceses y sus pisos de mármol italiano. Los vitrales restaurados fueron concebidos para adornar y alegrar el ambiente grato de un café de aquellos tiempos, donde la gente iba a pasar momentos de esparcimiento en un ámbito selecto. \r\n\r\nEl edificio fue declarado “Lugar histórico de la Ciudad” en 1998 por la Legislatura de la Ciudad de Buenos Aires.', 0, 'cafe_11.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3283.72368700171!2d-58.4229766853066!3d-34.61114798045753!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcca5ef7a13e55%3A0xc2d1eee01d4cb124!2sLas+VIOLETAS!5e0!3m2!1ses-419!2sar!4v1545098848651'),
(12, 'Adorado San Telmo', 'Bolivar 347', '32214460', 'hola@adoradobar.com', 'www.adoradobar.com', 'Monserrat', '08:00:00', '20:00:00', 4, NULL, 'activo', 'Adorado Bar es un lugar, que sin ser perfecto en la ejecución de sus platos cumple perfectamente la regla, ofrece opciones para completar todos los elementos que a nuestro entender son algo primordial para conformar un brunch decente. Buen café + huevos + opciones dulces + algo opciones saladas + jugos.', 0, 'cafe_12.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3283.692941984908!2d-58.375627085306725!3d-34.61192528045729!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccad4e89de74b%3A0x468fc79b95e859f5!2sAdorado+San+Telmo!5e0!3m2!1ses-419!2sar!4v1545099700065'),
(13, 'Bar Café Metro', 'Cerrito 528', '43824692', '', 'bar-cafe-metro.negocio.site', 'San Nicolás', '07:00:00', '00:00:00', 4, NULL, 'activo', 'Cafe Metro se encuentra justo en la Avenida 9 de Julio, a 50 metros del Obelisco y a 20 metros del hotel NH hoteles Tango. Es un local pequeño, pero sus servicios incluyen cualquiera de las 4 comidas diarias, además de la gran amabilidad del personal a disposición.', 0, 'cafe_13.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.0761139008728!2d-58.38471688530698!3d-34.60223678045986!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccac8b1c238e1%3A0x8b1c49627c4455ee!2sBar+Caf%C3%A9+Metro!5e0!3m2!1ses-419!2sar!4v1545099739748'),
(14, 'Tienda de Café', 'Av. de Mayo 799', '43425424', 'hola@tiendadecafe.com.ar', 'www.tiendadecafe.com.ar', 'Monserrat', '07:00:00', '21:00:00', 4, NULL, 'activo', 'Tienda de Café te propone experimentar y descubrir los secretos de una bebida única, desarrollando para ello ambientes donde el café, en todas sus expresiones, sea el protagonista indiscutible.', 0, 'cafe_14.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3283.8244574382798!2d-58.37985268530677!3d-34.608600180458225!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccad181f45d47%3A0xbf2c5582cd7d739c!2sTienda+de+Caf%C3%A9!5e0!3m2!1ses-419!2sar!4v1545099787904'),
(15, 'Havanna', 'Av. de Mayo 615', '43315411', '', 'www.havanna.com.ar', 'Monserrat', '08:00:00', '21:00:00', 4, NULL, 'activo', 'Havanna es una cadena de cafeterías especializadas en alfajores y chocolates, de producción propia y artesanal, cuya experiencia de marca se vive en sus exclusivos locales.\r\n\r\nConsiderada una marca emblema argentina, ocupa un lugar de privilegio en el sentimiento de todo un país. En la actualidad cuenta con más de 270 cafeterías distribuidas a lo largo de toda Latinoamérica y Europa, estando presente en más de 12 países.', 0, 'cafe_15.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3283.8269689036315!2d-58.37735588530676!3d-34.60853668045826!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccad3ae3e7277%3A0x66c5acf3dd188992!2sHavanna!5e0!3m2!1ses-419!2sar!4v1545099839484'),
(16, 'Ramón', 'Adolfo Alsina 702', '43424513', '', NULL, 'Monserrat', '07:00:00', '18:00:00', 3, NULL, 'activo', 'Bar - Restaurant con gran variedad de menús y precios accesibles.', 0, 'cafe_16.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d52553.510837064714!2d-58.457827175303635!3d-34.589127448406494!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccad3f1280077%3A0xf9cdf6a6a4fcec83!2zUmFtw7Nu!5e0!3m2!1ses-419!2sar!4v1545099882221'),
(17, 'Bocanada', 'Piedras 320', '43423037', 'bocanada.restobar@gmail.com', NULL, 'Monserrat', '08:00:00', '21:00:00', 4, NULL, 'activo', 'Un lugar atendido por sus dueños, que te ofrece un servicio de calidad y rapidez, porque el tiempo es importante para nuestros clientes. Y nuestros clientes son nuestra razón de ser.', 0, 'cafe_17.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26272.972090616004!2d-58.41787313651243!3d-34.60108874942843!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccad6a875f5d3%3A0x67c1aba7738b9348!2sBocanada!5e0!3m2!1ses-419!2sar!4v1545099607828'),
(18, 'Café Martínez', 'Av. de Mayo 699', '43315582', 'info@cafemartinez.com.ar', 'www.cafemartinez.com', 'Microcentro', '07:00:00', '20:00:00', 4, NULL, 'activo', 'Desde 1933 tostamos nuestro propio café. Lo cuidamos desde la selección de sus granos, hasta la taza, conservando el amor y el respeto que tenemos por lo que hacemos, desde el primer día. Por eso nuestro café es ÚNICO.\r\n\r\nA través de nuestro proceso exclusivo de tostación, logramos resaltar las notas y características propias de los diferentes granos. Un aroma pleno, con notas de chocolate, pan tostado, miel y caramelo y un sabor con cuerpo, con un toque de frescura, es lo que hace inconfundible a un Café Martínez, siempre.', 0, 'cafe_18.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3283.811931691807!2d-58.38135943530678!3d-34.6089168804581!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccad3cc0f0eb5%3A0x75cbf52160a72c0e!2zQ2Fmw6kgTWFydMOtbmV6!5e0!3m2!1ses-419!2sar!4v1545099559357'),
(19, 'Establecimiento General de Café', 'Lavalle 1701', '43716742', 'info@estcafe.com.ar', 'establecimientocafe.com.ar', 'Microcentro', '08:00:00', '19:00:00', 4, NULL, 'activo', 'Establecimiento de Café abrió sus puertas al público en el año 1999 con el claro concepto de un lugar donde encontrar las distintas variedades de café del mundo.\r\nEl objetivo era formar un Establecimiento donde la experiencia del café se viva a través de todos los sentidos en su máxima amplitud, donde los aromas de los diferentes varietales se fusionen con el ambiente y donde los clientes puedan percibir ese toque distinto, tradicional y casi personal de vivir el estilo del café.', 0, 'cafe_19.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.046723526916!2d-58.393486682556166!3d-34.60297999999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccac1046f4015%3A0xeead108ccd5627ed!2sEstablecimiento+General+de+Caf%C3%A9!5e0!3m2!1ses-419!2sar!4v1545095728874'),
(20, 'El Banderín', 'Guardia Vieja 3601', '48627757', '', 'elbanderin.com.ar', 'Almagro', '08:30:00', '23:00:00', 4, NULL, 'activo', 'Nació en la decada del veinte, algunos papeles hablan de 1923 otros de 1929. En alguna epoca anterior tal vez fue una librería lo sospechamos pero no sabemos.\r\nEl nombre elegido por Don Justo Riesco en ese entonces fué “El Asturiano” almacén y bar.\r\nFideos sueltos, harina, fiambres y azucar. Del otro lado de la pared mesas, café, vino, cinzano con ingredientes. Una ginebrita antes del trabajo en el puesto del mercado.\r\nPasaron los años, unos cuantos años. Don justo se jubiló y continuó  la posta Mario. Fanático de River Plate comenzó a juntar banderines de River. Y abrieron un supermercado cerca condenando a su fin al almacén.\r\n“El alemán” comenzó a viajar por europa y traía en sus viajes banderines de Austria, Otro amigo se fué a vivir a España y mandó banderines.\r\nY apareció el cuadro de los presos de Devoto con las camisetas hechas a mano, Y en un viaje a Brasil se vinieron otros banderines.\r\nY se vino el mundial 78 con banderines de las selecciones, más tarde en el tiempo se fueron .\r\nEn el 79 se apiñaban los telefonicos detras de una tele Noblex de 12″ para ver a Maradona en el mundial de Japon.\r\nY el que visita y no está el  estandarte de su equipo en el próximo viaje lo trae o lo manda por correo. Y hay un cartel que dice “Para recordar: no envejecer al pedo”.\r\nFueron clientes Angel Firpo, Adolfo Pedernera, Pascualito Pérez, y Tato Bores, que grabó un fragmento de Good Show.\r\nY Julio trajo la camiseta firmada de Caniggia del mundial 94 (la del gol a Nigeria). Y está la camiseta autografiada de River y la de Boca. Y hay olor a café y un gato negro con la colita blanca.   Y taxistas.   Y álguien estudiando.  Y la chicas de enfrente.   Y la internet WiFi.    Y los lunes por la noche los muchachos de Radio Belgrano trasmiten desde una mesa (mientras se clavan una picada) un programa de fútbol.\r\nY mejor para ver todo date una vuelta y sacate una foto al lado de la foto de Piluso y Coquito o del cartel de Martiniano Arce.', 0, 'cafe_20.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.100504635809!2d-58.417605385306935!3d-34.601619980460015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcca897fa355ff%3A0xb31a6384d9d7773e!2sEl+Bander%C3%ADn!5e0!3m2!1ses-419!2sar!4v1545095765565'),
(21, 'Alimentari', 'Moreno 945', '43310012', '', 'www.alimentari.com', 'Monserrat', '07:30:00', '16:00:00', 3, NULL, 'activo', 'Alimentari fue creada en el año 1993 con el fin de prestar servicios de comida rápida y pastelería artesanal.\r\n\r\nCon una propuesta de trabajo basada en la elaboración propia de sus productos, atención personalizada a los clientes y servicio de entrega a domicilio (Delivery), se procuró ganar un mercado leal a una marca. \r\nSeguros por la calidad y los precios ofrecidos fue que la respuesta del público no tardó en llegar. La demanda superó las expectativas y se decidió ampliar el local existente aumentando de esta manera a doscientas las plazas disponibles y un salón de despacho que atiende a 600 clientes diarios.\r\n\r\nComo punto de partida hacia la expansión comercial de la marca, en febrero del año 1998 se abre la primera sucursal (Lavalle 1120 Capital Federal) bajo la naturaleza de franquicia con capacidad para 150 plazas.\r\n\r\nEn julio de 1999 se inaugura la sucursal Centro (San Martín 570 Capital Federal) con 180 plazas y de esta manera se intenta cerrar una zona de cobertura que cubra las necesidades de nuestros clientes en la City porteña.\r\n\r\nServicios de catering a empresas, coffee-break, almuerzos de trabajo, viandas ejecutivas son algunas de las prestaciones ofrecidas.\r\nPensando optimizar el servicio a los clientes se encara un sistema de pedidos on-line en tiempo real en la red Internet posibilitando agilizar las entregas e intentando abrir un canal diferente de comunicación con nuestra clientela.\r\n\r\nA fines del año 2001 se abren dos nuevas casas continuando de esta manera con la expansión encarada.', 0, 'cafe_21.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d52555.52311465655!2d-58.45774757533089!3d-34.58594584861774!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccad12db25819%3A0x201cc203e1f96b70!2sAlimentari!5e0!3m2!1ses-419!2sar!4v1545095848834'),
(22, 'La Puerto Rico', 'Adolfo Alsina 416', '43312215', 'contacto@lapuertoricocafe.com.ar', 'www.lapuertoricocafe.com.ar', 'Microcentro', '07:00:00', '20:00:00', 4, NULL, 'activo', 'La Puerto Rico es una tradicional cafetería en el centro de Buenos Aires. Forma parte de los 57 bares notables de la ciudad, y se encuentra a metros de la Plaza de Mayo.\r\n\r\nUbicado en Adolfo Alsina 416, el café fue abierto por Don Gumersindo Cabedo en noviembre de 1887.​ Aunque originalmente estaba en un local de la calle Perú, en 1925 se trasladó a su lugar actual, una antigua casa de dos plantas de estilo italianizante, aunque La Puerto Rico fue remodelada en los años \'30 y tomó una decoración art decó, incluyendo la tipografía en la marquesina que se conserva hoy en día.\r\n\r\nLa fachada del local combina el granito negro revistiendo los muros, con amplias vidrieras, carpintería de madera y una puerta de dos hojas con vidrios esmerilados con la síntesis de una taza de café y su nombre2.\r\n\r\nLos interiores están adornados con baldosas graníticas con caras de negritos, el logo del establecimiento, y hay 70 mesas con una capacidad de 180 comensales. Además se vende café en grano al público, y masas secas. Desde 1999, la Legislatura de la Ciudad Autónoma de Buenos Aires declaró a La Puerto Rico como \"Sitio de Interés Cultural\" y \"Bar Notable\".', 0, 'cafe_22.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3283.7612027769183!2d-58.374594085306754!3d-34.61019948045783!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccad4af05dbb5%3A0x4b636da845b693dc!2sLa+Puerto+Rico!5e0!3m2!1ses-419!2sar!4v1545095896378'),
(23, 'Café Zavalía', 'Bolívar 1422', '41490964', 'cafezavalia@gmail.com', NULL, 'San Telmo', '14:00:00', '19:30:00', 4, NULL, 'activo', 'Tostamos nuestro Café , el mismo proviene de la Coop. Capucas, ubicada en Copan al occidente de Honduras.\r\nTostamos nuestro café, el mismo proviene de la Coop. Capucas, ubicada en Copan al occidente de Honduras.\r\n', 0, 'cafe_23.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d205.19990760634857!2d-58.372299527479186!3d-34.62442318840713!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccb2d50c51fdf%3A0x4f5ddf1767126dc7!2sHotel+Zavalia!5e0!3m2!1ses-419!2sar!4v1545096044961'),
(24, 'Lobo Café Puerto Madero', 'Pierina Dealessi 1330', '45178195', '', 'www.lobo.cafe', 'Puerto Madero', '08:00:00', '00:00:00', 3, NULL, 'activo', 'Cafés & Tés sibaritas de pura estirpe para tomar en nuestro local, hechos a la perfección por nuestros baristas o listos para llevar con certificado de Origen.\r\nNuestros Blends siguen a lo largo de toda nuestra propuesta en postres, bebidas frías & dulces. Comida generosa y detallista, cuyo principal objetivo es hacernos sentir bien: reconfortados, contentos con una agradable sensación de nostalgia que recupere los clásicos Argentinos para darles un toque gourmet y novedoso.', 0, 'cafe_24.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3283.6700519214937!2d-58.36588568530663!3d-34.61250398045729!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95a334d6366f1c27%3A0x10c1cf638c0be29a!2sLobo+Caf%C3%A9+Puerto+Madero!5e0!3m2!1ses-419!2sar!4v1545096090714'),
(25, 'Confitería La Unión', 'Av. Belgrano 1101', '43832987', '', NULL, 'Monserrat', '07:00:00', '20:00:00', 3, NULL, 'activo', 'Sandwicheria y confitería La Unión. Venta de Tortas, tartas, masas finas, masas secas, menudencias, empanaditas, arrolladitos.', 0, 'cafe_25.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d105077.4670180809!2d-58.43373765911981!3d-34.612483947533356!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccad747ddb62d%3A0x4ee1607a08ee6e40!2zQ29uZml0ZXLDrWEgTGEgVW5pw7Nu!5e0!3m2!1ses-419!2sar!4v1545096197496'),
(26, 'Bar Británico', 'Av. Brasil 399', '43612107', '', NULL, 'San Telmo', '06:00:00', '03:00:00', 4, NULL, 'activo', 'El Bar Británico es un café Notable de la ciudad de Buenos Aires, ubicado en una esquina típica del barrio de San Telmo, en las calles Brasil y Defensa, frente a la entrada principal del Parque Lezama.\r\n\r\nAntes de tomar su nombre actual, el local era la pulpería \"La Cosechera\". Según el relato histórico, allí concurrían los ingleses, entre ellos ex combatientes de la primera guerra mundial. También se cuenta que buena parte de los británicos que acudían eran empleados del Ferrocarril del Sud, una compañía del Reino Unido que operaba el tren que partía de Plaza Constitución (hoy Ferrocarril Roca). Debido a los concurrentes en gran parte ingleses, es que se le habría cambiado el nombre a la pulpería por el de \"Bar Británico\" en 1928. Durante la Guerra de Malvinas, época en donde la Dictadura militar impuso el cambio de nombres de todo espacio que hiciera referencia a Inglaterra, el bar se llamó temporalmente “El tánico”, borrando de los vidrios la sílaba \"Bri-\".\r\n\r\nEl Bar Británico, fue atendido hasta la década del 2000 por José Trillo, Pepe Miñones y Manolo Pose, los tres españoles que en la década de 1960 habían comprado el fondo de comercio del lugar. Uno de los mitos del lugar decía que el nombre fue una solución salomónica para acallar disidencias internas: uno de sus dueños era republicano y otro franquista confesó y, al menos en sus años mozos, debían alternar turnos para no verse las caras.\r\n\r\nLos “gallegos” administradores, tomaron la costumbre de mantener el café abierto las 24 horas, y por ellos logró constituirse como refugio de personalidades de la cultura y la bohemia. Su entorno inspiró a Ernesto Sabato para ambientar escenas de su novela Sobre héroes y tumbas y su continua vigilia lo hicieron refugio obligado de noctámbulos y \"tacheros\".\r\n\r\nEl Británico fue declarado Bar Notable en 1998 por la Comisión respectiva, dependiente del Ministerio de Cultura, que también se movilizó por su continuidad. También ha sido locación para la filmación de escenas de varias películas argentinas e internacionales, como Diarios de motocicleta y Tetro, de Francis Ford Coppola.\r\n\r\nEn 2006, Juan Pablo Benvenuto, presidente de la Sociedad San Andrés, propietaria del inmbueble, argumentó la “necesidad de mejoras” y se negó a renovar el contrato al local. Cuando intentó recuperar la posesión, se encontró con la oposición de vecinos y parroquianos, que en un gesto simbólico le arrojaron las llaves de sus casas, bajo la imagen de que preferían entregar sus casas antes que renunciar al bar donde se juntaban.​ Incluso el vicepresidente de la Nación Daniel Scioli o el cantautor español Joaquín Sabina participaron del reclamo durante su visita a Buenos Aires en ese año. Con una juntada de firmas, se demostró que al menos 14.000 personas estaban en contra del cierre del simbólico café.\r\n\r\nEl periodista y escritor Enrique Symns relató escenas del pasado junto a los miembros de los Redonditos de Ricota, legendaria banda del rock argentino, y otros artistas nacionales como el acto Daniel Aráoz, el violinista Jorge Pinchevsky, el bajista Alejandro Medina, e integrantes de la banda Los Piojos. Fernando Iglesias relató también las reuniones del Foro del Bar Británico, organizado por Juan Carlos Gené en 2002, y reunió a intelectuales como Horacio González, Ana Lía Efron, Jack Nahmias y Alvaro Abós, a músicos como Raúl Carnota, a cineastas como Cholo Ruderman y Miguel Mato, y a otros.​ A pesar de los esfuerzos, el bar fue finalmente desalojado en junio de 2006, con un operativo policial.\r\n\r\nFinalmente, el local fue comprado por Agustín Souza, quien decidió restaurarlo y agregar muebles nuevos (como un piso de baldosas graníticas, un aire acondicionado nuevo, una choppera y otras adiquisiciones), para poder reabrirlo en febrero de 2007, con un evento público festejado por vecinos y habitués y cubierto por todos los medios masivos de comunicación de la ciudad. El 12 de agosto de 2014, por la imposibilidad de mantenerlo, fue nuevamente cerrado. Pero reabrió sus puertas el 11 de noviembre por los hermanos Aznarez.', 0, 'cafe_26.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3283.1667023186606!2d-58.37323178530618!3d-34.625227380453985!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95a334cd48ec24cb%3A0x818b6562117a30c7!2sBar+Brit%C3%A1nico!5e0!3m2!1ses-419!2sar!4v1545096245386'),
(27, 'Caffé del Doge', 'Paraná 905', '48116927', 'info@caffedeldoge.com.ar', 'caffedeldoge.com.ar', 'San Nicolás', '07:00:00', '21:00:00', 3, NULL, 'activo', 'Se trata de un concepto italiano de torrefacción tradicional que posee más de 50 años de historia, partiendo de la elaboración de distintas variedades de café, su tostado, selección y venta desde el centro mismo de la Venecia histórica.\r\n\r\nHacia principios de los años `90, la empresa fundadora es adquirida por un grupo empresario, potencializándose la comercialización del producto ya no sólo en locales propios, sino en los de terceros, sea servido en la tienda o expendido en grano ó molido a la vista para llevar desde mostrador.\r\nEn esa línea, los nuevos propietarios instalan una planta de elaboración fuera de Venecia (en el Parque Industrial de Padua), con un sistema de automatización de la producción, saliendo de lo meramente artesanal, dados los elevados volúmenes de venta logrados, manteniendo la esencia del café estilo veneciano.\r\n\r\nEn el año 2006 un grupo empresario se interesa en traer el producto hacia  la Argentina , dando de esta forma inicio a CAFFE DEL DOGE ARGENTINA.\r\n\r\nEn ese mismo año se establece la primera distribuidora de café de esta marca, fuera del continente europeo, con base en Buenos Aires, con el proyecto de conformar una red de comercialización con presencia en bares, confiterías, restaurantes y hoteles.\r\n\r\nAhora nuestro modelo de franquicias comerciales, con un formato de inversión reducida a moderada, el más sólido respaldo institucional y de producto, exclusividad de uso de marca en el territorio concedido y, por supuesto, ¡el más delicioso café estilo italiano!', 0, 'cafe_27.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d52530.67041737994!2d-58.40606272510512!3d-34.62522235692192!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccab8b78bb82d%3A0x2dee6014978dc6e0!2sCaff%C3%A9+del+Doge!5e0!3m2!1ses-419!2sar!4v1545096339409'),
(28, 'Le Blé', 'Marcelo Torcuato de Alvear 2199', '48228979', 'pasion@leble.com.ar', 'www.leble.com.ar', 'Recoleta', '08:00:00', '20:00:00', 4, NULL, 'activo', 'Amamos lo que hacemos y trabajamos para que Le Blé sea ante todo una experiencia. Pensamos cada proyecto como una nueva casa “Le Blé”, dónde buscamos conjugar el espíritu propio de la marca, la arquitectura única del local con el alma del barrio. Nuestra propuesta no es pretenciosa, simplemente buscamos devolver al barrio su protagonismo de antes. Una atención cálida y amable, un ambiente acogedor y por sobretodo, un producto casero y de calidad. Estas son nuestras razones de existir y la clave de nuestro éxito.', 0, 'cafe_28.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13138.682313357926!2d-58.41407337435765!3d-34.58720104834545!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcca9698f6d351%3A0x8d7a85609aeb613d!2zTGUgQmzDqQ!5e0!3m2!1ses-419!2sar!4v1545096442787'),
(29, 'Palacete Express', 'Uruguay 467', '43712312', '', NULL, 'San Nicolás', '08:30:00', '19:30:00', 4, NULL, 'activo', 'Confitería / Cafetería. Especialidad en elaboración artesanal.', 0, 'cafe_29.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d105014.20471418672!2d-58.39211735726968!3d-34.6624326734127!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccac68fc2463d%3A0x16da191a2ed1e3e1!2sPalacete+Express!5e0!3m2!1ses-419!2sar!4v1545096499232'),
(30, 'La Paz', 'Av. Corrientes 1593', '43733647', '', NULL, 'San Nicolás', '08:00:00', '01:00:00', 3, NULL, 'activo', 'Mítico bar de la calle Corrientes, en el que se juntaban los intelectuales y artistas de los años \'60 a discutir sobre política y arte.', 0, 'cafe_30.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.0037382446194!2d-58.391452685306945!3d-34.604066980459386!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccac1510aa10d%3A0x5cd0e8fd4abc010a!2sLa+Paz!5e0!3m2!1ses-419!2sar!4v1545096549545'),
(31, 'Gaspar Café', 'Esmeralda 624', '43260279', 'contacto@gasparcafe.com.ar', 'www.gasparcafe.com.ar', 'Microcentro', '08:00:00', '19:00:00', 4, NULL, 'activo', 'Café - Pastelería de Autor - Sándwiches - Ensaladas - Bar - Comidas - Take Away.\r\nSirve desayuno, almuerzo, cena, bebidas y café.', 0, 'cafe_31.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6568.233645185847!2d-58.38902167611575!3d-34.6012073218404!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccac9457eaf55%3A0x4ba57bc3dcfeac7c!2sGaspar+Caf%C3%A9!5e0!3m2!1ses-419!2sar!4v1545096601280'),
(32, 'Ola Rolls&Café', 'Suipacha 743', '50261943', 'olarollsycafe@gmail.com', NULL, 'Microcentro', '07:30:00', '19:00:00', 4, NULL, 'activo', 'Ola y vos. Ese encuentro siempre es único, irrepetible. Una fuerza mayor te empuja, te atraviesa, y una serie de mini fuerzas te van despertando sensaciones, sutiles, profundas, mágicas. Una ola te pone a flote en el mismo momento en el que te sumerge. Te entregás, flotás como una sensación que pareciera no te perteneciera, pero si, te das cuenta que esa sensación es tuya como todas las demás. Cerrás los ojos para no perderte de nada, te parece mentira que los sentidos sean solo 5. Una sensación despierta otra, y otra. No querés que termine. Estas invadido por la ola, completamente, felíz, algo nuevo pasó en esta que no habia pasado antes, te lo guardás sabiendo que solo te paso a vos. La ola te dejó, estas agotado de sensibilidad, agradeces que te haya pasado, agradeces sentir y te preparás para la próxima.', 0, 'cafe_32.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.1772570430544!2d-58.381768685306994!3d-34.59'),
(33, 'Plácido Café Bar', 'Juncal 2107', '48245778', '', 'placido-cafe-bar.business.site', 'Recoleta', '08:30:00', '20:00:00', 4, NULL, 'activo', 'Cinnamon Rolls - Cheese Rolls - Almuerzos Sanos y Ricos - Café - Take away - Delivery.\r\nCafé Gourmet - Elaborado y horneado diariamente.\r\nLlegó una OLA a la calle Suipacha buscando gente distinta, única, especial. Gente que se deje llevar por los aromas, que se deje envolver por los sabores, que sienta… que sienta la música y disfrute de los colores, el arte, la lectura y la vida. Arribó una OLA que lo que busca es hacerte feliz. Ola, ¿nos conocemos?', 0, 'cafe_33.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.4517238080452!2d-58.39976298530722!3d-34.59273718046239!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcca97777c63df%3A0xcc31d005bbcefae4!2zUGzDoWNpZG8gQ2Fmw6kgQmFy!5e0!3m2!1ses-419!2sar!4v1545096717880'),
(34, 'Smeterling', 'Uruguay 1308', '48139700', 'info@smeterling.com', 'www.smeterling.com', 'Recoleta', '10:00:00', '20:00:00', 4, NULL, 'activo', 'Pastelería de Isabel Vermal ubicada en la Ciudad de Buenos Aires.', 0, 'cafe_34.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.4540326385313!2d-58.38993638530724!3d-34.59267878046238!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccabb94460d25%3A0xcbae21c81c2ac489!2sSmeterling!5e0!3m2!1ses-419!2sar!4v1545096779015'),
(35, 'Petit Colón', 'Libertad 505', '43827306', 'info@petitcolon.com.ar', 'petitcolon.com.ar', 'San Nicolás', '07:00:00', '23:30:00', 4, NULL, 'activo', 'El Petit Colón, es uno de los bares notables de la ciudad de Buenos Aires. El paso del tiempo naturalmente lo dañó pero hoy se encuentra restaurado y de regreso. Sus amplios ventanales vuelven a mostrarnos las tipas y jacarandaes de ese espacio en donde se desarrollaron hechos que marcaron la historia de la ciudad y el país.', 0, 'cafe_35.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.0689880014784!2d-58.38586468530688!3d-34.60241698045987!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccac61a9a4d7b%3A0xda04d64254dd0460!2sPetit+Colon!5e0!3m2!1ses-419!2sar!4v1545096851520'),
(36, 'Arisco Bar', 'Av. Callao 1391', '48131512', '', NULL, 'Recoleta', '08:30:00', '22:00:00', 4, NULL, 'activo', 'Pequeño café ubicado en Recoleta, destacado por los platos diet y sin harina. También ofrece postres dietéticos, y toda la prensa de la semana.', 0, 'cafe_36.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.4463035778667!2d-58.39491568530716!3d-34.59287428046233!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccabd0bc3eb4b%3A0xa00cab7c0380c55c!2sArisco+Bar!5e0!3m2!1ses-419!2sar!4v1545096886296'),
(37, 'Tuo Tempo', 'Av. Pueyrredón 1205', '49611046', '', NULL, 'Recoleta', '07:30:00', '21:00:00', 4, NULL, 'activo', 'Tuo Tempo Coffee House es un lugar pensado para que puedas disfrutar de los mas ricos desayunos, almuerzos y meriendas.', 0, 'cafe_37.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26275.57083028932!2d-58.41023663664132!3d-34.592873010489356!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcca91abb6845b%3A0xc314ccef2408e5a1!2sTuo+Tempo!5e0!3m2!1ses-419!2sar!4v1545096947400'),
(38, 'Café Dos Escudos', 'Juncal 901', '43270135', 'info@dosescudos.net', 'www.dosescudos.net', 'San Nicolás', '07:00:00', '20:30:00', 4, NULL, 'activo', 'Somos una confitería y cafetería tradicional de Buenos Aires. Con muchos años de trayectoria y gran experiencia. Ubicados en Montevideo 1690 y Juncal 905.', 0, 'cafe_38.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.4907066090154!2d-58.385865985307284!3d-34.59175113046259!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccab6e3d1ba1d%3A0xa0820e10b1f5c7de!2sCaf%C3%A9+Dos+Escudos!5e0!3m2!1ses-419!2sar!4v1545096993056'),
(39, 'Tango Cafetería', 'Av. Pres. Roque Sáenz Peña 864', '43288088', '', NULL, 'Microcentro', '07:00:00', '19:00:00', 4, NULL, 'activo', 'Café - Bar - Restaurant atendido por sus dueños, ubicado a metros de la conocida Diagonal Norte.', 0, 'cafe_39.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26275.926054521104!2d-58.401186936643825!3d-34.59174986050856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccace1538ffc3%3A0x882e72d70580ae19!2sTango+Cafeter%C3%ADa!5e0!3m2!1ses-419!2sar!4v1545097057695'),
(40, 'Tostado Café Club', 'Av. Córdoba 1501', '08005552233', 'hola@tostadocafeclub.com', 'www.tostadocafeclub.com', 'San Nicolás', '08:00:00', '20:00:00', 4, NULL, 'activo', 'Tostado Café Club nace en 2015 con una misión: reivindicar al Tostado porteño. Para ello seleccionamos cada ingrediente con mucho cuidado: nuestros panes, creados por Próspero Velazco, son de masa madre, 100% homemade. En nuestra cocina diseñamos un exclusivo Mix de quesos en hebras (parmesano, gruyere y mozzarella) para el Tostado de la Casa, y preparamos los sandwichs en el momento con productos frescos del día. Además, el Tostado se sirve bien acompañado por nuestro café -preparado por baristas, con un sabor y textura única-, o nuestras aguas naturales hechas en el día con frutas frescas. Nuestro equipo está conformado por tostadores profesionales, entrenados y capacitados. Todo esto en un entorno confortable, en el que fusionamos un diseño sustentable con toques modernos. En Tostado, tenemos Living, un espacio de coworking para estudiar, trabajar o simplemente disfrutar; y Expendio para que los clientes pasen, pidan y lleven!', 0, 'cafe_40.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26275.926845460242!2d-58.40118694789474!3d-34.59174735967676!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccab8aa406939%3A0x839906fde5da64bc!2sTostado+Caf%C3%A9+Club!5e0!3m2!1ses-419!2sar!4v1545097098687'),
(41, 'Import Coffee Company', 'Libertad 1150', '48117764', '', 'www.import.com.ar', 'Retiro', '09:00:00', '21:00:00', 4, NULL, 'activo', 'Coffee & Delicatessen Retail Store \r\nIlly - Guylian - Hero - Jules Destroyer - Merci - Munz - Toffifee - Walkers - Weathers', 0, 'cafe_41.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6568.39100762905!2d-58.38346842611581!3d-34.599217521842355!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccab9c7b9eb95%3A0xe32667969c04b124!2sImport+Coffee+Company!5e0!3m2!1ses-419!2sar!4v1545097145367'),
(42, 'Datri Café', 'Paraguay 901', '43288383', '', NULL, NULL, '07:55:00', '19:30:00', 4, NULL, 'activo', 'Un espacio para el encuentro. Una bienvenida a la calma en el corazón de Microcentro. En Datri Café siempre hay espacio para vos.', 0, 'cafe_42.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.257208401837!2d-58.38210768530699!3d-34.59765698046114!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccac9ce709a01%3A0xcd2674df70af8e20!2sDatri+Caf%C3%A9!5e0!3m2!1ses-419!2sar!4v1545097183319'),
(43, 'Bar La Academia', 'Callao 368', '43722765', 'bar_laacademia@hotmail.com', NULL, 'San Nicolás', '00:00:00', '23:59:00', 3, NULL, 'activo', 'Bar Notable de Buenos Aires. Abierto las 24 hs los 365 días del año desde 1930. Callao 368, Buenos Aires, Argentina.', 0, 'cafe_43.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3283.9720812450373!2d-58.3945836853068!3d-34.60486748045927!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccac19ac876a3%3A0x1e155be5c1e7a2d2!2sBar+%22La+Academia%22!5e0!3m2!1ses-419!2sar!4v1545097223679'),
(44, 'Café Valerio', 'Lavalle 799', '43939456', '', NULL, 'San Nicolás', '06:00:00', '02:00:00', 4, NULL, 'activo', 'Café - Bar - Restaurant con amplia variedad de menú, ubicado a metros del Teatro Maipo.', 0, 'cafe_44.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3283.9720812450373!2d-58.3945836853068!3d-34.60486748045927!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccac9e3c9852b%3A0xe8f78051f4ff6a31!2sCaf%C3%A9+Valerio!5e0!3m2!1ses-419!2sar!4v1545097256951'),
(45, 'Mar Azul', 'Tucumán 1700', '58114347', 'cafemarazul@yahoo.com.ar', 'cafemarazul.wixsite.com/cafemarazul', 'San Nicolás', '08:00:00', '20:00:00', 4, NULL, 'activo', 'A la mañana, al mediodía y a la noche te esperan las mejores ofertas  para disfrutar solo, o con la mejor companía. ', 0, 'cafe_45.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.086929229946!2d-58.39341088530701!3d-34.60196328045996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccac0f6cdf64d%3A0xf88b7f75c692e9dd!2sMar+Azul!5e0!3m2!1ses-419!2sar!4v1545097300609'),
(46, 'Bogotá', 'Montevideo 1300', '48119163', 'bogotacafedeorigen@gmail.com', NULL, NULL, '07:00:00', '23:00:00', 4, NULL, 'activo', 'Restaurante y confitería familiar con desayunos, brunch, almuerzos,cenas y tragos.', 0, 'cafe_46.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26269.789897963197!2d-58.438297636602336!3d-34.61114671017673!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccabc183c809b%3A0x34464e6bbc8931d2!2zQm9nb3TDoQ!5e0!3m2!1ses-419!2sar!4v1545099457622'),
(47, 'Le Moulin de la Fleur', 'Talcahuano 888', '48117509', 'lemoulindelafleur@gmail.com', NULL, 'San Nicolás', '08:00:00', '21:00:00', 4, NULL, 'activo', 'Le Moulin de la Fleur es una panadería y pastelería francesa abierta en febrero de 2014 en calle Talcahuano 888 y en Av Pueyrredon 1824 Recoleta.', 0, 'cafe_47.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6569.055732626715!2d-58.399471226117235!3d-34.59081117185083!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcca9bd78c49b5%3A0xa26aba126e5e1269!2sLe+Moulin+de+la+Fleur!5e0!3m2!1ses-419!2sar!4v1545099504980'),
(48, 'Café Parisien', 'Lavalle 999', '43252126', '', NULL, 'San Nicolás', '08:00:00', '01:00:00', 3, NULL, 'activo', 'Tradicional café ubicado a metros de la Av. 9 de Julio.', 0, 'cafe_48.jpg', 'https://www.google.com/maps/place/Caf%C3%A9+Parisien/@-34.602412,-58.380818,15z/data=!4m2!3m1!1s0x0:0x4fb2403250551dad?ved=2ahUKEwj6kuvNsqnfAhVFDpAKHXf6Bv8Q_BIwDnoECAYQCA');
INSERT INTO `t_cafeteria` (`ID_cafeteria`, `nombre`, `direccion`, `telefono`, `email`, `sitio_web`, `sucursal`, `horario_apertura`, `horario_cierre`, `valoracion`, `votos`, `status`, `descripcion`, `id_usuario`, `img_portada`, `coordenadas_maps`) VALUES
(49, 'Clásica y Moderna', 'Av. Callao 892', '48128707', 'libreriaclasicaymoderna@gmail.com', 'www.clasicaymoderna.com', 'Recoleta', '09:00:00', '01:00:00', 4, NULL, 'activo', 'Librería Bar fundada en 1938, es hoy un lugar emblemático de Buenos Aires. Se puede disfrutar de almuerzos y cenas acompañados de espectáculos musicales, muestras de pintura y presentaciones de libros.', 0, 'cafe_49.jpg', 'https://www.google.com/maps/place/Cl%C3%A1sica+y+Moderna/@-34.598956,-58.393286,15z/data=!4m5!3m4!1s0x0:0x42786880e3c726c2!8m2!3d-34.598956!4d-58.393286'),
(50, 'Alma Café', 'Av. Dr. José María Ramos Mejía 1398', '', 'almabuendiacafe@gmail.com', '', 'Retiro', '06:00:00', '21:00:00', 4, NULL, 'activo', '¡Buen día Buenos Aires!\r\nNos encontrás en Abasto Shopping, Alto Palermo, Microcentro, Estación Constitución, Retiro, Once y Recoleta Urban Mall.', 0, 'cafe_50.jpg', 'https://www.google.com/maps/place/Alma+Caf%C3%A9/@-34.5910356,-58.3763393,17z/data=!4m12!1m6!3m5!1s0x95bccab4889934c7:0x1c9dcca0dccdbaec!2sAlma+Caf%C3%A9!8m2!3d-34.59104!4d-58.3741506!3m4!1s0x95bccab4889934c7:0x1c9dcca0dccdbaec!8m2!3d-34.59104!4d-58.3741506'),
(51, 'Esquina Homero Manzi', 'Av. San Juan 3601', '49578488', 'info@esquinahomeromanzi.com.ar', 'www.esquinahomeromanzi.com.ar', 'Boedo', '08:00:00', '01:00:00', 4, NULL, 'activo', 'La Esquina de San Juan y Boedo es un lugar histórico y tradicional de la ciudad de Buenos Aires. El bar construído en esa esquina en el año 1927, se convirtió en el símbolo de la cultura urbana de la década del cuarenta. Por sus mesas, pasaron los músicos que hicieron del tango la expresión artística más representativa de la ciudad.\r\nEl encanto y la importancia cultural del lugar, declarado edificio histórico, atrae diariamente a cientos de turistas. Allí radica la necesidad de recuperar el lugar, y que nuevamente se concentre toda la magia del 2×4.\r\nSan Juan y Boedo representa el verdadero arrabal y en este emplazamiento se busca evocar los tiempos del malevaje y empedrado, conjuntamente con el confort que hoy se puede brindar.\r\nEl desafío del emprendimiento, que fue llevado a cabo por el arquitecto Carlos Liuzzi, pasó entonces por reciclar el edificio para que vuelva a ser utilizado como punto de encuentro y de interés cultural, conservando y restaurando sus fachadas originales y los criterios de edificación de la época en que fue construido.\r\nSu reapertura implica un moderno acontecimiento, con equipos que garanticen el confort y las prestaciones necesarias para satisfacer las exigencias de la ciudad en el año 2000.\r\nEste proyecto, muy relacionado con nuestra tradición e historia, trasciende los intereses porteños y alcanza a todos los amantes de la música ciudadana.', 0, 'no_imagen.jpg', 'https://www.google.com/maps/place/Esquina+Homero+Manzi/@-34.6253379,-58.4162683,15z/data=!4m2!3m1!1s0x0:0x264a79db382cdf4c?ved=2ahUKEwiJ4qirs6nfAhUJjJAKHXwhBTAQ_BIwEXoECAUQCA'),
(52, 'Alvear Roof Bar', 'Av. Alvear 1891 - Piso 11', '48082100', 'reservas@alvear.com.ar', 'www.alvearpalace.com/restaurantes-bares/roof-', 'Recoleta', '18:00:00', '00:00:00', 4, NULL, 'activo', 'Atardeceres en Buenos Aires. Música house y una terraza a cielo abierto que brindan espléndidas vistas a la Recoleta y sus parques. El Alvear Roof Bar crea un ambiente ideal para relajarse en cómodos sillones y admirar inolvidables puestas de sol desde el piso 11.\r\n\r\nAl caer la noche, se transforma la mejor opción de la ciudad para disfrutar de pequeños bocados, selección de platos ligeros y originales tragos de autor', 0, 'no_imagen.jpg', 'https://www.google.com/maps/place/Alvear+Roof+Bar/@-34.5876991,-58.3888012,15z/data=!4m2!3m1!1s0x0:0x593c0bf87934d3a8?ved=2ahUKEwjtuvm1s6nfAhVJhJAKHa0WAcAQ_BIwD3oECAQQCA'),
(53, 'Cao', 'Av. Independencia 2400', '49433694', '', 'www.losnotables.com.ar/bar-de-cao/', 'Balvanera', '08:00:00', '02:00:00', 4, NULL, 'activo', 'Referencia insoslayable del barrio de San Cristóbal, Bar de Cao transmite la calidez de una casa de familia con la estética de un almacén con despacho de bebidas. Fue declarado Notable por el Ministerio de Cultura de la Ciudad de Buenos Aires y Sitio de Interés Cultural por la Legislatura Porteña.', 0, 'no_imagen.jpg', 'https://www.google.com/maps/place/Cao/@-34.6186594,-58.3999782,15z/data=!4m2!3m1!1s0x0:0xe33094b5e2f1a261?ved=2ahUKEwjp8Ojds6nfAhUEDJAKHVqiAq0Q_BIwDnoECAYQCA'),
(54, 'Celta Bar', 'Sarmiento 1702', '43717338', 'mginestaproduccion@hotmail.com', 'www.losnotables.com.ar/celta-bar/', 'San Nicolás', '08:00:00', '02:00:00', 4, NULL, 'activo', 'Con el compás nostálgico del tango, el swing del jazz y el ritmo del rock, Celta Bar le pone música al barrio de San Nicolás. Fue declarado Notable por el Ministerio de Cultura de la Ciudad de Buenos Aires y Sitio de Interés Cultural por la Legislatura Porteña.', 0, 'no_imagen.jpg', 'https://www.google.com/maps/place/Celta+Bar/@-34.6056563,-58.3909154,15z/data=!4m2!3m1!1s0x0:0x3fba31ea7efb7ffd?ved=2ahUKEwj0m7Dus6nfAhUEFJAKHYCoDxgQ_BIwDnoECAYQCA'),
(55, 'El Querandí', 'Perú 302', '51991770', 'info@querandi.com.ar', 'querandi.com.ar', 'San Telmo', '12:00:00', '00:00:00', 4, NULL, 'activo', 'Situado en el casco histórico de la ciudad, en el barrio de San Telmo, El Querandí cuenta con la mejor propuesta de cena show de tango en Buenos Aires. Esta vieja casona de 1920, restaurada cuidadosamente en 1992 luego de permanecer 12 años cerrado, se caracteriza por haber respetado con absoluta devoción la atmósfera que poseía a principios del siglo pasado; agregando, un servicio de excelencia, una exquisita carta gastronómica con platos regionales típicos argentinos y un espectáculo de tango que brilla por su calidad y autenticidad.\r\n\r\nTodo esto, desde luego es posible gracias al sincero respeto que El Querandí tiene por su pasado; buscando en todo momento mantener viva el alma de tanguería, conservando además un espacio cálido, agradable e íntimo, donde el cliente es atendido en cada detalle para que pueda experimentar una noche que quedará impresa para siempre en su memoria.\r\n\r\nNuestro estilo, vinculado estrechamente al arte, a la cultura y a la gastronomía, se expresa de manera inigualable en nuestra cena show de tango en Capital Federal; una forma ideal para vivir en plenitud la experiencia del tango en un lugar típico, con profundas raíces históricas, y con la posibilidad degustar un amplio menú de platos tradicionales de nuestro país, acompañados por nuestros sorprendentes vinos.\r\n\r\nEl Querandí lo invita a descubrir sus antiguos misterios, a situarse en la Buenos Aires de principios de siglo XX, a recorrer desde allí la historia del tango, a experimentarla de manera intensa y apasionada a través de sus acompasados acordes y de la sensualidad de su danza para luego, mantenerla viva por siempre en el recuerdo. Nuestro espectáculo, sorprendente por la calidad y el prestigio de sus artistas, nos permite revivir la historia del tango noche a noche, después de saborear lo mejor de la cocina argentina.', 0, 'no_imagen.jpg', 'https://www.google.com/maps/place/Cena+%26+Show+Tango+-+Querand%C3%AD/@-34.6115663,-58.3747196,15z/data=!4m2!3m1!1s0x0:0xfc1e8f43951446a1?ved=2ahUKEwiuq5rns6nfAhXRPpAKHT1-AlQQ_BIwDHoECAUQCA'),
(230, 'asdas', 'asdasd', '456456', 'lalfghfgho@cafeteriasba.com', 'fghfgh', '45y', '05:00:00', '05:00:00', 0, 0, 'activo ', NULL, NULL, 'no_imagen.jpg', '45herfy'),
(231, 'Cafeteria 1', 'Av cafeteria 23', '91160503573', 'cafeteria@test.com.ar', 'www.crisolweb.com.ar', 'Colegiales', '04:00:00', '14:00:00', 0, 0, 'inactivo', NULL, NULL, 'no_imagen.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3285.2515648662925!2d-58.460312384771214!3d-34.57250068046756!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcb5d97a865e79%3A0x387bce44413adfb3!2sCrisol+Colegiales!5e0!3m2!1ses-419!2sar!4v1545166214948'),
(232, 'Crisol', 'Cap. Gral. Ramón Freire 1502', '113242523', 'info@crisolweb.com.ar', 'www.crisolweb.com.ar', 'Colegiales', '09:00:00', '21:00:00', 0, 0, 'activo ', 'La calidad de nuestro café tiene relación con el proceso super cuidado desde un principio.\r\n\r\nCada paso es importante, comenzando por la selección de los granos que nuestro maestro tostador utiliza para crear blends exclusivos.\r\n\r\nLuego, la capacitación de los baristas, quienes logran la molienda adecuada y calibrada, el gramaje exacto, la presión justa sobre el café ya molido que garantiza una buena extracción y la temperatura correcta del agua que junto al tiempo necesario. Y para finalizar, la pasión crisolera para servir cada taza del mejor café.', NULL, 'no_imagen.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3285.251564866294!2d-58.46031238553127!3d-34.57250068046752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcb5d97a865e79%3A0x387bce44413adfb3!2sCrisol+Colegiales!5e0!3m2!1ses!2sar!4v1545178252639'),
(233, 'qwe', 'qwe', NULL, 'qwe@l.com', NULL, 'qwe', NULL, NULL, 0, 0, 'inactivo', NULL, NULL, 'no_imagen.jpg', NULL),
(234, 'sugerencia ', 'cordoba 554', NULL, 'sugerencia@gmail.com', NULL, 'retiro', NULL, NULL, 0, 0, 'activo', NULL, NULL, 'no_imagen.jpg', NULL),
(235, 'Le ble ', 'Av Cabildo 1400', NULL, 'info@info.com', NULL, 'Belgrano', NULL, NULL, 0, 0, 'pendiente', NULL, NULL, 'no_imagen.jpg', NULL),
(236, '1', '22', NULL, 'lalo@lalo.com', NULL, 'fdssdf', NULL, NULL, 0, 0, 'pendiente', NULL, NULL, 'no_imagen.jpg', NULL);

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
(1, 'La responsabilidad que cada uno de nosotros pone en su tarea, hace de Coffee Town la primera cafetería de cafés de Especialidad en Argentina y epicentro del café saludable en esta parte del mundo.\r\n\r\nDesde el Mercado de San Telmo, inmersos en un ambiente de alimentos gourmet, quienes hacemos Coffee Town le proponemos a través de nuestros cafés iniciar juntos un viaje por la ruta de los sentidos ', '2018-11-25 05:00:00', 'activo', 30, 3, 3, 1),
(2, 'Desde el Mercado de San Telmo, inmersos en un ambiente de alimentos gourmet, quienes hacemos Coffee Town le proponemos a través de nuestros cafés iniciar juntos un viaje por la ruta de los sentidos\n\nDesde el Mercado de San Telmo, inmersos en un ambiente de alimentos gourmet, quienes hacemos Coffee Town le proponemos a través de nuestros cafés iniciar juntos un viaje por la ruta de los sentidos', '2018-11-24 05:00:00', 'activo', 30, 3, 5, 1),
(3, 'HOLA PROBANDO COMENTARIOS EN ESTA CAFETERIA HERMOSA', '2018-11-26 01:37:35', 'activo', 30, 3, 1, 1),
(4, 'gdfgdfgdfg', '2018-11-26 05:10:16', 'inactivo', 30, 3, 3, 0),
(5, '4144444444', '2018-11-29 05:20:26', 'inactivo', 30, 3, 1, 0),
(6, '4144444444', '2018-11-29 05:20:32', 'inactivo', 30, 3, 1, 0),
(7, 'ghhhh hhh55555 55555555555555', '2018-11-29 05:23:21', 'inactivo', 30, 3, 1, 0),
(8, 'ghhh hhhh555 55555555 55555555', '2018-11-29 05:23:23', 'inactivo', 30, 3, 1, 0),
(9, '1111111111111111111111111111111111111111111111', '2018-11-29 05:24:15', 'inactivo', 30, 3, 1, 0),
(10, '222 2222222 222222222222 22222222222222222 2222222', '2018-11-29 05:25:13', 'activo', 30, 3, 1, 1),
(11, 'uuuuuuuuuuuuu', '2018-11-29 05:25:32', 'activo', 29, 3, 1, 1),
(12, '121212 12 12 \n12 12 \n12 1\n2 ', '2018-11-29 05:48:39', 'activo', 30, 3, 1, 1),
(13, '654654654654 6546546 546546546546 ', '2018-11-29 05:57:40', 'activo', 30, 3, 4, 1),
(14, 'probando cagfeteria numero asasd', '2018-11-29 15:47:54', 'activo', 30, 1, 1, 1),
(15, 'DEJANDO COMENTARIO DE PRUEBA !!', '2018-11-29 23:05:01', 'activo', 30, 1, 1, 1),
(16, 'TEST CAFETERIA', '2018-11-30 18:38:21', 'inactivo', 31, 1, 1, 0),
(17, 'TEST CAFETERIATEST CAFETERIATEST CAFETERIATEST CAFETERIATEST CAFETERIA\nhóla \ne´zé¿?ñ', '2018-12-01 16:21:09', 'inactivo', 31, 1, 1, 0),
(18, '<script>alert(\'hola\')</script>', '2018-12-01 16:21:33', 'inactivo', 31, 1, 1, 0),
(19, NULL, '2018-12-01 16:37:48', 'inactivo', 31, 1, 1, 0),
(20, NULL, '2018-12-01 16:48:30', 'inactivo', 31, 1, 1, 0),
(21, NULL, '2018-12-01 16:48:51', 'inactivo', 31, 1, 1, 0),
(22, NULL, '2018-12-01 16:51:29', 'inactivo', 31, 1, 1, 0),
(23, 'ytrtyrty4564564564', '2018-12-01 18:10:10', 'inactivo', 31, 1, 3, 0),
(24, '<script>alert(\'hola\')</script>', '2018-12-01 18:10:27', 'inactivo', 31, 1, 3, 0),
(25, 'vbvbbnbvbv', '2018-12-01 20:42:35', 'inactivo', 31, 1, 1, 0),
(26, 'fghgfhgfhfghfghfgh', '2018-12-01 20:46:01', 'inactivo', 31, 1, 4, 0),
(27, 'retrtertertert', '2018-12-01 21:07:10', 'inactivo', 31, 1, 1, 0),
(28, 'ghjghjghjghjg', '2018-12-01 21:11:05', 'inactivo', 31, 1, 1, 0),
(29, 'ghjghjghjghj', '2018-12-01 21:11:08', 'inactivo', 31, 1, 4, 0),
(30, 'ghjghjghj66666', '2018-12-01 21:11:19', 'inactivo', 31, 1, 4, 0),
(31, 'fhghfghfghfg', '2018-12-01 21:20:20', 'inactivo', 31, 1, 1, 0),
(32, 'ºº11111111111111111111111111111111112222222222222222222222222222222222222', '2018-12-01 21:32:58', 'inactivo', 31, 1, 5, 0),
(33, '22222222222222', '2018-12-01 21:34:29', 'inactivo', 31, 1, 5, 0),
(34, '66666656565', '2018-12-01 21:38:04', 'inactivo', 31, 1, 1, 0),
(35, 'wwwwwwwwwwwwwwwwwwwwwwwwww', '2018-12-01 21:38:31', 'inactivo', 31, 1, 1, 0),
(36, '1111111111111111111111111111111', '2018-12-01 22:08:24', 'inactivo', 31, 1, 1, 0),
(37, '1111111111111111111111111111', '2018-12-02 00:57:28', 'activo', 31, 2, 1, 1),
(38, 'hoa dejando comentario', '2018-12-09 20:38:04', 'activo', 31, 2, 1, 1),
(39, 'Reseña de prueba 01', '2018-12-11 21:05:21', 'activo', 1, 2, 5, 1),
(40, 'La biela reseña 01', '2018-12-11 21:11:23', 'activo', 61, 10, 4, 1),
(41, 'La biela reseña 2', '2018-12-11 21:11:42', 'activo', 61, 10, 1, 1),
(42, 'La biela reseña 3', '2018-12-11 21:11:58', 'activo', 61, 10, 1, 1),
(43, 'La biela reseña 4', '2018-12-11 21:12:23', 'activo', 61, 10, 1, 1),
(44, 'La biela reseña 4', '2018-12-11 21:12:23', 'activo', 61, 10, 1, 1),
(45, 'Muy buena cafeteria , la recomiendo', '2018-12-15 00:06:37', 'activo', 63, 51, 3, 1),
(46, 'Comentaod al café tortoni', '2018-12-15 00:19:37', 'activo', 63, 2, 1, 1),
(47, '{{{{{{´´´´´´pñop{p´´´´', '2018-12-15 02:19:33', 'inactivo', 1, 2, 1, 0),
(48, '<script>alert(\'HOla\');', '2018-12-15 02:20:08', 'inactivo', 1, 2, 1, 0),
(49, 'Comentario de prueba CHarly', '2018-12-15 19:41:32', 'inactivo', 60, 2, 1, 0),
(50, 'COmentario prueba charly 2', '2018-12-15 19:54:35', 'inactivo', 60, 2, 1, 0),
(51, 'Comentario prueba charly', '2018-12-15 20:26:47', 'inactivo', 60, 2, 1, 0),
(52, 'comentario prueba', '2018-12-15 20:29:34', 'inactivo', 60, 1, 1, 0),
(53, 'Mensaje de prueba 01', '2018-12-15 20:48:34', 'activo', 60, 1, 1, 1),
(54, 'Prueba comment Charly 01', '2018-12-15 21:16:31', 'inactivo', 60, 2, 1, 0),
(55, 'Prueba comment Charly 01', '2018-12-15 21:16:39', 'activo', 60, 2, 1, 1),
(56, 'Prueba comment Charly 02', '2018-12-15 21:16:42', 'activo', 60, 2, 1, 1),
(57, 'Prueba comment Charly 03', '2018-12-15 21:16:46', 'activo', 60, 2, 1, 1),
(58, 'Prueba comment Charly 04', '2018-12-15 21:16:49', 'activo', 60, 2, 1, 1),
(59, 'Prueba comment Charly 05', '2018-12-15 21:16:53', 'activo', 60, 2, 1, 1),
(60, 'Prueba stars 01 con 5 estrellas', '2018-12-16 04:53:21', 'activo', 60, 2, 5, 1),
(61, 'Prueba 02 con cuatro estrellas', '2018-12-16 04:53:41', 'activo', 60, 2, 4, 1),
(62, 'prueba 3 con una estrella', '2018-12-16 04:53:57', 'activo', 60, 2, 1, 1),
(63, 'prueba 5 con dos estrellas', '2018-12-16 04:54:41', 'activo', 60, 2, 2, 1),
(64, 'prueba 6 con 4 estrellas', '2018-12-16 04:54:58', 'activo', 60, 2, 4, 1),
(65, 'Buenísimo\n', '2018-12-16 04:57:04', 'inactivo', 65, 2, 5, 0),
(66, 'Prueba con 5 estrellas', '2018-12-16 05:00:33', 'activo', 60, 2, 5, 1),
(67, 'eqrwerew rewrewr werwere ', '2018-12-16 05:04:13', 'activo', 60, 2, 5, 1),
(68, 'Mensaje de prueba 22 con estrellas', '2018-12-16 05:05:13', 'activo', 60, 2, 4, 1),
(69, 'Prueba mensaje test 23', '2018-12-16 05:05:44', 'activo', 60, 2, 2, 1),
(70, 'Nueva reseña cafetería 02.', '2018-12-16 05:06:46', 'activo', 65, 2, 4, 1),
(71, 'sdjkdsjf sdalkjfdsklf jdslkfj sdklf', '2018-12-16 05:11:53', 'activo', 65, 2, 5, 1),
(72, 'Prueba nueva reseña.', '2018-12-16 05:18:05', 'activo', 60, 2, 4, 1),
(73, 'Prueba otra reseña.', '2018-12-16 05:18:19', 'activo', 60, 2, 5, 1),
(74, 'Prueba reseña 5 stars', '2018-12-16 05:18:55', 'activo', 65, 2, 5, 1),
(75, 'Prueba nueva reseña usuario.', '2018-12-16 05:19:55', 'activo', 60, 2, 5, 1),
(76, 'Prueba nueva reseña usuario', '2018-12-16 05:20:11', 'activo', 60, 2, 2, 1),
(77, 'Prueba nueva reseña.', '2018-12-16 05:21:03', 'activo', 60, 2, 5, 1),
(78, 'Prueba nueva reseña.', '2018-12-16 05:21:51', 'activo', 60, 2, 4, 1),
(79, 'Prueba nueva reseña', '2018-12-16 05:22:12', 'activo', 60, 2, 5, 1),
(80, 'Prueba otra reseña 4', '2018-12-16 05:22:27', 'activo', 60, 2, 5, 1),
(81, 'Prueba otra reseña 4', '2018-12-16 05:22:39', 'activo', 60, 2, 4, 1),
(82, 'Reseña nueva.', '2018-12-16 16:01:23', 'activo', 65, 1, 3, 1),
(83, 'dejando comentario test', '2018-12-17 01:49:08', 'activo', 31, 10, 3, 1),
(84, 'Comentario de prueba reseña nueva.', '2018-12-17 01:51:15', 'inactivo', 65, 1, 4, 0),
(85, 'Reseña de prueba número 1.', '2018-12-18 19:21:50', 'activo', 65, 21, 4, 1),
(86, 'Esta bien la cafeteria, pero me hubiera gustado un poco mas de atención.', '2018-12-18 21:22:09', 'inactivo', 66, 2, 3, 0),
(87, 'Comentario de Maite', '2018-12-18 21:33:15', 'activo', 66, 2, 3, 1),
(88, 'Reseña cafetería!', '2018-12-18 23:03:25', 'activo', 65, 2, 4, 1),
(89, 'muy buena cafeteria.', '2018-12-19 00:24:48', 'inactivo', 68, 2, 5, 0),
(90, 'Nueva reseña!', '2018-12-19 00:32:49', 'inactivo', 65, 21, 4, 0),
(91, 'Nueva reseña de cafetería.', '2018-12-19 00:34:56', 'activo', 65, 7, 5, 1);

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
-- Estructura de tabla para la tabla `t_menu_cafeteria`
--

CREATE TABLE `t_menu_cafeteria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `id_cafeteria` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'activo'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_menu_cafeteria`
--

INSERT INTO `t_menu_cafeteria` (`id`, `nombre`, `descripcion`, `id_cafeteria`, `precio`, `status`) VALUES
(35, 'cafe tortoni ejemplo', '-Desayuno porteño clásico o Delicias del Tortoni con descuento especial.', 2, 111, 'activo'),
(38, 'menu especia de prueba', 'Para este menu puede comer\n-cosa 1\n-cosa 2\n-cosa 3 ', 1, 500, 'activo'),
(30, 'Desayuno navideño', '-cafe\n-medialunas\n-tostadas\n-soda ', 3, 150, 'activo'),
(32, 'menu navideño 2', 'Todo lo q usted pueda comer en su vida ', 2, 200, 'activo'),
(33, 'menu probando cafeteria seleccion', 'probando seleccion de cafeterias  ', 1, 150, 'activo'),
(34, 'Promo día de los enamorados', ' Promo especial  día de los enamorados. 2 x 1 en desayunos y Brunch.', 1, 130, 'activo'),
(36, 'menu prueba', '123as\n-cafe \n-tortas\n-jugos ', 1, 500, 'activo'),
(39, 'menu nuevo', 'menu nuevo de prueba ', 1, 150, 'activo'),
(40, 'fin de cursada', ' cafe\nmedialuna\nbirra', 4, 100, 'activo'),
(41, 'werwer', ' wetawrgwrtg', 5, 234, 'activo');

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
(1, 'El boom del café gourmet en Buenos Aires', 'Dicen que, alguna vez, Buenos Aires tuvo un café en cada esquina y que en los barrios la noche peregrinaba de un local a otro. Era una ciudad con tiempo para arreglar el mundo desde una mesa de café, con el bolsillo suelto y las esperanzas apretadas. En las mesas, un pocillo de café se alargaba interminablemente, tanto como la nostalgia impregnada por el humo de un cigarrillo.<br>\r\nMás de ocho mil cafés forman parte del paisaje actual de la Ciudad de Buenos Aires. Algunos históricos, otros más jóvenes; pero todos protectores de la esencia porteña. Sus mesas son testigo desde hace décadas de momentos de reunión, de reflexión, de amores, de desamores, de alegrías y penas.<br>\r\nRecientemente, han resurgido las cafeterías con características acordes a los tiempos modernos, con las exigencias de los que realmente prefieren un tiempo para el café  y con los que andan de paso y se lo llevan con ellos. La condición es que siempre sea “un buen café, bien hecho, un café gourmet”.<br><br>\r\n\r\nFuente: https://goo.gl/4JkwTz', '2018-10-02', 'activo', 2);

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
(8, 'Producto PruebaEditada', '105', 'Comidita de prueba editada y mas cara', 'inactivo', 2),
(9, 'Cafetera elèctrica', '1200', 'Cafetera Atma electrica. Super!', 'activo', 1);

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
(1, 'Hernan', 'Alonso', 'halonso@cafeteriasba.com.ar', '$2y$10$sC.A7ON3r7fQ7Uei9o6NiO1YfpCYpzLz8UsdipXrwzPjcBcx/LuXu', '2018-09-23', 'activo', NULL, 1, 1),
(2, 'Pepe Editado', 'Moderador', 'Pepito@cafeteriasba.com.ar', '$2y$10$ajU6kdVqIB6eitw9KFgAy.IEMw3jUQGcd/T89iMRwsda0lc4uwUz6', '2018-10-10', 'activo', NULL, 4, 1),
(3, 'lalo-cafeteria', 'quiroga', 'lalo@gmail.com', '$2y$10$ncMlXRw5wtpt1Mxb12YHO.zC4fvkCYzfmg0ipkLjpBjO88TW4LsP2', '18-11-01', 'activo', NULL, 2, 1),
(27, 'lalo-cafeteria', NULL, 'lalo123123123123@gmail.com', '$2y$10$/NhX0WmT9MRVQ9/0ZeN.o.kR61s4T4sRMU9gB/8EgdczG3TPSULhO', '18-11-01', 'activo', NULL, 2, 1),
(28, 'lalo-cafeteria', NULL, 'lalo123123123123123123@gmail.com', '$2y$10$IoEHDLpzknr3V3srLumfyOWkFk6VWs0adCJ/8mW24VKu4sy8Um7bO', '18-11-01', 'activo', NULL, 2, 1),
(29, 'laureano', NULL, 'admin@gmail.com', '$2y$10$tinGvzbs7ZQrYNqOyKGmY.RYGzUmzRtAE5gxQ4cXiio6BwciJsHZW', '18-11-11', 'activo', NULL, 1, 1),
(30, 'lalocafes', NULL, 'lalo1@gmail.com', '$2y$10$jKnOrvOkdn9hTwmNc69OT.dBj7ov/Zz1WqJRk4yq2qLO3m83jWoda', '18-11-19', 'activo', NULL, 2, 1),
(31, 'laureano', NULL, 'lalo.q2121@gmail.com', '$2y$10$sC.A7ON3r7fQ7Uei9o6NiO1YfpCYpzLz8UsdipXrwzPjcBcx/LuXu', '18-11-30', 'activo', NULL, 2, 1),
(60, 'carlos', 'lloveras', 'carloslloveras@gmail.com', '$2y$10$0Xje0xaYs.u4Cl42wKdAm.Izc49k6SFEHjTLsmY/0m5NrDlBnp8NG', '18-12-11', 'activo', NULL, 1, 1),
(61, 'usertest', 'usertest', 'usertest@cafeteriasba.com', '$2y$10$3SZfOiz6ZqhIPJ54A57v..3rg6vL3EAHd1GyFy7lhOcHC1nOZnFa.', '18-12-11', 'activo', NULL, 2, 1),
(63, 'federico', NULL, 'federico111@gmail.com', '$2y$10$6ys8bqsw/o6hZ/FvOcZ6B.U.jXkgtbJ.Ak.dX8zeG9eQBt2icxqmC', '18-12-13', 'activo', NULL, 2, 1),
(64, 'Felicitas', NULL, 'feli@gmail.com', '$2y$10$UFgvKsgekVZyz9HZFg9o3Ox/IX4FgmcY7ZE3a2A3MBWvmHzeOTprK', '18-12-15', 'activo', NULL, 2, 1),
(65, 'Felicitas', 'Lloveras', 'felicitas@gmail.com', '$2y$10$pyVHTeMAM6ixXyfY23EwqeTz5QgSner3R200qVZFVtK8U0b8i.gSK', '18-12-15', 'activo', NULL, 3, 1),
(66, 'Hernan', NULL, 'hernanmalonso@gmail.com', '$2y$10$V9itCrfFtWJ..FtI7885CO8EkjEplJv4RggYlCtKap9BVuHEtsE/m', '18-12-16', 'activo', NULL, 2, 1),
(67, 'Astor', 'Rodriguez', 'astor@gmail.com', '$2y$10$eufdP.GInaHWgCU5otEvN.QXrBKdLYCZVbknBjay/uReegHmyq.2u', '18-12-18', 'activo', NULL, 1, 1),
(68, 'Florencia', NULL, 'florencia@gmail.com', '$2y$10$UZ41xKMkegYXejJlhYHsP.KJKlFZWgJmXBLCKKLYEVgO0VSCx9lmm', '18-12-18', 'activo', NULL, 2, 1),
(69, 'cecilia', 'martin', 'ceciliamartin@gmail.com', '$2y$10$BTS.8H7pTMLbRhUUxcS9u.GLtE9C2DcWipG9xIqyjzuFZgLSZqVFm', '18-12-18', 'activo', NULL, 3, 1);

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
-- Indices de la tabla `t_menu_cafeteria`
--
ALTER TABLE `t_menu_cafeteria`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `ID_categoria_de_cafeteria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

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
  MODIFY `ID_cafeteria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

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
-- AUTO_INCREMENT de la tabla `t_menu_cafeteria`
--
ALTER TABLE `t_menu_cafeteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
  MODIFY `ID_producto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `t_rol_usuario`
--
ALTER TABLE `t_rol_usuario`
  MODIFY `ID_rol_usuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `t_usuario`
--
ALTER TABLE `t_usuario`
  MODIFY `ID_usuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

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
