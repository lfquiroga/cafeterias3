/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : cafeteriasba

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-10-10 01:28:15
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
  CONSTRAINT `fk_cafeteria_has_comentarios_comentarios1` FOREIGN KEY (`fk_comentario`) REFERENCES `t_comentarios` (`ID_comentario`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  PRIMARY KEY (`ID_cafeteria`),
  UNIQUE KEY `ID_cafeteria_UNIQUE` (`ID_cafeteria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cafeteria
-- ----------------------------
INSERT INTO `t_cafeteria` VALUES ('1', 'Saints Cafe', 'Ciudad de la Paz 2300', '47060016', 'allsaints@gmail.com', 'allsaintscafe.com.ar', 'Belgrano', '08:00:00', '22:00:00', '5', '1', 'activo');
INSERT INTO `t_cafeteria` VALUES ('2', 'Café Tortoni', 'Av. de Mayo 825', '43424328', 'cafetortoni@gmail.com', 'www.cafetortoni.com.ar', 'Microcentro', '08:15:00', '01:00:00', '4', '1', 'activo');
INSERT INTO `t_cafeteria` VALUES ('3', 'Coffee Town', 'Bolivar 976', '43007333', 'coffeetown@gmail.com', 'www.coffeetowncompany.com', 'San Telmo', '08:30:00', '20:30:00', '3', '1', 'activo');
INSERT INTO `t_cafeteria` VALUES ('4', 'gggcc', 'Av. Las heras 2779', '1169507390', 'hernanmalonso@gmail.com', 'www.herni.com.ar', 'Palermo', '09:00:00', '20:00:00', '0', '0', 'inactivo');
INSERT INTO `t_cafeteria` VALUES ('5', 'Hernan Alonso', 'Larrea 1740', '1169507390', 'hernanmalonso@gmail.com', 'www.herni.com.ar', 'Recoleta', '08:00:00', '19:00:00', '0', '0', 'inactivo');
INSERT INTO `t_cafeteria` VALUES ('6', 'Prueba Edicion', 'Peron 1450', '1169507390', 'hernanmalonso@gmail.com', 'www.herni.com.ar', 'San Telmo', '09:00:00', '22:00:00', '0', '0', 'inactivo');
INSERT INTO `t_cafeteria` VALUES ('7', 'Prueba Uno', 'Av Prueba 203', '11692837472', 'prueba@cafeprueba.com.ar', 'prueba.com.ar', 'Pruebauno', '09:00:00', '20:00:00', '0', '0', 'activo');
INSERT INTO `t_cafeteria` VALUES ('8', 'Prueba Dos Alpha', 'Av. Prueba 290', '1123435232', 'prueba@cafeprueba.com.ar', 'prueba.com.ar', 'PruebaDos', '08:00:00', '19:00:00', '0', '0', 'activo');

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
  `ID_comentario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comentario` text,
  `fecha_comentario` date DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `fk_usuario` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID_comentario`),
  UNIQUE KEY `ID_comentario_UNIQUE` (`ID_comentario`),
  KEY `fk_comentarios_usuario1_idx` (`fk_usuario`),
  CONSTRAINT `fk_comentarios_usuario1` FOREIGN KEY (`fk_usuario`) REFERENCES `t_usuario` (`ID_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comentarios
-- ----------------------------

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
INSERT INTO `t_nota` VALUES ('1', 'El boom de los café gourmet de Buenos Aires', 'Dicen que, alguna vez, Buenos Aires tuvo un café en cada esquina y que en los barrios la noche peregrinaba de un local a otro. Era una ciudad con tiempo para arreglar el mundo desde una mesa de café, con el bolsillo suelto y las esperanzas apretadas. En las mesas, un pocillo de café se alargaba interminablemente, tanto como la nostalgia impregnada por el humo de un cigarrillo.', '2018-10-02', 'activo', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_usuario
-- ----------------------------
INSERT INTO `t_usuario` VALUES ('1', 'Hernan', 'Alonso', 'halonso@cafeteriasba.com.ar', '$2y$10$Fv337AhPZTXY5FHyGFYypepMTwzjf0H0FQ7f/uEJCtOt9vbcsoD6.', '2018-09-23', 'activo', null, '1', '1');
INSERT INTO `t_usuario` VALUES ('2', 'Pepe Editado', 'Moderador', 'Pepito@cafeteriasba.com.ar', '$2y$10$ajU6kdVqIB6eitw9KFgAy.IEMw3jUQGcd/T89iMRwsda0lc4uwUz6', '2018-10-10', 'activo', null, '4', '1');
