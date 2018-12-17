/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : cafeteri_cafeteriasba

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2018-12-14 19:45:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `r_categoria_de_cafeteria`
-- ----------------------------
DROP TABLE IF EXISTS `r_categoria_de_cafeteria`;
CREATE TABLE `r_categoria_de_cafeteria` (
  `ID_categoria_de_cafeteria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_categoria` int(10) unsigned NOT NULL,
  `fk_cafeteria` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID_categoria_de_cafeteria`),
  UNIQUE KEY `ID_categoria_de_cafeteria_UNIQUE` (`ID_categoria_de_cafeteria`),
  KEY `fk_categoria_cafeteria_has_cafeteria_cafeteria1_idx` (`fk_cafeteria`),
  KEY `fk_categoria_cafeteria_has_cafeteria_categoria_cafeteria1_idx` (`fk_categoria`),
  CONSTRAINT `fk_categoria_cafeteria_has_cafeteria_cafeteria1` FOREIGN KEY (`fk_cafeteria`) REFERENCES `t_cafeteria` (`ID_cafeteria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_categoria_cafeteria_has_cafeteria_categoria_cafeteria1` FOREIGN KEY (`fk_categoria`) REFERENCES `t_categoria_cafeteria` (`ID_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_categoria_de_cafeteria
-- ----------------------------
INSERT INTO `r_categoria_de_cafeteria` VALUES ('1', '1', '2');
INSERT INTO `r_categoria_de_cafeteria` VALUES ('2', '3', '1');
INSERT INTO `r_categoria_de_cafeteria` VALUES ('3', '4', '3');

-- ----------------------------
-- Table structure for `r_categoria_de_nota`
-- ----------------------------
DROP TABLE IF EXISTS `r_categoria_de_nota`;
CREATE TABLE `r_categoria_de_nota` (
  `ID_categoria_de_nota` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_categoria` int(10) unsigned NOT NULL,
  `fk_nota` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID_categoria_de_nota`),
  UNIQUE KEY `ID_categoria_de_nota_UNIQUE` (`ID_categoria_de_nota`),
  KEY `fk_categoria_nota_has_nota_nota1_idx` (`fk_nota`),
  KEY `fk_categoria_nota_has_nota_categoria_nota1_idx` (`fk_categoria`),
  CONSTRAINT `fk_categoria_nota_has_nota_categoria_nota1` FOREIGN KEY (`fk_categoria`) REFERENCES `t_categoria_nota` (`ID_categoria_nota`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_categoria_nota_has_nota_nota1` FOREIGN KEY (`fk_nota`) REFERENCES `t_nota` (`ID_nota`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_categoria_de_nota
-- ----------------------------
INSERT INTO `r_categoria_de_nota` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for `r_comentario_de_cafeteria`
-- ----------------------------
DROP TABLE IF EXISTS `r_comentario_de_cafeteria`;
CREATE TABLE `r_comentario_de_cafeteria` (
  `ID_comentario_de_cafeteria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_cafeteria` int(10) unsigned NOT NULL,
  `fk_comentario` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID_comentario_de_cafeteria`),
  UNIQUE KEY `ID_comentario_de_cafeteria_UNIQUE` (`ID_comentario_de_cafeteria`),
  KEY `fk_cafeteria_has_comentarios_comentarios1_idx` (`fk_comentario`),
  KEY `fk_cafeteria_has_comentarios_cafeteria1_idx` (`fk_cafeteria`),
  CONSTRAINT `fk_cafeteria_has_comentarios_cafeteria1` FOREIGN KEY (`fk_cafeteria`) REFERENCES `t_cafeteria` (`ID_cafeteria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cafeteria_has_comentarios_comentarios1` FOREIGN KEY (`fk_comentario`) REFERENCES `t_comentarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_comentario_de_cafeteria
-- ----------------------------

-- ----------------------------
-- Table structure for `r_imagen_de_cafeteria`
-- ----------------------------
DROP TABLE IF EXISTS `r_imagen_de_cafeteria`;
CREATE TABLE `r_imagen_de_cafeteria` (
  `ID_imagen_de_cafeteria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_cafeteria` int(10) unsigned NOT NULL,
  `fk_imagen` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID_imagen_de_cafeteria`),
  UNIQUE KEY `Imagen_de_Cafeteriacol_UNIQUE` (`ID_imagen_de_cafeteria`),
  KEY `fk_cafeteria_has_imagen_imagen1_idx` (`fk_imagen`),
  KEY `fk_cafeteria_has_imagen_cafeteria1_idx` (`fk_cafeteria`),
  CONSTRAINT `fk_cafeteria_has_imagen_cafeteria1` FOREIGN KEY (`fk_cafeteria`) REFERENCES `t_cafeteria` (`ID_cafeteria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cafeteria_has_imagen_imagen1` FOREIGN KEY (`fk_imagen`) REFERENCES `t_imagen` (`ID_imagen`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_imagen_de_cafeteria
-- ----------------------------

-- ----------------------------
-- Table structure for `r_imagen_de_nota`
-- ----------------------------
DROP TABLE IF EXISTS `r_imagen_de_nota`;
CREATE TABLE `r_imagen_de_nota` (
  `ID_imagen_de_nota` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_nota` int(10) unsigned NOT NULL,
  `fk_imagen` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID_imagen_de_nota`),
  UNIQUE KEY `ID_imagen_de_nota_UNIQUE` (`ID_imagen_de_nota`),
  KEY `fk_nota_has_imagen_imagen1_idx` (`fk_imagen`),
  KEY `fk_nota_has_imagen_nota1_idx` (`fk_nota`),
  CONSTRAINT `fk_nota_has_imagen_imagen1` FOREIGN KEY (`fk_imagen`) REFERENCES `t_imagen` (`ID_imagen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nota_has_imagen_nota1` FOREIGN KEY (`fk_nota`) REFERENCES `t_nota` (`ID_nota`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_imagen_de_nota
-- ----------------------------

-- ----------------------------
-- Table structure for `r_producto_de_cafeteria`
-- ----------------------------
DROP TABLE IF EXISTS `r_producto_de_cafeteria`;
CREATE TABLE `r_producto_de_cafeteria` (
  `ID_producto_de_cafeteria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_producto` int(10) unsigned NOT NULL,
  `fk_cafeteria` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID_producto_de_cafeteria`),
  UNIQUE KEY `ID_producto_de_cafeteria_UNIQUE` (`ID_producto_de_cafeteria`),
  KEY `fk_producto_has_cafeteria_cafeteria1_idx` (`fk_cafeteria`),
  KEY `fk_producto_has_cafeteria_producto1_idx` (`fk_producto`),
  CONSTRAINT `fk_producto_has_cafeteria_cafeteria1` FOREIGN KEY (`fk_cafeteria`) REFERENCES `t_cafeteria` (`ID_cafeteria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_has_cafeteria_producto1` FOREIGN KEY (`fk_producto`) REFERENCES `t_producto` (`ID_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_producto_de_cafeteria
-- ----------------------------

-- ----------------------------
-- Table structure for `r_producto_de_menu`
-- ----------------------------
DROP TABLE IF EXISTS `r_producto_de_menu`;
CREATE TABLE `r_producto_de_menu` (
  `ID_producto_de_menu` int(10) unsigned zerofill NOT NULL,
  `fk_producto` int(10) unsigned NOT NULL,
  `fk_menu` int(10) unsigned NOT NULL,
  `fk_cafeteria` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID_producto_de_menu`),
  UNIQUE KEY `t_producto_has_t_menucol_UNIQUE` (`ID_producto_de_menu`),
  KEY `fk_t_producto_has_t_menu_t_menu1_idx` (`fk_menu`),
  KEY `fk_t_producto_has_t_menu_t_producto1_idx` (`fk_producto`),
  KEY `fk_t_producto_has_t_menu_t_cafeteria1_idx` (`fk_cafeteria`),
  CONSTRAINT `fk_t_producto_has_t_menu_t_cafeteria1` FOREIGN KEY (`fk_cafeteria`) REFERENCES `t_cafeteria` (`ID_cafeteria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_producto_has_t_menu_t_menu1` FOREIGN KEY (`fk_menu`) REFERENCES `t_menu` (`ID_menu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_producto_has_t_menu_t_producto1` FOREIGN KEY (`fk_producto`) REFERENCES `t_producto` (`ID_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_producto_de_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `t_cafeteria`
-- ----------------------------
DROP TABLE IF EXISTS `t_cafeteria`;
CREATE TABLE `t_cafeteria` (
  `ID_cafeteria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `sitio_web` varchar(45) DEFAULT NULL,
  `sucursal` varchar(45) DEFAULT NULL,
  `horario_apertura` time DEFAULT NULL,
  `horario_cierre` time DEFAULT NULL,
  `valoracion` int(10) unsigned DEFAULT NULL,
  `votos` int(11) unsigned DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `descripcion` text NOT NULL,
  `img_portada` text,
  PRIMARY KEY (`ID_cafeteria`),
  UNIQUE KEY `ID_cafeteria_UNIQUE` (`ID_cafeteria`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cafeteria
-- ----------------------------
INSERT INTO `t_cafeteria` VALUES ('1', 'All Saints Cafe', 'Ciudad de la Paz 2300', '47060016', 'allsaints@gmail.com', 'allsaintscafe.com.ar', 'Belgrano', '08:00:00', '22:00:00', '5', '1', 'activo', 'All Saints Café cree en la calidad sobre todas las cosas. Compran directamente a pequeños podructores cafeteros alrededor del mundo. El café utilizado proviene de microlotes de origen único, en lo posible orgánicos y sustentables, de la mas alta calidad puntuados en cata de 84 puntos en adelante.  El café es tostado siguiendo los más rigurosos stándares de calidad.  El resultado se disfruta en cada taza. Cuentan con una máquina de tostar café Probat Roadster, marca más antigua y lider en el segmento de torrefacción y microtorrefacción. De origen aleman, es utilizada por los principales speciality coffee shops del mundo.', null);
INSERT INTO `t_cafeteria` VALUES ('2', 'Café Tortoni', 'Av. de Mayo 825', '43424328', 'cafetortoni@gmail.com', 'www.cafetortoni.com.ar', 'Microcentro', '08:00:00', '01:00:00', '4', '1', 'activo', 'El Tortoni es el paradigma del café porteño, pero poco se sabe de sus orígenes.Apenas un inmigrante francés de apellido Touan decidió inaugurarlo a fines de 1858, el nombre lo tomó prestado del de un establecimiento del Boulevard des Italiens, en el que se reunía la elite de la cultura parisina del siglo XIX.   A fines del siglo, el bar fue adquirido por otro francés: don Celestino Curutchet, a quien el poeta Allende Iragorri describiera como el típico viejito sabio francés, menudo de cuerpo y fuerte de espíritu,\r\n\r\n\r\nestilaba la clásica perilla alargada, ojos vivísimos y usaba un casquete árabe de seda negra, casi un personaje de historieta que agregaba otro acento peculiar a la fisonomía el lugar.   El local era frecuentado por un grupo de pintores, escritores, periodistas y músicos que formaban la Agrupación de Gente de Artes y Letras, liderada por Benito Quinquela Martin.\r\n\r\n\r\nEn mayo de 1926 forman La Peña, y le piden a Don Celestino Curutchet, que les deje usar la bodega del subsuelo. El dueño acepta encantado, porque según sus palabras los artistas gastan poco, pero le dan lustre y fama al café.   En este café parece que el tiempo se hubiera detenido como en un daguerrotipo, cuando en él la gente juega al billar, a las cartas, o simplemente toman un café entre amigos, el local es cada vez más una parte indispensable de la historia porteña. ', null);
INSERT INTO `t_cafeteria` VALUES ('3', 'Coffee Town', 'Bolivar 976', '43007333', 'coffeetown@gmail.com', 'www.coffeetowncompany.com', 'San Telmo', '08:30:00', '20:30:00', '3', '1', 'activo', 'Después de años de recorrer cafetales, de trabajar directamente con los caficultores en América Latina y África y de perfeccionarnos en los mejores centros internacionales decidimos crear Coffee Town en el corazón de Buenos Aires y con filosofía propia; ofrecer los mejores cafés del mundo a un precio justo.  Somos un grupo de profesionales (Baristas, maestros tostadores y los únicos catadores profesionales del país) que trabajamos para garantizar la máxima calidad en todos los momentos del café (crudo, tostado y en la bebida).  Nuestros catadores analizan los granos de café antes y después de ser tostados para asegurar que los estándares de sus cafés y sus puntuaciones de cata sean siempre Grand Cru o de Especialidad y Premium. Los maestros tostadores estudian cada café y realizan las curvas de tueste indicadas para optimizar su aroma, sabor y cuerpo. Los baristas aplican rigurosamente las técnicas correctas de preparación según los protocolos internacionales y utilizan el método más adecuado para cada tipo de café.  La responsabilidad que cada uno de nosotros pone en su tarea, hace de Coffee Town la primera cafetería de cafés de Especialidad en Argentina y epicentro del café saludable en esta parte del mundo.  Desde el Mercado de San Telmo, inmersos en un ambiente de alimentos gourmet, quienes hacemos Coffee Town le proponemos a través de nuestros cafés iniciar juntos un viaje por la ruta de los sentidos', null);
INSERT INTO `t_cafeteria` VALUES ('4', 'Ol\'Days', 'Olga Cossettini 1182', '57750317', 'oldays@gmail.com', 'www.oldayscoffee.com', 'Puerto Madero', '08:00:00', '22:30:00', '4', '1', 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('5', 'Negro Cueva de Café', 'Suipacha 637', '', 'info@negrocuevadecafe.com', 'negrocuevadecafe.com', 'Microcentro', '08:00:00', '19:00:00', '4', '1', 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('6', 'Piazza Buenos Aires', 'Pres. Luis Sáenz Peña 24', '', '', '', 'Monserrat', '10:00:00', '19:00:00', '3', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('7', 'The Cavern Buenos Aires', 'Av. Corrientes 1660', '63205314', 'info@thecavern.com.ar', 'www.thecavern.com.ar', 'Microcentro', '10:00:00', '02:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('8', 'La Biela', 'Av. Pres. Manuel Quintana 596', '48040449', 'info@labiela.com', 'www.labiela.com', 'Recoleta', '07:00:00', '02:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('9', 'Rosso Café Argentina', 'Pres. Tte. Gral. Juan Domingo Perón 731', '53480333', '', '', 'Microcentro', '07:30:00', '18:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('10', 'LAB New American Cuisine & Coffee Shop', 'Humboldt 1542', '64657008', 'info@labcafe.com.ar', 'www.labcafe.com.ar', 'Palermo', '08:00:00', '20:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('11', 'La Giralda', 'Av. Corrientes 1453', '43713846', '', 'la-giralda-cafeteria.negocio.site', 'Balvanera', '08:00:00', '23:00:00', '3', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('12', 'El Gato Negro', 'Av. Corrientes 1669', '43741730', 'info@donvictoriano.com.ar', 'www.donvictoriano.com.ar', 'Balvanera', '09:00:00', '00:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('13', 'La Caravelle', 'Lavalle 726', '43221673', '', '', 'Microcentro', '09:00:00', '19:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('14', 'Cocu Boulangerie', 'Malabia 1510', '48314675', 'info@cocu.com.ar', 'cocu.com.ar', 'Palermo', '09:00:00', '20:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('15', 'Lattente', 'Thames 1891', '48331676', 'info@cafelattente.com', 'www.cafelattente.com', 'Palermo', '09:00:00', '20:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('16', 'London City', 'Av. de Mayo 591', '43429057', '', 'www.londoncity.com.ar', 'Microcentro', '06:00:00', '00:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('17', 'Las Violetas', 'Av. Rivadavia 3899', '49587387', 'contacto@lasvioletas.com', 'www.lasvioletas.com', 'Balvanera', '06:00:00', '01:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('18', 'Adorado San Telmo', 'Bolivar 347', '32214460', 'hola@adoradobar.com', 'www.adoradobar.com', 'Monserrat', '08:00:00', '20:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('19', 'Bar Café Metro', 'Cerrito 528', '43824692', '', 'bar-cafe-metro.negocio.site', 'San Nicolás', '07:00:00', '00:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('20', 'Tienda de Café', 'Av. de Mayo 799', '43425424', 'hola@tiendadecafe.com.ar', 'www.tiendadecafe.com.ar', 'Monserrat', '07:00:00', '21:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('21', 'Havanna', 'Av. de Mayo 615', '43315411', '', 'www.havanna.com.ar', 'Monserrat', '08:00:00', '21:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('22', 'Ramón', 'Adolfo Alsina 702', '43424513', '', '', 'Monserrat', '07:00:00', '18:00:00', '3', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('23', 'Bocanada', 'Piedras 320', '43423037', 'bocanada.restobar@gmail.com', '', 'Monserrat', '08:00:00', '21:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('24', 'Café Martínez', 'Av. de Mayo 699', '43315582', 'info@cafemartinez.com.ar', 'www.cafemartinez.com', 'Microcentro', '07:00:00', '20:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('25', 'Establecimiento General de Café', 'Lavalle 1701', '43716742', 'info@estcafe.com.ar', 'establecimientocafe.com.ar', 'Microcentro', '08:00:00', '19:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('26', 'El Banderín', 'Guardia Vieja 3601', '48627757', '', 'elbanderin.com.ar', 'Almagro', '08:30:00', '23:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('27', 'Alimentari', 'Moreno 945', '43310012', '', 'www.alimentari.com', 'Monserrat', '07:30:00', '16:00:00', '3', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('28', 'La Puerto Rico', 'Adolfo Alsina 416', '43312215', 'contacto@lapuertoricocafe.com.ar', 'www.lapuertoricocafe.com.ar', 'Microcentro', '07:00:00', '20:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('29', 'Café Zavalía', 'Bolívar 1422', '41490964', 'cafezavalia@gmail.com', '', 'San Telmo', '14:00:00', '19:30:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('30', 'Lobo Café Puerto Madero', 'Pierina Dealessi 1330', '45178195', '', 'www.lobo.cafe', 'Puerto Madero', '08:00:00', '00:00:00', '3', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('31', 'Confitería La Unión', 'Av. Belgrano 1101', '43832987', '', '', 'Monserrat', '07:00:00', '20:00:00', '3', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('32', 'Bar Británico', 'Av. Brasil 399', '43612107', '', '', 'San Telmo', '06:00:00', '03:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('33', 'Caffé del Doge', 'Paraná 905', '48116927', 'info@caffedeldoge.com.ar', 'caffedeldoge.com.ar', 'San Nicolás', '07:00:00', '21:00:00', '3', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('34', 'Le Blé', 'Marcelo Torcuato de Alvear 2199', '48228979', 'pasion@leble.com.ar', 'www.leble.com.ar', 'Recoleta', '08:00:00', '20:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('35', 'Palacete Express', 'Uruguay 467', '43712312', '', '', 'San Nicolás', '08:30:00', '19:30:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('36', 'La Paz', 'Av. Corrientes 1593', '43733647', '', '', 'San Nicolás', '08:00:00', '01:00:00', '3', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('37', 'Gaspar Café', 'Esmeralda 624', '43260279', 'contacto@gasparcafe.com.ar', 'www.gasparcafe.com.ar', 'Microcentro', '08:00:00', '19:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('38', 'Ola Rolls&Café', 'Suipacha 743', '50261943', '', '', 'Microcentro', '07:30:00', '19:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('39', 'Plácido Café Bar', 'Juncal 2107', '48245778', '', 'placido-cafe-bar.business.site', 'Recoleta', '08:30:00', '20:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('40', 'Smeterling', 'Uruguay 1308', '48139700', 'info@smeterling.com', 'www.smeterling.com', 'Recoleta', '10:00:00', '20:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('41', 'Petit Colón', 'Libertad 505', '43827306', 'info@petitcolon.com.ar', 'petitcolon.com.ar', 'San Nicolás', '07:00:00', '23:30:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('42', 'Arisco Bar', 'Av. Callao 1391', '48131512', '', '', 'Recoleta', '08:30:00', '22:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('43', 'Tuo Tempo', 'Av. Pueyrredón 1205', '49611046', '', '', 'Recoleta', '07:30:00', '21:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('44', 'Café Dos Escudos', 'Juncal 901', '43270135', 'info@dosescudos.net', 'www.dosescudos.net', 'San Nicolás', '07:00:00', '20:30:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('45', 'Tango Cafetería', 'Av. Pres. Roque Sáenz Peña 864', '43288088', '', '', 'Microcentro', '07:00:00', '19:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('46', 'Tostado Café Club', 'Av. Córdoba 1501', '08005552233', 'hola@tostadocafeclub.com', 'www.tostadocafeclub.com', 'San Nicolás', '08:00:00', '20:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('47', 'Import Coffee Company', 'Libertad 1150', '48117764', '', '', 'Retiro', '09:00:00', '21:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('48', 'Datri Café', 'Paraguay 901', '43288383', '', '', '', '07:55:00', '19:30:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('49', 'Bar La Academia', 'Callao 368', '43722765', 'bar_laacademia@hotmail.com', '', 'San Nicolás', '00:00:00', '23:59:00', '3', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('50', 'Café Valerio', 'Lavalle 799', '43939456', '', '', 'San Nicolás', '06:00:00', '02:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('51', 'Mar Azul', 'Tucumán 1700', '58114347', 'cafemarazul@yahoo.com.ar', 'cafemarazul.wixsite.com/cafemarazul', 'San Nicolás', '08:00:00', '20:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('52', 'Bogotá', 'Montevideo 1300', '48119163', '', '', '', '07:00:00', '23:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('53', 'Le Moulin de la Fleur', 'Talcahuano 888', '48117509', '', '', 'San Nicolás', '08:00:00', '21:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('54', 'Café Parisien', 'Lavalle 999', '43252126', '', '', 'San Nicolás', '08:00:00', '01:00:00', '3', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('55', 'El Boliche de Roberto', 'Bulnes 331', '48620415', 'elbolichederoberto@hotmail.com', '', 'Almagro', '18:00:00', '04:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('56', '36 Billares', 'Av. de Mayo 1265/71', '43815696', 'info@los36billares.com.ar', 'www.los36billares.com.ar', 'Monserrat', '07:00:00', '02:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('58', 'Café de los Angelitos', 'Av. Rivadavia 2100', '49522320', 'info@cafedelosangelitos.com', 'www.cafedelosangelitos.com', 'Balvanera', '09:00:00', '00:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('59', 'The New Brighton', 'Sarmiento 645', '43221515', '', '', 'San Nicolás', '06:00:00', '00:30:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('60', 'Saint Moritz', 'Esmeralda 890', '43117311', '', '', 'Retiro', '07:30:00', '00:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('61', 'Los Laureles', 'Av. Gral. Iriarte 2290', '43033393', 'barloslaureles@hotmail.com', 'www.barloslaureles.com.ar', 'Barracas', '20:00:00', '04:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('62', 'Los Galgos', 'Callao 501', '', 'info@barlosgalgos.com.ar', 'www.barlosgalgos.com.ar', 'San Nicolás', '08:00:00', '00:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('63', 'Café La Poesía', 'Chile 502', '43007340', '', 'www.losnotables.com.ar/cafe-la-poesia/', 'San Telmo', '08:00:00', '02:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('64', 'Café Margot', 'Av. Boedo 857', '49570001', '', 'www.losnotables.com.ar/cafe-margot/', null, null, null, null, null, '', '', null);
INSERT INTO `t_cafeteria` VALUES ('65', 'El Federal', 'Carlos Calvo 599', '43617328', '', 'www.losnotables.com.ar/bar-el-federal/', 'San Telmo', '08:00:00', '02:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('66', 'La Farmacia', 'Av. Directorio 2398', '46313481', '', 'www.lafarmacia.com.ar', 'Flores', '08:00:00', '00:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('67', 'La Embajada', 'Santiago del Estero 88', '43828127', '', '', 'Monserrat', '08:30:00', '21:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('68', 'La Buena Medida', 'Suárez 101', '43020038', '', '', 'La Boca', '10:00:00', '18:00:00', '3', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('69', 'Iberia', 'Av. de Mayo 1196', '43816300', '', '', 'Monserrat', '00:00:00', '23:59:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('70', 'Florida Garden', 'Florida 899', '43127902', '', '', 'Retiro', '07:00:00', '23:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('71', 'Babieca', 'Av. Santa Fe 1898', '48141006', '', 'www.babiecabarrionorte.com.ar', 'Recoleta', '00:00:00', '23:59:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('72', 'El Querandí', 'Perú 302', '51991770', 'info@querandi.com.ar', 'querandi.com.ar', 'San Telmo', '12:00:00', '00:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('73', 'El Progreso', 'Av. Montes de Oca 1700', '43010671', 'elprogreso@barelprogreso.com.ar', 'www.barelprogreso.com.ar', 'Barracas', '07:00:00', '19:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('74', 'Bar Seddon', 'Defensa 695', '43423700', 'barseddon@hotmail.com', 'barseddon.blogspot.com', 'San Telmo', '08:00:00', '04:00:00', '3', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('75', 'Bar Sur', 'Estados Unidos 299', '43626086', 'info@bar-sur.com.ar', 'www.bar-sur.com.ar', 'San Telmo', '21:00:00', '01:30:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('76', 'El Faro', 'Av. Juan de Garay 906', '43001285', '', '', 'San Telmo', '08:00:00', '22:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('77', 'El Hipopótamo', 'Avenida Brasil 401', '43008450', '', '', 'San Telmo', '07:30:00', '02:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('78', 'Café Nostalgia', 'Soler 3599', '49630903', 'cafebarnostalgiabuenosaires@gmail.com', null, null, null, null, null, null, '', '', null);
INSERT INTO `t_cafeteria` VALUES ('79', 'Claridge Bar', 'Tucumán 535', '43198000', 'reservas@claridge.com.ar', '', 'Microcentro', '07:00:00', '01:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('80', 'Castelar Hotel Restaurant', 'Av. de Mayo 1152', '43835009', 'info@castelarhotel.com.ar', 'www.castelarhotel.com.ar/es/restaurant.php', 'Monserrat', '12:00:00', '00:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('81', 'Clásica y Moderna', 'Av. Callao 892', '48128707', 'libreriaclasicaymoderna@gmail.com', 'www.clasicaymoderna.com', 'Recoleta', '09:00:00', '01:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('82', 'Alma Café', 'Av. Dr. José María Ramos Mejía 1398', '', 'almabuendiacafe@gmail.com', '', 'Retiro', '06:00:00', '21:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('83', 'Esquina Homero Manzi', 'Av. San Juan 3601', '49578488', 'info@esquinahomeromanzi.com.ar', 'www.esquinahomeromanzi.com.ar', 'Boedo', '08:00:00', '01:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('84', 'El Coleccionista', 'Av. Rivadavia 4929', '49027954', '', '', 'Caballito', '07:00:00', '02:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('85', 'Don Juan', 'Camarones 2702', '45860679', '', 'donjuan-cafeteria.negocio.site', 'Flores', '08:00:00', '18:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('86', 'Café de García', 'Sanabria 3302', '45015912', '', '', 'Villa Devoto', '07:00:00', '01:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('87', 'Café El Estaño 1880', 'Aristóbulo del Valle 1100', '', '', '', 'La Boca', '10:00:00', '16:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('88', 'Alvear Roof Bar', 'Av. Alvear 1891 - Piso 11', '48082100', 'reservas@alvear.com.ar', 'www.alvearpalace.com/restaurantes-bares/roof-', 'Recoleta', '18:00:00', '00:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('89', 'Cao', 'Av. Independencia 2400', '49433694', '', 'www.losnotables.com.ar/bar-de-cao/', 'Balvanera', '08:00:00', '02:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('90', 'Exedra', 'Carlos Pellegrini 807', '43227802', '', '', 'San Nicolás', '07:00:00', '02:00:00', '3', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('91', 'Celta Bar', 'Sarmiento 1702', '43717338', 'mginestaproduccion@hotmail.com', 'www.losnotables.com.ar/celta-bar/', 'San Nicolás', '08:00:00', '02:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('92', 'Bar Plaza Dorrego', 'Defensa 1098', '43610141', '', '', 'San Telmo', '08:00:00', '22:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('93', 'El Preferido de Palermo', 'Jorge Luis Borges 2108', '47746585', 'info@elpreferidodepalermo.com', '', 'Palermo', '09:00:00', '23:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('94', 'Hay Café Café', 'Quesada 1515', '1535102233', '', 'www.haycafecafe.com', 'Nuñez', '07:00:00', '20:30:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('95', 'Café Bar Olimpo', 'Irigoyen 1491', '1536477287', '', '', 'Monte Castro', '07:00:00', '20:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('96', 'Rotisería Miramar', 'Av. San Juan 1999', '43044261', '', '', 'San Cristóbal', '08:00:00', '01:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('97', 'SHOUT Café & Espresso Bar', 'Maipú 979', '43132850', 'reservas@shoutbar.com.ar', 'www.facebook.com/shoutcafe', 'Retiro', '08:30:00', '19:30:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('98', 'Grand Café', 'Basavilbaso 1340', '48939333', 'grandcafe@grandcafe.com.ar', 'www.grandcafe.com.ar', 'Retiro', '08:00:00', '19:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('99', 'Natacha Café', 'Marcelo Torcuato de Alvear 901', '43281551', '', '', 'Retiro', '07:00:00', '01:00:00', '4', null, 'activo', '', null);
INSERT INTO `t_cafeteria` VALUES ('100', 'Maru Botana', 'Suipacha 1371', '43267134', 'suipacha@marubotana.com', 'www.marubotana.com', 'Retiro', '08:00:00', '20:30:00', '4', null, 'activo', '', null);

-- ----------------------------
-- Table structure for `t_categoria_cafeteria`
-- ----------------------------
DROP TABLE IF EXISTS `t_categoria_cafeteria`;
CREATE TABLE `t_categoria_cafeteria` (
  `ID_categoria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_categoria`),
  UNIQUE KEY `ID_categoria_UNIQUE` (`ID_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_categoria_cafeteria
-- ----------------------------
INSERT INTO `t_categoria_cafeteria` VALUES ('1', 'Clasica');
INSERT INTO `t_categoria_cafeteria` VALUES ('2', 'Gourmet');
INSERT INTO `t_categoria_cafeteria` VALUES ('3', 'Especialidad');
INSERT INTO `t_categoria_cafeteria` VALUES ('4', 'Experiencia');

-- ----------------------------
-- Table structure for `t_categoria_nota`
-- ----------------------------
DROP TABLE IF EXISTS `t_categoria_nota`;
CREATE TABLE `t_categoria_nota` (
  `ID_categoria_nota` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_categoria_nota`),
  UNIQUE KEY `ID_categoria_de_notas_UNIQUE` (`ID_categoria_nota`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_categoria_nota
-- ----------------------------
INSERT INTO `t_categoria_nota` VALUES ('1', 'Tendencia');
INSERT INTO `t_categoria_nota` VALUES ('2', 'Recomendacion');
INSERT INTO `t_categoria_nota` VALUES ('3', 'Descubrir');

-- ----------------------------
-- Table structure for `t_categoria_producto`
-- ----------------------------
DROP TABLE IF EXISTS `t_categoria_producto`;
CREATE TABLE `t_categoria_producto` (
  `ID_categoria_producto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` text,
  PRIMARY KEY (`ID_categoria_producto`),
  UNIQUE KEY `ID_categoria_producto_UNIQUE` (`ID_categoria_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_categoria_producto
-- ----------------------------
INSERT INTO `t_categoria_producto` VALUES ('1', 'Accesorios');
INSERT INTO `t_categoria_producto` VALUES ('2', 'Comida');
INSERT INTO `t_categoria_producto` VALUES ('3', 'Bebida');

-- ----------------------------
-- Table structure for `t_comentarios`
-- ----------------------------
DROP TABLE IF EXISTS `t_comentarios`;
CREATE TABLE `t_comentarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comentario` text,
  `fecha_comentario` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) NOT NULL,
  `fk_usuario` int(10) unsigned NOT NULL,
  `id_cafeteria` int(11) NOT NULL,
  `puntaje` tinyint(1) NOT NULL DEFAULT '0',
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID_comentario_UNIQUE` (`id`),
  KEY `fk_comentarios_usuario1_idx` (`fk_usuario`),
  CONSTRAINT `fk_comentarios_usuario1` FOREIGN KEY (`fk_usuario`) REFERENCES `t_usuario` (`ID_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comentarios
-- ----------------------------
INSERT INTO `t_comentarios` VALUES ('1', 'La responsabilidad que cada uno de nosotros pone en su tarea, hace de Coffee Town la primera cafetería de cafés de Especialidad en Argentina y epicentro del café saludable en esta parte del mundo.\r\n\r\nDesde el Mercado de San Telmo, inmersos en un ambiente de alimentos gourmet, quienes hacemos Coffee Town le proponemos a través de nuestros cafés iniciar juntos un viaje por la ruta de los sentidos ', '2018-11-25 00:00:00', 'activo', '30', '3', '3', '1');
INSERT INTO `t_comentarios` VALUES ('2', 'Desde el Mercado de San Telmo, inmersos en un ambiente de alimentos gourmet, quienes hacemos Coffee Town le proponemos a través de nuestros cafés iniciar juntos un viaje por la ruta de los sentidos\n\nDesde el Mercado de San Telmo, inmersos en un ambiente de alimentos gourmet, quienes hacemos Coffee Town le proponemos a través de nuestros cafés iniciar juntos un viaje por la ruta de los sentidos', '2018-11-24 00:00:00', 'activo', '30', '3', '5', '1');
INSERT INTO `t_comentarios` VALUES ('3', 'HOLA PROBANDO COMENTARIOS EN ESTA CAFETERIA HERMOSA', '2018-11-25 20:37:35', 'activo', '30', '3', '1', '1');
INSERT INTO `t_comentarios` VALUES ('4', 'gdfgdfgdfg', '2018-11-26 00:10:16', 'inactivo', '30', '3', '3', '0');
INSERT INTO `t_comentarios` VALUES ('5', '4144444444', '2018-11-29 00:20:26', 'inactivo', '30', '3', '1', '0');
INSERT INTO `t_comentarios` VALUES ('6', '4144444444', '2018-11-29 00:20:32', 'inactivo', '30', '3', '1', '0');
INSERT INTO `t_comentarios` VALUES ('7', 'ghhhhhhh5555555555555555555', '2018-11-29 00:23:21', 'inactivo', '30', '3', '1', '0');
INSERT INTO `t_comentarios` VALUES ('8', 'ghhhhhhh5555555555555555555', '2018-11-29 00:23:23', 'inactivo', '30', '3', '1', '0');
INSERT INTO `t_comentarios` VALUES ('9', '1111111111111111111111111111111111111111111111', '2018-11-29 00:24:15', 'inactivo', '30', '3', '1', '0');
INSERT INTO `t_comentarios` VALUES ('10', '2222222222222222222222222222222222222222222222', '2018-11-29 00:25:13', 'activo', '30', '3', '1', '1');
INSERT INTO `t_comentarios` VALUES ('11', 'uuuuuuuuuuuuu', '2018-11-29 00:25:32', 'activo', '29', '3', '1', '1');
INSERT INTO `t_comentarios` VALUES ('12', '121212 12 12 \n12 12 \n12 1\n2 ', '2018-11-29 00:48:39', 'activo', '30', '3', '1', '1');
INSERT INTO `t_comentarios` VALUES ('13', '6546546546546546546546546546546', '2018-11-29 00:57:40', 'activo', '30', '3', '4', '1');
INSERT INTO `t_comentarios` VALUES ('14', 'probando cagfeteria numero asasd', '2018-11-29 10:47:54', 'activo', '30', '1', '1', '1');
INSERT INTO `t_comentarios` VALUES ('15', 'DEJANDO COMENTARIO DE PRUEBA !!', '2018-11-29 18:05:01', 'activo', '30', '1', '1', '1');
INSERT INTO `t_comentarios` VALUES ('16', 'TEST CAFETERIA', '2018-11-30 13:38:21', 'inactivo', '31', '1', '1', '0');
INSERT INTO `t_comentarios` VALUES ('17', 'TEST CAFETERIATEST CAFETERIATEST CAFETERIATEST CAFETERIATEST CAFETERIA\nhóla \ne´zé¿?ñ', '2018-12-01 11:21:09', 'inactivo', '31', '1', '1', '0');
INSERT INTO `t_comentarios` VALUES ('18', '<script>alert(\'hola\')</script>', '2018-12-01 11:21:33', 'inactivo', '31', '1', '1', '0');
INSERT INTO `t_comentarios` VALUES ('19', null, '2018-12-01 11:37:48', 'inactivo', '31', '1', '1', '0');
INSERT INTO `t_comentarios` VALUES ('20', null, '2018-12-01 11:48:30', 'inactivo', '31', '1', '1', '0');
INSERT INTO `t_comentarios` VALUES ('21', null, '2018-12-01 11:48:51', 'inactivo', '31', '1', '1', '0');
INSERT INTO `t_comentarios` VALUES ('22', null, '2018-12-01 11:51:29', 'inactivo', '31', '1', '1', '0');
INSERT INTO `t_comentarios` VALUES ('23', 'ytrtyrty4564564564', '2018-12-01 13:10:10', 'inactivo', '31', '1', '3', '0');
INSERT INTO `t_comentarios` VALUES ('24', '<script>alert(\'hola\')</script>', '2018-12-01 13:10:27', 'inactivo', '31', '1', '3', '0');
INSERT INTO `t_comentarios` VALUES ('25', 'vbvbbnbvbv', '2018-12-01 15:42:35', 'inactivo', '31', '1', '1', '0');
INSERT INTO `t_comentarios` VALUES ('26', 'fghgfhgfhfghfghfgh', '2018-12-01 15:46:01', 'inactivo', '31', '1', '4', '0');
INSERT INTO `t_comentarios` VALUES ('27', 'retrtertertert', '2018-12-01 16:07:10', 'inactivo', '31', '1', '1', '0');
INSERT INTO `t_comentarios` VALUES ('28', 'ghjghjghjghjg', '2018-12-01 16:11:05', 'inactivo', '31', '1', '1', '0');
INSERT INTO `t_comentarios` VALUES ('29', 'ghjghjghjghj', '2018-12-01 16:11:08', 'inactivo', '31', '1', '4', '0');
INSERT INTO `t_comentarios` VALUES ('30', 'ghjghjghj66666', '2018-12-01 16:11:19', 'inactivo', '31', '1', '4', '0');
INSERT INTO `t_comentarios` VALUES ('31', 'fhghfghfghfg', '2018-12-01 16:20:20', 'inactivo', '31', '1', '1', '0');
INSERT INTO `t_comentarios` VALUES ('32', 'ºº11111111111111111111111111111111112222222222222222222222222222222222222', '2018-12-01 16:32:58', 'inactivo', '31', '1', '5', '0');
INSERT INTO `t_comentarios` VALUES ('33', '22222222222222', '2018-12-01 16:34:29', 'inactivo', '31', '1', '5', '0');
INSERT INTO `t_comentarios` VALUES ('34', '66666656565', '2018-12-01 16:38:04', 'inactivo', '31', '1', '1', '0');
INSERT INTO `t_comentarios` VALUES ('35', 'wwwwwwwwwwwwwwwwwwwwwwwwww', '2018-12-01 16:38:31', 'inactivo', '31', '1', '1', '0');
INSERT INTO `t_comentarios` VALUES ('36', '1111111111111111111111111111111', '2018-12-01 17:08:24', 'inactivo', '31', '1', '1', '0');
INSERT INTO `t_comentarios` VALUES ('37', '1111111111111111111111111111', '2018-12-01 19:57:28', 'activo', '31', '2', '1', '1');
INSERT INTO `t_comentarios` VALUES ('38', 'hoa dejando comentario', '2018-12-09 15:38:04', 'activo', '31', '2', '1', '1');
INSERT INTO `t_comentarios` VALUES ('39', 'Reseña de prueba 01', '2018-12-11 16:05:21', 'activo', '1', '2', '5', '1');
INSERT INTO `t_comentarios` VALUES ('40', 'La biela reseña 01', '2018-12-11 16:11:23', 'activo', '61', '10', '4', '1');
INSERT INTO `t_comentarios` VALUES ('41', 'La biela reseña 2', '2018-12-11 16:11:42', 'activo', '61', '10', '1', '1');
INSERT INTO `t_comentarios` VALUES ('42', 'La biela reseña 3', '2018-12-11 16:11:58', 'activo', '61', '10', '1', '1');
INSERT INTO `t_comentarios` VALUES ('43', 'La biela reseña 4', '2018-12-11 16:12:23', 'activo', '61', '10', '1', '1');
INSERT INTO `t_comentarios` VALUES ('44', 'La biela reseña 4', '2018-12-11 16:12:23', 'activo', '61', '10', '1', '1');

-- ----------------------------
-- Table structure for `t_imagen`
-- ----------------------------
DROP TABLE IF EXISTS `t_imagen`;
CREATE TABLE `t_imagen` (
  `ID_imagen` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `ubicacion_fisica` varchar(45) DEFAULT NULL,
  `nombre_sistema` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_imagen`),
  UNIQUE KEY `ID_imagen_UNIQUE` (`ID_imagen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_imagen
-- ----------------------------

-- ----------------------------
-- Table structure for `t_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `ID_menu` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `precio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_menu`),
  UNIQUE KEY `ID_menu_UNIQUE` (`ID_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `t_nota`
-- ----------------------------
DROP TABLE IF EXISTS `t_nota`;
CREATE TABLE `t_nota` (
  `ID_nota` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo_nota` varchar(45) NOT NULL,
  `nota` text NOT NULL,
  `creacion_nota` date DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `fk_cafeteria` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID_nota`),
  UNIQUE KEY `ID_nota_UNIQUE` (`ID_nota`),
  KEY `fk_nota_cafeteria1_idx` (`fk_cafeteria`),
  CONSTRAINT `fk_nota_cafeteria1` FOREIGN KEY (`fk_cafeteria`) REFERENCES `t_cafeteria` (`ID_cafeteria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_nota
-- ----------------------------
INSERT INTO `t_nota` VALUES ('1', 'El boom de los cafÃ© gourmet de Buenos Aires', 'Dicen que, alguna vez, Buenos Aires tuvo un cafÃ© en cada esquina y que en los barrios la noche peregrinaba de un local a otro. Era una ciudad con tiempo para arreglar el mundo desde una mesa de cafÃ©, con el bolsillo suelto y las esperanzas apretadas. En las mesas, un pocillo de cafÃ© se alargaba interminablemente, tanto como la nostalgia impregnada por el humo de un cigarrillo.', '2018-10-02', 'activo', '2');

-- ----------------------------
-- Table structure for `t_privacidad_usuario`
-- ----------------------------
DROP TABLE IF EXISTS `t_privacidad_usuario`;
CREATE TABLE `t_privacidad_usuario` (
  `ID_privacidad` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `activo_inactivo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_privacidad`),
  UNIQUE KEY `ID_privacidad_UNIQUE` (`ID_privacidad`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_privacidad_usuario
-- ----------------------------
INSERT INTO `t_privacidad_usuario` VALUES ('1', '1');
INSERT INTO `t_privacidad_usuario` VALUES ('2', '0');

-- ----------------------------
-- Table structure for `t_producto`
-- ----------------------------
DROP TABLE IF EXISTS `t_producto`;
CREATE TABLE `t_producto` (
  `ID_producto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `fk_categoria` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID_producto`),
  UNIQUE KEY `ID_producto_UNIQUE` (`ID_producto`),
  KEY `fk_producto_categoria_producto1_idx` (`fk_categoria`),
  CONSTRAINT `fk_producto_categoria_producto1` FOREIGN KEY (`fk_categoria`) REFERENCES `t_categoria_producto` (`ID_categoria_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_producto
-- ----------------------------
INSERT INTO `t_producto` VALUES ('1', 'Filtro de Acero', '150', 'Filtro de acero para una cafetera clasica', 'activo', '1');
INSERT INTO `t_producto` VALUES ('2', 'Cupcake de Arandanos', '50', 'Cupcake relleno de arandanos', 'activo', '2');
INSERT INTO `t_producto` VALUES ('3', 'Cafe Expresso', '70', 'Expresso', 'activo', '3');
INSERT INTO `t_producto` VALUES ('4', 'Jugo de Naranja', '45', 'Jugo exprimido de naranja', 'activo', '3');
INSERT INTO `t_producto` VALUES ('5', 'Juego de tazas', '205', 'Juego de 6 tazas de cafe', 'activo', '1');
INSERT INTO `t_producto` VALUES ('6', 'Granos de cafe Colombianos', '89', 'Granos de cafe importados de Colombia', 'activo', '1');
INSERT INTO `t_producto` VALUES ('7', 'NickName', '50', 'Sarazita', 'activo', '1');
INSERT INTO `t_producto` VALUES ('8', 'Producto PruebaEditada', '105', 'Comidita de prueba editada y mas cara', 'inactivo', '2');

-- ----------------------------
-- Table structure for `t_rol_usuario`
-- ----------------------------
DROP TABLE IF EXISTS `t_rol_usuario`;
CREATE TABLE `t_rol_usuario` (
  `ID_rol_usuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_rol_usuario`),
  UNIQUE KEY `ID_rolUsuario_UNIQUE` (`ID_rol_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_rol_usuario
-- ----------------------------
INSERT INTO `t_rol_usuario` VALUES ('1', 'Admin');
INSERT INTO `t_rol_usuario` VALUES ('2', 'Usuario');
INSERT INTO `t_rol_usuario` VALUES ('3', 'Cafeteria');
INSERT INTO `t_rol_usuario` VALUES ('4', 'Moderador');

-- ----------------------------
-- Table structure for `t_usuario`
-- ----------------------------
DROP TABLE IF EXISTS `t_usuario`;
CREATE TABLE `t_usuario` (
  `ID_usuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `pass` varchar(60) NOT NULL,
  `fecha_registro` varchar(45) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `ubicacion_foto` varchar(45) DEFAULT NULL,
  `fk_rol_usuario` int(10) unsigned NOT NULL,
  `fk_privacidad` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID_usuario`),
  UNIQUE KEY `ID_usuario_UNIQUE` (`ID_usuario`),
  KEY `fk_usuario_rol_usuario_idx` (`fk_rol_usuario`),
  KEY `fk_usuario_privacidad_usuario1_idx` (`fk_privacidad`),
  CONSTRAINT `fk_usuario_privacidad_usuario1` FOREIGN KEY (`fk_privacidad`) REFERENCES `t_privacidad_usuario` (`ID_privacidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_rol_usuario` FOREIGN KEY (`fk_rol_usuario`) REFERENCES `t_rol_usuario` (`ID_rol_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_usuario
-- ----------------------------
INSERT INTO `t_usuario` VALUES ('1', 'Hernan', 'Alonso', 'halonso@cafeteriasba.com.ar', '$2y$10$Fv337AhPZTXY5FHyGFYypepMTwzjf0H0FQ7f/uEJCtOt9vbcsoD6.', '2018-09-23', 'activo', null, '1', '1');
INSERT INTO `t_usuario` VALUES ('2', 'Pepe Editado', 'Moderador', 'Pepito@cafeteriasba.com.ar', '$2y$10$ajU6kdVqIB6eitw9KFgAy.IEMw3jUQGcd/T89iMRwsda0lc4uwUz6', '2018-10-10', 'activo', null, '4', '1');
INSERT INTO `t_usuario` VALUES ('3', 'lalo-cafeteria', 'quiroga', 'lalo@gmail.com', '$2y$10$ncMlXRw5wtpt1Mxb12YHO.zC4fvkCYzfmg0ipkLjpBjO88TW4LsP2', '18-11-01', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('27', 'lalo-cafeteria', null, 'lalo123123123123@gmail.com', '$2y$10$/NhX0WmT9MRVQ9/0ZeN.o.kR61s4T4sRMU9gB/8EgdczG3TPSULhO', '18-11-01', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('28', 'lalo-cafeteria', null, 'lalo123123123123123123@gmail.com', '$2y$10$IoEHDLpzknr3V3srLumfyOWkFk6VWs0adCJ/8mW24VKu4sy8Um7bO', '18-11-01', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('29', 'laureano', null, 'admin@gmail.com', '$2y$10$tinGvzbs7ZQrYNqOyKGmY.RYGzUmzRtAE5gxQ4cXiio6BwciJsHZW', '18-11-11', 'activo', null, '1', '1');
INSERT INTO `t_usuario` VALUES ('30', 'lalocafes', null, 'lalo1@gmail.com', '$2y$10$jKnOrvOkdn9hTwmNc69OT.dBj7ov/Zz1WqJRk4yq2qLO3m83jWoda', '18-11-19', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('31', 'laureano', null, 'lalo.q2121@gmail.com', '$2y$10$sC.A7ON3r7fQ7Uei9o6NiO1YfpCYpzLz8UsdipXrwzPjcBcx/LuXu', '18-11-30', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('32', 'guidoasdd', null, 'gmenichetti@sysone.com', '$2y$10$53DJ1f05Jk/KhBOo1FNyNe2Ho4ocCmcTnokPjj3tOqPxyRz7Ei3bu', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('33', '1000 1000', null, '1000@gmail.com', '$2y$10$MQXaBhcYrxTBOsnx9lYez.7EXPafxxulUq8zXm1ZXDK2HEIk1hY8y', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('34', '1002 1002', null, '1002@gmail.com', '$2y$10$tRTQrFmrqQon0zmgdPqBJ.XGgJYKOfoLceqVorWJZnjAiZ513SwNi', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('35', '1001 1001', null, '1001@gmail.com', '$2y$10$F09pK0TDyvnTOzXj6uQCxOHLfn3IsTan7S8ajt8NxVRIwJ0Xddpjm', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('36', '1004 1004', null, '1004@gmail.com', '$2y$10$FgkT//Viu0SO/d3KezpSiOrkRDSp3FCFc36K27qTAG5mGD6XxO3a6', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('37', '1003 1003', null, '1003@gmail.com', '$2y$10$aZ1woxLN6TSsS0dktqKFWuk5dH0i63cColf0HI2FOgwT2VDEwUjSm', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('38', '1005 1005', null, '1005@gmail.com', '$2y$10$DgtJQLiGjkdzvamuCPsNcemxC3BhxnQVhW8wuKMXaiZkeEIaIVQxe', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('39', '1006 1006', null, '1006@gmail.com', '$2y$10$lpE0VcgPKG6mxRA4Lt2Khug/bCz8DhGjKKIsW6FlQKAxTlkCUkoQq', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('40', '1007 1007', null, '1007@gmail.com', '$2y$10$NvWLZUnn2Bn1QQ1fWZyoheSXniYbUVwQsV4TDRhKgEGoiFG0GFZ2u', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('41', '1008 1008', null, '1008@gmail.com', '$2y$10$CNEJsHTA.rhEERFGBefYT.Ti5URG.w//RmU8n74Sal7itZmaLO7ze', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('42', '1009 1009', null, '1009@gmail.com', '$2y$10$SApPW/XEul9I0r4QdInW3u0PViyUErRH9Rs3uK5C21jqxl.skf9WO', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('43', '1010 1010', null, '1010@gmail.com', '$2y$10$GyJOrXhwdVbyfgId3t9IWOfx8O0ZY4nAYn49nSsZAUCVbpPAU0TtS', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('44', '1011 1011', null, '1011@gmail.com', '$2y$10$S82nxl7aql7c9C9wd2.rIeXsG9Y8paV.ZIADkizAXkBHIUZrKdnUq', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('45', '1012 1012', null, '1012@gmail.com', '$2y$10$.DntjOLVtsprYR3DE0SES.NudswL.jjDRwcKLptWP61AIuSju5y96', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('46', '1013 1013', null, '1013@gmail.com', '$2y$10$hO34Zzr8ocH/L1xlkA3ZHOZ9Kw6lRMFdmmhQutVq6rOwif3m0lLsK', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('47', '1014 1014', null, '1014@gmail.com', '$2y$10$RGkfIcpyMFl4lRuvoAHa4OWY1FDGtTMwqtz/67lxAvFZP8rg6nKg.', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('48', '1015 1015', null, '1015@gmail.com', '$2y$10$Jj1VrivJXNT3jme3IUVBLOYCuNeTweLd9NZ7R/Fq1tGE.0hM7gxSS', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('49', '1016 1016', null, '1016@gmail.com', '$2y$10$faBOU9cqiMFj3UBSPtYz5.9TER6p3to8uCAyjMRn1SwP.aZ8NqgNO', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('50', '1017 1017', null, '1017@gmail.com', '$2y$10$zGTfuS8qnREfwuqoifcLTOmDf6AMi1QijCIBP6tk59cngvgM6D7Cu', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('51', '1018 1018', null, '1018@gmail.com', '$2y$10$1esbmlxUS8pJqt1HLl5BdunhWhCp3AgIqaehmvYtz4pDpufIpDiUe', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('52', '1019 1019', null, '1019@gmail.com', '$2y$10$EgP.20EAtBbqO6szL9YT9euXD8jF0JxmgJeCkbK2myZ4sHQVKJ9iW', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('53', '1020 1020', null, '1020@gmail.com', '$2y$10$3Ho04d2qV5heFjifuORkTuszwWfhPl/DrZibTlfHKm7k0bBoSq5y.', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('54', '1021 1021', null, '1021@gmail.com', '$2y$10$bKyUy5JqON8zwo4WBsYf9ew8Vwy1sKopB2kuWPPq0Zsobf9HMBTTy', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('55', '1025 1025', null, '1025@gmail.com', '$2y$10$2UkyzKXJ94kGLLgp1Q5VAOMOL.y48W/y7CRN28kv07ReEFTlodN46', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('56', '1027 1027', null, '1027@gmail.com', '$2y$10$06yPzHHyuDfY6DmWqfuSFe5qiEf3/GjjI8UfbONvS7GKGFiIRZ4o6', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('57', '1022 1022', null, '1022@gmail.com', '$2y$10$8C9rsQ8sXIEmm.Z/haqG.uTmbFp9eEZY2vDr671HMOcZ6qSy3TkK6', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('58', '1023 1023', null, '1023@gmail.com', '$2y$10$PRvG5zcL3RibDQakZ6TANuKAosL0suYn.GLRUrz6VjXwxegVhZx/e', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('59', '1035 1035', null, '1035@gmail.com', '$2y$10$CFr6DR9RxlArruvKknBTeeUM4t2OKuREt.oRb.9hFinIGzmDDHmUK', '18-12-03', 'activo', null, '2', '1');
INSERT INTO `t_usuario` VALUES ('60', 'carlos', 'lloveras', 'carloslloveras@gmail.com', '$2y$10$0Xje0xaYs.u4Cl42wKdAm.Izc49k6SFEHjTLsmY/0m5NrDlBnp8NG', '18-12-11', 'activo', null, '1', '1');
INSERT INTO `t_usuario` VALUES ('61', 'usertest', 'usertest', 'usertest@cafeteriasba.com', '$2y$10$3SZfOiz6ZqhIPJ54A57v..3rg6vL3EAHd1GyFy7lhOcHC1nOZnFa.', '18-12-11', 'activo', null, '2', '1');
