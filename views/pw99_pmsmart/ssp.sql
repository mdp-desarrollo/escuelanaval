/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50141
Source Host           : localhost:3306
Source Database       : ssp

Target Server Type    : MYSQL
Target Server Version : 50141
File Encoding         : 65001

Date: 2010-08-13 17:31:00
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `accion`
-- ----------------------------
DROP TABLE IF EXISTS `accion`;
CREATE TABLE `accion` (
  `id_accion` int(11) NOT NULL AUTO_INCREMENT,
  `accion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_accion`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of accion
-- ----------------------------
INSERT INTO `accion` VALUES ('1', 'Kilómetros construidos (ripio) Red Fundamental ');
INSERT INTO `accion` VALUES ('2', 'Kilómetros construidos (tierra) Red Fundamental ');
INSERT INTO `accion` VALUES ('3', 'Kilómetros mejorados y/o mantenidos (pavimentados) Red Fundamental');
INSERT INTO `accion` VALUES ('4', 'Kilómetros mejorados y/o mantenidos (ripio) Red Fundamental ');
INSERT INTO `accion` VALUES ('5', 'Kilómetros mejorados y/o mantenidos (tierra) Red Fundamental ');
INSERT INTO `accion` VALUES ('6', 'Kilómetros construidos (pavimentados) Redes departamentales ');
INSERT INTO `accion` VALUES ('7', 'Kilómetros construidos (ripio) Redes departamentales ');
INSERT INTO `accion` VALUES ('8', 'Kilómetros construidos (tierra) Redes departamentales ');
INSERT INTO `accion` VALUES ('9', 'Kilómetros mejorados y /o mantenidos(pavimentados) Redes departamentales ');
INSERT INTO `accion` VALUES ('10', 'Kilómetros mejorados y/o mantenidos(ripio) Redes departamentales ');
INSERT INTO `accion` VALUES ('11', 'Kilómetros mejorados y/o mantenidos (tierra) Redes departamentales ');
INSERT INTO `accion` VALUES ('12', 'Kilómetros construidos (tierra) Redes Municipales ');
INSERT INTO `accion` VALUES ('13', 'Kilómetros construidos (ripio) Redes Municipales ');
INSERT INTO `accion` VALUES ('14', 'Kilómetros mejorados y /o mantenidos(tierra) Redes Municipales ');
INSERT INTO `accion` VALUES ('15', 'Kilómetros mejorados y/o mantenidos(ripio) Redes Municipales ');
INSERT INTO `accion` VALUES ('16', 'Construcción de puente de una vía ');
INSERT INTO `accion` VALUES ('17', 'Construcción de puente de doble vía ');
INSERT INTO `accion` VALUES ('18', 'Mejoramiento de Puente de una vía ');
INSERT INTO `accion` VALUES ('19', 'Mejoramiento de Puente de doble vía ');
INSERT INTO `accion` VALUES ('20', 'Construcción de via ferroviarias. ');
INSERT INTO `accion` VALUES ('21', 'Mantenimiento y/o mejoramiento de plataforma ');
INSERT INTO `accion` VALUES ('22', 'Mantenimiento y/o mejoramiento de balasto ');
INSERT INTO `accion` VALUES ('23', 'Mantenimiento y/o mejoramiento de durmientes ');
INSERT INTO `accion` VALUES ('24', 'Mantenimiento y/o mejoramiento de riel ');
INSERT INTO `accion` VALUES ('25', 'Construcción de infraestructura terminal de pasajeros ');
INSERT INTO `accion` VALUES ('26', 'Construcción de infraestructura terminal de carga ');
INSERT INTO `accion` VALUES ('27', 'Construcción de pistas de aterrizaje ');
INSERT INTO `accion` VALUES ('28', 'Construcción de calle de rodaje ');
INSERT INTO `accion` VALUES ('29', 'Construcción de Plataforma de estacionamiento de aviones (área de parqueo)');
INSERT INTO `accion` VALUES ('30', 'Construcción de Terminal de pasajeros ');
INSERT INTO `accion` VALUES ('31', 'Construcción de Terminal de carga ');
INSERT INTO `accion` VALUES ('32', 'Construcción de bloque técnico (Torre de control) ');
INSERT INTO `accion` VALUES ('33', 'Construcción de hangares ');
INSERT INTO `accion` VALUES ('34', 'Mejoramiento y/o mantenimiento de pistas de aterrizaje ');
INSERT INTO `accion` VALUES ('35', 'Mejoramiento y/o mantenimiento de calle de rodaje ');
INSERT INTO `accion` VALUES ('36', 'Mejoramiento y/o mantenimiento de Plataforma de estacionamiento deaviones (área de parqueo) ');
INSERT INTO `accion` VALUES ('37', 'Mejoramiento y/o mantenimiento de Terminal de pasajeros ');
INSERT INTO `accion` VALUES ('38', 'Mejoramiento y/o mantenimiento de Terminal de carga ');
INSERT INTO `accion` VALUES ('39', 'Mejoramiento y/o mantenimiento de bloque técnico (Torre de control) ');
INSERT INTO `accion` VALUES ('40', 'Mejoramiento y/o mantenimiento de hangares ');
INSERT INTO `accion` VALUES ('41', 'Habilitación de vía fluvial ');
INSERT INTO `accion` VALUES ('42', 'Rehabilitación de vía fluvial ');
INSERT INTO `accion` VALUES ('43', 'Construcción de puertos ');
INSERT INTO `accion` VALUES ('44', 'Mejoramiento y/o mantenimiento de puertos ');
INSERT INTO `accion` VALUES ('45', 'Construcción de infraestructura de almacenaje ');
INSERT INTO `accion` VALUES ('46', 'Construcción de infraestructura de carguio ');
INSERT INTO `accion` VALUES ('47', 'Construcción de infraestructura de descarguio ');
INSERT INTO `accion` VALUES ('48', 'Construcción de infraestructura administrativa ');
INSERT INTO `accion` VALUES ('49', 'Vehículos ');
INSERT INTO `accion` VALUES ('50', 'Letreros ');
INSERT INTO `accion` VALUES ('51', 'Balanza vehicular ');
INSERT INTO `accion` VALUES ('52', 'Maquinaria ');
INSERT INTO `accion` VALUES ('53', 'Estudios ');
INSERT INTO `accion` VALUES ('54', 'Capacitación en operación y mantenimiento ');
INSERT INTO `accion` VALUES ('55', 'Consultorías Asistencia Técnica (Operación Mantenimiento) ');
INSERT INTO `accion` VALUES ('56', 'Capacitación en Organización Gestión ');
INSERT INTO `accion` VALUES ('57', 'Supervisión ');
INSERT INTO `accion` VALUES ('58', 'Auditorías ');
INSERT INTO `accion` VALUES ('59', 'Compensación Ambiental');
INSERT INTO `accion` VALUES ('60', 'Terrenos Adquiridos ');
INSERT INTO `accion` VALUES ('61', 'Construcción de soluciones habitacionales de 1 dormitorio ');
INSERT INTO `accion` VALUES ('62', 'Construcción de soluciones habitacionales de 2 dormitorios ');
INSERT INTO `accion` VALUES ('63', 'Construcción de soluciones habitacionales de 3 dormitorios ');
INSERT INTO `accion` VALUES ('64', 'Superficie Soluciones habitacionales (hasta 3 niveles) ');
INSERT INTO `accion` VALUES ('65', 'Superficie Soluciones habitacionales (mayore a 3 niveles) ');
INSERT INTO `accion` VALUES ('66', 'Instalaciones Eléctricas por Solución Habitacional ');
INSERT INTO `accion` VALUES ('67', 'Instalaciones Agua Potable por Solución Habitacional ');
INSERT INTO `accion` VALUES ('68', 'Instalaciones Alacantarillado por Solución Habitacional ');
INSERT INTO `accion` VALUES ('69', 'Superficie Soluciones habitacionales patios ');
INSERT INTO `accion` VALUES ('70', 'Superficie almacén/taller productivo complementario a vivienda ');
INSERT INTO `accion` VALUES ('71', 'Superficie areas Verdes ');
INSERT INTO `accion` VALUES ('72', 'Superficie viviendas reconstruídas ');
INSERT INTO `accion` VALUES ('73', 'Superficie viviendas rehabilitadas (reconstrucción parcial) ');
INSERT INTO `accion` VALUES ('74', 'Superficie viviendas mejoradas ');
INSERT INTO `accion` VALUES ('75', 'Superficie viviendas ampliadas ');
INSERT INTO `accion` VALUES ('76', 'Aceras/Cordones ');
INSERT INTO `accion` VALUES ('77', 'Calzadas (enlosetado) ');
INSERT INTO `accion` VALUES ('78', 'Calzadas (pavimento rigido) ');
INSERT INTO `accion` VALUES ('79', 'Calzadas (pavimento flexible) ');
INSERT INTO `accion` VALUES ('80', 'Calzadas (revestimiento cerámico) ');
INSERT INTO `accion` VALUES ('81', 'Calzadas (empedrado) ');
INSERT INTO `accion` VALUES ('82', 'Radios Comunitarias');
INSERT INTO `accion` VALUES ('83', 'Telecentros Comunitarios');
INSERT INTO `accion` VALUES ('84', 'Satelite');
INSERT INTO `accion` VALUES ('85', 'Linea Telefonicas Fijas');
INSERT INTO `accion` VALUES ('86', 'Suscriptores Celulares Moviles');

-- ----------------------------
-- Table structure for `avance`
-- ----------------------------
DROP TABLE IF EXISTS `avance`;
CREATE TABLE `avance` (
  `avanceID` int(11) NOT NULL AUTO_INCREMENT,
  `id_proyecto` int(11) DEFAULT NULL,
  `id_fase` int(11) DEFAULT NULL,
  `id_estado` int(11) NOT NULL DEFAULT '0',
  `id_accion` int(11) DEFAULT NULL,
  `id_unidad` int(11) DEFAULT NULL,
  `id_gestion` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`avanceID`,`id_estado`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of avance
-- ----------------------------
INSERT INTO `avance` VALUES ('1', '1', '1', '2', '1', '2', '1', '2003-03-03');
INSERT INTO `avance` VALUES ('13', '0', '0', '0', '0', '0', '0', '0000-00-00');
INSERT INTO `avance` VALUES ('3', '2', '1', '1', '76', '9', '2', '0000-00-00');
INSERT INTO `avance` VALUES ('4', '2', '1', '1', '76', '9', '2', '0000-00-00');
INSERT INTO `avance` VALUES ('14', '0', '0', '0', '0', '0', '0', '0000-00-00');
INSERT INTO `avance` VALUES ('11', '2', '1', '5', '79', '5', '1', '0000-00-00');
INSERT INTO `avance` VALUES ('15', '0', '0', '0', '0', '0', '0', '0000-00-00');
INSERT INTO `avance` VALUES ('16', '0', '0', '0', '0', '0', '0', '0000-00-00');
INSERT INTO `avance` VALUES ('17', '0', '0', '0', '0', '0', '0', '0000-00-00');
INSERT INTO `avance` VALUES ('18', '0', '0', '0', '0', '0', '0', '0000-00-00');
INSERT INTO `avance` VALUES ('19', '0', '0', '0', '0', '0', '0', '0000-00-00');
INSERT INTO `avance` VALUES ('20', '0', '0', '0', '0', '0', '0', '0000-00-00');
INSERT INTO `avance` VALUES ('21', '0', '0', '0', '0', '0', '0', '0000-00-00');
INSERT INTO `avance` VALUES ('22', '0', '0', '0', '0', '0', '0', '0000-00-00');
INSERT INTO `avance` VALUES ('23', '0', '0', '0', '0', '0', '0', '0000-00-00');
INSERT INTO `avance` VALUES ('24', '0', '0', '0', '0', '0', '0', '0000-00-00');
INSERT INTO `avance` VALUES ('25', '0', '0', '0', '0', '0', '0', '0000-00-00');
INSERT INTO `avance` VALUES ('26', '0', '0', '0', '0', '0', '0', '0000-00-00');

-- ----------------------------
-- Table structure for `beneficio`
-- ----------------------------
DROP TABLE IF EXISTS `beneficio`;
CREATE TABLE `beneficio` (
  `id_beneficio` int(11) NOT NULL AUTO_INCREMENT,
  `id_avance` int(11) DEFAULT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  `municipiobe` double DEFAULT NULL,
  PRIMARY KEY (`id_beneficio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of beneficio
-- ----------------------------

-- ----------------------------
-- Table structure for `codigo`
-- ----------------------------
DROP TABLE IF EXISTS `codigo`;
CREATE TABLE `codigo` (
  `id_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(30) DEFAULT NULL,
  `id_oeds` int(11) DEFAULT NULL,
  `id_entidad` int(11) DEFAULT NULL,
  `id_oeie` int(11) DEFAULT NULL,
  `id_ogie` int(11) DEFAULT NULL,
  `id_oeao_d` int(11) DEFAULT NULL,
  `id_oeao_u` int(11) DEFAULT NULL,
  `id_operacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 CHECKSUM=1;

-- ----------------------------
-- Records of codigo
-- ----------------------------
INSERT INTO `codigo` VALUES ('1', '1.11.2.2.1.1.1', '1', '11', '2', '2', '1', '1', '1');
INSERT INTO `codigo` VALUES ('2', '1.11.2.2.1.1.1', '1', '11', '2', '2', '1', '1', '1');
INSERT INTO `codigo` VALUES ('3', '1.11.2.2.1.1.1', '1', '11', '2', '2', '1', '1', '1');
INSERT INTO `codigo` VALUES ('4', '1.11.2.2.1.1.1', '1', '11', '2', '2', '1', '1', '1');
INSERT INTO `codigo` VALUES ('5', '1.11.2.2.1.1.1', '1', '11', '2', '2', '1', '1', '1');
INSERT INTO `codigo` VALUES ('6', '1.11.2.2.1.1.1', '1', '11', '2', '2', '1', '1', '1');
INSERT INTO `codigo` VALUES ('7', '1.11.2.2.1.1.1', '1', '11', '2', '2', '1', '1', '1');
INSERT INTO `codigo` VALUES ('8', '1.11.2.2.1.1.1', '1', '11', '2', '2', '1', '1', '1');
INSERT INTO `codigo` VALUES ('9', '1.11.2.2.1.1.1', '1', '11', '2', '2', '1', '1', '1');
INSERT INTO `codigo` VALUES ('10', '1.11.2.2.1.1.1', '1', '11', '2', '2', '1', '1', '1');
INSERT INTO `codigo` VALUES ('11', '1.11.2.2.1.1.1', '1', '11', '2', '2', '1', '1', '1');
INSERT INTO `codigo` VALUES ('12', '1.11.2.2.1.1.1', '1', '11', '2', '2', '1', '1', '1');
INSERT INTO `codigo` VALUES ('13', '1.11.2.2.1.1.1', '1', '11', '2', '2', '1', '1', '1');
INSERT INTO `codigo` VALUES ('14', '1.4.2.2.1.1.1', '1', '4', '2', '2', '1', '1', '1');
INSERT INTO `codigo` VALUES ('15', '1.19.2.2.1.1.1', '1', '19', '2', '2', '1', '1', '1');
INSERT INTO `codigo` VALUES ('16', '1.19.2.2.1.1.1', '1', '19', '2', '2', '1', '1', '1');
INSERT INTO `codigo` VALUES ('17', '1.1.1.1.1.1.1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `codigo` VALUES ('18', '1.1.1.1.1.1.1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `codigo` VALUES ('19', '1.1.1.1.1.1.1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `codigo` VALUES ('20', '1.3.1.1.1.1.1', '1', '3', '1', '1', '1', '1', '1');
INSERT INTO `codigo` VALUES ('21', '1.1.1.1.1.1.1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `codigo` VALUES ('22', '1.1.1.1.1.1.1', '1', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `departamentos`
-- ----------------------------
DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE `departamentos` (
  `idDepartamento` int(3) NOT NULL,
  `departamento` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idDepartamento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of departamentos
-- ----------------------------
INSERT INTO `departamentos` VALUES ('1', 'Chuquisaca');
INSERT INTO `departamentos` VALUES ('2', 'La Paz');
INSERT INTO `departamentos` VALUES ('3', 'Cochabamba');
INSERT INTO `departamentos` VALUES ('4', 'Oruro');
INSERT INTO `departamentos` VALUES ('5', 'Potosi');
INSERT INTO `departamentos` VALUES ('6', 'Tarija');
INSERT INTO `departamentos` VALUES ('7', 'Santa Cruz');
INSERT INTO `departamentos` VALUES ('8', 'Beni');
INSERT INTO `departamentos` VALUES ('9', 'Pando');

-- ----------------------------
-- Table structure for `empresas`
-- ----------------------------
DROP TABLE IF EXISTS `empresas`;
CREATE TABLE `empresas` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(50) DEFAULT NULL,
  `rubro` varchar(50) DEFAULT NULL,
  `nit` int(11) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `sucursales` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefonos` varchar(50) DEFAULT NULL,
  `sigma` int(11) DEFAULT NULL,
  `propietario` varchar(40) DEFAULT NULL,
  `ci` int(11) DEFAULT NULL,
  `exp` char(3) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `emailp` varchar(50) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `confirmacion` varchar(30) DEFAULT NULL,
  `activo` int(11) DEFAULT '0',
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of empresas
-- ----------------------------
INSERT INTO `empresas` VALUES ('1', '', 'Importaciones', '456251', '', null, 'imarce_hp49@yahoo.com', '', '0', '', '40215250', '', '0000-00-00', '', '', 'ivanmarceloch_hp49@hotmail.com', '2010-01-28', null, '0');

-- ----------------------------
-- Table structure for `entidades`
-- ----------------------------
DROP TABLE IF EXISTS `entidades`;
CREATE TABLE `entidades` (
  `idEntidad` int(11) NOT NULL AUTO_INCREMENT,
  `idSector` int(11) DEFAULT NULL,
  `entidad` varchar(255) DEFAULT NULL,
  `abreEntidad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idEntidad`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entidades
-- ----------------------------
INSERT INTO `entidades` VALUES ('1', '4', 'MINISTERIO DE OBRAS PUBLICAS SERVICIOS Y VIVIENDA', 'MOPSV');
INSERT INTO `entidades` VALUES ('2', '3', 'VICEMINISTERIO DE TRANSPORTES', 'VMT');
INSERT INTO `entidades` VALUES ('3', '3', 'ADMINISTRADORA BOLIVIANA DE CARRETERAS', 'ABC');
INSERT INTO `entidades` VALUES ('4', '3', 'ADMINISTRACION DE AEROPUERTOS Y SERVICIOS AUXILIARES A LA NAVEGACION AEREA', 'AASANA');
INSERT INTO `entidades` VALUES ('5', '3', 'DIRECCION GENERAL DE AEROUNATICA CIVIL', 'DGAC');
INSERT INTO `entidades` VALUES ('6', '3', 'SERVICIO AL MEJORAMIENTO DE LA NAVEGACION AMAZONICA', 'SEMENA');
INSERT INTO `entidades` VALUES ('7', '3', 'BOLIVIANA DE AVIACION', 'BOA');
INSERT INTO `entidades` VALUES ('8', '3', 'VIAS BOLIVIA', 'VoBo');
INSERT INTO `entidades` VALUES ('9', '5', 'AUTORIDAD DE FISCALIZACION Y CONTROL SOCIAL DE TRANSPORTE Y TELECOMUNICACIONES', 'ATT');
INSERT INTO `entidades` VALUES ('10', '3', 'SERVICIO NACIONAL DE CAMINOS RESIDUAL', 'SNC-R');
INSERT INTO `entidades` VALUES ('11', '3', 'EMPRESA NACIONAL DE FERROCARRILES', 'ENFE');
INSERT INTO `entidades` VALUES ('12', '2', 'VICEMINISTERIO DE TELECOMUNICACIONES', 'VMTEL');
INSERT INTO `entidades` VALUES ('13', '2', 'EMPRESA NACIONAL DE TELECOMUNICACIONES', 'ENTEL');
INSERT INTO `entidades` VALUES ('14', '2', 'EMPRESA DE CORREOS DE BOLIVIA', 'ECOBOL');
INSERT INTO `entidades` VALUES ('15', '2', 'SERVICIO NACIONAL DE TELECOMUNICACIONES RURALES', 'SENATER');
INSERT INTO `entidades` VALUES ('16', '2', 'PROYECTO DE INFRAESTRUCTURA DESCENTRALIZADA PARA LA TRANSFORMACION RURAL', 'IDTR');
INSERT INTO `entidades` VALUES ('17', '1', 'VICEMINISTERIO DE VIVIENDA Y URBANISMO', 'VMVU');
INSERT INTO `entidades` VALUES ('18', '1', 'UNIDAD DE TITULACION', 'UT');
INSERT INTO `entidades` VALUES ('19', '1', 'CONSEJO DE VIVIENDA POLICIAL', 'COVIPOL');
INSERT INTO `entidades` VALUES ('20', '4', 'UNIDAD DESCONCENTRADA DE CONCESIONES', 'UDC');
INSERT INTO `entidades` VALUES ('21', '4', 'CENTRO DE COMUNICACIONES LA PAZ', 'CCL');

-- ----------------------------
-- Table structure for `estados`
-- ----------------------------
DROP TABLE IF EXISTS `estados`;
CREATE TABLE `estados` (
  `idEstado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idEstado`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of estados
-- ----------------------------
INSERT INTO `estados` VALUES ('1', 'EN GESTION');
INSERT INTO `estados` VALUES ('2', 'SIN FINANCIAMIENTO');
INSERT INTO `estados` VALUES ('3', 'EJECUCION');
INSERT INTO `estados` VALUES ('4', 'PARALIZADO');
INSERT INTO `estados` VALUES ('5', 'ESTUDIO');
INSERT INTO `estados` VALUES ('8', 'CONCLUIDO');
INSERT INTO `estados` VALUES ('9', 'EVALUACION');
INSERT INTO `estados` VALUES ('11', 'EEO');
INSERT INTO `estados` VALUES ('12', 'PRT');
INSERT INTO `estados` VALUES ('13', 'SISA');
INSERT INTO `estados` VALUES ('14', 'PROYECTO');
INSERT INTO `estados` VALUES ('15', 'PPJ');
INSERT INTO `estados` VALUES ('16', 'CSC');
INSERT INTO `estados` VALUES ('17', 'PCCA');
INSERT INTO `estados` VALUES ('18', 'SADE');
INSERT INTO `estados` VALUES ('19', 'PARA INICIO');
INSERT INTO `estados` VALUES ('20', 'PARA ENTREGA');

-- ----------------------------
-- Table structure for `fases`
-- ----------------------------
DROP TABLE IF EXISTS `fases`;
CREATE TABLE `fases` (
  `idFase` int(11) NOT NULL AUTO_INCREMENT,
  `fase` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idFase`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fases
-- ----------------------------
INSERT INTO `fases` VALUES ('1', 'INVERSION');
INSERT INTO `fases` VALUES ('2', 'PREINVERSION');

-- ----------------------------
-- Table structure for `financiadores`
-- ----------------------------
DROP TABLE IF EXISTS `financiadores`;
CREATE TABLE `financiadores` (
  `idEntidadFin` int(11) NOT NULL AUTO_INCREMENT,
  `entidadFin` varchar(255) DEFAULT NULL,
  `externa` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`idEntidadFin`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of financiadores
-- ----------------------------
INSERT INTO `financiadores` VALUES ('1', 'COORPORACION ANDINA DE FOMENTO', '0');
INSERT INTO `financiadores` VALUES ('2', 'ITALIA', '0');
INSERT INTO `financiadores` VALUES ('3', 'BRASIL', '0');
INSERT INTO `financiadores` VALUES ('4', 'BID', '0');
INSERT INTO `financiadores` VALUES ('5', 'BANCO MUNDIAL', '0');
INSERT INTO `financiadores` VALUES ('6', 'PREFECTURA LA PAZ', '1');
INSERT INTO `financiadores` VALUES ('7', 'PREFECTURA POTOSI', '1');
INSERT INTO `financiadores` VALUES ('8', 'PREFECTURA SANTA CRUZ', '1');
INSERT INTO `financiadores` VALUES ('9', 'PREFECTURA BENI', '1');
INSERT INTO `financiadores` VALUES ('10', 'PREFECTURA PANDO', '1');
INSERT INTO `financiadores` VALUES ('11', 'PREFECTURA ORURO', '1');
INSERT INTO `financiadores` VALUES ('12', 'PREFECTURA CHUQUISACA', '1');
INSERT INTO `financiadores` VALUES ('13', 'FDO. NORDICO', '0');
INSERT INTO `financiadores` VALUES ('14', 'FONPLATA', '0');
INSERT INTO `financiadores` VALUES ('15', 'UNION EUROPEA', '0');
INSERT INTO `financiadores` VALUES ('16', 'VENEZUELA', '0');
INSERT INTO `financiadores` VALUES ('17', 'CHINA', '0');
INSERT INTO `financiadores` VALUES ('18', 'PREFECTURA COCHABAMBA', '1');
INSERT INTO `financiadores` VALUES ('19', 'PREFECTURA TARIJA', '1');
INSERT INTO `financiadores` VALUES ('20', 'TESORO GENERAL DE LA NACION', '1');
INSERT INTO `financiadores` VALUES ('21', 'MINISTERIO DE OBRAS PUBLICAS SERVICIOS Y VIVIENDA', '1');

-- ----------------------------
-- Table structure for `financiamiento`
-- ----------------------------
DROP TABLE IF EXISTS `financiamiento`;
CREATE TABLE `financiamiento` (
  `idFinanciado` int(11) NOT NULL AUTO_INCREMENT,
  `idProyecto` int(11) DEFAULT NULL,
  `idEntidadFin` int(11) DEFAULT NULL,
  `porcentaje` double(5,2) DEFAULT NULL,
  PRIMARY KEY (`idFinanciado`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of financiamiento
-- ----------------------------
INSERT INTO `financiamiento` VALUES ('8', '6', '1', '80.00');
INSERT INTO `financiamiento` VALUES ('9', '6', '8', '2.00');
INSERT INTO `financiamiento` VALUES ('10', '6', '10', '18.00');
INSERT INTO `financiamiento` VALUES ('11', '20', '4', '50.00');
INSERT INTO `financiamiento` VALUES ('12', '20', '6', '40.00');
INSERT INTO `financiamiento` VALUES ('13', '20', '5', '10.00');
INSERT INTO `financiamiento` VALUES ('14', '21', '5', '75.00');
INSERT INTO `financiamiento` VALUES ('15', '21', '6', '25.00');
INSERT INTO `financiamiento` VALUES ('16', '36', '1', '80.00');
INSERT INTO `financiamiento` VALUES ('17', '36', '8', '2.00');
INSERT INTO `financiamiento` VALUES ('18', '36', '20', '18.00');
INSERT INTO `financiamiento` VALUES ('19', '40', '9', '9.00');
INSERT INTO `financiamiento` VALUES ('20', '40', '5', '91.00');
INSERT INTO `financiamiento` VALUES ('21', '41', '1', '99.00');
INSERT INTO `financiamiento` VALUES ('22', '41', '6', '1.00');
INSERT INTO `financiamiento` VALUES ('23', '58', '5', '88.00');
INSERT INTO `financiamiento` VALUES ('24', '58', '9', '12.00');
INSERT INTO `financiamiento` VALUES ('25', '57', '5', '87.00');
INSERT INTO `financiamiento` VALUES ('26', '57', '6', '13.00');
INSERT INTO `financiamiento` VALUES ('27', '59', '4', '100.00');
INSERT INTO `financiamiento` VALUES ('28', '60', '4', '100.00');
INSERT INTO `financiamiento` VALUES ('29', '61', '5', '75.00');
INSERT INTO `financiamiento` VALUES ('30', '61', '18', '25.00');
INSERT INTO `financiamiento` VALUES ('31', '62', '5', '42.00');
INSERT INTO `financiamiento` VALUES ('32', '62', '18', '58.00');
INSERT INTO `financiamiento` VALUES ('33', '63', '5', '75.00');
INSERT INTO `financiamiento` VALUES ('34', '63', '10', '25.00');
INSERT INTO `financiamiento` VALUES ('35', '64', '5', '76.00');
INSERT INTO `financiamiento` VALUES ('36', '64', '18', '24.00');
INSERT INTO `financiamiento` VALUES ('37', '43', '20', '100.00');
INSERT INTO `financiamiento` VALUES ('38', '44', '20', '100.00');
INSERT INTO `financiamiento` VALUES ('39', '77', '20', '100.00');
INSERT INTO `financiamiento` VALUES ('40', '78', '20', '100.00');
INSERT INTO `financiamiento` VALUES ('41', '79', '20', '100.00');
INSERT INTO `financiamiento` VALUES ('42', '80', '20', '100.00');
INSERT INTO `financiamiento` VALUES ('43', '81', '20', '100.00');
INSERT INTO `financiamiento` VALUES ('44', '82', '20', '100.00');
INSERT INTO `financiamiento` VALUES ('45', '83', '20', '100.00');
INSERT INTO `financiamiento` VALUES ('46', '84', '20', '100.00');
INSERT INTO `financiamiento` VALUES ('47', '85', '20', '100.00');
INSERT INTO `financiamiento` VALUES ('48', '86', '20', '100.00');
INSERT INTO `financiamiento` VALUES ('49', '87', '20', '100.00');
INSERT INTO `financiamiento` VALUES ('50', '88', '20', '100.00');
INSERT INTO `financiamiento` VALUES ('51', '89', '21', '100.00');
INSERT INTO `financiamiento` VALUES ('52', '90', '21', '100.00');
INSERT INTO `financiamiento` VALUES ('53', '91', '21', '100.00');
INSERT INTO `financiamiento` VALUES ('54', '92', '21', '100.00');
INSERT INTO `financiamiento` VALUES ('55', '93', '21', '100.00');
INSERT INTO `financiamiento` VALUES ('56', '94', '21', '100.00');
INSERT INTO `financiamiento` VALUES ('57', '95', '21', '100.00');
INSERT INTO `financiamiento` VALUES ('58', '96', '18', '53.03');
INSERT INTO `financiamiento` VALUES ('59', '96', '8', '31.82');
INSERT INTO `financiamiento` VALUES ('60', '96', '9', '15.15');
INSERT INTO `financiamiento` VALUES ('61', '98', '9', '100.00');
INSERT INTO `financiamiento` VALUES ('62', '99', '6', '100.00');
INSERT INTO `financiamiento` VALUES ('63', '100', '10', '100.00');
INSERT INTO `financiamiento` VALUES ('64', '101', '18', '100.00');
INSERT INTO `financiamiento` VALUES ('65', '103', '9', '100.00');
INSERT INTO `financiamiento` VALUES ('66', '105', '8', '100.00');
INSERT INTO `financiamiento` VALUES ('67', '106', '10', '100.00');
INSERT INTO `financiamiento` VALUES ('68', '107', '6', '100.00');
INSERT INTO `financiamiento` VALUES ('69', '22', '20', '100.00');
INSERT INTO `financiamiento` VALUES ('70', '110', '20', '100.00');
INSERT INTO `financiamiento` VALUES ('71', '7', '4', '100.00');
INSERT INTO `financiamiento` VALUES ('72', '21', '21', '0.00');
INSERT INTO `financiamiento` VALUES ('73', '37', '12', '25.00');
INSERT INTO `financiamiento` VALUES ('74', '37', '5', '75.00');
INSERT INTO `financiamiento` VALUES ('75', '38', '8', '15.00');
INSERT INTO `financiamiento` VALUES ('76', '38', '18', '4.00');
INSERT INTO `financiamiento` VALUES ('77', '38', '11', '4.00');
INSERT INTO `financiamiento` VALUES ('78', '38', '13', '78.00');
INSERT INTO `financiamiento` VALUES ('79', '39', '9', '6.00');
INSERT INTO `financiamiento` VALUES ('80', '39', '5', '94.00');
INSERT INTO `financiamiento` VALUES ('81', '112', '20', '100.00');
INSERT INTO `financiamiento` VALUES ('82', '113', '20', '100.00');
INSERT INTO `financiamiento` VALUES ('83', '114', '4', '100.00');
INSERT INTO `financiamiento` VALUES ('84', '116', '17', '100.00');
INSERT INTO `financiamiento` VALUES ('85', '117', '4', '80.00');
INSERT INTO `financiamiento` VALUES ('86', '117', '18', '20.00');
INSERT INTO `financiamiento` VALUES ('87', '118', '4', '80.00');
INSERT INTO `financiamiento` VALUES ('88', '118', '8', '20.00');
INSERT INTO `financiamiento` VALUES ('89', '119', '20', '100.00');

-- ----------------------------
-- Table structure for `financiero`
-- ----------------------------
DROP TABLE IF EXISTS `financiero`;
CREATE TABLE `financiero` (
  `financieroID` int(11) NOT NULL AUTO_INCREMENT,
  `id_proyecto` int(11) DEFAULT NULL,
  `id_gestion` int(11) DEFAULT NULL,
  `mes` varchar(255) DEFAULT NULL,
  `ejecutadomes` float DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`financieroID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of financiero
-- ----------------------------
INSERT INTO `financiero` VALUES ('8', '2', '3', '1', '1', '0000-00-00');
INSERT INTO `financiero` VALUES ('3', '1', '2', '6', '78', null);
INSERT INTO `financiero` VALUES ('7', '5', '11', '1', '20', '0000-00-00');
INSERT INTO `financiero` VALUES ('5', '4', '2', '5', '33', null);
INSERT INTO `financiero` VALUES ('6', '4', '2', '8', '21', null);

-- ----------------------------
-- Table structure for `fisico`
-- ----------------------------
DROP TABLE IF EXISTS `fisico`;
CREATE TABLE `fisico` (
  `fisicoID` int(11) NOT NULL AUTO_INCREMENT,
  `id_proyecto` int(11) DEFAULT NULL,
  `id_gestion` int(11) DEFAULT NULL,
  `mes` int(4) DEFAULT NULL,
  `ejecutadomes` double DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`fisicoID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fisico
-- ----------------------------
INSERT INTO `fisico` VALUES ('1', '1', '1', '3', '55', '0000-00-00');
INSERT INTO `fisico` VALUES ('2', '4', '2', '1', '34', '2000-01-23');
INSERT INTO `fisico` VALUES ('3', '2', '1', '1', '56', '0000-00-00');

-- ----------------------------
-- Table structure for `mes`
-- ----------------------------
DROP TABLE IF EXISTS `mes`;
CREATE TABLE `mes` (
  `mesID` int(11) NOT NULL AUTO_INCREMENT,
  `mes` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mesID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mes
-- ----------------------------
INSERT INTO `mes` VALUES ('1', 'Enero');
INSERT INTO `mes` VALUES ('2', 'Febrero');
INSERT INTO `mes` VALUES ('3', 'Marzo');
INSERT INTO `mes` VALUES ('4', 'Abril');
INSERT INTO `mes` VALUES ('5', 'Mayo');
INSERT INTO `mes` VALUES ('6', 'Junio');
INSERT INTO `mes` VALUES ('7', 'Julio');
INSERT INTO `mes` VALUES ('8', 'Agosto');
INSERT INTO `mes` VALUES ('9', 'Septiembre');
INSERT INTO `mes` VALUES ('10', 'Octubre');
INSERT INTO `mes` VALUES ('11', 'Noviembre');
INSERT INTO `mes` VALUES ('12', 'Diciembre');

-- ----------------------------
-- Table structure for `metasgestion`
-- ----------------------------
DROP TABLE IF EXISTS `metasgestion`;
CREATE TABLE `metasgestion` (
  `idMetagestion` int(11) NOT NULL AUTO_INCREMENT,
  `idProyecto` int(11) DEFAULT NULL,
  `gestion` int(11) unsigned NOT NULL DEFAULT '0',
  `presupuesto` double(15,2) DEFAULT NULL,
  `base` double(10,2) DEFAULT NULL,
  `basefisica` double(10,2) DEFAULT NULL,
  `meta` double(10,2) DEFAULT NULL,
  `programado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idMetagestion`,`gestion`)
) ENGINE=MyISAM AUTO_INCREMENT=265 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of metasgestion
-- ----------------------------
INSERT INTO `metasgestion` VALUES ('181', '20', '2010', '10000.00', '0.00', '0.00', '55.00', '1');
INSERT INTO `metasgestion` VALUES ('182', '20', '2011', '39818126.00', '0.00', '55.00', '45.00', '1');
INSERT INTO `metasgestion` VALUES ('183', '36', '2010', '2262398.00', '0.00', '55.00', '45.00', '1');
INSERT INTO `metasgestion` VALUES ('184', '43', '2010', '0.00', '0.00', '0.00', '0.00', '1');
INSERT INTO `metasgestion` VALUES ('185', '40', '2010', '5041925.00', '0.00', '51.00', '49.00', '1');
INSERT INTO `metasgestion` VALUES ('186', '41', '2010', '26814190.00', '0.00', '0.00', '100.00', '1');
INSERT INTO `metasgestion` VALUES ('187', '58', '2010', '5058536.00', '0.00', '61.00', '39.00', '1');
INSERT INTO `metasgestion` VALUES ('188', '57', '2010', '8051486.00', '0.00', '43.00', '57.00', '1');
INSERT INTO `metasgestion` VALUES ('179', '8', '2011', '3333.00', '3.00', '3.00', '3.00', '1');
INSERT INTO `metasgestion` VALUES ('180', '20', '2012', '123456.00', '56.00', '10.00', '10.00', '1');
INSERT INTO `metasgestion` VALUES ('189', '59', '2008', '34590960.00', '0.00', '0.00', '65.00', '1');
INSERT INTO `metasgestion` VALUES ('190', '60', '2010', '24949433.00', '0.00', '0.00', '65.00', '0');
INSERT INTO `metasgestion` VALUES ('191', '61', '2010', '1014131.00', '0.00', '92.00', '8.00', '0');
INSERT INTO `metasgestion` VALUES ('192', '61', '2009', '1014131.00', '0.00', '92.00', '8.00', '0');
INSERT INTO `metasgestion` VALUES ('193', '62', '2010', '7040155.00', '0.00', '60.00', '40.00', '0');
INSERT INTO `metasgestion` VALUES ('194', '63', '2010', '14419084.00', '0.00', '0.00', '100.00', '0');
INSERT INTO `metasgestion` VALUES ('195', '64', '2010', '18511804.00', '0.00', '30.00', '70.00', '0');
INSERT INTO `metasgestion` VALUES ('196', '50', '2010', '0.00', '20.00', '14.00', '86.00', '0');
INSERT INTO `metasgestion` VALUES ('197', '47', '2010', '0.00', '20.00', '8.00', '92.00', '0');
INSERT INTO `metasgestion` VALUES ('198', '42', '2010', '0.00', '20.00', '8.00', '92.00', '0');
INSERT INTO `metasgestion` VALUES ('199', '44', '2010', '0.00', '21.08', '30.00', '70.00', '0');
INSERT INTO `metasgestion` VALUES ('200', '49', '2010', '2163639.00', '45.54', '56.00', '44.00', '0');
INSERT INTO `metasgestion` VALUES ('201', '66', '2010', '379284.29', '0.00', '0.00', '0.00', '0');
INSERT INTO `metasgestion` VALUES ('202', '67', '2010', '3344081.72', '0.00', '0.00', '0.00', '0');
INSERT INTO `metasgestion` VALUES ('203', '68', '2010', '16721527074.00', '0.00', '0.00', '0.00', '0');
INSERT INTO `metasgestion` VALUES ('204', '69', '2010', '16892188.04', '0.00', '0.00', '0.00', '0');
INSERT INTO `metasgestion` VALUES ('205', '70', '2010', '15375063.00', '0.00', '0.00', '0.00', '0');
INSERT INTO `metasgestion` VALUES ('206', '71', '2010', '4782014.00', '0.00', '0.00', '0.00', '0');
INSERT INTO `metasgestion` VALUES ('207', '72', '2010', '7307269.00', '0.00', '0.00', '0.00', '0');
INSERT INTO `metasgestion` VALUES ('208', '73', '2010', '1940639.00', '0.00', '0.00', '0.00', '0');
INSERT INTO `metasgestion` VALUES ('209', '74', '2010', '516817.00', '0.00', '0.00', '0.00', '0');
INSERT INTO `metasgestion` VALUES ('210', '77', '2010', '1500000.00', '0.00', '0.00', '100.00', '0');
INSERT INTO `metasgestion` VALUES ('211', '78', '2010', '1200000.00', '0.00', '0.00', '100.00', '0');
INSERT INTO `metasgestion` VALUES ('212', '79', '2010', '1200000.00', '0.00', '0.00', '100.00', '0');
INSERT INTO `metasgestion` VALUES ('213', '80', '2010', '0.00', '0.00', '0.00', '100.00', '1');
INSERT INTO `metasgestion` VALUES ('214', '81', '2010', '1800000.00', '0.00', '0.00', '100.00', '1');
INSERT INTO `metasgestion` VALUES ('215', '82', '2010', '1700000.00', '0.00', '0.00', '100.00', '1');
INSERT INTO `metasgestion` VALUES ('216', '83', '2010', '300000.00', '0.00', '0.00', '100.00', '1');
INSERT INTO `metasgestion` VALUES ('217', '84', '2010', '7070000.00', '0.00', '0.00', '100.00', '1');
INSERT INTO `metasgestion` VALUES ('218', '85', '2010', '4000000.00', '0.00', '0.00', '100.00', '1');
INSERT INTO `metasgestion` VALUES ('219', '86', '2010', '0.00', '20.00', '5.00', '95.00', '1');
INSERT INTO `metasgestion` VALUES ('220', '87', '2010', '11000000.00', '0.00', '0.00', '24.06', '1');
INSERT INTO `metasgestion` VALUES ('221', '88', '2010', '0.00', '0.57', '75.00', '25.00', '1');
INSERT INTO `metasgestion` VALUES ('222', '89', '2010', '21209997.86', '0.00', '0.00', '200.00', '1');
INSERT INTO `metasgestion` VALUES ('223', '90', '2010', '0.00', '3013948.00', '30.00', '73.00', '1');
INSERT INTO `metasgestion` VALUES ('224', '91', '2010', '78314694.00', '0.00', '0.00', '30.00', '1');
INSERT INTO `metasgestion` VALUES ('225', '92', '2010', '0.00', '99999999.99', '30.00', '276.00', '1');
INSERT INTO `metasgestion` VALUES ('226', '93', '2010', '0.00', '0.00', '30.00', '21.00', '1');
INSERT INTO `metasgestion` VALUES ('227', '94', '2010', '153489700.00', '0.00', '0.00', '100.00', '1');
INSERT INTO `metasgestion` VALUES ('228', '95', '2008', '0.00', '99999999.99', '30.00', '80.00', '1');
INSERT INTO `metasgestion` VALUES ('229', '96', '2010', '132000.00', '0.00', '65.00', '25.00', '1');
INSERT INTO `metasgestion` VALUES ('230', '98', '2010', '4500.00', '0.00', '0.00', '1.00', '1');
INSERT INTO `metasgestion` VALUES ('231', '99', '2010', '90000.00', '0.00', '0.00', '1.00', '1');
INSERT INTO `metasgestion` VALUES ('232', '99', '2008', '0.00', '0.00', '0.00', '0.00', '0');
INSERT INTO `metasgestion` VALUES ('233', '100', '2010', '30000.00', '0.00', '0.00', '1.00', '1');
INSERT INTO `metasgestion` VALUES ('234', '101', '2010', '70000.00', '0.00', '0.00', '400.00', '1');
INSERT INTO `metasgestion` VALUES ('235', '103', '2010', '170000.00', '0.00', '0.00', '3000.00', '1');
INSERT INTO `metasgestion` VALUES ('236', '105', '2010', '25000.00', '0.00', '0.00', '300.00', '1');
INSERT INTO `metasgestion` VALUES ('237', '106', '2010', '4950.00', '0.00', '0.00', '500.00', '1');
INSERT INTO `metasgestion` VALUES ('238', '106', '2008', '0.00', '0.00', '0.00', '0.00', '0');
INSERT INTO `metasgestion` VALUES ('239', '107', '2010', '64.00', '0.00', '0.00', '700.00', '1');
INSERT INTO `metasgestion` VALUES ('240', '108', '2010', '839753.39', '0.00', '0.00', '0.00', '1');
INSERT INTO `metasgestion` VALUES ('241', '109', '2010', '5171390.17', '0.00', '0.00', '0.00', '1');
INSERT INTO `metasgestion` VALUES ('242', '52', '2010', '3074295.19', '0.00', '0.00', '0.00', '1');
INSERT INTO `metasgestion` VALUES ('243', '53', '2010', '3181500.00', '0.00', '0.00', '0.00', '1');
INSERT INTO `metasgestion` VALUES ('244', '54', '2010', '2222310.00', '0.00', '0.00', '0.00', '1');
INSERT INTO `metasgestion` VALUES ('245', '55', '2010', '2438352.00', '0.00', '0.00', '0.00', '1');
INSERT INTO `metasgestion` VALUES ('246', '56', '2010', '16792538.00', '0.00', '0.00', '0.00', '1');
INSERT INTO `metasgestion` VALUES ('247', '22', '2010', '6847006.00', '56.91', '30.00', '70.00', '1');
INSERT INTO `metasgestion` VALUES ('248', '110', '2010', '8.39', '33.39', '45.00', '55.00', '1');
INSERT INTO `metasgestion` VALUES ('249', '111', '2010', '1017472.00', '1271027.00', '31.00', '17.00', '0');
INSERT INTO `metasgestion` VALUES ('251', '7', '2010', '420000.00', '0.00', '55.00', '45.00', '1');
INSERT INTO `metasgestion` VALUES ('252', '10', '2010', '14999715.00', '0.00', '96.00', '4.00', '1');
INSERT INTO `metasgestion` VALUES ('253', '21', '2010', '2884560.00', '0.00', '70.00', '30.00', '1');
INSERT INTO `metasgestion` VALUES ('254', '37', '2010', '1696800.00', '0.00', '100.00', '0.00', '1');
INSERT INTO `metasgestion` VALUES ('255', '38', '2010', '2256900.00', '0.00', '0.00', '100.00', '1');
INSERT INTO `metasgestion` VALUES ('256', '39', '2010', '7646135.00', '0.00', '27.00', '73.00', '1');
INSERT INTO `metasgestion` VALUES ('257', '112', '2010', '2979675.00', '0.00', '0.00', '57.00', '1');
INSERT INTO `metasgestion` VALUES ('258', '113', '2010', '1637044.00', '0.00', '0.00', '23.00', '1');
INSERT INTO `metasgestion` VALUES ('259', '114', '2010', '0.00', '0.00', '0.00', '0.66', '1');
INSERT INTO `metasgestion` VALUES ('260', '115', '2010', '0.00', '0.00', '0.00', '0.40', '1');
INSERT INTO `metasgestion` VALUES ('261', '116', '2010', '0.00', '0.00', '0.00', '0.10', '1');
INSERT INTO `metasgestion` VALUES ('262', '117', '2010', '0.00', '0.00', '0.00', '8.00', '1');
INSERT INTO `metasgestion` VALUES ('263', '118', '2010', '0.00', '0.00', '0.00', '0.80', '1');
INSERT INTO `metasgestion` VALUES ('264', '119', '2010', '0.00', '0.00', '0.00', '0.20', '1');

-- ----------------------------
-- Table structure for `metasmes`
-- ----------------------------
DROP TABLE IF EXISTS `metasmes`;
CREATE TABLE `metasmes` (
  `idMetames` int(11) NOT NULL AUTO_INCREMENT,
  `idProyecto` int(11) DEFAULT NULL,
  `gestion` int(11) DEFAULT NULL,
  `idMes` varchar(12) DEFAULT NULL,
  `metaFin` double(10,2) DEFAULT NULL,
  `metaFis` double(10,2) DEFAULT NULL,
  `ejecucionFin` double(15,2) DEFAULT '0.00',
  `ejecucionFis` double(10,2) DEFAULT '0.00',
  `modificado` double(15,2) DEFAULT '0.00',
  `fechaEjecucion` date DEFAULT NULL,
  `metaFinRep` double(12,2) DEFAULT NULL,
  `ejecutado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idMetames`)
) ENGINE=MyISAM AUTO_INCREMENT=1502 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of metasmes
-- ----------------------------
INSERT INTO `metasmes` VALUES ('494', '20', '2010', '1', '5.00', '0.00', '1555.00', '0.00', '451.00', '2010-08-09', '5.00', '1');
INSERT INTO `metasmes` VALUES ('495', '20', '2010', '2', '14.00', '10.00', '0.00', '0.00', '0.00', '2010-08-13', '15.00', '1');
INSERT INTO `metasmes` VALUES ('496', '20', '2010', '3', '20.00', '0.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('497', '20', '2010', '4', '4.00', '0.00', '0.00', '0.00', '0.00', null, '4.00', '0');
INSERT INTO `metasmes` VALUES ('498', '20', '2010', '5', '7.00', '0.00', '0.00', '0.00', '0.00', null, '7.00', '0');
INSERT INTO `metasmes` VALUES ('499', '20', '2010', '6', '13.00', '0.00', '0.00', '0.00', '0.00', null, '13.00', '0');
INSERT INTO `metasmes` VALUES ('500', '20', '2010', '7', '4.00', '0.00', '0.00', '0.00', '0.00', null, '4.00', '0');
INSERT INTO `metasmes` VALUES ('501', '20', '2010', '8', '10.00', '0.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('502', '20', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('503', '20', '2010', '10', '4.00', '0.00', '0.00', '0.00', '0.00', null, '4.00', '0');
INSERT INTO `metasmes` VALUES ('504', '20', '2010', '11', '3.00', '0.00', '0.00', '0.00', '0.00', null, '3.00', '0');
INSERT INTO `metasmes` VALUES ('505', '20', '2010', '12', '15.00', '0.00', '0.00', '0.00', '0.00', null, '15.00', '0');
INSERT INTO `metasmes` VALUES ('506', '20', '2011', '1', '0.00', '6.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('507', '20', '2011', '2', '19.00', '6.00', '7372562.86', '0.00', '0.00', '2010-08-09', '19.00', '1');
INSERT INTO `metasmes` VALUES ('508', '20', '2011', '3', '13.00', '6.00', '0.00', '0.00', '0.00', null, '13.00', '0');
INSERT INTO `metasmes` VALUES ('509', '20', '2011', '4', '13.00', '6.00', '0.00', '0.00', '0.00', null, '13.00', '0');
INSERT INTO `metasmes` VALUES ('510', '20', '2011', '5', '8.00', '6.00', '0.00', '0.00', '0.00', null, '8.00', '0');
INSERT INTO `metasmes` VALUES ('511', '20', '2011', '6', '3.00', '6.00', '0.00', '0.00', '0.00', null, '3.00', '0');
INSERT INTO `metasmes` VALUES ('512', '20', '2011', '7', '5.00', '6.00', '0.00', '0.00', '0.00', null, '5.00', '0');
INSERT INTO `metasmes` VALUES ('513', '20', '2011', '8', '10.00', '0.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('514', '20', '2011', '9', '6.00', '0.00', '0.00', '0.00', '0.00', null, '6.00', '0');
INSERT INTO `metasmes` VALUES ('515', '20', '2011', '10', '6.00', '0.00', '0.00', '0.00', '0.00', null, '6.00', '0');
INSERT INTO `metasmes` VALUES ('516', '20', '2011', '11', '8.00', '0.00', '0.00', '0.00', '0.00', null, '8.00', '0');
INSERT INTO `metasmes` VALUES ('517', '20', '2011', '12', '9.00', '0.00', '0.00', '0.00', '0.00', null, '9.00', '0');
INSERT INTO `metasmes` VALUES ('518', '36', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('519', '36', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('520', '36', '2010', '3', '9.30', '4.00', '0.00', '0.00', '0.00', null, '9.30', '0');
INSERT INTO `metasmes` VALUES ('521', '36', '2010', '4', '0.00', '4.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('522', '36', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('523', '36', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('524', '36', '2010', '7', '18.14', '0.00', '0.00', '0.00', '0.00', null, '18.14', '0');
INSERT INTO `metasmes` VALUES ('525', '36', '2010', '8', '18.14', '0.00', '0.00', '0.00', '0.00', null, '18.14', '0');
INSERT INTO `metasmes` VALUES ('526', '36', '2010', '9', '18.14', '0.00', '0.00', '0.00', '0.00', null, '18.14', '0');
INSERT INTO `metasmes` VALUES ('527', '36', '2010', '10', '18.14', '0.00', '0.00', '0.00', '0.00', null, '18.14', '0');
INSERT INTO `metasmes` VALUES ('528', '36', '2010', '11', '18.14', '0.00', '0.00', '0.00', '0.00', null, '18.14', '0');
INSERT INTO `metasmes` VALUES ('529', '36', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('530', '43', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('531', '43', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('532', '43', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('533', '43', '2010', '4', '0.00', '14.29', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('534', '43', '2010', '5', '0.00', '14.29', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('535', '43', '2010', '6', '0.00', '14.29', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('536', '43', '2010', '7', '0.00', '14.29', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('537', '43', '2010', '8', '0.00', '14.28', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('538', '43', '2010', '9', '0.00', '14.28', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('539', '43', '2010', '10', '0.00', '14.28', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('540', '43', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('541', '43', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('542', '40', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('543', '40', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('544', '40', '2010', '3', '0.00', '7.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('545', '40', '2010', '4', '0.00', '7.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('546', '40', '2010', '5', '0.00', '7.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('547', '40', '2010', '6', '0.00', '7.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('548', '40', '2010', '7', '9.00', '7.00', '0.00', '0.00', '0.00', null, '9.00', '0');
INSERT INTO `metasmes` VALUES ('470', '8', '2011', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('471', '8', '2011', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('472', '8', '2011', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('473', '8', '2011', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('474', '8', '2011', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('475', '8', '2011', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('476', '8', '2011', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('477', '8', '2011', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('478', '8', '2011', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('479', '8', '2011', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('480', '8', '2011', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('481', '8', '2011', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('482', '20', '2012', '1', '15.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('483', '20', '2012', '2', '5.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('484', '20', '2012', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('485', '20', '2012', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('486', '20', '2012', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('487', '20', '2012', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('488', '20', '2012', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('489', '20', '2012', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('490', '20', '2012', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('491', '20', '2012', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('492', '20', '2012', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('493', '20', '2012', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('549', '40', '2010', '8', '14.00', '7.00', '0.00', '0.00', '0.00', null, '14.00', '0');
INSERT INTO `metasmes` VALUES ('550', '40', '2010', '9', '14.00', '7.00', '0.00', '0.00', '0.00', null, '14.00', '0');
INSERT INTO `metasmes` VALUES ('551', '40', '2010', '10', '19.00', '0.00', '0.00', '0.00', '0.00', null, '19.00', '0');
INSERT INTO `metasmes` VALUES ('552', '40', '2010', '11', '22.00', '0.00', '0.00', '0.00', '0.00', null, '22.00', '0');
INSERT INTO `metasmes` VALUES ('553', '40', '2010', '12', '22.00', '0.00', '0.00', '0.00', '0.00', null, '22.00', '0');
INSERT INTO `metasmes` VALUES ('554', '41', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('555', '41', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('556', '41', '2010', '3', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('557', '41', '2010', '4', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('558', '41', '2010', '5', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('559', '41', '2010', '6', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('560', '41', '2010', '7', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('561', '41', '2010', '8', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('562', '41', '2010', '9', '15.00', '10.00', '0.00', '0.00', '0.00', null, '15.00', '0');
INSERT INTO `metasmes` VALUES ('563', '41', '2010', '10', '20.00', '10.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('564', '41', '2010', '11', '20.00', '10.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('565', '41', '2010', '12', '35.00', '10.00', '0.00', '0.00', '0.00', null, '35.00', '0');
INSERT INTO `metasmes` VALUES ('566', '58', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('567', '58', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('568', '58', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('569', '58', '2010', '4', '2.00', '13.00', '0.00', '0.00', '0.00', null, '2.00', '0');
INSERT INTO `metasmes` VALUES ('570', '58', '2010', '5', '0.00', '13.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('571', '58', '2010', '6', '0.00', '13.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('572', '58', '2010', '7', '16.00', '0.00', '0.00', '0.00', '0.00', null, '16.00', '0');
INSERT INTO `metasmes` VALUES ('573', '58', '2010', '8', '16.00', '0.00', '0.00', '0.00', '0.00', null, '16.00', '0');
INSERT INTO `metasmes` VALUES ('574', '58', '2010', '9', '16.00', '0.00', '0.00', '0.00', '0.00', null, '16.00', '0');
INSERT INTO `metasmes` VALUES ('575', '58', '2010', '10', '16.00', '0.00', '0.00', '0.00', '0.00', null, '16.00', '0');
INSERT INTO `metasmes` VALUES ('576', '58', '2010', '11', '16.00', '0.00', '0.00', '0.00', '0.00', null, '16.00', '0');
INSERT INTO `metasmes` VALUES ('577', '58', '2010', '12', '16.00', '0.00', '0.00', '0.00', '0.00', null, '16.00', '0');
INSERT INTO `metasmes` VALUES ('578', '57', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('579', '57', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('580', '57', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('581', '57', '2010', '4', '42.00', '8.00', '0.00', '0.00', '0.00', null, '42.00', '0');
INSERT INTO `metasmes` VALUES ('582', '57', '2010', '5', '19.00', '8.00', '0.00', '0.00', '0.00', null, '19.00', '0');
INSERT INTO `metasmes` VALUES ('583', '57', '2010', '6', '0.00', '8.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('584', '57', '2010', '7', '4.00', '8.00', '0.00', '0.00', '0.00', null, '4.00', '0');
INSERT INTO `metasmes` VALUES ('585', '57', '2010', '8', '6.00', '8.00', '0.00', '0.00', '0.00', null, '6.00', '0');
INSERT INTO `metasmes` VALUES ('586', '57', '2010', '9', '6.00', '8.00', '0.00', '0.00', '0.00', null, '6.00', '0');
INSERT INTO `metasmes` VALUES ('587', '57', '2010', '10', '8.00', '9.00', '0.00', '0.00', '0.00', null, '8.00', '0');
INSERT INTO `metasmes` VALUES ('588', '57', '2010', '11', '8.00', '0.00', '0.00', '0.00', '0.00', null, '8.00', '0');
INSERT INTO `metasmes` VALUES ('589', '57', '2010', '12', '8.00', '0.00', '0.00', '0.00', '0.00', null, '8.00', '0');
INSERT INTO `metasmes` VALUES ('590', '59', '2008', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('591', '59', '2008', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('592', '59', '2008', '3', '20.00', '7.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('593', '59', '2008', '4', '1.00', '7.00', '0.00', '0.00', '0.00', null, '1.00', '0');
INSERT INTO `metasmes` VALUES ('594', '59', '2008', '5', '11.00', '7.00', '0.00', '0.00', '0.00', null, '11.00', '0');
INSERT INTO `metasmes` VALUES ('595', '59', '2008', '6', '9.00', '7.00', '0.00', '0.00', '0.00', null, '9.00', '0');
INSERT INTO `metasmes` VALUES ('596', '59', '2008', '7', '12.00', '7.00', '0.00', '0.00', '0.00', null, '12.00', '0');
INSERT INTO `metasmes` VALUES ('597', '59', '2008', '8', '10.00', '7.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('598', '59', '2008', '9', '10.00', '7.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('599', '59', '2008', '10', '10.00', '7.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('600', '59', '2008', '11', '10.00', '7.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('601', '59', '2008', '12', '10.00', '7.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('602', '60', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('603', '60', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('604', '60', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('605', '60', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('606', '60', '2010', '5', '0.00', '8.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('607', '60', '2010', '6', '0.00', '8.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('608', '60', '2010', '7', '0.00', '8.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('609', '60', '2010', '8', '0.00', '8.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('610', '60', '2010', '9', '31.00', '8.00', '0.00', '0.00', '0.00', null, '31.00', '0');
INSERT INTO `metasmes` VALUES ('611', '60', '2010', '10', '13.00', '8.00', '0.00', '0.00', '0.00', null, '13.00', '0');
INSERT INTO `metasmes` VALUES ('612', '60', '2010', '11', '30.00', '8.00', '0.00', '0.00', '0.00', null, '30.00', '0');
INSERT INTO `metasmes` VALUES ('613', '60', '2010', '12', '26.00', '8.00', '0.00', '0.00', '0.00', null, '26.00', '0');
INSERT INTO `metasmes` VALUES ('614', '61', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('615', '61', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('616', '61', '2010', '3', '11.00', '0.00', '0.00', '0.00', '0.00', null, '11.00', '0');
INSERT INTO `metasmes` VALUES ('617', '61', '2010', '4', '0.00', '4.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('618', '61', '2010', '5', '0.00', '4.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('619', '61', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('620', '61', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('621', '61', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('622', '61', '2010', '9', '30.00', '0.00', '0.00', '0.00', '0.00', null, '30.00', '0');
INSERT INTO `metasmes` VALUES ('623', '61', '2010', '10', '30.00', '0.00', '0.00', '0.00', '0.00', null, '30.00', '0');
INSERT INTO `metasmes` VALUES ('624', '61', '2010', '11', '30.00', '0.00', '0.00', '0.00', '0.00', null, '30.00', '0');
INSERT INTO `metasmes` VALUES ('625', '61', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('626', '61', '2009', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('627', '61', '2009', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('628', '61', '2009', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('629', '61', '2009', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('630', '61', '2009', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('631', '61', '2009', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('632', '61', '2009', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('633', '61', '2009', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('634', '61', '2009', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('635', '61', '2009', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('636', '61', '2009', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('637', '61', '2009', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('638', '62', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('639', '62', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('640', '62', '2010', '3', '8.00', '0.00', '0.00', '0.00', '0.00', null, '8.00', '0');
INSERT INTO `metasmes` VALUES ('641', '62', '2010', '4', '14.00', '10.00', '0.00', '0.00', '0.00', null, '14.00', '0');
INSERT INTO `metasmes` VALUES ('642', '62', '2010', '5', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('643', '62', '2010', '6', '21.00', '10.00', '0.00', '0.00', '0.00', null, '21.00', '0');
INSERT INTO `metasmes` VALUES ('644', '62', '2010', '7', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('645', '62', '2010', '8', '10.00', '0.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('646', '62', '2010', '9', '10.00', '0.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('647', '62', '2010', '10', '10.00', '0.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('648', '62', '2010', '11', '10.00', '0.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('649', '62', '2010', '12', '10.00', '0.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('650', '63', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('651', '63', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('652', '63', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('653', '63', '2010', '4', '0.00', '11.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('654', '63', '2010', '5', '0.00', '11.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('655', '63', '2010', '6', '0.00', '11.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('656', '63', '2010', '7', '10.00', '11.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('657', '63', '2010', '8', '10.00', '11.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('658', '63', '2010', '9', '17.00', '11.00', '0.00', '0.00', '0.00', null, '17.00', '0');
INSERT INTO `metasmes` VALUES ('659', '63', '2010', '10', '17.00', '11.00', '0.00', '0.00', '0.00', null, '17.00', '0');
INSERT INTO `metasmes` VALUES ('660', '63', '2010', '11', '24.00', '11.00', '0.00', '0.00', '0.00', null, '24.00', '0');
INSERT INTO `metasmes` VALUES ('661', '63', '2010', '12', '24.00', '12.00', '0.00', '0.00', '0.00', null, '24.00', '0');
INSERT INTO `metasmes` VALUES ('662', '64', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('663', '64', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('664', '64', '2010', '3', '8.00', '0.00', '0.00', '0.00', '0.00', null, '8.00', '0');
INSERT INTO `metasmes` VALUES ('665', '64', '2010', '4', '1.00', '9.00', '0.00', '0.00', '0.00', null, '1.00', '0');
INSERT INTO `metasmes` VALUES ('666', '64', '2010', '5', '0.00', '9.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('667', '64', '2010', '6', '0.00', '9.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('668', '64', '2010', '7', '8.00', '9.00', '0.00', '0.00', '0.00', null, '8.00', '0');
INSERT INTO `metasmes` VALUES ('669', '64', '2010', '8', '13.00', '9.00', '0.00', '0.00', '0.00', null, '13.00', '0');
INSERT INTO `metasmes` VALUES ('670', '64', '2010', '9', '13.00', '8.00', '0.00', '0.00', '0.00', null, '13.00', '0');
INSERT INTO `metasmes` VALUES ('671', '64', '2010', '10', '17.00', '9.00', '0.00', '0.00', '0.00', null, '17.00', '0');
INSERT INTO `metasmes` VALUES ('672', '64', '2010', '11', '17.00', '10.00', '0.00', '0.00', '0.00', null, '17.00', '0');
INSERT INTO `metasmes` VALUES ('673', '64', '2010', '12', '23.00', '0.00', '0.00', '0.00', '0.00', null, '23.00', '0');
INSERT INTO `metasmes` VALUES ('674', '50', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('675', '50', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('676', '50', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('677', '50', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('678', '50', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('679', '50', '2010', '6', '0.00', '25.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('680', '50', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('681', '50', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('682', '50', '2010', '9', '0.00', '25.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('683', '50', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('684', '50', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('685', '50', '2010', '12', '0.00', '26.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('686', '47', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('687', '47', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('688', '47', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('689', '47', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('690', '47', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('691', '47', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('692', '47', '2010', '7', '0.00', '25.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('693', '47', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('694', '47', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('695', '47', '2010', '10', '0.00', '25.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('696', '47', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('697', '47', '2010', '12', '0.00', '27.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('698', '42', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('699', '42', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('700', '42', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('701', '42', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('702', '42', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('703', '42', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('704', '42', '2010', '7', '0.00', '25.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('705', '42', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('706', '42', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('707', '42', '2010', '10', '0.00', '25.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('708', '42', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('709', '42', '2010', '12', '0.00', '27.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('710', '44', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('711', '44', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('712', '44', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('713', '44', '2010', '4', '0.00', '14.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('714', '44', '2010', '5', '0.00', '14.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('715', '44', '2010', '6', '0.00', '14.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('716', '44', '2010', '7', '0.00', '14.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('717', '44', '2010', '8', '0.00', '14.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('718', '44', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('719', '44', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('720', '44', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('721', '44', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('722', '49', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('723', '49', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('724', '49', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('725', '49', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('726', '49', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('727', '49', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('728', '49', '2010', '7', '14.40', '15.00', '0.00', '0.00', '0.00', null, '14.40', '0');
INSERT INTO `metasmes` VALUES ('729', '49', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('730', '49', '2010', '9', '19.20', '0.00', '0.00', '0.00', '0.00', null, '19.20', '0');
INSERT INTO `metasmes` VALUES ('731', '49', '2010', '10', '0.00', '19.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('732', '49', '2010', '11', '14.40', '0.00', '0.00', '0.00', '0.00', null, '14.40', '0');
INSERT INTO `metasmes` VALUES ('733', '49', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('734', '66', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('735', '66', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('736', '66', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('737', '66', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('738', '66', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('739', '66', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('740', '66', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('741', '66', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('742', '66', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('743', '66', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('744', '66', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('745', '66', '2010', '12', '100.00', '100.00', '0.00', '0.00', '0.00', null, '100.00', '0');
INSERT INTO `metasmes` VALUES ('746', '67', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('747', '67', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('748', '67', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('749', '67', '2010', '4', '0.53', '41.47', '0.00', '0.00', '0.00', null, '0.53', '0');
INSERT INTO `metasmes` VALUES ('750', '67', '2010', '5', '0.53', '0.00', '0.00', '0.00', '0.00', null, '0.53', '0');
INSERT INTO `metasmes` VALUES ('751', '67', '2010', '6', '0.53', '27.65', '0.00', '0.00', '0.00', null, '0.53', '0');
INSERT INTO `metasmes` VALUES ('752', '67', '2010', '7', '98.41', '11.52', '0.00', '0.00', '0.00', null, '98.41', '0');
INSERT INTO `metasmes` VALUES ('753', '67', '2010', '8', '0.00', '4.61', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('754', '67', '2010', '9', '0.00', '14.29', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('755', '67', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('756', '67', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('757', '67', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('758', '68', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('759', '68', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('760', '68', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('761', '68', '2010', '4', '2.00', '76.00', '0.00', '0.00', '0.00', null, '2.00', '0');
INSERT INTO `metasmes` VALUES ('762', '68', '2010', '5', '98.00', '24.00', '0.00', '0.00', '0.00', null, '98.00', '0');
INSERT INTO `metasmes` VALUES ('763', '68', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('764', '68', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('765', '68', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('766', '68', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('767', '68', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('768', '68', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('769', '68', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('770', '69', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('771', '69', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('772', '69', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('773', '69', '2010', '4', '0.00', '33.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('774', '69', '2010', '5', '14.00', '0.00', '0.00', '0.00', '0.00', null, '14.00', '0');
INSERT INTO `metasmes` VALUES ('775', '69', '2010', '6', '0.00', '16.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('776', '69', '2010', '7', '52.00', '0.00', '0.00', '0.00', '0.00', null, '52.00', '0');
INSERT INTO `metasmes` VALUES ('777', '69', '2010', '8', '34.00', '14.00', '0.00', '0.00', '0.00', null, '34.00', '0');
INSERT INTO `metasmes` VALUES ('778', '69', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('779', '69', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('780', '69', '2010', '11', '0.00', '28.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('781', '69', '2010', '12', '0.00', '9.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('782', '70', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('783', '70', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('784', '70', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('785', '70', '2010', '4', '0.00', '14.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('786', '70', '2010', '5', '0.00', '8.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('787', '70', '2010', '6', '0.00', '12.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('788', '70', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('789', '70', '2010', '8', '17.00', '24.00', '0.00', '0.00', '0.00', null, '17.00', '0');
INSERT INTO `metasmes` VALUES ('790', '70', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('791', '70', '2010', '10', '1.00', '0.00', '0.00', '0.00', '0.00', null, '1.00', '0');
INSERT INTO `metasmes` VALUES ('792', '70', '2010', '11', '4.00', '41.00', '0.00', '0.00', '0.00', null, '4.00', '0');
INSERT INTO `metasmes` VALUES ('793', '70', '2010', '12', '79.00', '0.00', '0.00', '0.00', '0.00', null, '79.00', '0');
INSERT INTO `metasmes` VALUES ('794', '71', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('795', '71', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('796', '71', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('797', '71', '2010', '4', '0.00', '33.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('798', '71', '2010', '5', '0.00', '7.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('799', '71', '2010', '6', '0.00', '18.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('800', '71', '2010', '7', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('801', '71', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('802', '71', '2010', '9', '16.00', '38.00', '0.00', '0.00', '0.00', null, '16.00', '0');
INSERT INTO `metasmes` VALUES ('803', '71', '2010', '10', '84.00', '0.00', '0.00', '0.00', '0.00', null, '84.00', '0');
INSERT INTO `metasmes` VALUES ('804', '71', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('805', '71', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('806', '72', '2010', '1', '0.00', '15.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('807', '72', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('808', '72', '2010', '3', '0.00', '38.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('809', '72', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('810', '72', '2010', '5', '0.00', '47.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('811', '72', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('812', '72', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('813', '72', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('814', '72', '2010', '9', '99.00', '0.00', '0.00', '0.00', '0.00', null, '99.00', '0');
INSERT INTO `metasmes` VALUES ('815', '72', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('816', '72', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('817', '72', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('818', '73', '2010', '1', '2.00', '0.00', '0.00', '0.00', '0.00', null, '2.00', '0');
INSERT INTO `metasmes` VALUES ('819', '73', '2010', '2', '0.00', '7.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('820', '73', '2010', '3', '-2.00', '0.00', '0.00', '0.00', '0.00', null, '-2.00', '0');
INSERT INTO `metasmes` VALUES ('821', '73', '2010', '4', '0.00', '24.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('822', '73', '2010', '5', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('823', '73', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('824', '73', '2010', '7', '0.00', '23.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('825', '73', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('826', '73', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('827', '73', '2010', '10', '0.00', '29.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('828', '73', '2010', '11', '13.00', '12.00', '0.00', '0.00', '0.00', null, '13.00', '0');
INSERT INTO `metasmes` VALUES ('829', '73', '2010', '12', '86.00', '0.00', '0.00', '0.00', '0.00', null, '86.00', '0');
INSERT INTO `metasmes` VALUES ('830', '74', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('831', '74', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('832', '74', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('833', '74', '2010', '4', '0.00', '49.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('834', '74', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('835', '74', '2010', '6', '100.00', '0.00', '0.00', '0.00', '0.00', null, '100.00', '0');
INSERT INTO `metasmes` VALUES ('836', '74', '2010', '7', '0.00', '36.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('837', '74', '2010', '8', '0.00', '15.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('838', '74', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('839', '74', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('840', '74', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('841', '74', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('842', '77', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('843', '77', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('844', '77', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('845', '77', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('846', '77', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('847', '77', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('848', '77', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('849', '77', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('850', '77', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('851', '77', '2010', '10', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('852', '77', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('853', '77', '2010', '12', '80.00', '80.00', '0.00', '0.00', '0.00', null, '80.00', '0');
INSERT INTO `metasmes` VALUES ('854', '78', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('855', '78', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('856', '78', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('857', '78', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('858', '78', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('859', '78', '2010', '6', '0.00', '20.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('860', '78', '2010', '7', '20.00', '0.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('861', '78', '2010', '8', '0.00', '20.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('862', '78', '2010', '9', '20.00', '0.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('863', '78', '2010', '10', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('864', '78', '2010', '11', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('865', '78', '2010', '12', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('866', '79', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('867', '79', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('868', '79', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('869', '79', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('870', '79', '2010', '5', '20.00', '0.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('871', '79', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('872', '79', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('873', '79', '2010', '8', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('874', '79', '2010', '9', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('875', '79', '2010', '10', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('876', '79', '2010', '11', '0.00', '20.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('877', '79', '2010', '12', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('878', '80', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('879', '80', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('880', '80', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('881', '80', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('882', '80', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('883', '80', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('884', '80', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('885', '80', '2010', '8', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('886', '80', '2010', '9', '40.00', '40.00', '0.00', '0.00', '0.00', null, '40.00', '0');
INSERT INTO `metasmes` VALUES ('887', '80', '2010', '10', '40.00', '40.00', '0.00', '0.00', '0.00', null, '40.00', '0');
INSERT INTO `metasmes` VALUES ('888', '80', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('889', '80', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('890', '81', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('891', '81', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('892', '81', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('893', '81', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('894', '81', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('895', '81', '2010', '6', '100.00', '100.00', '0.00', '0.00', '0.00', null, '100.00', '0');
INSERT INTO `metasmes` VALUES ('896', '81', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('897', '81', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('898', '81', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('899', '81', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('900', '81', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('901', '81', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('902', '82', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('903', '82', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('904', '82', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('905', '82', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('906', '82', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('907', '82', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('908', '82', '2010', '7', '100.00', '100.00', '0.00', '0.00', '0.00', null, '100.00', '0');
INSERT INTO `metasmes` VALUES ('909', '82', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('910', '82', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('911', '82', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('912', '82', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('913', '82', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('914', '83', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('915', '83', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('916', '83', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('917', '83', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('918', '83', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('919', '83', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('920', '83', '2010', '7', '100.00', '100.00', '0.00', '0.00', '0.00', null, '100.00', '0');
INSERT INTO `metasmes` VALUES ('921', '83', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('922', '83', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('923', '83', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('924', '83', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('925', '83', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('926', '84', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('927', '84', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('928', '84', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('929', '84', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('930', '84', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('931', '84', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('932', '84', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('933', '84', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('934', '84', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('935', '84', '2010', '10', '20.00', '0.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('936', '84', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('937', '84', '2010', '12', '80.00', '100.00', '0.00', '0.00', '0.00', null, '80.00', '0');
INSERT INTO `metasmes` VALUES ('938', '85', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('939', '85', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('940', '85', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('941', '85', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('942', '85', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('943', '85', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('944', '85', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('945', '85', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('946', '85', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('947', '85', '2010', '10', '100.00', '0.00', '0.00', '0.00', '0.00', null, '100.00', '0');
INSERT INTO `metasmes` VALUES ('948', '85', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('949', '85', '2010', '12', '0.00', '100.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('950', '86', '2010', '1', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('951', '86', '2010', '2', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('952', '86', '2010', '3', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('953', '86', '2010', '4', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('954', '86', '2010', '5', '22.50', '20.00', '0.00', '0.00', '0.00', null, '22.50', '0');
INSERT INTO `metasmes` VALUES ('955', '86', '2010', '6', '22.50', '20.00', '0.00', '0.00', '0.00', null, '22.50', '0');
INSERT INTO `metasmes` VALUES ('956', '86', '2010', '7', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('957', '86', '2010', '8', '15.00', '10.00', '0.00', '0.00', '0.00', null, '15.00', '0');
INSERT INTO `metasmes` VALUES ('958', '86', '2010', '9', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('959', '86', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('960', '86', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('961', '86', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('962', '87', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('963', '87', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('964', '87', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('965', '87', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('966', '87', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('967', '87', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('968', '87', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('969', '87', '2010', '8', '20.00', '0.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('970', '87', '2010', '9', '0.00', '2.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('971', '87', '2010', '10', '0.42', '5.00', '0.00', '0.00', '0.00', null, '0.42', '0');
INSERT INTO `metasmes` VALUES ('972', '87', '2010', '11', '3.50', '6.00', '0.00', '0.00', '0.00', null, '3.50', '0');
INSERT INTO `metasmes` VALUES ('973', '87', '2010', '12', '4.66', '6.00', '0.00', '0.00', '0.00', null, '4.66', '0');
INSERT INTO `metasmes` VALUES ('974', '88', '2010', '1', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('975', '88', '2010', '2', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('976', '88', '2010', '3', '50.00', '5.00', '0.00', '0.00', '0.00', null, '50.00', '0');
INSERT INTO `metasmes` VALUES ('977', '88', '2010', '4', '50.00', '0.00', '0.00', '0.00', '0.00', null, '50.00', '0');
INSERT INTO `metasmes` VALUES ('978', '88', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('979', '88', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('980', '88', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('981', '88', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('982', '88', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('983', '88', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('984', '88', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('985', '88', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('986', '89', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('987', '89', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('988', '89', '2010', '3', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('989', '89', '2010', '4', '0.00', '15.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('990', '89', '2010', '5', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('991', '89', '2010', '6', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('992', '89', '2010', '7', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('993', '89', '2010', '8', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('994', '89', '2010', '9', '20.00', '5.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('995', '89', '2010', '10', '30.00', '10.00', '0.00', '0.00', '0.00', null, '30.00', '0');
INSERT INTO `metasmes` VALUES ('996', '89', '2010', '11', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('997', '89', '2010', '12', '30.00', '5.00', '0.00', '0.00', '0.00', null, '30.00', '0');
INSERT INTO `metasmes` VALUES ('998', '90', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('999', '90', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1000', '90', '2010', '3', '0.00', '15.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1001', '90', '2010', '4', '0.00', '20.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1002', '90', '2010', '5', '0.00', '20.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1003', '90', '2010', '6', '60.00', '20.00', '0.00', '0.00', '0.00', null, '60.00', '0');
INSERT INTO `metasmes` VALUES ('1004', '90', '2010', '7', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1005', '90', '2010', '8', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1006', '90', '2010', '9', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1007', '90', '2010', '10', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1008', '90', '2010', '11', '40.00', '5.00', '0.00', '0.00', '0.00', null, '40.00', '0');
INSERT INTO `metasmes` VALUES ('1009', '90', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1010', '91', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1011', '91', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1012', '91', '2010', '3', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1013', '91', '2010', '4', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1014', '91', '2010', '5', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1015', '91', '2010', '6', '0.00', '15.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1016', '91', '2010', '7', '0.00', '15.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1017', '91', '2010', '8', '0.00', '15.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1018', '91', '2010', '9', '0.00', '15.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1019', '91', '2010', '10', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1020', '91', '2010', '11', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1021', '91', '2010', '12', '100.00', '10.00', '0.00', '0.00', '0.00', null, '100.00', '0');
INSERT INTO `metasmes` VALUES ('1022', '92', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1023', '92', '2010', '2', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1024', '92', '2010', '3', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1025', '92', '2010', '4', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1026', '92', '2010', '5', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1027', '92', '2010', '6', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1028', '92', '2010', '7', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1029', '92', '2010', '8', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1030', '92', '2010', '9', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1031', '92', '2010', '10', '40.00', '10.00', '0.00', '0.00', '0.00', null, '40.00', '0');
INSERT INTO `metasmes` VALUES ('1032', '92', '2010', '11', '60.00', '10.00', '0.00', '0.00', '0.00', null, '60.00', '0');
INSERT INTO `metasmes` VALUES ('1033', '92', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1034', '93', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1035', '93', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1036', '93', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1037', '93', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1038', '93', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1039', '93', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1040', '93', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1041', '93', '2010', '8', '0.00', '20.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1042', '93', '2010', '9', '0.00', '20.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1043', '93', '2010', '10', '90.00', '20.00', '0.00', '0.00', '0.00', null, '90.00', '0');
INSERT INTO `metasmes` VALUES ('1044', '93', '2010', '11', '0.00', '20.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1045', '93', '2010', '12', '0.00', '20.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1046', '94', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1047', '94', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1048', '94', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1049', '94', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1050', '94', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1051', '94', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1052', '94', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1053', '94', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1054', '94', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1055', '94', '2010', '10', '0.00', '50.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1056', '94', '2010', '11', '0.00', '20.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1057', '94', '2010', '12', '20.00', '30.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('1058', '95', '2008', '1', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1059', '95', '2008', '2', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1060', '95', '2008', '3', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1061', '95', '2008', '4', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1062', '95', '2008', '5', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1063', '95', '2008', '6', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1064', '95', '2008', '7', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1065', '95', '2008', '8', '100.00', '10.00', '0.00', '0.00', '0.00', null, '100.00', '0');
INSERT INTO `metasmes` VALUES ('1066', '95', '2008', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1067', '95', '2008', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1068', '95', '2008', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1069', '95', '2008', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1070', '96', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1071', '96', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1072', '96', '2010', '3', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1073', '96', '2010', '4', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('1074', '96', '2010', '5', '15.00', '15.00', '0.00', '0.00', '0.00', null, '15.00', '0');
INSERT INTO `metasmes` VALUES ('1075', '96', '2010', '6', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1076', '96', '2010', '7', '5.00', '5.00', '0.00', '0.00', '0.00', null, '5.00', '0');
INSERT INTO `metasmes` VALUES ('1077', '96', '2010', '8', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1078', '96', '2010', '9', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1079', '96', '2010', '10', '8.00', '8.00', '0.00', '0.00', '0.00', null, '8.00', '0');
INSERT INTO `metasmes` VALUES ('1080', '96', '2010', '11', '4.00', '4.00', '0.00', '0.00', '0.00', null, '4.00', '0');
INSERT INTO `metasmes` VALUES ('1081', '96', '2010', '12', '8.00', '8.00', '0.00', '0.00', '0.00', null, '8.00', '0');
INSERT INTO `metasmes` VALUES ('1082', '98', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1083', '98', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1084', '98', '2010', '3', '2.00', '2.00', '0.00', '0.00', '0.00', null, '2.00', '0');
INSERT INTO `metasmes` VALUES ('1085', '98', '2010', '4', '3.00', '3.00', '0.00', '0.00', '0.00', null, '3.00', '0');
INSERT INTO `metasmes` VALUES ('1086', '98', '2010', '5', '15.00', '15.00', '0.00', '0.00', '0.00', null, '15.00', '0');
INSERT INTO `metasmes` VALUES ('1087', '98', '2010', '6', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1088', '98', '2010', '7', '35.00', '35.00', '0.00', '0.00', '0.00', null, '35.00', '0');
INSERT INTO `metasmes` VALUES ('1089', '98', '2010', '8', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1090', '98', '2010', '9', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1091', '98', '2010', '10', '5.00', '5.00', '0.00', '0.00', '0.00', null, '5.00', '0');
INSERT INTO `metasmes` VALUES ('1092', '98', '2010', '11', '5.00', '5.00', '0.00', '0.00', '0.00', null, '5.00', '0');
INSERT INTO `metasmes` VALUES ('1093', '98', '2010', '12', '5.00', '5.00', '0.00', '0.00', '0.00', null, '5.00', '0');
INSERT INTO `metasmes` VALUES ('1094', '99', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1095', '99', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1096', '99', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1097', '99', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1098', '99', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1099', '99', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1100', '99', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1101', '99', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1102', '99', '2010', '9', '50.00', '50.00', '0.00', '0.00', '0.00', null, '50.00', '0');
INSERT INTO `metasmes` VALUES ('1103', '99', '2010', '10', '50.00', '50.00', '0.00', '0.00', '0.00', null, '50.00', '0');
INSERT INTO `metasmes` VALUES ('1104', '99', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1105', '99', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1106', '99', '2008', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1107', '99', '2008', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1108', '99', '2008', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1109', '99', '2008', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1110', '99', '2008', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1111', '99', '2008', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1112', '99', '2008', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1113', '99', '2008', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1114', '99', '2008', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1115', '99', '2008', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1116', '99', '2008', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1117', '99', '2008', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1118', '100', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1119', '100', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1120', '100', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1121', '100', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1122', '100', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1123', '100', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1124', '100', '2010', '7', '50.00', '50.00', '0.00', '0.00', '0.00', null, '50.00', '0');
INSERT INTO `metasmes` VALUES ('1125', '100', '2010', '8', '50.00', '50.00', '0.00', '0.00', '0.00', null, '50.00', '0');
INSERT INTO `metasmes` VALUES ('1126', '100', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1127', '100', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1128', '100', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1129', '100', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1130', '101', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1131', '101', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1132', '101', '2010', '3', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1133', '101', '2010', '4', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1134', '101', '2010', '5', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1135', '101', '2010', '6', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1136', '101', '2010', '7', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1137', '101', '2010', '8', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('1138', '101', '2010', '9', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1139', '101', '2010', '10', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1140', '101', '2010', '11', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1141', '101', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1142', '103', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1143', '103', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1144', '103', '2010', '3', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1145', '103', '2010', '4', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1146', '103', '2010', '5', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1147', '103', '2010', '6', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1148', '103', '2010', '7', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1149', '103', '2010', '8', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('1150', '103', '2010', '9', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1151', '103', '2010', '10', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1152', '103', '2010', '11', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1153', '103', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1154', '105', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1155', '105', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1156', '105', '2010', '3', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1157', '105', '2010', '4', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1158', '105', '2010', '5', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1159', '105', '2010', '6', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1160', '105', '2010', '7', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1161', '105', '2010', '8', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('1162', '105', '2010', '9', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1163', '105', '2010', '10', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1164', '105', '2010', '11', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1165', '105', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1166', '106', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1167', '106', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1168', '106', '2010', '3', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1169', '106', '2010', '4', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1170', '106', '2010', '5', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1171', '106', '2010', '6', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1172', '106', '2010', '7', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1173', '106', '2010', '8', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('1174', '106', '2010', '9', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1175', '106', '2010', '10', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1176', '106', '2010', '11', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1177', '106', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1178', '106', '2008', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1179', '106', '2008', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1180', '106', '2008', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1181', '106', '2008', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1182', '106', '2008', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1183', '106', '2008', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1184', '106', '2008', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1185', '106', '2008', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1186', '106', '2008', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1187', '106', '2008', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1188', '106', '2008', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1189', '106', '2008', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1190', '107', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1191', '107', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1192', '107', '2010', '3', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1193', '107', '2010', '4', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1194', '107', '2010', '5', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1195', '107', '2010', '6', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1196', '107', '2010', '7', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1197', '107', '2010', '8', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('1198', '107', '2010', '9', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1199', '107', '2010', '10', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1200', '107', '2010', '11', '10.00', '10.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1201', '107', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1202', '108', '2010', '1', '0.00', '100.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1203', '108', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1204', '108', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1205', '108', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1206', '108', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1207', '108', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1208', '108', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1209', '108', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1210', '108', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1211', '108', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1212', '108', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1213', '108', '2010', '12', '100.00', '0.00', '0.00', '0.00', '0.00', null, '100.00', '0');
INSERT INTO `metasmes` VALUES ('1214', '109', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1215', '109', '2010', '2', '0.00', '9.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1216', '109', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1217', '109', '2010', '4', '0.00', '35.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1218', '109', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1219', '109', '2010', '6', '0.00', '34.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1220', '109', '2010', '7', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1221', '109', '2010', '8', '100.00', '17.00', '0.00', '0.00', '0.00', null, '100.00', '0');
INSERT INTO `metasmes` VALUES ('1222', '109', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1223', '109', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1224', '109', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1225', '109', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1226', '52', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1227', '52', '2010', '2', '0.00', '8.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1228', '52', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1229', '52', '2010', '4', '0.00', '32.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1230', '52', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1231', '52', '2010', '6', '0.00', '28.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1232', '52', '2010', '7', '0.00', '7.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1233', '52', '2010', '8', '100.00', '26.00', '0.00', '0.00', '0.00', null, '100.00', '0');
INSERT INTO `metasmes` VALUES ('1234', '52', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1235', '52', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1236', '52', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1237', '52', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1238', '53', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1239', '53', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1240', '53', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1241', '53', '2010', '4', '0.00', '33.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1242', '53', '2010', '5', '0.00', '7.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1243', '53', '2010', '6', '0.00', '18.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1244', '53', '2010', '7', '17.00', '5.00', '0.00', '0.00', '0.00', null, '17.00', '0');
INSERT INTO `metasmes` VALUES ('1245', '53', '2010', '8', '1.00', '0.00', '0.00', '0.00', '0.00', null, '1.00', '0');
INSERT INTO `metasmes` VALUES ('1246', '53', '2010', '9', '1.00', '38.00', '0.00', '0.00', '0.00', null, '1.00', '0');
INSERT INTO `metasmes` VALUES ('1247', '53', '2010', '10', '1.00', '0.00', '0.00', '0.00', '0.00', null, '1.00', '0');
INSERT INTO `metasmes` VALUES ('1248', '53', '2010', '11', '1.00', '0.00', '0.00', '0.00', '0.00', null, '1.00', '0');
INSERT INTO `metasmes` VALUES ('1249', '53', '2010', '12', '81.00', '0.00', '0.00', '0.00', '0.00', null, '81.00', '0');
INSERT INTO `metasmes` VALUES ('1250', '54', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1251', '54', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1252', '54', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1253', '54', '2010', '4', '0.00', '57.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1254', '54', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1255', '54', '2010', '6', '74.00', '43.00', '0.00', '0.00', '0.00', null, '74.00', '0');
INSERT INTO `metasmes` VALUES ('1256', '54', '2010', '7', '22.00', '0.00', '0.00', '0.00', '0.00', null, '22.00', '0');
INSERT INTO `metasmes` VALUES ('1257', '54', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1258', '54', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1259', '54', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1260', '54', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1261', '54', '2010', '12', '4.00', '0.00', '0.00', '0.00', '0.00', null, '4.00', '0');
INSERT INTO `metasmes` VALUES ('1262', '55', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1263', '55', '2010', '2', '0.00', '26.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1264', '55', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1265', '55', '2010', '4', '69.00', '0.00', '0.00', '0.00', '0.00', null, '69.00', '0');
INSERT INTO `metasmes` VALUES ('1266', '55', '2010', '5', '2.00', '0.00', '0.00', '0.00', '0.00', null, '2.00', '0');
INSERT INTO `metasmes` VALUES ('1267', '55', '2010', '6', '0.00', '57.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1268', '55', '2010', '7', '29.00', '17.00', '0.00', '0.00', '0.00', null, '29.00', '0');
INSERT INTO `metasmes` VALUES ('1269', '55', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1270', '55', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1271', '55', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1272', '55', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1273', '55', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1274', '56', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1275', '56', '2010', '2', '95.00', '26.00', '0.00', '0.00', '0.00', null, '95.00', '0');
INSERT INTO `metasmes` VALUES ('1276', '56', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1277', '56', '2010', '4', '2.00', '0.00', '0.00', '0.00', '0.00', null, '2.00', '0');
INSERT INTO `metasmes` VALUES ('1278', '56', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1279', '56', '2010', '6', '3.00', '57.00', '0.00', '0.00', '0.00', null, '3.00', '0');
INSERT INTO `metasmes` VALUES ('1280', '56', '2010', '7', '0.00', '17.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1281', '56', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1282', '56', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1283', '56', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1284', '56', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1285', '56', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1286', '22', '2010', '1', '6.81', '11.67', '0.00', '0.00', '0.00', null, '6.81', '0');
INSERT INTO `metasmes` VALUES ('1287', '22', '2010', '2', '0.00', '11.67', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1288', '22', '2010', '3', '0.00', '11.67', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1289', '22', '2010', '4', '0.00', '11.67', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1290', '22', '2010', '5', '0.00', '11.66', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1291', '22', '2010', '6', '0.00', '11.66', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1292', '22', '2010', '7', '9.03', '0.00', '0.00', '0.00', '0.00', null, '9.03', '0');
INSERT INTO `metasmes` VALUES ('1293', '22', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1294', '22', '2010', '9', '10.04', '0.00', '0.00', '0.00', '0.00', null, '10.04', '0');
INSERT INTO `metasmes` VALUES ('1295', '22', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1296', '22', '2010', '11', '15.05', '0.00', '0.00', '0.00', '0.00', null, '15.05', '0');
INSERT INTO `metasmes` VALUES ('1297', '22', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1298', '110', '2010', '1', '0.00', '6.88', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1299', '110', '2010', '2', '0.00', '6.88', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1300', '110', '2010', '3', '6.46', '6.88', '0.00', '0.00', '0.00', null, '6.46', '0');
INSERT INTO `metasmes` VALUES ('1301', '110', '2010', '4', '0.00', '6.88', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1302', '110', '2010', '5', '4.35', '6.87', '0.00', '0.00', '0.00', null, '4.35', '0');
INSERT INTO `metasmes` VALUES ('1303', '110', '2010', '6', '0.00', '6.87', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1304', '110', '2010', '7', '0.00', '6.87', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1305', '110', '2010', '8', '0.00', '6.87', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1306', '110', '2010', '9', '13.47', '0.00', '0.00', '0.00', '0.00', null, '13.47', '0');
INSERT INTO `metasmes` VALUES ('1307', '110', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1308', '110', '2010', '11', '20.20', '0.00', '0.00', '0.00', '0.00', null, '20.20', '0');
INSERT INTO `metasmes` VALUES ('1309', '110', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1310', '0', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1311', '0', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1312', '0', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1313', '0', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1314', '0', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1315', '0', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1316', '0', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1317', '0', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1318', '0', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1319', '0', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1320', '0', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1321', '0', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1322', '111', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1323', '111', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1324', '111', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1325', '111', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1326', '111', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1327', '111', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1328', '111', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1329', '111', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1330', '111', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1331', '111', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1332', '111', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1333', '111', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1334', '7', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1335', '7', '2010', '2', '0.00', '23.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1336', '7', '2010', '3', '61.00', '0.00', '0.00', '0.00', '0.00', null, '61.00', '0');
INSERT INTO `metasmes` VALUES ('1337', '7', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1338', '7', '2010', '5', '0.00', '23.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1339', '7', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1340', '7', '2010', '7', '20.00', '0.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('1341', '7', '2010', '8', '19.00', '0.00', '0.00', '0.00', '0.00', null, '19.00', '0');
INSERT INTO `metasmes` VALUES ('1342', '7', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1343', '7', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1344', '7', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1345', '7', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1346', '10', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1347', '10', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1348', '10', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1349', '10', '2010', '4', '0.00', '2.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1350', '10', '2010', '5', '0.00', '2.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1351', '10', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1352', '10', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1353', '10', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1354', '10', '2010', '9', '10.00', '0.00', '0.00', '0.00', '0.00', null, '10.00', '0');
INSERT INTO `metasmes` VALUES ('1355', '10', '2010', '10', '25.00', '0.00', '0.00', '0.00', '0.00', null, '25.00', '0');
INSERT INTO `metasmes` VALUES ('1356', '10', '2010', '11', '25.00', '0.00', '0.00', '0.00', '0.00', null, '25.00', '0');
INSERT INTO `metasmes` VALUES ('1357', '10', '2010', '12', '41.00', '0.00', '0.00', '0.00', '0.00', null, '41.00', '0');
INSERT INTO `metasmes` VALUES ('1358', '21', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1359', '21', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1360', '21', '2010', '3', '8.00', '15.00', '0.00', '0.00', '0.00', null, '8.00', '0');
INSERT INTO `metasmes` VALUES ('1361', '21', '2010', '4', '0.00', '15.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1362', '21', '2010', '5', '41.00', '0.00', '0.00', '0.00', '0.00', null, '41.00', '0');
INSERT INTO `metasmes` VALUES ('1363', '21', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1364', '21', '2010', '7', '9.00', '0.00', '0.00', '0.00', '0.00', null, '9.00', '0');
INSERT INTO `metasmes` VALUES ('1365', '21', '2010', '8', '9.00', '0.00', '0.00', '0.00', '0.00', null, '9.00', '0');
INSERT INTO `metasmes` VALUES ('1366', '21', '2010', '9', '9.00', '0.00', '0.00', '0.00', '0.00', null, '9.00', '0');
INSERT INTO `metasmes` VALUES ('1367', '21', '2010', '10', '9.00', '0.00', '0.00', '0.00', '0.00', null, '9.00', '0');
INSERT INTO `metasmes` VALUES ('1368', '21', '2010', '11', '9.00', '0.00', '0.00', '0.00', '0.00', null, '9.00', '0');
INSERT INTO `metasmes` VALUES ('1369', '21', '2010', '12', '9.00', '0.00', '0.00', '0.00', '0.00', null, '9.00', '0');
INSERT INTO `metasmes` VALUES ('1370', '37', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1371', '37', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1372', '37', '2010', '3', '21.18', '0.00', '0.00', '0.00', '0.00', null, '21.18', '0');
INSERT INTO `metasmes` VALUES ('1373', '37', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1374', '37', '2010', '5', '66.32', '0.00', '0.00', '0.00', '0.00', null, '66.32', '0');
INSERT INTO `metasmes` VALUES ('1375', '37', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1376', '37', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1377', '37', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1378', '37', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1379', '37', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1380', '37', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1381', '37', '2010', '12', '12.49', '0.00', '0.00', '0.00', '0.00', null, '12.49', '0');
INSERT INTO `metasmes` VALUES ('1382', '38', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1383', '38', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1384', '38', '2010', '3', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1385', '38', '2010', '4', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1386', '38', '2010', '5', '16.00', '10.00', '0.00', '0.00', '0.00', null, '16.00', '0');
INSERT INTO `metasmes` VALUES ('1387', '38', '2010', '6', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1388', '38', '2010', '7', '14.00', '10.00', '0.00', '0.00', '0.00', null, '14.00', '0');
INSERT INTO `metasmes` VALUES ('1389', '38', '2010', '8', '14.00', '10.00', '0.00', '0.00', '0.00', null, '14.00', '0');
INSERT INTO `metasmes` VALUES ('1390', '38', '2010', '9', '14.00', '10.00', '0.00', '0.00', '0.00', null, '14.00', '0');
INSERT INTO `metasmes` VALUES ('1391', '38', '2010', '10', '14.00', '10.00', '0.00', '0.00', '0.00', null, '14.00', '0');
INSERT INTO `metasmes` VALUES ('1392', '38', '2010', '11', '14.00', '10.00', '0.00', '0.00', '0.00', null, '14.00', '0');
INSERT INTO `metasmes` VALUES ('1393', '38', '2010', '12', '14.00', '10.00', '0.00', '0.00', '0.00', null, '14.00', '0');
INSERT INTO `metasmes` VALUES ('1394', '39', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1395', '39', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1396', '39', '2010', '3', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1397', '39', '2010', '4', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1398', '39', '2010', '5', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1399', '39', '2010', '6', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1400', '39', '2010', '7', '6.00', '10.00', '0.00', '0.00', '0.00', null, '6.00', '0');
INSERT INTO `metasmes` VALUES ('1401', '39', '2010', '8', '9.00', '10.00', '0.00', '0.00', '0.00', null, '9.00', '0');
INSERT INTO `metasmes` VALUES ('1402', '39', '2010', '9', '9.00', '10.00', '0.00', '0.00', '0.00', null, '9.00', '0');
INSERT INTO `metasmes` VALUES ('1403', '39', '2010', '10', '12.00', '0.00', '0.00', '0.00', '0.00', null, '12.00', '0');
INSERT INTO `metasmes` VALUES ('1404', '39', '2010', '11', '29.00', '0.00', '0.00', '0.00', '0.00', null, '29.00', '0');
INSERT INTO `metasmes` VALUES ('1405', '39', '2010', '12', '35.00', '0.00', '0.00', '0.00', '0.00', null, '35.00', '0');
INSERT INTO `metasmes` VALUES ('1406', '112', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1407', '112', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1408', '112', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1409', '112', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1410', '112', '2010', '5', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1411', '112', '2010', '6', '0.00', '15.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1412', '112', '2010', '7', '0.00', '20.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1413', '112', '2010', '8', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('1414', '112', '2010', '9', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('1415', '112', '2010', '10', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('1416', '112', '2010', '11', '20.00', '0.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('1417', '112', '2010', '12', '20.00', '0.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('1418', '113', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1419', '113', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1420', '113', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1421', '113', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1422', '113', '2010', '5', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1423', '113', '2010', '6', '0.00', '15.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1424', '113', '2010', '7', '0.00', '20.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1425', '113', '2010', '8', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('1426', '113', '2010', '9', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('1427', '113', '2010', '10', '20.00', '20.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('1428', '113', '2010', '11', '20.00', '0.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('1429', '113', '2010', '12', '20.00', '0.00', '0.00', '0.00', '0.00', null, '20.00', '0');
INSERT INTO `metasmes` VALUES ('1430', '114', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1431', '114', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1432', '114', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1433', '114', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1434', '114', '2010', '5', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1435', '114', '2010', '6', '0.00', '9.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1436', '114', '2010', '7', '0.00', '9.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1437', '114', '2010', '8', '0.00', '9.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1438', '114', '2010', '9', '0.00', '9.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1439', '114', '2010', '10', '0.00', '9.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1440', '114', '2010', '11', '0.00', '9.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1441', '114', '2010', '12', '0.00', '9.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1442', '115', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1443', '115', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1444', '115', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1445', '115', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1446', '115', '2010', '5', '0.00', '6.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1447', '115', '2010', '6', '0.00', '6.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1448', '115', '2010', '7', '0.00', '6.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1449', '115', '2010', '8', '0.00', '6.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1450', '115', '2010', '9', '0.00', '8.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1451', '115', '2010', '10', '0.00', '8.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1452', '115', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1453', '115', '2010', '12', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1454', '116', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1455', '116', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1456', '116', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1457', '116', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1458', '116', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1459', '116', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1460', '116', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1461', '116', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1462', '116', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1463', '116', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1464', '116', '2010', '11', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1465', '116', '2010', '12', '0.00', '5.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1466', '117', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1467', '117', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1468', '117', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1469', '117', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1470', '117', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1471', '117', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1472', '117', '2010', '7', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1473', '117', '2010', '8', '0.00', '12.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1474', '117', '2010', '9', '0.00', '14.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1475', '117', '2010', '10', '0.00', '14.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1476', '117', '2010', '11', '0.00', '14.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1477', '117', '2010', '12', '0.00', '16.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1478', '118', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1479', '118', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1480', '118', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1481', '118', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1482', '118', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1483', '118', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1484', '118', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1485', '118', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1486', '118', '2010', '9', '0.00', '15.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1487', '118', '2010', '10', '0.00', '15.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1488', '118', '2010', '11', '0.00', '20.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1489', '118', '2010', '12', '0.00', '20.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1490', '119', '2010', '1', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1491', '119', '2010', '2', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1492', '119', '2010', '3', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1493', '119', '2010', '4', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1494', '119', '2010', '5', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1495', '119', '2010', '6', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1496', '119', '2010', '7', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1497', '119', '2010', '8', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1498', '119', '2010', '9', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1499', '119', '2010', '10', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1500', '119', '2010', '11', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0');
INSERT INTO `metasmes` VALUES ('1501', '119', '2010', '12', '0.00', '10.00', '0.00', '0.00', '0.00', null, '0.00', '0');

-- ----------------------------
-- Table structure for `municipios`
-- ----------------------------
DROP TABLE IF EXISTS `municipios`;
CREATE TABLE `municipios` (
  `idMunicipio` int(11) NOT NULL AUTO_INCREMENT,
  `idDepartamento` int(2) DEFAULT NULL,
  `idProvincia` int(5) DEFAULT NULL,
  `municipio` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idMunicipio`)
) ENGINE=MyISAM AUTO_INCREMENT=328 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of municipios
-- ----------------------------
INSERT INTO `municipios` VALUES ('1', '1', '2', 'Sucre');
INSERT INTO `municipios` VALUES ('2', '1', '2', 'Yotala');
INSERT INTO `municipios` VALUES ('3', '1', '2', 'Poroma');
INSERT INTO `municipios` VALUES ('4', '1', '3', 'Azurduy');
INSERT INTO `municipios` VALUES ('5', '1', '3', 'Tarvita');
INSERT INTO `municipios` VALUES ('6', '1', '4', 'Zudañez');
INSERT INTO `municipios` VALUES ('7', '1', '4', 'Presto');
INSERT INTO `municipios` VALUES ('8', '1', '4', 'Mojocoya');
INSERT INTO `municipios` VALUES ('9', '1', '4', 'Icla');
INSERT INTO `municipios` VALUES ('10', '1', '5', 'Padilla');
INSERT INTO `municipios` VALUES ('11', '1', '5', 'Tomina');
INSERT INTO `municipios` VALUES ('12', '1', '5', 'Sopachuy');
INSERT INTO `municipios` VALUES ('13', '1', '5', 'Alcala');
INSERT INTO `municipios` VALUES ('14', '1', '5', 'El Villar');
INSERT INTO `municipios` VALUES ('15', '1', '6', 'Monteagudo');
INSERT INTO `municipios` VALUES ('16', '1', '6', 'Huacareta');
INSERT INTO `municipios` VALUES ('17', '1', '7', 'Tarabuco');
INSERT INTO `municipios` VALUES ('18', '1', '7', 'Yamparaez');
INSERT INTO `municipios` VALUES ('19', '1', '8', 'Camargo');
INSERT INTO `municipios` VALUES ('20', '1', '8', 'San Lucas');
INSERT INTO `municipios` VALUES ('21', '1', '8', 'Incahuasi');
INSERT INTO `municipios` VALUES ('22', '1', '9', 'Villa Serrano');
INSERT INTO `municipios` VALUES ('23', '1', '10', 'Camataqui (C. Villa Abecia)');
INSERT INTO `municipios` VALUES ('24', '1', '10', 'Culpina');
INSERT INTO `municipios` VALUES ('25', '1', '10', 'Las Carreras');
INSERT INTO `municipios` VALUES ('26', '1', '11', 'Villa Vaca Guzman (Muyupampa)');
INSERT INTO `municipios` VALUES ('27', '1', '11', 'Huacaya (Villa de Huacaya)');
INSERT INTO `municipios` VALUES ('28', '1', '11', 'Machareti');
INSERT INTO `municipios` VALUES ('29', '2', '12', 'La Paz');
INSERT INTO `municipios` VALUES ('30', '2', '12', 'Palca');
INSERT INTO `municipios` VALUES ('31', '2', '12', 'Mecapaca');
INSERT INTO `municipios` VALUES ('32', '2', '12', 'Achocalla');
INSERT INTO `municipios` VALUES ('33', '2', '12', 'El Alto');
INSERT INTO `municipios` VALUES ('34', '2', '13', 'Achacachi');
INSERT INTO `municipios` VALUES ('35', '2', '13', 'Ancoraimes');
INSERT INTO `municipios` VALUES ('36', '2', '14', 'Coro Coro');
INSERT INTO `municipios` VALUES ('37', '2', '14', 'Caquiaviri');
INSERT INTO `municipios` VALUES ('38', '2', '14', 'Calacoto');
INSERT INTO `municipios` VALUES ('39', '2', '14', 'Comanche');
INSERT INTO `municipios` VALUES ('40', '2', '14', 'Charaña');
INSERT INTO `municipios` VALUES ('41', '2', '14', 'Waldo Ballivian');
INSERT INTO `municipios` VALUES ('42', '2', '14', 'Nazacara de Pacajes');
INSERT INTO `municipios` VALUES ('43', '2', '14', 'Santiago de Callapa');
INSERT INTO `municipios` VALUES ('44', '2', '15', 'Puerto Acosta');
INSERT INTO `municipios` VALUES ('45', '2', '15', 'Mocomoco');
INSERT INTO `municipios` VALUES ('46', '2', '15', 'Puerto Carabuco');
INSERT INTO `municipios` VALUES ('47', '2', '16', 'Chuma');
INSERT INTO `municipios` VALUES ('48', '2', '16', 'Ayata');
INSERT INTO `municipios` VALUES ('49', '2', '16', 'Aucapata');
INSERT INTO `municipios` VALUES ('50', '2', '17', 'Sorata');
INSERT INTO `municipios` VALUES ('51', '2', '17', 'Guanay');
INSERT INTO `municipios` VALUES ('52', '2', '17', 'Tacacoma');
INSERT INTO `municipios` VALUES ('53', '2', '17', 'Quiabaya');
INSERT INTO `municipios` VALUES ('54', '2', '17', 'Combaya');
INSERT INTO `municipios` VALUES ('55', '2', '17', 'Tipuani');
INSERT INTO `municipios` VALUES ('56', '2', '17', 'Mapiri');
INSERT INTO `municipios` VALUES ('57', '2', '17', 'Teoponte');
INSERT INTO `municipios` VALUES ('58', '2', '18', 'Apolo');
INSERT INTO `municipios` VALUES ('59', '2', '18', 'Pelechuco');
INSERT INTO `municipios` VALUES ('60', '2', '19', 'Viacha');
INSERT INTO `municipios` VALUES ('61', '2', '19', 'Guaqui');
INSERT INTO `municipios` VALUES ('62', '2', '19', 'Tiawanacu');
INSERT INTO `municipios` VALUES ('63', '2', '19', 'Desaguadero');
INSERT INTO `municipios` VALUES ('64', '2', '19', 'San Andrés de Machaca');
INSERT INTO `municipios` VALUES ('65', '2', '19', 'Jesús de Machaca');
INSERT INTO `municipios` VALUES ('66', '2', '19', 'Taraco');
INSERT INTO `municipios` VALUES ('67', '2', '20', 'Luribay');
INSERT INTO `municipios` VALUES ('68', '2', '20', 'Sapahaqui');
INSERT INTO `municipios` VALUES ('69', '2', '20', 'Yaco');
INSERT INTO `municipios` VALUES ('70', '2', '20', 'Malla');
INSERT INTO `municipios` VALUES ('71', '2', '20', 'Cairoma');
INSERT INTO `municipios` VALUES ('72', '2', '21', 'Inquisivi');
INSERT INTO `municipios` VALUES ('73', '2', '21', 'Quime');
INSERT INTO `municipios` VALUES ('74', '2', '21', 'Cajuata');
INSERT INTO `municipios` VALUES ('75', '2', '21', 'Colquiri');
INSERT INTO `municipios` VALUES ('76', '2', '21', 'Ichoca');
INSERT INTO `municipios` VALUES ('77', '2', '21', 'Licoma Pampa');
INSERT INTO `municipios` VALUES ('78', '2', '22', 'Chulumani (V. de La Libertad)');
INSERT INTO `municipios` VALUES ('79', '2', '22', 'Irupana (Villa de Lanza)');
INSERT INTO `municipios` VALUES ('80', '2', '22', 'Yanacachi');
INSERT INTO `municipios` VALUES ('81', '2', '22', 'Palos Blancos');
INSERT INTO `municipios` VALUES ('82', '2', '22', 'La Asunta');
INSERT INTO `municipios` VALUES ('83', '2', '23', 'Pucarani');
INSERT INTO `municipios` VALUES ('84', '2', '23', 'Laja');
INSERT INTO `municipios` VALUES ('85', '2', '23', 'Batallas');
INSERT INTO `municipios` VALUES ('86', '2', '23', 'Puerto Perez');
INSERT INTO `municipios` VALUES ('87', '2', '24', 'Sica Sica (Villa Aroma)');
INSERT INTO `municipios` VALUES ('88', '2', '24', 'Umala');
INSERT INTO `municipios` VALUES ('89', '2', '24', 'Ayo Ayo');
INSERT INTO `municipios` VALUES ('90', '2', '24', 'Calamarca');
INSERT INTO `municipios` VALUES ('91', '2', '24', 'Patacamaya');
INSERT INTO `municipios` VALUES ('92', '2', '24', 'Colquencha');
INSERT INTO `municipios` VALUES ('93', '2', '24', 'Collana');
INSERT INTO `municipios` VALUES ('94', '2', '25', 'Coroico');
INSERT INTO `municipios` VALUES ('95', '2', '25', 'Coripata');
INSERT INTO `municipios` VALUES ('96', '2', '26', 'Ixiamas');
INSERT INTO `municipios` VALUES ('97', '2', '26', 'San Buena Ventura');
INSERT INTO `municipios` VALUES ('98', '2', '27', 'Gral. J.J. Perez  (Charazani)');
INSERT INTO `municipios` VALUES ('99', '2', '27', 'Curva');
INSERT INTO `municipios` VALUES ('100', '2', '28', 'Copacabana');
INSERT INTO `municipios` VALUES ('101', '2', '28', 'San Pedro de Tiquina');
INSERT INTO `municipios` VALUES ('102', '2', '28', 'Tito Yupanqui  (Parquipujio)');
INSERT INTO `municipios` VALUES ('103', '2', '29', 'San Pedro de Curahuara');
INSERT INTO `municipios` VALUES ('104', '2', '29', 'Papel Pampa');
INSERT INTO `municipios` VALUES ('105', '2', '29', 'Chacarilla');
INSERT INTO `municipios` VALUES ('106', '2', '30', 'Santiago de Machaca');
INSERT INTO `municipios` VALUES ('107', '2', '30', 'Catacora');
INSERT INTO `municipios` VALUES ('108', '2', '31', 'Caranavi');
INSERT INTO `municipios` VALUES ('109', '3', '32', 'Cochabamba');
INSERT INTO `municipios` VALUES ('110', '3', '33', 'Aiquile');
INSERT INTO `municipios` VALUES ('111', '3', '33', 'Pasorapa');
INSERT INTO `municipios` VALUES ('112', '3', '33', 'Omereque');
INSERT INTO `municipios` VALUES ('113', '3', '34', 'Ayopaya (V. de Independencia)');
INSERT INTO `municipios` VALUES ('114', '3', '34', 'Morochata');
INSERT INTO `municipios` VALUES ('115', '3', '35', 'Tarata');
INSERT INTO `municipios` VALUES ('116', '3', '35', 'Anzaldo (Villa de Anzaldo)');
INSERT INTO `municipios` VALUES ('117', '3', '35', 'Arbieto');
INSERT INTO `municipios` VALUES ('118', '3', '35', 'Sacabamba');
INSERT INTO `municipios` VALUES ('119', '3', '36', 'Arani');
INSERT INTO `municipios` VALUES ('120', '3', '36', 'Vacas');
INSERT INTO `municipios` VALUES ('121', '3', '37', 'Arque (Villa de Arque)');
INSERT INTO `municipios` VALUES ('122', '3', '37', 'Tacopaya');
INSERT INTO `municipios` VALUES ('123', '3', '38', 'Capinota');
INSERT INTO `municipios` VALUES ('124', '3', '38', 'Santivañes (Villa Santivañez)');
INSERT INTO `municipios` VALUES ('125', '3', '38', 'Sicaya');
INSERT INTO `municipios` VALUES ('126', '3', '39', 'Cliza');
INSERT INTO `municipios` VALUES ('127', '3', '39', 'Toko');
INSERT INTO `municipios` VALUES ('128', '3', '39', 'Tolata');
INSERT INTO `municipios` VALUES ('129', '3', '40', 'Quillacollo');
INSERT INTO `municipios` VALUES ('130', '3', '40', 'Sipe Sipe');
INSERT INTO `municipios` VALUES ('131', '3', '40', 'Tiquipaya');
INSERT INTO `municipios` VALUES ('132', '3', '40', 'Vinto');
INSERT INTO `municipios` VALUES ('133', '3', '40', 'Colcapirhua');
INSERT INTO `municipios` VALUES ('134', '3', '41', 'Sacaba');
INSERT INTO `municipios` VALUES ('135', '3', '41', 'Colomi');
INSERT INTO `municipios` VALUES ('136', '3', '41', 'Villa Tunari');
INSERT INTO `municipios` VALUES ('137', '3', '42', 'Tapacari');
INSERT INTO `municipios` VALUES ('138', '3', '43', 'Totora');
INSERT INTO `municipios` VALUES ('139', '3', '43', 'Pojo');
INSERT INTO `municipios` VALUES ('140', '3', '43', 'Pocona');
INSERT INTO `municipios` VALUES ('141', '3', '43', 'Chimore');
INSERT INTO `municipios` VALUES ('142', '3', '43', 'Puerto Villarroel');
INSERT INTO `municipios` VALUES ('143', '3', '43', 'Entre Rios');
INSERT INTO `municipios` VALUES ('144', '3', '44', 'Mizque');
INSERT INTO `municipios` VALUES ('145', '3', '44', 'Vila Vila');
INSERT INTO `municipios` VALUES ('146', '3', '44', 'Alalay');
INSERT INTO `municipios` VALUES ('147', '3', '45', 'Punata');
INSERT INTO `municipios` VALUES ('148', '3', '45', 'Villa Rivero');
INSERT INTO `municipios` VALUES ('149', '3', '45', 'San Benito');
INSERT INTO `municipios` VALUES ('150', '3', '45', 'Tacachi');
INSERT INTO `municipios` VALUES ('151', '3', '45', 'Cuchumuela (V. G. Villarroel)');
INSERT INTO `municipios` VALUES ('152', '3', '46', 'Bolivar');
INSERT INTO `municipios` VALUES ('153', '3', '47', 'Tiraque');
INSERT INTO `municipios` VALUES ('154', '4', '48', 'Oruro');
INSERT INTO `municipios` VALUES ('155', '4', '48', 'Caracollo');
INSERT INTO `municipios` VALUES ('156', '4', '48', 'El Choro');
INSERT INTO `municipios` VALUES ('157', '4', '48', 'Soracachi');
INSERT INTO `municipios` VALUES ('158', '4', '49', 'Challapata');
INSERT INTO `municipios` VALUES ('159', '4', '49', 'Santuario de Quillacas');
INSERT INTO `municipios` VALUES ('160', '4', '50', 'Corque');
INSERT INTO `municipios` VALUES ('161', '4', '50', 'Choque Cota');
INSERT INTO `municipios` VALUES ('162', '4', '51', 'Curahuara de Carangas');
INSERT INTO `municipios` VALUES ('163', '4', '51', 'Turco');
INSERT INTO `municipios` VALUES ('164', '4', '52', 'Huachacalla');
INSERT INTO `municipios` VALUES ('165', '4', '52', 'Escara');
INSERT INTO `municipios` VALUES ('166', '4', '52', 'Cruz de Machacamarca');
INSERT INTO `municipios` VALUES ('167', '4', '52', 'Yunguyo de Litoral');
INSERT INTO `municipios` VALUES ('168', '4', '52', 'Esmeralda');
INSERT INTO `municipios` VALUES ('169', '4', '53', 'Poopo');
INSERT INTO `municipios` VALUES ('170', '4', '53', 'Pazña');
INSERT INTO `municipios` VALUES ('171', '4', '53', 'Antequera');
INSERT INTO `municipios` VALUES ('172', '4', '54', 'Huanuni');
INSERT INTO `municipios` VALUES ('173', '4', '54', 'Machacamarca');
INSERT INTO `municipios` VALUES ('174', '4', '55', 'Salinas de García Mendoza');
INSERT INTO `municipios` VALUES ('175', '4', '55', 'Pampa Aullagas');
INSERT INTO `municipios` VALUES ('176', '4', '56', 'Sabaya');
INSERT INTO `municipios` VALUES ('177', '4', '56', 'Coipasa');
INSERT INTO `municipios` VALUES ('178', '4', '56', 'Chipaya');
INSERT INTO `municipios` VALUES ('179', '4', '57', 'Toledo');
INSERT INTO `municipios` VALUES ('180', '4', '58', 'Eucaliptus');
INSERT INTO `municipios` VALUES ('181', '4', '59', 'Andamarca');
INSERT INTO `municipios` VALUES ('182', '4', '59', 'Belen de Andamarca');
INSERT INTO `municipios` VALUES ('183', '4', '60', 'Totora');
INSERT INTO `municipios` VALUES ('184', '4', '61', 'Santiago de Huari');
INSERT INTO `municipios` VALUES ('185', '4', '62', 'La Rivera');
INSERT INTO `municipios` VALUES ('186', '4', '62', 'Todos Santos');
INSERT INTO `municipios` VALUES ('187', '4', '62', 'Carangas');
INSERT INTO `municipios` VALUES ('188', '4', '63', 'Huayllamarca');
INSERT INTO `municipios` VALUES ('189', '5', '64', 'Potosi');
INSERT INTO `municipios` VALUES ('190', '5', '64', 'Tinguipaya');
INSERT INTO `municipios` VALUES ('191', '5', '64', 'Yocalla');
INSERT INTO `municipios` VALUES ('192', '5', '64', 'Belen de Urmiri');
INSERT INTO `municipios` VALUES ('193', '5', '65', 'Uncia');
INSERT INTO `municipios` VALUES ('194', '5', '65', 'Chayanta');
INSERT INTO `municipios` VALUES ('195', '5', '65', 'Llallagua');
INSERT INTO `municipios` VALUES ('196', '5', '66', 'Betanzos');
INSERT INTO `municipios` VALUES ('197', '5', '66', 'Chaqui');
INSERT INTO `municipios` VALUES ('198', '5', '66', 'Tacobamba');
INSERT INTO `municipios` VALUES ('199', '5', '67', 'Colquechaca');
INSERT INTO `municipios` VALUES ('200', '5', '67', 'Ravelo');
INSERT INTO `municipios` VALUES ('201', '5', '67', 'Pocoata');
INSERT INTO `municipios` VALUES ('202', '5', '67', 'Ocuri');
INSERT INTO `municipios` VALUES ('203', '5', '68', 'San Pedro');
INSERT INTO `municipios` VALUES ('204', '5', '68', 'Toro Toro');
INSERT INTO `municipios` VALUES ('205', '5', '69', 'Cotagaita');
INSERT INTO `municipios` VALUES ('206', '5', '69', 'Vitichi');
INSERT INTO `municipios` VALUES ('207', '5', '70', 'Sacaca');
INSERT INTO `municipios` VALUES ('208', '5', '70', 'Caripuyo');
INSERT INTO `municipios` VALUES ('209', '5', '71', 'Tupiza');
INSERT INTO `municipios` VALUES ('210', '5', '71', 'Atocha');
INSERT INTO `municipios` VALUES ('211', '5', '72', 'Colcha K');
INSERT INTO `municipios` VALUES ('212', '5', '72', 'San Pedro de Quemes');
INSERT INTO `municipios` VALUES ('213', '5', '73', 'San Pablo de Lipez');
INSERT INTO `municipios` VALUES ('214', '5', '73', 'Mojinete');
INSERT INTO `municipios` VALUES ('215', '5', '73', 'San Antonio de Esmoruco');
INSERT INTO `municipios` VALUES ('216', '5', '74', 'Puna');
INSERT INTO `municipios` VALUES ('217', '5', '74', 'Caiza D');
INSERT INTO `municipios` VALUES ('218', '5', '75', 'Uyuni');
INSERT INTO `municipios` VALUES ('219', '5', '75', 'Tomave');
INSERT INTO `municipios` VALUES ('220', '5', '75', 'Porco');
INSERT INTO `municipios` VALUES ('221', '5', '76', 'Arampampa');
INSERT INTO `municipios` VALUES ('222', '5', '76', 'Acasio');
INSERT INTO `municipios` VALUES ('223', '5', '77', 'Llica');
INSERT INTO `municipios` VALUES ('224', '5', '77', 'Tahua');
INSERT INTO `municipios` VALUES ('225', '5', '78', 'Villazon');
INSERT INTO `municipios` VALUES ('226', '5', '79', 'San Agustin');
INSERT INTO `municipios` VALUES ('227', '6', '80', 'Tarija');
INSERT INTO `municipios` VALUES ('228', '6', '81', 'Padcaya');
INSERT INTO `municipios` VALUES ('229', '6', '81', 'Bermejo');
INSERT INTO `municipios` VALUES ('230', '6', '82', 'Yacuiba');
INSERT INTO `municipios` VALUES ('231', '6', '82', 'Carapari');
INSERT INTO `municipios` VALUES ('232', '6', '82', 'Villa Montes');
INSERT INTO `municipios` VALUES ('233', '6', '83', 'Uriondo (A. Concepcion)');
INSERT INTO `municipios` VALUES ('234', '6', '83', 'Yunchara');
INSERT INTO `municipios` VALUES ('235', '6', '84', 'San Lorenzo');
INSERT INTO `municipios` VALUES ('236', '6', '84', 'El Puente');
INSERT INTO `municipios` VALUES ('237', '6', '85', 'Entre Rios');
INSERT INTO `municipios` VALUES ('238', '7', '86', 'Santa Cruz de La Sierra');
INSERT INTO `municipios` VALUES ('239', '7', '86', 'Cotoca');
INSERT INTO `municipios` VALUES ('240', '7', '86', 'Porongo');
INSERT INTO `municipios` VALUES ('241', '7', '86', 'La Guardia');
INSERT INTO `municipios` VALUES ('242', '7', '86', 'El Torno');
INSERT INTO `municipios` VALUES ('243', '7', '87', 'Warnes');
INSERT INTO `municipios` VALUES ('244', '7', '87', 'Okinawa Uno');
INSERT INTO `municipios` VALUES ('245', '7', '88', 'San Ignacio de Velasco');
INSERT INTO `municipios` VALUES ('246', '7', '88', 'San Miguel de Velasco');
INSERT INTO `municipios` VALUES ('247', '7', '88', 'San Rafael');
INSERT INTO `municipios` VALUES ('248', '7', '89', 'Buena Vista');
INSERT INTO `municipios` VALUES ('249', '7', '89', 'San Carlos');
INSERT INTO `municipios` VALUES ('250', '7', '89', 'Yapacani');
INSERT INTO `municipios` VALUES ('251', '7', '89', 'San Juan de Yapacani');
INSERT INTO `municipios` VALUES ('252', '7', '90', 'San Jose de Chiquitos');
INSERT INTO `municipios` VALUES ('253', '7', '90', 'Pailon');
INSERT INTO `municipios` VALUES ('254', '7', '90', 'Robore');
INSERT INTO `municipios` VALUES ('255', '7', '91', 'Portachuelo');
INSERT INTO `municipios` VALUES ('256', '7', '91', 'Santa Rosa Del Sara');
INSERT INTO `municipios` VALUES ('257', '7', '91', 'Colpa Belgica');
INSERT INTO `municipios` VALUES ('258', '7', '92', 'Lagunillas');
INSERT INTO `municipios` VALUES ('259', '7', '92', 'Charagua');
INSERT INTO `municipios` VALUES ('260', '7', '92', 'Cabezas');
INSERT INTO `municipios` VALUES ('261', '7', '92', 'Cuevo');
INSERT INTO `municipios` VALUES ('262', '7', '92', 'Gutierrez');
INSERT INTO `municipios` VALUES ('263', '7', '92', 'Camiri');
INSERT INTO `municipios` VALUES ('264', '7', '92', 'Boyuibe');
INSERT INTO `municipios` VALUES ('265', '7', '93', 'Vallegrande');
INSERT INTO `municipios` VALUES ('266', '7', '93', 'Trigal');
INSERT INTO `municipios` VALUES ('267', '7', '93', 'Moro Moro');
INSERT INTO `municipios` VALUES ('268', '7', '93', 'Postrer Valle');
INSERT INTO `municipios` VALUES ('269', '7', '93', 'Pucara');
INSERT INTO `municipios` VALUES ('270', '7', '94', 'Samaipata');
INSERT INTO `municipios` VALUES ('271', '7', '94', 'Pampa Grande');
INSERT INTO `municipios` VALUES ('272', '7', '94', 'Mairana');
INSERT INTO `municipios` VALUES ('273', '7', '94', 'Quirusillas');
INSERT INTO `municipios` VALUES ('274', '7', '95', 'Montero');
INSERT INTO `municipios` VALUES ('275', '7', '95', 'General Saavedra');
INSERT INTO `municipios` VALUES ('276', '7', '95', 'Mineros');
INSERT INTO `municipios` VALUES ('277', '7', '95', 'Fernández Alonso');
INSERT INTO `municipios` VALUES ('278', '7', '95', 'San Pedro');
INSERT INTO `municipios` VALUES ('279', '7', '96', 'Concepcion');
INSERT INTO `municipios` VALUES ('280', '7', '96', 'San Javier');
INSERT INTO `municipios` VALUES ('281', '7', '96', 'San Ramon');
INSERT INTO `municipios` VALUES ('282', '7', '96', 'San Julian');
INSERT INTO `municipios` VALUES ('283', '7', '96', 'San Antonio de Lomerío');
INSERT INTO `municipios` VALUES ('284', '7', '96', 'Cuatro Cañadas');
INSERT INTO `municipios` VALUES ('285', '7', '97', 'San Matias');
INSERT INTO `municipios` VALUES ('286', '7', '98', 'Comarapa');
INSERT INTO `municipios` VALUES ('287', '7', '98', 'Saipina');
INSERT INTO `municipios` VALUES ('288', '7', '99', 'Puerto Suarez');
INSERT INTO `municipios` VALUES ('289', '7', '99', 'Puerto Quijarro');
INSERT INTO `municipios` VALUES ('290', '7', '99', 'Carmen Rivero Torrez');
INSERT INTO `municipios` VALUES ('291', '7', '100', 'Ascencion de Guarayos');
INSERT INTO `municipios` VALUES ('292', '7', '100', 'Urubicha');
INSERT INTO `municipios` VALUES ('293', '7', '100', 'El Puente');
INSERT INTO `municipios` VALUES ('294', '8', '101', 'Trinidad');
INSERT INTO `municipios` VALUES ('295', '8', '101', 'San Javier');
INSERT INTO `municipios` VALUES ('296', '8', '102', 'Riberalta');
INSERT INTO `municipios` VALUES ('297', '8', '102', 'Guayaramerin');
INSERT INTO `municipios` VALUES ('298', '8', '103', 'Reyes');
INSERT INTO `municipios` VALUES ('299', '8', '103', 'San Borja');
INSERT INTO `municipios` VALUES ('300', '8', '103', 'Santa Rosa');
INSERT INTO `municipios` VALUES ('301', '8', '103', 'Rurrenabaque');
INSERT INTO `municipios` VALUES ('302', '8', '104', 'Santa Ana');
INSERT INTO `municipios` VALUES ('303', '8', '104', 'Exaltacion');
INSERT INTO `municipios` VALUES ('304', '8', '105', 'San Ignacio');
INSERT INTO `municipios` VALUES ('305', '8', '106', 'Loreto');
INSERT INTO `municipios` VALUES ('306', '8', '106', 'San Andres');
INSERT INTO `municipios` VALUES ('307', '8', '107', 'San Joaquin');
INSERT INTO `municipios` VALUES ('308', '8', '107', 'San Ramon');
INSERT INTO `municipios` VALUES ('309', '8', '107', 'Puerto Siles');
INSERT INTO `municipios` VALUES ('310', '8', '108', 'Magdalena');
INSERT INTO `municipios` VALUES ('311', '8', '108', 'Baures');
INSERT INTO `municipios` VALUES ('312', '8', '108', 'Huaracaje');
INSERT INTO `municipios` VALUES ('313', '9', '109', 'Cobija');
INSERT INTO `municipios` VALUES ('314', '9', '109', 'Porvenir');
INSERT INTO `municipios` VALUES ('315', '9', '109', 'Bolpebra');
INSERT INTO `municipios` VALUES ('316', '9', '109', 'Bella Flor');
INSERT INTO `municipios` VALUES ('317', '9', '110', 'Puerto Rico');
INSERT INTO `municipios` VALUES ('318', '9', '110', 'San Pedro');
INSERT INTO `municipios` VALUES ('319', '9', '110', 'Filadelfia');
INSERT INTO `municipios` VALUES ('320', '9', '111', 'Puerto Gonzalo Moreno');
INSERT INTO `municipios` VALUES ('321', '9', '111', 'San Lorenzo');
INSERT INTO `municipios` VALUES ('322', '9', '111', 'Sena');
INSERT INTO `municipios` VALUES ('323', '9', '112', 'Nacebe (Santa Rosa Del Abuna)');
INSERT INTO `municipios` VALUES ('324', '9', '112', 'Ingavi (Humaita)');
INSERT INTO `municipios` VALUES ('325', '9', '113', 'Nuevo Manoa (Nueva Esperanza)');
INSERT INTO `municipios` VALUES ('326', '9', '113', 'Villa Nueva (Loma Alta)');
INSERT INTO `municipios` VALUES ('327', '9', '113', 'Eureka (Santos Mercado)');

-- ----------------------------
-- Table structure for `oeao_d`
-- ----------------------------
DROP TABLE IF EXISTS `oeao_d`;
CREATE TABLE `oeao_d` (
  `oeao_dID` int(11) NOT NULL AUTO_INCREMENT,
  `oeao_dNombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`oeao_dID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oeao_d
-- ----------------------------
INSERT INTO `oeao_d` VALUES ('1', 'AA');
INSERT INTO `oeao_d` VALUES ('2', 'SS');

-- ----------------------------
-- Table structure for `oeao_u`
-- ----------------------------
DROP TABLE IF EXISTS `oeao_u`;
CREATE TABLE `oeao_u` (
  `oeao_uID` int(11) NOT NULL AUTO_INCREMENT,
  `oeao_uNombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`oeao_uID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oeao_u
-- ----------------------------
INSERT INTO `oeao_u` VALUES ('1', 'AA');
INSERT INTO `oeao_u` VALUES ('2', 'XZ');

-- ----------------------------
-- Table structure for `oeds`
-- ----------------------------
DROP TABLE IF EXISTS `oeds`;
CREATE TABLE `oeds` (
  `oedsID` int(11) NOT NULL AUTO_INCREMENT,
  `oedsNombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oedsID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oeds
-- ----------------------------
INSERT INTO `oeds` VALUES ('1', 'EE');
INSERT INTO `oeds` VALUES ('2', 'AA');

-- ----------------------------
-- Table structure for `oeie`
-- ----------------------------
DROP TABLE IF EXISTS `oeie`;
CREATE TABLE `oeie` (
  `oeieId` int(11) NOT NULL AUTO_INCREMENT,
  `oeieNombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oeieId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oeie
-- ----------------------------
INSERT INTO `oeie` VALUES ('1', 'XXX');
INSERT INTO `oeie` VALUES ('2', 'XXZZ');

-- ----------------------------
-- Table structure for `ogie`
-- ----------------------------
DROP TABLE IF EXISTS `ogie`;
CREATE TABLE `ogie` (
  `ogieId` int(11) NOT NULL AUTO_INCREMENT,
  `ogieNombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ogieId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ogie
-- ----------------------------
INSERT INTO `ogie` VALUES ('1', 'XX');
INSERT INTO `ogie` VALUES ('2', 'ZZZ');

-- ----------------------------
-- Table structure for `operacion`
-- ----------------------------
DROP TABLE IF EXISTS `operacion`;
CREATE TABLE `operacion` (
  `operacionID` int(11) NOT NULL AUTO_INCREMENT,
  `operacionNombre` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`operacionID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of operacion
-- ----------------------------
INSERT INTO `operacion` VALUES ('1', 'INVERSION');
INSERT INTO `operacion` VALUES ('2', 'ACTIVIDADES');

-- ----------------------------
-- Table structure for `prioridades`
-- ----------------------------
DROP TABLE IF EXISTS `prioridades`;
CREATE TABLE `prioridades` (
  `idPrioridad` int(11) NOT NULL AUTO_INCREMENT,
  `prioridad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idPrioridad`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of prioridades
-- ----------------------------
INSERT INTO `prioridades` VALUES ('1', 'VIPFE');
INSERT INTO `prioridades` VALUES ('2', 'ESTRATEGICOS MOPSV');
INSERT INTO `prioridades` VALUES ('3', 'FINANCIAMIENTO ASEGURADO');
INSERT INTO `prioridades` VALUES ('4', 'PARALIZADO');
INSERT INTO `prioridades` VALUES ('5', 'PROCESO LEGAL');
INSERT INTO `prioridades` VALUES ('6', 'SIN INICIO SIN ANTICIPO');
INSERT INTO `prioridades` VALUES ('7', 'PARA CIERRE');
INSERT INTO `prioridades` VALUES ('8', 'DESEMBOLSO');
INSERT INTO `prioridades` VALUES ('9', 'SIN INICIO CON ANTICIPO');
INSERT INTO `prioridades` VALUES ('10', 'CONCLUIDO');

-- ----------------------------
-- Table structure for `problemas`
-- ----------------------------
DROP TABLE IF EXISTS `problemas`;
CREATE TABLE `problemas` (
  `idProblema` int(11) NOT NULL AUTO_INCREMENT,
  `idProyecto` int(11) DEFAULT NULL,
  `idTipo` int(11) DEFAULT NULL,
  `descripcionProblema` text,
  `accionSolucion` varchar(255) DEFAULT '0',
  `responsableSolucion` text,
  `plazoSolucion` date DEFAULT NULL,
  `solucionado` tinyint(1) DEFAULT '0',
  `resultadoOptenido` text,
  `eliminado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idProblema`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of problemas
-- ----------------------------
INSERT INTO `problemas` VALUES ('1', '6', '9', 'Personal y equipo insuficiente en el tramo 4', 'El Contratista debera incrementar el personal y equipo de trabajo', 'El contratista', '2010-05-30', '0', null, '0');
INSERT INTO `problemas` VALUES ('10', '20', '3', 'falta contrato', 'elaborar contrato', 'melo', '2010-06-11', '0', null, '0');
INSERT INTO `problemas` VALUES ('11', '20', '7', 'fsdfsd', 'sdfsdfsd', 'sdfsdf', '2010-06-22', '0', null, '0');

-- ----------------------------
-- Table structure for `provincias`
-- ----------------------------
DROP TABLE IF EXISTS `provincias`;
CREATE TABLE `provincias` (
  `idProvincia` int(11) NOT NULL AUTO_INCREMENT,
  `idDepartamento` int(2) DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idProvincia`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of provincias
-- ----------------------------
INSERT INTO `provincias` VALUES ('2', '1', 'Oropeza');
INSERT INTO `provincias` VALUES ('3', '1', 'Azurduy');
INSERT INTO `provincias` VALUES ('4', '1', 'Zudanez');
INSERT INTO `provincias` VALUES ('5', '1', 'Tomina');
INSERT INTO `provincias` VALUES ('6', '1', 'Hernando Siles');
INSERT INTO `provincias` VALUES ('7', '1', 'Yamparaez');
INSERT INTO `provincias` VALUES ('8', '1', 'Nor Cinti');
INSERT INTO `provincias` VALUES ('9', '1', 'Belisario Boeto');
INSERT INTO `provincias` VALUES ('10', '1', 'Sud Cinti');
INSERT INTO `provincias` VALUES ('11', '1', 'Luis Calvo');
INSERT INTO `provincias` VALUES ('12', '2', 'Murillo');
INSERT INTO `provincias` VALUES ('13', '2', 'Omasuyos');
INSERT INTO `provincias` VALUES ('14', '2', 'Pacajes');
INSERT INTO `provincias` VALUES ('15', '2', 'Camacho');
INSERT INTO `provincias` VALUES ('16', '2', 'Munecas');
INSERT INTO `provincias` VALUES ('17', '2', 'Larecaja');
INSERT INTO `provincias` VALUES ('18', '2', 'Franz Tamayo');
INSERT INTO `provincias` VALUES ('19', '2', 'Ingavi');
INSERT INTO `provincias` VALUES ('20', '2', 'Loayza');
INSERT INTO `provincias` VALUES ('21', '2', 'Inqusivi');
INSERT INTO `provincias` VALUES ('22', '2', 'Sud Yungas');
INSERT INTO `provincias` VALUES ('23', '2', 'Los Andes');
INSERT INTO `provincias` VALUES ('24', '2', 'Aroma');
INSERT INTO `provincias` VALUES ('25', '2', 'Nor Yungas');
INSERT INTO `provincias` VALUES ('26', '2', 'Abel Iturralde');
INSERT INTO `provincias` VALUES ('27', '2', 'Bautista Saavedra');
INSERT INTO `provincias` VALUES ('28', '2', 'Manco Kapac');
INSERT INTO `provincias` VALUES ('29', '2', 'GualbertoVillarroel');
INSERT INTO `provincias` VALUES ('30', '2', 'Jose Manuel Pando');
INSERT INTO `provincias` VALUES ('31', '2', 'Caranavi');
INSERT INTO `provincias` VALUES ('32', '3', 'Cercado');
INSERT INTO `provincias` VALUES ('33', '3', 'Campero');
INSERT INTO `provincias` VALUES ('34', '3', 'Ayopaya');
INSERT INTO `provincias` VALUES ('35', '3', 'Esteban Arce');
INSERT INTO `provincias` VALUES ('36', '3', 'Arani');
INSERT INTO `provincias` VALUES ('37', '3', 'Arque');
INSERT INTO `provincias` VALUES ('38', '3', 'Capinota');
INSERT INTO `provincias` VALUES ('39', '3', 'German Jordan');
INSERT INTO `provincias` VALUES ('40', '3', 'Quillacollo');
INSERT INTO `provincias` VALUES ('41', '3', 'Chapare');
INSERT INTO `provincias` VALUES ('42', '3', 'Tapacari');
INSERT INTO `provincias` VALUES ('43', '3', 'Carrasco');
INSERT INTO `provincias` VALUES ('44', '3', 'Mizque');
INSERT INTO `provincias` VALUES ('45', '3', 'Punata');
INSERT INTO `provincias` VALUES ('46', '3', 'Bolivar');
INSERT INTO `provincias` VALUES ('47', '3', 'Tiraque');
INSERT INTO `provincias` VALUES ('48', '4', 'Cercado');
INSERT INTO `provincias` VALUES ('49', '4', 'Eduardo Avaroa');
INSERT INTO `provincias` VALUES ('50', '4', 'Carangas');
INSERT INTO `provincias` VALUES ('51', '4', 'Sajama');
INSERT INTO `provincias` VALUES ('52', '4', 'Litoral de Atacama');
INSERT INTO `provincias` VALUES ('53', '4', 'Poopo');
INSERT INTO `provincias` VALUES ('54', '4', 'Pantaleon Dalence');
INSERT INTO `provincias` VALUES ('55', '4', 'Ladislao Cabrera');
INSERT INTO `provincias` VALUES ('56', '4', 'Atahualpa');
INSERT INTO `provincias` VALUES ('57', '4', 'Saucari');
INSERT INTO `provincias` VALUES ('58', '4', 'Tomas Barron');
INSERT INTO `provincias` VALUES ('59', '4', 'Sud Carangas');
INSERT INTO `provincias` VALUES ('60', '4', 'San Pedro de Totora');
INSERT INTO `provincias` VALUES ('61', '4', 'Sebastian Pagador');
INSERT INTO `provincias` VALUES ('62', '4', 'Puerto de Mejillones');
INSERT INTO `provincias` VALUES ('63', '4', 'Nor Carangas');
INSERT INTO `provincias` VALUES ('64', '5', 'Tomas Frias');
INSERT INTO `provincias` VALUES ('65', '5', 'Rafael Bustillo');
INSERT INTO `provincias` VALUES ('66', '5', 'Cornelio Saavedra');
INSERT INTO `provincias` VALUES ('67', '5', 'Chayanta');
INSERT INTO `provincias` VALUES ('68', '5', 'Charcas');
INSERT INTO `provincias` VALUES ('69', '5', 'Nor Chichas');
INSERT INTO `provincias` VALUES ('70', '5', 'Alonso de Ibanez');
INSERT INTO `provincias` VALUES ('71', '5', 'Sur Chichas');
INSERT INTO `provincias` VALUES ('72', '5', 'Nor Lipez');
INSERT INTO `provincias` VALUES ('73', '5', 'Sur Lipez');
INSERT INTO `provincias` VALUES ('74', '5', 'Jose Maria Linares');
INSERT INTO `provincias` VALUES ('75', '5', 'Antonio Quijarro');
INSERT INTO `provincias` VALUES ('76', '5', 'Bernardino Bilbao Rioja');
INSERT INTO `provincias` VALUES ('77', '5', 'Daniel Campos');
INSERT INTO `provincias` VALUES ('78', '5', 'Modesto Omiste');
INSERT INTO `provincias` VALUES ('79', '5', 'Enrique Baldivieso');
INSERT INTO `provincias` VALUES ('80', '6', 'Cercado');
INSERT INTO `provincias` VALUES ('81', '6', 'Aniceto Arce');
INSERT INTO `provincias` VALUES ('82', '6', 'Gran Chaco');
INSERT INTO `provincias` VALUES ('83', '6', 'Aviles');
INSERT INTO `provincias` VALUES ('84', '6', 'Mendez');
INSERT INTO `provincias` VALUES ('85', '6', 'Burnet O\'Oconnor');
INSERT INTO `provincias` VALUES ('86', '7', 'Andres Ibanez');
INSERT INTO `provincias` VALUES ('87', '7', 'Warnes');
INSERT INTO `provincias` VALUES ('88', '7', 'Velasco');
INSERT INTO `provincias` VALUES ('89', '7', 'Ichilo');
INSERT INTO `provincias` VALUES ('90', '7', 'Chiquitos');
INSERT INTO `provincias` VALUES ('91', '7', 'Sara');
INSERT INTO `provincias` VALUES ('92', '7', 'Cordillera');
INSERT INTO `provincias` VALUES ('93', '7', 'Vallegrande');
INSERT INTO `provincias` VALUES ('94', '7', 'Florida');
INSERT INTO `provincias` VALUES ('95', '7', 'Obispo Santiestevan');
INSERT INTO `provincias` VALUES ('96', '7', 'Nuflo de Chavez');
INSERT INTO `provincias` VALUES ('97', '7', 'Angel Sandoval');
INSERT INTO `provincias` VALUES ('98', '7', 'Manuel Maria Caballero');
INSERT INTO `provincias` VALUES ('99', '7', 'German Busch');
INSERT INTO `provincias` VALUES ('100', '7', 'Guarayos');
INSERT INTO `provincias` VALUES ('101', '8', 'Cercado');
INSERT INTO `provincias` VALUES ('102', '8', 'Vaca Diez');
INSERT INTO `provincias` VALUES ('103', '8', 'Jose Ballivian');
INSERT INTO `provincias` VALUES ('104', '8', 'Yacuma');
INSERT INTO `provincias` VALUES ('105', '8', 'Moxos');
INSERT INTO `provincias` VALUES ('106', '8', 'Marban');
INSERT INTO `provincias` VALUES ('107', '8', 'Mamore');
INSERT INTO `provincias` VALUES ('108', '8', 'Itenez');
INSERT INTO `provincias` VALUES ('109', '9', 'Nicolas Suarez');
INSERT INTO `provincias` VALUES ('110', '9', 'Manuripi');
INSERT INTO `provincias` VALUES ('111', '9', 'Madre de Dios');
INSERT INTO `provincias` VALUES ('112', '9', 'Abuna');
INSERT INTO `provincias` VALUES ('113', '9', 'Federico Roman');

-- ----------------------------
-- Table structure for `proyectos`
-- ----------------------------
DROP TABLE IF EXISTS `proyectos`;
CREATE TABLE `proyectos` (
  `idProyecto` int(11) NOT NULL AUTO_INCREMENT,
  `codigoProyecto` varchar(30) DEFAULT NULL,
  `nombreProyecto` varchar(255) DEFAULT NULL,
  `idTipo` int(3) DEFAULT NULL,
  `programa` varchar(255) DEFAULT NULL,
  `idSector` int(11) DEFAULT NULL,
  `idEntidad` int(11) DEFAULT NULL,
  `idFase` int(11) DEFAULT NULL,
  `idEstado` int(11) DEFAULT NULL,
  `idPrioridad` int(11) DEFAULT NULL,
  `costoProyecto` double(15,2) DEFAULT NULL,
  `metaProyecto` float(15,0) DEFAULT NULL,
  `idUnidad` int(11) DEFAULT NULL,
  `responsable` varchar(255) DEFAULT NULL,
  `telefono` varchar(40) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFinal` date DEFAULT NULL,
  `descripcion` mediumtext,
  `eliminado` tinyint(1) DEFAULT '0',
  `terrBeneficiados` int(2) DEFAULT '1',
  PRIMARY KEY (`idProyecto`),
  UNIQUE KEY `codigo` (`codigoProyecto`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of proyectos
-- ----------------------------
INSERT INTO `proyectos` VALUES ('19', '132465', 'CARRETERA VILLAZON TUPIZA', '1', null, '3', '3', '1', '1', '2', '0.00', '2', '4', '2010-06-02', '2011-06-25', '', '2010-06-18', '2010-06-27', 'Construccion carretera villazon tupiza', '1', '1');
INSERT INTO `proyectos` VALUES ('6', '2910185700000', 'REHABILITACION CARRETERA LA GUARDIA - COMARAPA', '1', null, '3', '1', '1', '2', '1', '39818126.00', '188', '1', 'Ing. Andres Cossio, GCV', '70586572 \r\n2357220 int 2086', 'gcossio@abc.gob.bo', '2007-09-06', '2009-12-22', 'kilometros de pavimento', '0', '1');
INSERT INTO `proyectos` VALUES ('7', '13132132131', 'IMPLEMENTACION SISTEMA GESTION DE RIESGO CORREDOR LA PAZ - COTAPATA - SANTA BARBARA', '1', null, '3', '3', '1', '1', '1', '12234.00', '1', '5', '4654654', '465465', 'asdas@htomail.com', '2010-05-01', '2010-05-14', 'estudios', '0', '1');
INSERT INTO `proyectos` VALUES ('8', '12-56-715565', 'REFACCION DE ALGUNAS COSAS', '1', null, '2', '13', '1', '2', '1', '465465.00', '10', '5', '465564546', '4445', 'asdas@htomail.com', '2010-05-05', '2010-05-14', 'solo informe ', '1', '1');
INSERT INTO `proyectos` VALUES ('10', '1910162000000', 'REPARACION CARRETERA BOYUIBE - YACUIBA', '1', null, '3', '3', '1', '3', '2', '0.00', '187', '1', 'Isela Bermudez, GCV', '2357220 int 2082-2083', 'ibermudez@abc.gob.bo', '2010-01-01', '2011-08-17', 'KilÃ³metros mejorados y/o mantenidos (pavimentados) Red Fundamental', '0', '1');
INSERT INTO `proyectos` VALUES ('20', '5625555555', 'CAMINO LA PAZ - EL ALTO', '1', null, '3', '3', '1', '3', '2', '5000000.00', '70', '1', 'Eduardo Soria', '75897589', 'soriagalv@gmail.com', '2010-06-25', '2014-06-17', 'Construir 50 km de la red Fundamental', '0', '1');
INSERT INTO `proyectos` VALUES ('21', '1910163100000', 'REFACCION MANTENIMIENTO PERMANENTE CARRETERA HUARINA - RIO SECO', '1', null, '3', '3', '1', '3', '2', '0.00', '58', '1', 'Ing. Alvaro Salazar (Oficina La Paz) Ing. Iby Valle (GCV_ABC)', '2357220 int 2082-2083', 'asalazar@abc.gob.bo', '0000-00-00', '0000-00-00', 'KilÃ³metros mejorados y/o mantenidos (pavimentados) Red Fundamental', '0', '1');
INSERT INTO `proyectos` VALUES ('22', 'PVSBEN0001', 'URB. LAS PALMAS', '1', null, '1', '17', '1', '3', '2', '16729650.00', '141', '10', 'Alfonso Parrado', '', '', '0000-00-00', '0000-00-00', '', '0', '1');
INSERT INTO `proyectos` VALUES ('23', 'PVSBEN0002   ', ' URB. LAS PALMAS ', '1', null, '1', '17', '1', '3', '2', '18872998.00', '301', '10', 'Alfonso Parrado', '', '', '0000-00-00', '0000-00-00', '', '1', '1');
INSERT INTO `proyectos` VALUES ('37', '1910162500000 ', 'REFACCION  MANTENIMIENTO  PERMANENTE  CARRETERA YAMPARAEZ - SUCRE - SUNCHU TAMBO ', '1', 'REFACCIÃ“N Y MANTENIMIENTO ', '3', '3', '1', '3', '3', '0.00', '3655', '1', '', '', '', '0000-00-00', '0000-00-00', 'KilÃ³metros mejorados y/o mantenidos (pavimentados) Red Fundamental\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('38', '2910187300000 ', 'DESARROLLO   PROGRAMA DE MANTENIMIENTO PERIODICO ', '1', 'REFACCIÃ“N Y MANTENIMIENTO ', '3', '3', '2', '3', '3', '0.00', '1', '5', 'Ing. Iby Valle GTCV ', '2357220 int 2082-2083 ', 'ivalle@abc.gob.bo', '0000-00-00', '0000-00-00', 'Estudios \r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('39', '2910174300000 ', 'REHABILITACION  CAMINO  EMERGENCIAS SAN IGNACIO DE MOXOS - LOS PUENTES ', '1', 'REFACCIÃ“N Y MANTENIMIENTO ', '3', '3', '1', '3', '3', '0.00', '67', '1', 'Oficina ABC Beni, Ing. Luis Felipe Cabrera ', '71130994000% ', '', '0000-00-00', '0000-00-00', 'KilÃ³metros mejorados y/o mantenidos (tierra) Red Fundamental \r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('40', '2910174200000 ', 'REHABILITACION  CAMINO  EMERGENCIAS EL VILLAR - SAN IGNACIO DE MOXOS ', '1', 'REFACCIÃ“N Y MANTENIMIENTO ', '3', '3', '1', '3', '3', '0.00', '75', '1', 'Oficina ABC Beni, Ing. Luis Felipe Cabrera ', '71130994000% ', '', '0000-00-00', '0000-00-00', 'KilÃ³metros mejorados y/o mantenidos (tierra) Red Fundamental \r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('36', '1910163600000 ', 'MANTENIMIENTO  PERMANENTE  CARRETERA COPACABANA - TIQUINA ', '1', 'REFACCIÃ“N Y MANTENIMIENTO ', '3', '3', '1', '3', '3', '0.00', '40', '1', '\"Ing. Alvaro Salazar (Oficina La Paz) Ing. Iby Valle (GTCV_ABC)\" ', '2357220 int 2082-2083 ', '\"asalazar@abc.gob.bo ivalle@abc.gob.bo\" ', '0000-00-00', '0000-00-00', 'KilÃ³metros mejorados y/o mantenidos (pavimentados) Red Fundamental\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('41', '1910170800000 ', 'MANTENIMIENTO  PERMANENTE  CARRETERA HUARINA - TIQUINA - COPACABANA - KASANI ', '1', 'REFACCIÃ“N Y MANTENIMIENTO ', '3', '3', '1', '3', '2', '0.00', '48', '1', 'Oficina La Paz ', '215416400% ', 'lapaz@abc.gob.bo', '0000-00-00', '0000-00-00', 'KilÃ³metros mejorados y/o mantenidos (pavimentados) Red Fundamental\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('42', 'PVSBEN0003    ', 'RURRENABAQUE ', '1', 'PVS - HISTORICO ', '1', '17', '1', '12', '4', '2548905.00', '132', '10', '', '', '', '0000-00-00', '0000-00-00', '132 Viviendas construidas en el Departamento de BENI Municipio de RURRENABAQUE Provincia JosÃ© BalliviÃ¡n\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('43', 'PVSBEN0004    ', 'LOS TAJIBOS ', '1', 'PVS - HISTORICO ', '1', '17', '1', '13', '6', '3535273.00', '84', '10', '', '', '', '0000-00-00', '0000-00-00', '84 Viviendas construidas en el Departamento de BENI Municipio de SAN BORJA Provincia JosÃ© BalliviÃ¡n\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('44', 'PVSBEN0005    ', 'LOS TAJIBOS ', '1', 'PVS - HISTORICO ', '1', '17', '1', '12', '4', '2491825.00', '37', '10', '', '', '', '0000-00-00', '0000-00-00', '37 Viviendas construidas en el Departamento de BENI Municipio de SAN BORJA Provincia JosÃ© BalliviÃ¡n\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('45', 'PVSBEN0006    ', 'VILLA NORITA ', '1', 'PVS - HISTORICO ', '1', '17', '1', '11', '2', '13871690.00', '205', '10', '', '', '', '0000-00-00', '0000-00-00', '205 Viviendas construidas en el Departamento de BENI Municipio de RIBERALTA Provincia Vaca DÃ­ez\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('46', 'PVSBEN0007    ', 'CONSTR. VIV. Y COMPRA TERR. / DIONICIO MORALES ', '1', 'PVS - HISTORICO ', '1', '17', '1', '11', '2', '7377023.00', '104', '10', '', '', '', '0000-00-00', '0000-00-00', '104 Viviendas construidas en el Departamento de BENI Municipio de RIBERALTA Provincia Vaca DÃ­ez\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('47', 'PVSCBA0001    ', 'MIZQUE ', '1', 'PVS - HISTORICO ', '1', '17', '1', '12', '4', '7766502.00', '437', '10', '', '', '', '0000-00-00', '0000-00-00', '437 Viviendas construidas en el Departamento de COCHABAMBA Municipio de MIZQUE Provincia Mizque\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('48', 'PVSCBA0002    ', 'VIVIENDAS DIGNAS TROPICO DE COCHABAMBA ', '1', 'PVS - HISTORICO ', '1', '17', '1', '11', '2', '4489623.00', '250', '10', '', '', '', '0000-00-00', '0000-00-00', '250 Viviendas construidas en el Departamento de COCHABAMBA Municipio de VILLA TUNARI Provincia Chapare\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('49', 'PVSCBA0003    ', 'VIVIENDAS DIGNAS TROPICO DE COCHABAMBA ', '1', 'PVS - HISTORICO ', '1', '17', '1', '11', '2', '4507581.00', '251', '10', '', '', '', '0000-00-00', '0000-00-00', '251 Viviendas construidas en el Departamento de COCHABAMBA Municipio de VILLA TUNARI Provincia Chapare\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('50', 'PVSCBA0004    ', 'PUNATA ', '1', 'PVS - HISTORICO ', '1', '17', '1', '11', '2', '4191420.00', '240', '10', '', '', '', '0000-00-00', '0000-00-00', '240 Viviendas construidas en el Departamento de COCHABAMBA Municipio de PUNATA Provincia Punata\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('51', '', 'IMPLEMENTACIÃ“N DE 200 TELECENTROS COMUNITARIOS EN POBLACIONES RURALES Y ÃREAS DE INTERÃ‰S SOCIAL. ', '1', 'mm ', '2', '12', '1', '3', '2', '21209998.00', '200', '13', 'Edwin Arandia ', '2119999 int 606 ', 'earandia@oopp.gov.bo', '0000-00-00', '0000-00-00', 'NÂº DE TELECENTROS INSTALADOS\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('52', 'OOL ', 'OBSOLECENCIA  ORO LLG (LARGA DISTANCIA - RED NACIONAL) ', '1', 'LARGA DISTANCIA ', '2', '13', '1', '3', '3', '3074295.19', '3', '26', '', '', '', '0000-00-00', '0000-00-00', 'AmpliaciÃ³n de la Red Dorsal\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('53', 'ALC ', 'OBSOLESCENCIA ALCATEL (LARGA DISTANCIA - RED NACIONAL) ', '1', 'LARGA DISTANCIA ', '2', '13', '1', '3', '3', '3181500.00', '400', '27', '', '', '', '0000-00-00', '0000-00-00', 'CONEXIÃ“N NAL\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('54', 'DOM ', 'OBSOLESCENCIA DOMSAT (LARGA DISTANCIA - RED NACIONAL) ', '1', 'LARGA DISTANCIA ', '2', '13', '1', '3', '3', '314330.00', '1', '28', '', '', '', '0000-00-00', '0000-00-00', 'AMPLIACION DE HUB\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('55', 'OVH ', 'OBSOLESCENCIA VSAT HUGHES (LARGA DISTANCIA - RED NACIONAL) ', '1', 'LARGA DISTANCIA ', '2', '13', '1', '3', '3', '2438352.29', '67', '29', '', '', '', '0000-00-00', '0000-00-00', 'TERMINALES SATELITALES\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('56', 'OVS ', 'OBSOLESCENCIA VSAT STM (LARGA DISTANCIA - RED NACIONAL) ', '1', 'LARGA DISTANCIA ', '2', '13', '1', '3', '3', '16792537.59', '532', '29', '', '', '', '0000-00-00', '0000-00-00', 'TERMINALES SATELITALES\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('57', '1910161500000 ', 'REFACCION  MANTENIMIENTO  PERMANENTE  CARRETERA ESCOMA - CHARAZANI - APOLO ', '1', 'REFACCIÃ“N Y MANTENIMIENTO ', '3', '3', '1', '3', '3', '0.00', '164', '1', 'Oficina La Paz, Ing. Alvaro Salazar ', '215416400% ', 'lapaz@abc.gob.bo', '0000-00-00', '0000-00-00', 'KilÃ³metros mejorados y/o mantenidos (tierra) Red Fundamental \r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('58', '2910174100000 ', 'REHABILITACION  CAMINO  EMERGENCIAS SAN BORJA - EL VILLAR ', '1', 'REFACCIÃ“N Y MANTENIMIENTO ', '3', '3', '1', '3', '3', '0.00', '35', '1', '\"Oficina ABC Beni, Ing. Guevork Ocampo \" ', '7272248500% ', 'gocampo@abc.gob.bo', '0000-00-00', '0000-00-00', 'KilÃ³metros mejorados y/o mantenidos (ripio) Red Fundamental \r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('59', '2910300100000', 'REFACCION  MANTENIMIENTO  ESTANDAR MONTERO - PUERTO VILLARROEL', '1', 'REFACCIÃ“N Y MANTENIMIENTO ', '3', '3', '1', '3', '1', '74873247.00', '220', '1', 'Ing. Eduardo Velasquez, GTCV', '2357220 int 2082-2083 ', 'evelasquez@abc.gob.bo', '0000-00-00', '0000-00-00', 'KilÃ³metros mejorados y/o mantenidos (pavimentados) Red Fundamental\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('60', '2910300000000', 'REFACCION  MANTENIMIENTO  ESTANDAR TAMBO QUEMADO-CARACOLLO', '1', 'REFACCIÃ“N Y MANTENIMIENTO ', '3', '3', '1', '3', '1', '53025000.00', '279', '1', 'Ing. Eduardo Velasquez, GTCV', '2357220 int 2082-2083 ', 'evelasquez@abc.gob.bo', '0000-00-00', '0000-00-00', 'KilÃ³metros mejorados y/o mantenidos (pavimentados) Red Fundamental\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('61', '1910163300000', 'MANTENIMIENTO  PERMANENTE  CARRETERA SAN ISIDRO - EPIZANA', '1', 'REFACCIÃ“N Y MANTENIMIENTO ', '3', '3', '1', '3', '3', '0.00', '131', '1', 'Ing. Limbert Illanes, Oficina ABC Cochabamba', '7220431100%', 'lillanes@abc.gob.bo', '0000-00-00', '0000-00-00', 'KilÃ³metros mejorados y/o mantenidos (pavimentados) Red Fundamental\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('62', '1910163200000', 'REFACCION  MANTENIMIENTO  PERMANENTE  CARRETERA PARACAYA - SAN ISIDRO', '1', 'REFACCIÃ“N Y MANTENIMIENTO', '3', '3', '1', '3', '3', '0.00', '44', '1', 'Ing. Mauricio Moreno, Oficina ABC Cochabamba', '7220431200%', 'mmoreno@abc.gob.bo', '0000-00-00', '0000-00-00', 'KilÃ³metros mejorados y/o mantenidos (pavimentados) Red Fundamental\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('63', '2910174900000', 'REFACCION  MANTENIMIENTO  PERMANENTE  CAMINO  TRAMO COBIJA- PORVERVENIR - CHIVE', '1', 'REFACCIÃ“N Y MANTENIMIENTO', '3', '3', '1', '3', '2', '0.00', '187', '1', 'Ing. Agar Vasquez Sanchez, Oficina ABC Pando', '(3)8423560 - (3) 8423685', 'avasquez@abc.gob.bo', '0000-00-00', '0000-00-00', 'KilÃ³metros mejorados y/o mantenidos (tierra) Red Fundamental \r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('64', '1910162700000', 'MANTENIMIENTO  PERMANENTE CARRETERA SACABA - PARACTI', '1', 'REFACCIÃ“N Y MANTENIMIENTO ', '3', '3', '1', '3', '2', '0.00', '71', '1', 'Ing. Jame Torrico, Oficina ABC Cochabamba', '7220431500%', 'jtorrico@abc.gob.bo', '0000-00-00', '0000-00-00', 'KilÃ³metros mejorados y/o mantenidos (ripio) Red Fundamental \r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('65', 'PVSCBA0007   ', 'ARANI', '1', 'PVS - HISTORICO', '1', '17', '1', '12', '4', '2305281.00', '132', '10', '', '', '', '0000-00-00', '0000-00-00', '132 Viviendas construidas en el Departamento de COCHABAMBA Municipio de ARANI Provincia Arani\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('66', 'TRI', 'TRAFICO INTERNACIONAL (LARGA DISTANCIA - RED NACIONAL)', '1', 'LARGA DISTANCIA ', '2', '13', '1', '3', '3', '379284.29', '1', '30', '', '', '', '0000-00-00', '0000-00-00', 'CONEXIÃ“N INTERNAL\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('67', 'CFM', 'CLIMATIZACION FIJA MOVIL (LARGA DISTANCIA - RED NACIONAL)', '1', 'LARGA DISTANCIA', '2', '13', '1', '3', '3', '3344081.72', '38', '52', '', '', '', '0000-00-00', '0000-00-00', 'Equipos de ClimatizaciÃ³n\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('68', 'AEF', 'ASEGURAMIENTO ENERGIA FIJA MOVIL (LARGA DISTANCIA - RED NACIONAL)', '1', 'LARGA DISTANCIA', '2', '13', '1', '3', '3', '1672152.71', '99', '52', '', '', '', '0000-00-00', '0000-00-00', 'Equipos de EnergÃ­a\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('69', 'AEN', 'ENERGIA FIJA MOVIL (LARGA DISTANCIA - RED NACIONAL)', '1', 'LARGA DISTANCIA', '2', '13', '1', '3', '3', '16892188.04', '126', '52', '', '', '', '0000-00-00', '0000-00-00', 'Equipos de EnergÃ­a\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('70', 'NSS', 'NATIONAL SOFTSWITCH (LARGA DISTANCIA - RED NACIONAL)', '1', 'LARGA DISTANCIA', '2', '13', '1', '3', '3', '15375063.18', '1', '30', '', '', '', '0000-00-00', '0000-00-00', 'SOFTWARE\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('71', 'TVC', 'TV COMPRIMIDA SATELITAL (LARGA DISTANCIA - RED NACIONAL)', '1', 'LARGA DISTANCIA', '2', '13', '1', '3', '3', '4782013.67', '16', '32', '', '', '', '0000-00-00', '0000-00-00', 'DESPACHOS TV\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('72', 'NOE', 'AMP. ANILLO NAC. DWDM (LARGA DISTANCIA - RED NACIONAL)', '1', 'LARGA DISTANCIA', '2', '13', '1', '3', '3', '7307268.99', '12', '33', '', '', '', '0000-00-00', '0000-00-00', 'AMP. CAPACIDAD\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('73', 'NOC', 'NOC (LARGA DISTANCIA - RED NACIONAL)', '1', 'LARGA DISTANCIA', '2', '13', '1', '3', '3', '1940639.00', '1', '30', '', '', '', '0000-00-00', '0000-00-00', 'SOFTWARE\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('74', 'NPW', 'NUEVO PORTAL ENTEL WEB (LARGA DISTANCIA - RED NACIONAL)', '1', 'LARGA DISTANCIA', '2', '13', '1', '3', '3', '516817.00', '1', '34', '', '', '', '0000-00-00', '0000-00-00', 'SERVICIOS\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('75', '345345', 'SSSS', '1', 'SSSSSS', '3', '4', '1', '8', '10', '0.00', '67', '14', '', '', '', '0000-00-00', '0000-00-00', '', '1', '1');
INSERT INTO `proyectos` VALUES ('76', '2345435', 'SSSSSSSS', '1', 'SSSS', '3', '4', '1', '3', '1', '0.00', '100', '63', '', '', '', '0000-00-00', '0000-00-00', '', '1', '1');
INSERT INTO `proyectos` VALUES ('77', '0', 'MEJORAMIENTO  AEROPUERTO DE TARIJA', '1', 'MEJORAMIENTO AEROPUERTO', '3', '4', '1', '3', '1', '1500000.00', '100', '63', 'Ing. Pedro Balcazar', '2351860', 'pb-n@hotmail.com', '0000-00-00', '0000-00-00', 'CONTROL EROSION AEROPUERTO TARIJA\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('78', '1', 'MEJORAMIENTO  AEROPUERTO RURRENABAQUE', '1', 'MEJORAMIENTO AEROPUERTO', '3', '4', '1', '3', '1', '1200000.00', '100', '63', 'Ing. Pedro Balcazar', '2351860', 'pb-n@hotmail.com', '0000-00-00', '0000-00-00', 'ENMALLADO AERPUERTO RURRENABAQUE\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('79', '3', 'CONSTRUCCION  NUEVO AEROPUERTO GUAYARAMERIN', '1', 'MEJORAMIENTO AEROPUERTO', '3', '4', '1', '3', '1', '1200000.00', '100', '63', 'Ing. Pedro Balcazar', '2351860', 'pb-n@hotmail.com', '0000-00-00', '0000-00-00', 'ENMALLADO AEROPUERTO GUAYARAMERIN\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('80', '4l', 'CONTROL DE EROSIÃ“N AEROPUERTO DE COBIJA - 3RA. FASE.', '1', 'MEJORAMIENTO AEROPUERTO', '3', '4', '1', '3', '3', '36000.00', '100', '63', 'Ing. Pedro Balcazar', '2351860', 'pb-n@hotmail.com', '0000-00-00', '0000-00-00', 'CONTROL EROSIÃ“N  AEROPUERTO DE COBIJA\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('81', '4Ã±l', 'SEGURIDAD AEROPORTUARIA', '1', 'NAVEGACIÃ“N AEREA', '3', '4', '1', '3', '2', '0.00', '20', '52', 'ATCO Sr. Fernando Azuga', '2316686', 'f-azuga@yahoo.es', '0000-00-00', '0000-00-00', 'EQUIPOS EXTINCION INCEND. (3 und)\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('82', '40112', 'METEOROLOGIA', '1', 'NAVEGACIÃ“N AEREA', '3', '4', '1', '3', '2', '1700000.00', '2', '31', 'ATCO Sr. Fernando Azuga', '2316686', 'f-azuga@yahoo.es', '0000-00-00', '0000-00-00', 'EQUIPOS METEREOLOGIA (2 aptos)\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('83', '40113', 'RENOVACION TERMINALES IAT DELA AFTN', '1', 'NAVEGACIÃ“N AEREA', '3', '4', '1', '3', '2', '300000.00', '100', '52', 'ATCO Sr. Fernando Azuga', '2351860', 'pb-n@hotmail.com', '0000-00-00', '0000-00-00', 'COMPRA DE EQUIPAMIENTO  5 SERVIDORES, 11 WORD STATION , 11 IMPRESORAS. \r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('84', '40114', 'EQUIPAMIENTO DE SISTEMA DE MENSAJERIA AERONÃUTICA  AMHS/AFTN', '1', 'NAVEGACIÃ“N AEREA', '3', '4', '1', '3', '2', '7070000.00', '100', '52', 'ATCO Sr. Fernando Azuga', '2316686', 'f-azuga@yahoo.es', '0000-00-00', '0000-00-00', 'COMPRA DE  1 EQUIPO , ACCESORIOS DE  SISTEMA  DE  MENSAJERIA AUTOMATICA  PARA ATS (AMHS).\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('85', '40115', 'RENOVACIÃ“N VOR/DME TRINIDAD BENI', '1', 'NAVEGACIÃ“N AEREA', '3', '4', '1', '3', '2', '4000000.00', '100', '31', 'ATCO Sr. Fernando Azuga', '2316686', 'f-azuga@yahoo.es', '0000-00-00', '0000-00-00', 'COMPRA DE  1 EQUIPO DE  RADIOAYUDA PARA LA NAVEGACIÃ“N AEREA VOR /DME\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('86', '117-00008-00000', 'ADQUISICIÃ“N DE OFICINAS DGAC LA PAZ', '1', 'ADMINISTRACIÃ“N AEREA', '3', '5', '1', '1', '1', '9000000.00', '1', '62', 'Gualberto Reque', '2374142-2371347-2379060 (INT-2802)', 'greque@dgac.gov.bo', '0000-00-00', '0000-00-00', 'Infraestructura \r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('87', '117-00003-00000', 'CONSTRUCCION DEL INAC COCHABAMBA', '1', 'ADMINISTRACIÃ“N AEREA', '3', '5', '1', '1', '1', '15097064.00', '1', '62', 'Gualberto Reque', '2374142-2371347-2379060 (INT-2802)', 'greque@dgac.gov.bo', '0000-00-00', '2031-02-12', 'ConstrucciÃ³n de infraestructura  institucional\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('88', '117-00009-00000', 'CONSTRUCCIÃ“N DE OFICINA DE INSPECTORES EN EL ALTO', '1', 'ADMINISTRACIÃ“N AEREA', '3', '5', '1', '3', '1', '802043.29', '1', '62', 'Gualberto Reque', '2374142-2371347-2379060 (INT-2802)', 'greque@dgac.gov.bo', '0000-00-00', '0000-00-00', 'ConstrucciÃ³n de infraestructura  institucional\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('89', 'VMTEL1', 'IMPLEMENTACIÃ“N DE 200 TELECENTROS COMUNITARIOS EN POBLACIONES RURALES Y ÃREAS DE INTERÃ‰S SOCIAL.', '1', 'TELECOMUNICACIONES', '2', '12', '1', '3', '2', '21209997.86', '200', '13', 'Edwin Arandia', '2119999 int 606', 'earandia@oopp.gov.bo', '0000-00-00', '0000-00-00', 'NÂº DE TELECENTROS INSTALADOS\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('90', 'VMTEL2', 'IMPLEMENTACIÃ“N DE 73 TELECENTROS COMUNITARIOS EN POBLACIONES RURALES Y ÃREAS DE INTERÃ‰S SOCIAL.', '1', 'TELECOMUNICACIONES', '2', '12', '1', '3', '2', '6027896.00', '73', '13', '\"Edwin Arandia Ramiro Vasquez\"', '\"2119999 int 606 2119999 int 602\"', '\"earandia@oopp.gov.bo  rvasquez@oopp.gov.bo\"', '0000-00-00', '0000-00-00', 'NÂº DE TELECENTROS INSTALADOS\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('91', 'VMTEL3', 'BANDA ANCHA RURAL Y PERIURBANA', '1', 'TELECOMUNICACIONES', '2', '12', '1', '3', '2', '490000000.00', '30', '14', '', '', '', '0000-00-00', '0000-00-00', 'LOCALIDADES BENEFICIADAS CON COBERTURA DE INTERNET.\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('92', 'VMTEL4', 'COBERTURA MÃ“VIL EN POBLACIONES RURALES I Y II', '1', 'TELECOMUNICACIONES', '2', '12', '1', '3', '2', '247450000.00', '288', '15', '\"Edwin Arandia Ramiro Vasquez\"', '\"2119999 int 606 2119999 int 602\"', '\"earandia@oopp.gov.bo rvasquez@oopp.gov.bo\"', '0000-00-00', '0000-00-00', '276 RADIOBASES INSTALADAS POR ENTEL S.A.\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('93', 'VMTEL5', 'RADIOS COMUNITARIAS', '0', 'TELECOMUNICACIONES', '2', '12', '1', '4', '2', '9733481.00', '21', '16', '\"Edwin Arandia Ramiro Vasquez\"', '\"2119999 int 606 2119999 int 602\"', '\"earandia@oopp.gov.bo rvasquez@oopp.gov.bo\"', '0000-00-00', '0000-00-00', '21 RADIOS COMUNITARIAS INSTALADAS\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('94', 'VMTEL6', 'COBERTURA MÃ“VIL EN POBLACIONES RURALES FASE III', '1', 'TELECOMUNICACIONES', '2', '12', '1', '1', '2', '153489700.00', '100', '15', '', '', '', '0000-00-00', '0000-00-00', '100 RADIOBASES INSTALADAS POR ENTEL S.A.\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('95', 'VMTEL7', 'BOLIVIA TV', '1', 'TELECOMUNICACIONES', '2', '12', '1', '3', '2', '35350000.00', '100', '14', '\"Edwin Arandia Ramiro Vasquez\"', '\"2119999 int 606 2119999 int 602\"', '\"earandia@oopp.gov.bo rvasquez@oopp.gov.bo\"', '0000-00-00', '0000-00-00', 'AMPLIACION DE LA COBERTURA EN LOCALIDADES RURALES DE SANTA CRUZ\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('96', '310240101', 'FORTALECIMIENTO DE LOS COMPLEJOS PORTUARIOS DE GUAYARAMERÃN Y PUERTO VILLARROEL AL SERVICIO DE EMBARCO, DESEMBARCO YALMACENAMIENTO DE CARGA EN GENERAL DURANTE TODO EL AÃ‘O.', '1', 'MEJORAMIENTO NAVEGACIÃ“N ', '3', '6', '1', '3', '2', '13200000.00', '2', '17', '\"- Director Administrativo Financiero - Administrador de Puerto Villarroel. - Administrador Puerto Guayaramerin.\"', '\"38554630 GYA 4620490 TDD\"', 'semenadge@hotmail.com', '0000-00-00', '0000-00-00', 'Terminales portuarias brindando servicio continuo y eficiente.\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('97', '310240101a', 'FORTALECER LOS SERVICIOS DE CONSTRUCCIÃ“N NAVAL, REPARACIÃ“N Y/O MANTENIMIENTO DE EMBARCACIONES QUE PERMITAN MODERNIZAR EL TRANSPORTE FLUVIAL EN EL EJE ICHILO - MAMORÃ‰.', '1', 'MEJORAMIENTO NAVEGACIÃ“N ', '3', '6', '1', '3', '2', '221000.00', '1', '45', '\"- Director Administrativo Financiero - Administrador del Astillero Naval.\"', '\"3883644 GYA 4620490 TDD\"', 'semenadge@hotmail.com', '0000-00-00', '0000-00-00', 'Astillero naval brindando servicio continuo y eficiente.\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('98', '310240101b', 'CONSTRUCCIÃ“N Y/O REPARACIÃ“NDE EMBARCACIONES FLUVIALES DE ACUERDO A SOLICITUDES DE SERVICIO Y/O CONVENIO.', '1', 'MEJORAMIENTO NAVEGACIÃ“N ', '3', '6', '1', '3', '2', '4500.00', '1', '19', '\"- Director Administrativo Financiero - Director TÃ©cnico Operativo. - Jefe de Unidad de HidrografÃ­a. - Jefe de Unidad de PlanificaciÃ³n.\"', '\"4620490 TDD 4620061 DAF 4625043 DTO\"', 'semenadge@hotmail.com', '0000-00-00', '0000-00-00', 'Embarcaciones construidas y/o reparadas.\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('99', '310240102', 'ESTUDIO HIDROGRÃFICO DE LOS RÃOS NAVEGABLES DE LA SUB CUENCA BENI.', '1', 'MEJORAMIENTO NAVEGACIÃ“N ', '3', '6', '1', '3', '2', '90000.00', '1', '20', '\"- Director Administrativo Financiero - Director TÃ©cnico Operativo. - Jefe de Unidad de HidrografÃ­a. - Jefe de Unidad de PlanificaciÃ³n.\"', '\"4620490 TDD 4620061 DAF 4625043 DTO\"', 'semenadge@hotmail.com', '0000-00-00', '0000-00-00', 'Documento del Estudio hidrogrÃ¡fico de los rÃ­os en la Sub Cuenca Beni.\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('100', '310240102a', 'ESTUDIO HIDROGRÃFICO DE LOS RÃOS NAVEGABLES DE LA SUB CUENCA MADRE DE DIOS.', '1', 'MEJORAMIENTO NAVEGACIÃ“N ', '3', '6', '1', '3', '2', '30000.00', '1', '20', '\"- Director Administrativo Financiero - Director TÃ©cnico Operativo. - Jefe de Unidad de HidrografÃ­a. - Jefe de Unidad de PlanificaciÃ³n.\"', '\"4620490 TDD 4620061 DAF 4625043 DTO\"', 'semenadge@hotmail.com', '0000-00-00', '0000-00-00', 'Documento del Estudio hidrogrÃ¡fico de los rÃ­os en la Sub Cuenca Madre de Dios.\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('101', '310240103', 'LIMPIEZA DE RÃOS NAVEGABLES DEL DPTO. DE COCHABAMBA.', '1', 'MEJORAMIENTO NAVEGACIÃ“N ', '3', '6', '1', '3', '2', '70000.00', '400', '1', '\"- Director Administrativo Financiero - Director TÃ©cnico Operativo. - Jefe de Unidad de HidrografÃ­a. - Jefe de Unidad de PlanificaciÃ³n.\"', '\"4620490 TDD 4620061 DAF 4625043 DTO\"', 'semenadge@hotmail.com', '0000-00-00', '0000-00-00', 'RÃ­os navegables en el Dpo. de Cochabamba.\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('103', '310240103a', 'LIMPIEZA DE RÃOS NAVEGABLES DEL DPTO. DE BENI.', '1', 'MEJORAMIENTO NAVEGACIÃ“N ', '3', '6', '1', '3', '2', '170000.00', '3000', '1', '\"- Director Administrativo Financiero - Director TÃ©cnico Operativo. - Jefe de Unidad de HidrografÃ­a. - Jefe de Unidad de PlanificaciÃ³n.\"', '\"4620490 TDD 4620061 DAF 4625043 DTO\"', 'semenadge@hotmail.com', '0000-00-00', '0000-00-00', 'RÃ­os navegables en el Dpo. de Beni.\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('105', '310240103b', 'LIMPIEZA DE RÃOS NAVEGABLES DEL DPTO. DE SANTA CRUZ.', '1', 'MEJORAMIENTO NAVEGACIÃ“N ', '3', '6', '1', '3', '2', '25000.00', '300', '1', '\"- Director Administrativo Financiero - Director TÃ©cnico Operativo. - Jefe de Unidad de HidrografÃ­a. - Jefe de Unidad de PlanificaciÃ³n.\"', '\"4620490 TDD 4620061 DAF 4625043 DTO\"', 'semenadge@hotmail.com', '0000-00-00', '0000-00-00', 'RÃ­os navegables en el Dpo. de Santa Cruz.\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('106', '310240103c', 'LIMPIEZA DE RÃOS NAVEGABLES DEL DPTO DE PANDO', '1', 'MEJORAMIENTO NAVEGACIÃ“N ', '3', '6', '1', '3', '2', '35000.00', '500', '1', '\"- Director Administrativo Financiero - Director TÃ©cnico Operativo. - Jefe de Unidad de HidrografÃ­a. - Jefe de Unidad de PlanificaciÃ³n.\"', '\"4620490 TDD 4620061 DAF 4625043 DTO\"', 'semenadge@hotmail.com', '0000-00-00', '0000-00-00', 'RÃ­os navegables en el Dpo. de Pando.\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('107', '310240103d', 'LIMPIEZA DE RÃOS NAVEGABLES DEL DPTO. DE LA PAZ.', '1', 'MEJORAMIENTO NAVEGACIÃ“N ', '3', '6', '1', '3', '2', '64000.00', '700', '1', '\"- Director Administrativo Financiero - Director TÃ©cnico Operativo. - Jefe de Unidad de HidrografÃ­a. - Jefe de Unidad de PlanificaciÃ³n.\"', '\"4620490 TDD 4620061 DAF 4625043 DTO\"', 'semenadge@hotmail.com', '0000-00-00', '0000-00-00', 'RÃ­os navegables en el Dpo. de La Paz.\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('108', 'ALE', 'ACCESO LINEA ENTEL (LARGA DISTANCIA - RED DE ACCESO)', '1', 'LARGA DISTANCIA', '2', '13', '1', '8', '3', '839753.39', '3006', '25', '', '', '', '0000-00-00', '0000-00-00', 'Servicios de instalaciÃ³n\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('109', 'OYB', 'OBSOLECENCIA  YCB-BJO (LARGA DISTANCIA - RED NACIONAL)', '1', 'LARGA DISTANCIA', '2', '13', '1', '3', '3', '5171390.17', '4', '26', '', '', '', '0000-00-00', '0000-00-00', 'AmpliaciÃ³n de la Red Dorsal\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('110', 'PVSBEN0002a ', 'URB. LAS PALMAS', '1', 'PVS - HISTORICO', '1', '17', '1', '11', '2', '18872998.00', '301', '10', '', '', '', '0000-00-00', '0000-00-00', '301 Viviendas construidas en el Departamento de BENI Municipio de TRINIDAD Provincia Cercado\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('111', 'IPSAP', 'IMPLEMANTACION DEL SISTEMA AUTOMATIZADO EN EL COBRO DE PEAJES (PRIMERA FASE)', '4', 'VIAS BOLIVIA', '3', '8', '1', '3', '2', '4089250.00', '17', '59', 'ING. LUIS HURTADO ', '\"celular:76201003 Oficina: 2118200 Inter', 'hurtado.luis@viasbolivia.gob.bo', '0000-00-00', '0000-00-00', 'SISTEMA AUTOMATIZADO EN EL COBRO DE PEAJES \r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('112', '081-01004-00000', 'ELABORACIÃ“N DE PLANES VIALES PARTICIPATIVOS', '1', 'VMT', '3', '2', '2', '1', '2', '2979675.00', '57', '56', 'Ing. Alfredo Calasich', '7269434800%', 'acalasich@oopp.gov.bo', '0000-00-00', '0000-00-00', 'Estudios de planificacion vial\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('113', '081-01005-00000', 'DISEÃ‘O DE PUENTES PARA CAMINOS VECINALES', '1', 'VMT', '3', '2', '1', '1', '2', '1637044.00', '23', '57', 'Ing. Alfredo Calasich', '7269434800%', 'acalasich@oopp.gov.bo', '0000-00-00', '0000-00-00', 'Estudios de preinversion en puentes\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('114', '081-10006-00000', 'PROYECTO VIAL PORTUARIO MOTACUCITO - MUTUN - PUERTO BUSCH (PVPMMPB)', '1', 'VMT', '3', '2', '2', '1', '2', '19950477.54', '1', '58', 'Ing. HernÃ¡n Toranzo', '2-156600 (104); 730-14209', 'htoranzo@oopp.gov.bo', '0000-00-00', '0000-00-00', 'Estudios de preinversion a nivel de IngenierÃ­a de Detalles.\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('115', 'vmt1', 'PLAN MULTIMODAL DE LOGÃSTICA Y TRANSPORTE', '1', 'VMT', '3', '2', '2', '1', '2', '31500000.00', '1', '56', 'Lic. Ghiovanna Silva', '7067146300%', 'gsilva@oopp.gov.bo', '0000-00-00', '0000-00-00', 'Plan elaborado en su Fase I\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('116', 'vmt2', 'CORREDOR FERROVIARIO BIOCEÃNICO CENTRAL', '1', 'VMT', '3', '2', '2', '1', '2', '4900000000.00', '1', '57', 'Ing. Gonzalo Jimenez', '7650871800%', 'gjimenez@oopp.gov.bo', '0000-00-00', '0000-00-00', 'Estudio a nivel TESA elaborado y ConstrucciÃ³n \r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('117', '081-10005-00000', 'TREN DE CERCANÃAS SACABA-COCHABAMBA-QUILLACOLLO-VINTO', '1', 'VMT', '3', '2', '2', '3', '2', '2833521.00', '1', '58', 'Ing. Willian Maldonado', '7641637600%', 'wmaldonado@oopp.gov.bo', '0000-00-00', '0000-00-00', 'Estudio de IdentificaciÃ³n y Estudio Integral TÃ©cnico, EconÃ³mico, Social Ambiental\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('118', '081-10004-00000', 'TREN DE CERCANÃAS SANTA CRUZ-MONTERO', '1', 'VMT', '3', '2', '2', '1', '2', '1637413.00', '1', '58', 'Ing. Gonzalo Jimenez', '7650871800%', 'gjimenez@oopp.gov.bo', '0000-00-00', '0000-00-00', 'Estudio Integral TÃ©cnico, EconÃ³mico, Social Ambiental\r\n', '0', '1');
INSERT INTO `proyectos` VALUES ('119', 'vmt3', 'CONSTITUCIÃ“N EMPRESA BOLIVIANA DE FERROCARRILES', '1', 'VMT', '3', '2', '2', '1', '2', '1400000.00', '1', '58', 'Ing. William Maldonado', '7641637600%', 'wmaldonado@oopp.gov.bo', '0000-00-00', '0000-00-00', 'Proyecto para Constituir la EBF\r\n', '0', '1');

-- ----------------------------
-- Table structure for `sectores`
-- ----------------------------
DROP TABLE IF EXISTS `sectores`;
CREATE TABLE `sectores` (
  `idSector` int(11) NOT NULL AUTO_INCREMENT,
  `Sector` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idSector`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sectores
-- ----------------------------
INSERT INTO `sectores` VALUES ('1', 'VIVIENDA');
INSERT INTO `sectores` VALUES ('2', 'TELECOMUNICACIONES');
INSERT INTO `sectores` VALUES ('3', 'TRANSPORTE');
INSERT INTO `sectores` VALUES ('5', 'TRANSPORTE - TELECOMUNICACIONES');
INSERT INTO `sectores` VALUES ('4', 'ADMINISTRACION CENTRAL');

-- ----------------------------
-- Table structure for `territorios`
-- ----------------------------
DROP TABLE IF EXISTS `territorios`;
CREATE TABLE `territorios` (
  `idTerritorio` int(11) NOT NULL AUTO_INCREMENT,
  `idProyecto` int(11) DEFAULT NULL,
  `idDepartamento` int(11) DEFAULT NULL,
  `idProvincia` int(11) DEFAULT NULL,
  `idMunicipio` int(11) DEFAULT NULL,
  `porcentaje` double(5,2) DEFAULT NULL,
  PRIMARY KEY (`idTerritorio`)
) ENGINE=MyISAM AUTO_INCREMENT=938 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of territorios
-- ----------------------------
INSERT INTO `territorios` VALUES ('210', '19', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('211', '19', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('212', '19', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('213', '19', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('214', '19', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('215', '19', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('216', '19', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('217', '19', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('218', '6', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('219', '6', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('220', '6', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('221', '6', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('222', '6', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('223', '6', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('224', '6', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('225', '6', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('226', '7', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('227', '7', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('228', '7', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('229', '7', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('230', '7', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('231', '7', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('232', '7', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('233', '7', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('234', '8', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('235', '8', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('236', '8', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('237', '8', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('238', '8', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('239', '8', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('240', '8', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('241', '8', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('242', '10', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('243', '10', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('244', '10', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('245', '10', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('246', '10', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('247', '10', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('248', '10', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('249', '10', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('250', '20', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('251', '20', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('252', '20', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('253', '20', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('254', '20', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('255', '20', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('256', '20', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('257', '20', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('258', '21', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('259', '21', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('260', '21', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('261', '21', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('262', '21', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('263', '21', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('264', '21', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('265', '21', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('266', '22', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('267', '22', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('268', '22', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('269', '22', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('270', '22', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('271', '22', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('272', '22', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('273', '22', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('274', '23', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('275', '23', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('276', '23', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('277', '23', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('278', '23', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('279', '23', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('280', '23', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('281', '23', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('282', '37', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('283', '37', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('284', '37', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('285', '37', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('286', '37', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('287', '37', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('288', '37', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('289', '37', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('290', '38', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('291', '38', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('292', '38', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('293', '38', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('294', '38', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('295', '38', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('296', '38', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('297', '38', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('298', '39', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('299', '39', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('300', '39', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('301', '39', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('302', '39', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('303', '39', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('304', '39', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('305', '39', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('306', '40', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('307', '40', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('308', '40', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('309', '40', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('310', '40', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('311', '40', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('312', '40', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('313', '40', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('314', '36', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('315', '36', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('316', '36', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('317', '36', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('318', '36', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('319', '36', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('320', '36', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('321', '36', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('322', '41', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('323', '41', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('324', '41', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('325', '41', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('326', '41', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('327', '41', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('328', '41', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('329', '41', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('330', '42', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('331', '42', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('332', '42', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('333', '42', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('334', '42', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('335', '42', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('336', '42', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('337', '42', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('338', '43', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('339', '43', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('340', '43', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('341', '43', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('342', '43', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('343', '43', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('344', '43', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('345', '43', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('346', '44', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('347', '44', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('348', '44', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('349', '44', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('350', '44', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('351', '44', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('352', '44', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('353', '44', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('354', '45', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('355', '45', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('356', '45', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('357', '45', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('358', '45', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('359', '45', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('360', '45', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('361', '45', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('362', '46', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('363', '46', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('364', '46', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('365', '46', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('366', '46', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('367', '46', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('368', '46', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('369', '46', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('370', '47', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('371', '47', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('372', '47', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('373', '47', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('374', '47', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('375', '47', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('376', '47', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('377', '47', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('378', '48', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('379', '48', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('380', '48', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('381', '48', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('382', '48', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('383', '48', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('384', '48', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('385', '48', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('386', '49', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('387', '49', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('388', '49', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('389', '49', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('390', '49', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('391', '49', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('392', '49', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('393', '49', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('394', '50', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('395', '50', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('396', '50', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('397', '50', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('398', '50', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('399', '50', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('400', '50', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('401', '50', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('402', '51', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('403', '51', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('404', '51', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('405', '51', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('406', '51', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('407', '51', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('408', '51', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('409', '51', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('410', '52', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('411', '52', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('412', '52', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('413', '52', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('414', '52', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('415', '52', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('416', '52', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('417', '52', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('418', '53', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('419', '53', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('420', '53', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('421', '53', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('422', '53', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('423', '53', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('424', '53', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('425', '53', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('426', '54', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('427', '54', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('428', '54', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('429', '54', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('430', '54', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('431', '54', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('432', '54', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('433', '54', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('434', '55', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('435', '55', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('436', '55', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('437', '55', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('438', '55', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('439', '55', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('440', '55', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('441', '55', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('442', '56', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('443', '56', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('444', '56', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('445', '56', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('446', '56', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('447', '56', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('448', '56', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('449', '56', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('450', '57', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('451', '57', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('452', '57', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('453', '57', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('454', '57', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('455', '57', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('456', '57', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('457', '57', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('458', '58', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('459', '58', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('460', '58', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('461', '58', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('462', '58', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('463', '58', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('464', '58', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('465', '58', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('466', '59', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('467', '59', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('468', '59', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('469', '59', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('470', '59', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('471', '59', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('472', '59', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('473', '59', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('474', '60', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('475', '60', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('476', '60', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('477', '60', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('478', '60', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('479', '60', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('480', '60', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('481', '60', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('482', '61', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('483', '61', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('484', '61', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('485', '61', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('486', '61', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('487', '61', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('488', '61', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('489', '61', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('490', '62', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('491', '62', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('492', '62', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('493', '62', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('494', '62', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('495', '62', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('496', '62', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('497', '62', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('498', '63', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('499', '63', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('500', '63', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('501', '63', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('502', '63', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('503', '63', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('504', '63', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('505', '63', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('506', '64', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('507', '64', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('508', '64', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('509', '64', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('510', '64', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('511', '64', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('512', '64', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('513', '64', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('514', '65', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('515', '65', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('516', '65', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('517', '65', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('518', '65', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('519', '65', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('520', '65', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('521', '65', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('522', '66', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('523', '66', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('524', '66', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('525', '66', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('526', '66', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('527', '66', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('528', '66', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('529', '66', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('530', '67', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('531', '67', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('532', '67', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('533', '67', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('534', '67', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('535', '67', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('536', '67', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('537', '67', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('538', '68', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('539', '68', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('540', '68', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('541', '68', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('542', '68', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('543', '68', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('544', '68', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('545', '68', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('546', '69', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('547', '69', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('548', '69', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('549', '69', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('550', '69', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('551', '69', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('552', '69', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('553', '69', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('554', '70', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('555', '70', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('556', '70', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('557', '70', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('558', '70', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('559', '70', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('560', '70', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('561', '70', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('562', '71', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('563', '71', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('564', '71', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('565', '71', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('566', '71', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('567', '71', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('568', '71', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('569', '71', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('570', '72', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('571', '72', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('572', '72', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('573', '72', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('574', '72', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('575', '72', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('576', '72', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('577', '72', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('578', '73', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('579', '73', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('580', '73', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('581', '73', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('582', '73', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('583', '73', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('584', '73', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('585', '73', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('586', '74', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('587', '74', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('588', '74', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('589', '74', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('590', '74', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('591', '74', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('592', '74', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('593', '74', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('594', '75', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('595', '75', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('596', '75', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('597', '75', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('598', '75', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('599', '75', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('600', '75', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('601', '75', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('602', '76', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('603', '76', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('604', '76', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('605', '76', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('606', '76', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('607', '76', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('608', '76', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('609', '76', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('610', '77', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('611', '77', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('612', '77', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('613', '77', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('614', '77', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('615', '77', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('616', '77', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('617', '77', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('618', '78', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('619', '78', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('620', '78', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('621', '78', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('622', '78', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('623', '78', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('624', '78', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('625', '78', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('626', '79', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('627', '79', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('628', '79', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('629', '79', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('630', '79', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('631', '79', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('632', '79', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('633', '79', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('634', '80', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('635', '80', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('636', '80', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('637', '80', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('638', '80', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('639', '80', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('640', '80', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('641', '80', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('642', '81', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('643', '81', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('644', '81', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('645', '81', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('646', '81', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('647', '81', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('648', '81', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('649', '81', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('650', '82', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('651', '82', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('652', '82', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('653', '82', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('654', '82', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('655', '82', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('656', '82', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('657', '82', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('658', '83', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('659', '83', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('660', '83', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('661', '83', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('662', '83', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('663', '83', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('664', '83', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('665', '83', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('666', '84', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('667', '84', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('668', '84', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('669', '84', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('670', '84', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('671', '84', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('672', '84', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('673', '84', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('674', '85', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('675', '85', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('676', '85', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('677', '85', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('678', '85', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('679', '85', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('680', '85', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('681', '85', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('682', '86', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('683', '86', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('684', '86', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('685', '86', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('686', '86', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('687', '86', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('688', '86', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('689', '86', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('690', '87', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('691', '87', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('692', '87', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('693', '87', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('694', '87', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('695', '87', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('696', '87', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('697', '87', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('698', '88', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('699', '88', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('700', '88', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('701', '88', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('702', '88', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('703', '88', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('704', '88', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('705', '88', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('706', '89', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('707', '89', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('708', '89', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('709', '89', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('710', '89', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('711', '89', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('712', '89', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('713', '89', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('714', '90', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('715', '90', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('716', '90', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('717', '90', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('718', '90', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('719', '90', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('720', '90', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('721', '90', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('722', '91', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('723', '91', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('724', '91', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('725', '91', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('726', '91', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('727', '91', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('728', '91', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('729', '91', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('730', '92', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('731', '92', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('732', '92', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('733', '92', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('734', '92', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('735', '92', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('736', '92', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('737', '92', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('738', '93', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('739', '93', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('740', '93', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('741', '93', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('742', '93', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('743', '93', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('744', '93', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('745', '93', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('746', '94', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('747', '94', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('748', '94', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('749', '94', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('750', '94', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('751', '94', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('752', '94', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('753', '94', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('754', '95', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('755', '95', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('756', '95', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('757', '95', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('758', '95', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('759', '95', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('760', '95', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('761', '95', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('762', '96', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('763', '96', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('764', '96', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('765', '96', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('766', '96', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('767', '96', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('768', '96', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('769', '96', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('770', '97', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('771', '97', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('772', '97', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('773', '97', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('774', '97', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('775', '97', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('776', '97', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('777', '97', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('778', '98', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('779', '98', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('780', '98', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('781', '98', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('782', '98', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('783', '98', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('784', '98', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('785', '98', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('786', '99', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('787', '99', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('788', '99', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('789', '99', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('790', '99', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('791', '99', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('792', '99', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('793', '99', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('794', '100', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('795', '100', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('796', '100', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('797', '100', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('798', '100', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('799', '100', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('800', '100', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('801', '100', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('802', '101', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('803', '101', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('804', '101', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('805', '101', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('806', '101', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('807', '101', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('808', '101', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('809', '101', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('810', '103', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('811', '103', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('812', '103', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('813', '103', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('814', '103', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('815', '103', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('816', '103', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('817', '103', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('818', '105', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('819', '105', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('820', '105', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('821', '105', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('822', '105', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('823', '105', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('824', '105', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('825', '105', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('826', '106', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('827', '106', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('828', '106', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('829', '106', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('830', '106', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('831', '106', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('832', '106', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('833', '106', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('834', '107', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('835', '107', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('836', '107', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('837', '107', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('838', '107', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('839', '107', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('840', '107', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('841', '107', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('842', '108', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('843', '108', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('844', '108', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('845', '108', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('846', '108', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('847', '108', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('848', '108', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('849', '108', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('850', '109', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('851', '109', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('852', '109', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('853', '109', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('854', '109', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('855', '109', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('856', '109', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('857', '109', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('858', '110', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('859', '110', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('860', '110', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('861', '110', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('862', '110', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('863', '110', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('864', '110', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('865', '110', '1', '1', '1', '0.00');
INSERT INTO `territorios` VALUES ('866', '111', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('867', '111', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('868', '111', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('869', '111', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('870', '111', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('871', '111', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('872', '111', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('873', '111', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('874', '112', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('875', '112', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('876', '112', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('877', '112', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('878', '112', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('879', '112', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('880', '112', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('881', '112', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('882', '113', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('883', '113', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('884', '113', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('885', '113', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('886', '113', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('887', '113', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('888', '113', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('889', '113', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('890', '114', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('891', '114', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('892', '114', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('893', '114', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('894', '114', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('895', '114', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('896', '114', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('897', '114', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('898', '115', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('899', '115', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('900', '115', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('901', '115', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('902', '115', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('903', '115', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('904', '115', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('905', '115', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('906', '116', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('907', '116', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('908', '116', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('909', '116', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('910', '116', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('911', '116', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('912', '116', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('913', '116', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('914', '117', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('915', '117', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('916', '117', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('917', '117', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('918', '117', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('919', '117', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('920', '117', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('921', '117', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('922', '118', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('923', '118', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('924', '118', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('925', '118', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('926', '118', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('927', '118', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('928', '118', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('929', '118', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('930', '119', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('931', '119', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('932', '119', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('933', '119', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('934', '119', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('935', '119', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('936', '119', '8', '26', '222', '0.00');
INSERT INTO `territorios` VALUES ('937', '119', '8', '26', '222', '0.00');

-- ----------------------------
-- Table structure for `themes`
-- ----------------------------
DROP TABLE IF EXISTS `themes`;
CREATE TABLE `themes` (
  `idTheme` int(3) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`idTheme`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of themes
-- ----------------------------
INSERT INTO `themes` VALUES ('1', 'ui-lightness', '1');
INSERT INTO `themes` VALUES ('2', 'custom-theme', '1');
INSERT INTO `themes` VALUES ('3', 'vader', '1');
INSERT INTO `themes` VALUES ('4', 'ui-darkness', '1');
INSERT INTO `themes` VALUES ('5', 'trontastic', '1');
INSERT INTO `themes` VALUES ('6', 'sunny', '1');
INSERT INTO `themes` VALUES ('7', 'start', '1');
INSERT INTO `themes` VALUES ('8', 'south-street', '1');
INSERT INTO `themes` VALUES ('9', 'pepper-grinder', '1');
INSERT INTO `themes` VALUES ('10', 'overcast', '1');
INSERT INTO `themes` VALUES ('11', 'humanity', '1');
INSERT INTO `themes` VALUES ('12', 'flick', '1');
INSERT INTO `themes` VALUES ('13', 'excite-bike', '1');
INSERT INTO `themes` VALUES ('14', 'eggplant', '1');
INSERT INTO `themes` VALUES ('15', 'dot-luv', '1');
INSERT INTO `themes` VALUES ('16', 'dark-hive', '1');
INSERT INTO `themes` VALUES ('17', 'cupertino', '1');
INSERT INTO `themes` VALUES ('18', 'black-tie', '1');
INSERT INTO `themes` VALUES ('19', 'theme2', '1');

-- ----------------------------
-- Table structure for `tipocambio`
-- ----------------------------
DROP TABLE IF EXISTS `tipocambio`;
CREATE TABLE `tipocambio` (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `gestion` int(5) DEFAULT NULL,
  `tipoCambio` double(5,2) DEFAULT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tipocambio
-- ----------------------------
INSERT INTO `tipocambio` VALUES ('1', '2010', '7.07');
INSERT INTO `tipocambio` VALUES ('2', '2011', '7.07');

-- ----------------------------
-- Table structure for `tipoproyectos`
-- ----------------------------
DROP TABLE IF EXISTS `tipoproyectos`;
CREATE TABLE `tipoproyectos` (
  `idTipo` int(3) NOT NULL AUTO_INCREMENT,
  `tipoProyecto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tipoproyectos
-- ----------------------------
INSERT INTO `tipoproyectos` VALUES ('1', 'INVERSION PUBLICA');
INSERT INTO `tipoproyectos` VALUES ('3', 'INVERSION ESTRATEGICA');
INSERT INTO `tipoproyectos` VALUES ('4', 'RECAUDACIONES');

-- ----------------------------
-- Table structure for `tiposproblema`
-- ----------------------------
DROP TABLE IF EXISTS `tiposproblema`;
CREATE TABLE `tiposproblema` (
  `idtipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipoProblema` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idtipo`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tiposproblema
-- ----------------------------
INSERT INTO `tiposproblema` VALUES ('1', 'Financiero');
INSERT INTO `tiposproblema` VALUES ('2', 'Administrativo');
INSERT INTO `tiposproblema` VALUES ('3', 'Legal');
INSERT INTO `tiposproblema` VALUES ('7', 'Social');
INSERT INTO `tiposproblema` VALUES ('9', 'Tecnico');

-- ----------------------------
-- Table structure for `unidades`
-- ----------------------------
DROP TABLE IF EXISTS `unidades`;
CREATE TABLE `unidades` (
  `idUnidad` int(11) NOT NULL AUTO_INCREMENT,
  `unidad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idUnidad`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of unidades
-- ----------------------------
INSERT INTO `unidades` VALUES ('1', 'km');
INSERT INTO `unidades` VALUES ('2', 'm');
INSERT INTO `unidades` VALUES ('3', 'Global(Dolares)');
INSERT INTO `unidades` VALUES ('4', 'Pza');
INSERT INTO `unidades` VALUES ('5', 'Informe');
INSERT INTO `unidades` VALUES ('6', 'Usuarios');
INSERT INTO `unidades` VALUES ('7', 'Consultores/mes');
INSERT INTO `unidades` VALUES ('8', 'Sup/mes');
INSERT INTO `unidades` VALUES ('9', 'Aud/mes');
INSERT INTO `unidades` VALUES ('10', 'Viviendas');
INSERT INTO `unidades` VALUES ('11', 'Inst');
INSERT INTO `unidades` VALUES ('12', 'Hab');
INSERT INTO `unidades` VALUES ('13', 'Telecentros');
INSERT INTO `unidades` VALUES ('14', '% de proyecto');
INSERT INTO `unidades` VALUES ('15', 'Radios de Base');
INSERT INTO `unidades` VALUES ('16', 'Radios Comunitarias');
INSERT INTO `unidades` VALUES ('17', 'Terminal portuarea');
INSERT INTO `unidades` VALUES ('18', 'Astillero Naval');
INSERT INTO `unidades` VALUES ('19', 'Embarcacion');
INSERT INTO `unidades` VALUES ('20', 'Documento');
INSERT INTO `unidades` VALUES ('21', 'Barcos');
INSERT INTO `unidades` VALUES ('22', 'Vehiculos');
INSERT INTO `unidades` VALUES ('23', 'Estacion Idrometrica');
INSERT INTO `unidades` VALUES ('24', 'Boletin');
INSERT INTO `unidades` VALUES ('25', 'Lineas');
INSERT INTO `unidades` VALUES ('26', 'Equipos de Radio Enlace');
INSERT INTO `unidades` VALUES ('27', 'Centrales');
INSERT INTO `unidades` VALUES ('28', 'HUB');
INSERT INTO `unidades` VALUES ('29', 'Terminales');
INSERT INTO `unidades` VALUES ('30', 'Sistemas');
INSERT INTO `unidades` VALUES ('31', 'Equipos');
INSERT INTO `unidades` VALUES ('32', 'Canales');
INSERT INTO `unidades` VALUES ('33', 'AMP Capacidad 1 giga');
INSERT INTO `unidades` VALUES ('34', 'Software');
INSERT INTO `unidades` VALUES ('35', 'Codecs  TV');
INSERT INTO `unidades` VALUES ('36', 'Enlaces - STM4');
INSERT INTO `unidades` VALUES ('37', 'Torres');
INSERT INTO `unidades` VALUES ('38', 'Numero de BTS');
INSERT INTO `unidades` VALUES ('39', 'RBS');
INSERT INTO `unidades` VALUES ('40', 'Implementar Servicios');
INSERT INTO `unidades` VALUES ('41', 'Nuevos Servicios');
INSERT INTO `unidades` VALUES ('42', 'Repetidoras');
INSERT INTO `unidades` VALUES ('43', 'Licencias');
INSERT INTO `unidades` VALUES ('44', 'Tiendas');
INSERT INTO `unidades` VALUES ('45', 'Unidad');
INSERT INTO `unidades` VALUES ('46', 'Clientes');
INSERT INTO `unidades` VALUES ('47', 'Hadware');
INSERT INTO `unidades` VALUES ('48', 'Red de transporte');
INSERT INTO `unidades` VALUES ('49', 'Nodos');
INSERT INTO `unidades` VALUES ('50', 'Routers');
INSERT INTO `unidades` VALUES ('51', 'Puertos');
INSERT INTO `unidades` VALUES ('52', 'Equipos');
INSERT INTO `unidades` VALUES ('53', 'Unidades');
INSERT INTO `unidades` VALUES ('56', 'Planes');
INSERT INTO `unidades` VALUES ('57', 'Proyecto');
INSERT INTO `unidades` VALUES ('58', 'Estudio');
INSERT INTO `unidades` VALUES ('59', 'Retenes Autorizados');
INSERT INTO `unidades` VALUES ('60', 'Equipos Infraestructura');
INSERT INTO `unidades` VALUES ('61', 'Transferencia');
INSERT INTO `unidades` VALUES ('62', 'Inmueble');
INSERT INTO `unidades` VALUES ('63', 'Aeropuerto Mejorado');

-- ----------------------------
-- Table structure for `usuarios`
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(40) DEFAULT NULL,
  `paterno` varchar(20) DEFAULT NULL,
  `materno` varchar(20) DEFAULT NULL,
  `nombres` varchar(30) DEFAULT NULL,
  `prioridad` tinyint(1) DEFAULT NULL,
  `idEntidad` int(5) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `interno` int(11) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `cedula` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `genero` varchar(12) DEFAULT NULL,
  `idTheme` int(3) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`idUsuario`,`usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', 'admin', 'admin', 'Chacolla', 'morochi', 'Ivan', '3', '0', 'Administrador del Sistema', '0', '79142438', '4021525', 'ivanmarceloch_hp49@hotmail.com', 'Masculino', '1', '1');
INSERT INTO `usuarios` VALUES ('2', 'user', '123', 'Perez', 'jjj', 'Juan', '3', '2', 'Encargado de sistemas', '1', '123456', '1234567', 'info@oopp.gob.bo', 'Masculino', '2', '1');
INSERT INTO `usuarios` VALUES ('4', 'juan', 'perez', 'jjjj', 'jjjjj', 'jj', '3', '3', 'Encargado', '25565', '1646546546', '545646546', 'info@as.com', 'Masculino', '1', '1');
INSERT INTO `usuarios` VALUES ('5', 'UCA', '11111111', 'Tito', 'perez', 'juan', '2', '3', 'Encargado de Sistemas', '104', '4564654', '1234678', 'info@slsls.com', 'masculino', '12', '1');
