/*
SQLyog Enterprise Trial - MySQL GUI v8.05 
MySQL - 5.5.16 : Database - bdkl
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`bdkl` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;

USE `bdkl`;

/*Table structure for table `anuncios` */

DROP TABLE IF EXISTS `anuncios`;

CREATE TABLE `anuncios` (
  `IdAnuncio` int(11) NOT NULL,
  `FhAnuncio` datetime DEFAULT NULL,
  `IdCliente` varchar(11) DEFAULT NULL,
  `Anunciante` varchar(50) DEFAULT NULL,
  `DirAnunciante` varchar(80) DEFAULT NULL,
  `TelAnunciante` varchar(15) DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `Asignacion` int(11) DEFAULT NULL,
  `FhRecogida` datetime DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosVol` int(11) DEFAULT NULL,
  `Comentarios` varchar(250) DEFAULT NULL,
  `MotivoCancelacion` varchar(250) DEFAULT NULL,
  `Programada` tinyint(4) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  `Efectiva` tinyint(4) DEFAULT NULL,
  `TiempoEfectiva` datetime DEFAULT NULL,
  `Coperaciones` smallint(6) DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  `IdConductor` varchar(11) DEFAULT NULL,
  `IdVehiculo` varchar(10) DEFAULT NULL,
  `IdEmpresa` smallint(6) DEFAULT NULL,
  `IdAsignacion` int(11) DEFAULT NULL,
  `Cerrada` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`IdAnuncio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `anunciosprogramados` */

DROP TABLE IF EXISTS `anunciosprogramados`;

CREATE TABLE `anunciosprogramados` (
  `IdAnuncioProgramado` int(11) NOT NULL AUTO_INCREMENT,
  `IdCliente` int(11) DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  PRIMARY KEY (`IdAnuncioProgramado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `auxiliares` */

DROP TABLE IF EXISTS `auxiliares`;

CREATE TABLE `auxiliares` (
  `IdAuxiliar` varchar(15) DEFAULT NULL,
  `NmAuxiliar` varchar(70) DEFAULT NULL,
  `TelAuxiliar` varchar(15) DEFAULT NULL,
  `COAuxiliar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `auxiliaresvehiculos` */

DROP TABLE IF EXISTS `auxiliaresvehiculos`;

CREATE TABLE `auxiliaresvehiculos` (
  `IdAsignacion` int(11) DEFAULT NULL,
  `IdAuxiliar` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `bandejatemporal` */

DROP TABLE IF EXISTS `bandejatemporal`;

CREATE TABLE `bandejatemporal` (
  `Guia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `carrocerias` */

DROP TABLE IF EXISTS `carrocerias`;

CREATE TABLE `carrocerias` (
  `IdCarroceria` int(11) DEFAULT NULL,
  `NmCarroceria` varchar(50) DEFAULT NULL,
  `CodMinTrans` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `causalesnovedad` */

DROP TABLE IF EXISTS `causalesnovedad`;

CREATE TABLE `causalesnovedad` (
  `IdNovedad` int(11) NOT NULL AUTO_INCREMENT,
  `NmNovedad` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`IdNovedad`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

/*Table structure for table `causalesnovedadmonitoreo` */

DROP TABLE IF EXISTS `causalesnovedadmonitoreo`;

CREATE TABLE `causalesnovedadmonitoreo` (
  `IdNovedad` int(11) NOT NULL AUTO_INCREMENT,
  `NmNovedad` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`IdNovedad`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Table structure for table `centrosoperaciones` */

DROP TABLE IF EXISTS `centrosoperaciones`;

CREATE TABLE `centrosoperaciones` (
  `IDPO` int(11) DEFAULT NULL,
  `NmPuntoOperaciones` varchar(50) DEFAULT NULL,
  `IdCiudad` smallint(6) DEFAULT NULL,
  `Tipo` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ciudades` */

DROP TABLE IF EXISTS `ciudades`;

CREATE TABLE `ciudades` (
  `IdCiudad` int(11) NOT NULL AUTO_INCREMENT,
  `NmCiudad` varchar(50) DEFAULT NULL,
  `IdDepartamento` smallint(6) DEFAULT NULL,
  `Distancia` int(11) DEFAULT NULL,
  `IdZona` smallint(6) DEFAULT NULL,
  `CodMinTrans` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=1026 DEFAULT CHARSET=latin1;

/*Table structure for table `colores` */

DROP TABLE IF EXISTS `colores`;

CREATE TABLE `colores` (
  `IdColor` int(11) DEFAULT NULL,
  `NmColor` varchar(50) DEFAULT NULL,
  `CodMinTrans` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `conceptoscontables` */

DROP TABLE IF EXISTS `conceptoscontables`;

CREATE TABLE `conceptoscontables` (
  `IdConcepto` smallint(6) NOT NULL AUTO_INCREMENT,
  `NmConcepto` varchar(80) DEFAULT NULL,
  `Tipo` tinyint(4) DEFAULT NULL,
  `Cuenta` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`IdConcepto`)
) ENGINE=InnoDB AUTO_INCREMENT=381 DEFAULT CHARSET=latin1;

/*Table structure for table `conceptosfacturas` */

DROP TABLE IF EXISTS `conceptosfacturas`;

CREATE TABLE `conceptosfacturas` (
  `IdConceptoFactura` int(11) NOT NULL AUTO_INCREMENT,
  `IdFactura` int(11) NOT NULL,
  `IdConcepto` smallint(6) NOT NULL,
  `Valor` double DEFAULT NULL,
  PRIMARY KEY (`IdConceptoFactura`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Table structure for table `conductores` */

DROP TABLE IF EXISTS `conductores`;

CREATE TABLE `conductores` (
  `IdConductor` varchar(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Apellido1` varchar(30) DEFAULT NULL,
  `Apellido2` varchar(30) DEFAULT NULL,
  `IdCiudad` int(11) DEFAULT NULL,
  `Direccion` varchar(80) DEFAULT NULL,
  `Barrio` varchar(50) DEFAULT NULL,
  `TelConductor` varchar(15) DEFAULT NULL,
  `Ext1` varchar(4) DEFAULT NULL,
  `TelConductor2` varchar(15) DEFAULT NULL,
  `Ext2` varchar(4) DEFAULT NULL,
  `Celular` varchar(15) DEFAULT NULL,
  `OtroCom` varchar(25) DEFAULT NULL,
  `Email` varchar(70) DEFAULT NULL,
  `Libreta` varchar(50) DEFAULT NULL,
  `LicenciaConductor` varchar(50) DEFAULT NULL,
  `Categoria` varchar(2) DEFAULT NULL,
  `Senales` varchar(250) DEFAULT NULL,
  `Alias` varchar(30) DEFAULT NULL,
  `NmRefPersonal` varchar(40) DEFAULT NULL,
  `TelRef` varchar(15) DEFAULT NULL,
  `DirRef` varchar(50) DEFAULT NULL,
  `Fhingreso` datetime DEFAULT NULL,
  `TpIdConductor` varchar(1) DEFAULT NULL,
  `PlacaPred` varchar(6) DEFAULT NULL,
  `FhVenceLic` date DEFAULT NULL,
  `FhNac` date DEFAULT NULL,
  `ConductorInactivo` tinyint(4) DEFAULT '0',
  `ImagenConductor` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`IdConductor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `configuracion` */

DROP TABLE IF EXISTS `configuracion`;

CREATE TABLE `configuracion` (
  `GuiaConsecutivo` bit(1) DEFAULT NULL,
  `ListaPreciosGeneral` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 22528 kB';

/*Table structure for table `consecutivos` */

DROP TABLE IF EXISTS `consecutivos`;

CREATE TABLE `consecutivos` (
  `IDUsuarios` smallint(6) DEFAULT NULL,
  `Guias` int(11) DEFAULT NULL,
  `Despachos` int(11) DEFAULT NULL,
  `Anuncios` int(11) DEFAULT NULL,
  `Remitentes` int(11) DEFAULT NULL,
  `Manifiestos` int(11) DEFAULT NULL,
  `Facturas` int(11) DEFAULT NULL,
  `PreFactura` int(11) DEFAULT NULL,
  `Recibos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `controlpost` */

DROP TABLE IF EXISTS `controlpost`;

CREATE TABLE `controlpost` (
  `IdControlPost` int(11) NOT NULL AUTO_INCREMENT,
  `NmControlPost` varchar(80) DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdControlPost`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=latin1;

/*Table structure for table `correcciones` */

DROP TABLE IF EXISTS `correcciones`;

CREATE TABLE `correcciones` (
  `IdCorreccion` int(11) NOT NULL AUTO_INCREMENT,
  `GuiaCorregida` int(11) DEFAULT NULL,
  `FechaCorreccion` datetime DEFAULT NULL,
  `CuentaC` varchar(11) DEFAULT NULL,
  `IdUsuarioCorreccion` int(11) DEFAULT NULL,
  `IdTpServicio` tinyint(4) DEFAULT NULL,
  `VrDeclaradoC` double(15,3) DEFAULT NULL,
  `VrFleteC` double(15,3) DEFAULT NULL,
  `VrManejoC` double(15,3) DEFAULT NULL,
  `GuiaFacC` tinyint(4) DEFAULT NULL,
  `KilosRealesC` int(11) DEFAULT NULL,
  `KilosVolumenC` int(11) DEFAULT NULL,
  `KilosFacturadosC` int(11) DEFAULT NULL,
  `UnidadesC` int(11) DEFAULT NULL,
  `IdTpCtaFleteC` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejoC` int(11) DEFAULT NULL,
  `Comentarios` varchar(500) DEFAULT NULL,
  `IdCiuDestinoC` int(11) DEFAULT NULL,
  `DocClienteC` varchar(30) DEFAULT NULL,
  `RecaudoC` double(15,3) DEFAULT NULL,
  PRIMARY KEY (`IdCorreccion`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=latin1;

/*Table structure for table `cuentas_cobrar` */

DROP TABLE IF EXISTS `cuentas_cobrar`;

CREATE TABLE `cuentas_cobrar` (
  `IdCxP` int(11) NOT NULL,
  `NroDocumento` int(11) DEFAULT NULL,
  `FechaDoc` date DEFAULT NULL,
  `FhVence` date DEFAULT NULL,
  `IdTercero` int(11) DEFAULT NULL,
  `Total` double(15,3) DEFAULT NULL,
  `Abono` double(15,3) DEFAULT NULL,
  `Saldo` double(15,3) DEFAULT NULL,
  PRIMARY KEY (`IdCxP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `datosbasicos` */

DROP TABLE IF EXISTS `datosbasicos`;

CREATE TABLE `datosbasicos` (
  `ID` varchar(11) NOT NULL,
  `TpDoc` varchar(1) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido1` varchar(20) DEFAULT NULL,
  `Apellido2` varchar(20) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Telefono` varchar(11) DEFAULT NULL,
  `IdCiudad` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IdCiudad` (`IdCiudad`),
  CONSTRAINT `datosbasicos_fk` FOREIGN KEY (`IdCiudad`) REFERENCES `ciudades` (`IdCiudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `departamentos` */

DROP TABLE IF EXISTS `departamentos`;

CREATE TABLE `departamentos` (
  `IdDepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `NmDepartamento` varchar(30) DEFAULT NULL,
  `CodMinTrans` varchar(10) DEFAULT NULL,
  `IdPais` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdDepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Table structure for table `despachos` */

DROP TABLE IF EXISTS `despachos`;

CREATE TABLE `despachos` (
  `IdManifiesto` int(11) DEFAULT NULL COMMENT '0',
  `OrdDespacho` int(11) NOT NULL,
  `Tipo` tinyint(4) DEFAULT NULL,
  `FhExpedicion` datetime DEFAULT NULL,
  `FhCumplidos` datetime DEFAULT NULL,
  `IdVehiculo` varchar(10) DEFAULT NULL,
  `IdConductor` varchar(11) DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `IdCiudadOrigen` int(11) DEFAULT NULL,
  `IdCiudadDestino` int(11) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  `Remesas` int(11) DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosVol` int(11) DEFAULT NULL,
  `FleteCobra` double DEFAULT NULL,
  `ManejoCobra` double DEFAULT NULL,
  `FleteCE` double DEFAULT NULL,
  `ManejoCE` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrAnticipo` double DEFAULT NULL,
  `VrDctoPapeleria` double DEFAULT NULL,
  `VrDctoSeguridad` double DEFAULT NULL,
  `VrDctoCargue` double DEFAULT NULL,
  `VrDctoEstampilla` double DEFAULT NULL,
  `VrFleteAdicional` double DEFAULT NULL,
  `VrDctoIndCom` double DEFAULT NULL,
  `VrDctoRteFte` double DEFAULT NULL,
  `VrOtrosDctos` double DEFAULT NULL,
  `SaldoDesp` double DEFAULT NULL,
  `TotalViaje` double DEFAULT NULL,
  `CO` int(11) DEFAULT NULL,
  `Observaciones` varchar(254) DEFAULT NULL,
  `TRecaudo` double DEFAULT NULL,
  `VrDeclaradoTotal` double(15,3) NOT NULL DEFAULT '0.000',
  `ruta1` int(11) DEFAULT NULL,
  `Kilometrostotal` int(11) DEFAULT NULL,
  `tarifaflete` double(15,3) DEFAULT NULL,
  `ciudadtramoorigen` int(11) DEFAULT NULL,
  `ciudadtramodestino` int(11) DEFAULT NULL,
  `kilomtramoorigen` int(11) DEFAULT NULL,
  `kilomtramodestino` int(11) DEFAULT NULL COMMENT '41',
  `ManElectronico` varchar(30) DEFAULT NULL,
  `NmConductor` varchar(60) DEFAULT NULL,
  `Cerrado` tinyint(4) DEFAULT '0',
  `Liquidado` tinyint(4) DEFAULT '0',
  `IdUsuario` int(11) DEFAULT NULL,
  `IdEmpresa` smallint(6) DEFAULT NULL,
  `Exportado` tinyint(4) DEFAULT '0',
  `LugarPago` varchar(100) DEFAULT 'MEDELLIN',
  `FhPagoSaldo` date DEFAULT NULL,
  `PagoCargue` varchar(25) DEFAULT 'TRANSPORTES CUARTAS S.A',
  `PagoDescargue` varchar(25) DEFAULT 'TRANSPORTES CUARTAS S.A',
  `Estado1` tinyint(4) DEFAULT NULL,
  `IdRuta1Min` int(11) DEFAULT NULL,
  `IdRuta2Min` int(11) DEFAULT NULL,
  `AbonosCE` double(15,3) DEFAULT '0.000',
  `FletesNoCancelados` double(15,3) DEFAULT '0.000',
  `EnviadoMT` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`OrdDespacho`),
  KEY `IdConductor` (`IdConductor`),
  KEY `IdCiudadOrigen` (`IdCiudadOrigen`),
  KEY `IdCiudadDestino` (`IdCiudadDestino`),
  KEY `IdRuta` (`IdRuta`),
  KEY `IdVehiculo` (`IdVehiculo`),
  CONSTRAINT `despachos_fk` FOREIGN KEY (`IdConductor`) REFERENCES `conductores` (`IdConductor`),
  CONSTRAINT `despachos_fk1` FOREIGN KEY (`IdCiudadOrigen`) REFERENCES `ciudades` (`IdCiudad`),
  CONSTRAINT `despachos_fk2` FOREIGN KEY (`IdCiudadDestino`) REFERENCES `ciudades` (`IdCiudad`),
  CONSTRAINT `despachos_fk3` FOREIGN KEY (`IdRuta`) REFERENCES `rutas` (`IdRuta`),
  CONSTRAINT `despachos_fk4` FOREIGN KEY (`IdVehiculo`) REFERENCES `vehiculos` (`IdPlaca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `despachosconceptos` */

DROP TABLE IF EXISTS `despachosconceptos`;

CREATE TABLE `despachosconceptos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IdDespacho` int(11) DEFAULT NULL,
  `IdConcepto` int(11) DEFAULT NULL,
  `Tipo` int(11) DEFAULT NULL,
  `Valor` double DEFAULT NULL,
  `Comentarios` mediumtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `destinatarios` */

DROP TABLE IF EXISTS `destinatarios`;

CREATE TABLE `destinatarios` (
  `IdDestinatario` varchar(11) DEFAULT NULL,
  `NmDestinatario` varchar(60) DEFAULT NULL,
  `DirDestinatario` varchar(50) DEFAULT NULL,
  `TelDestinatario` varchar(15) DEFAULT NULL,
  `IdCiuDestinatario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `empaques` */

DROP TABLE IF EXISTS `empaques`;

CREATE TABLE `empaques` (
  `IdEmpaque` smallint(6) DEFAULT NULL,
  `NmEmpaque` varchar(50) DEFAULT NULL,
  `CodMinTrans` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `facturas` */

DROP TABLE IF EXISTS `facturas`;

CREATE TABLE `facturas` (
  `IdFactura` int(11) NOT NULL,
  `FhFac` datetime DEFAULT NULL,
  `FhVenceFac` datetime DEFAULT NULL,
  `IdCliente` varchar(11) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  `Notas` mediumtext,
  `TFlete` double DEFAULT NULL,
  `TManejo` double DEFAULT NULL,
  `TOtros` double DEFAULT NULL,
  `DctoComercial` double DEFAULT NULL,
  `BaseCcial` double DEFAULT NULL,
  `DctoFinanciero` double DEFAULT NULL,
  `BaseFin` double DEFAULT NULL,
  `AntesDeDcto` smallint(6) DEFAULT NULL,
  `Abonos` double DEFAULT NULL,
  `TotalFactura` double DEFAULT NULL,
  `Saldo` double DEFAULT NULL,
  `NroGuias` int(11) DEFAULT NULL,
  `NroPlanillas` int(11) DEFAULT NULL,
  `NroConceptos` int(11) DEFAULT NULL,
  `IdFormaPago` int(11) DEFAULT '0',
  `IdTipoFactura` int(11) NOT NULL DEFAULT '1',
  `Exportada` tinyint(4) DEFAULT '0',
  `IdEmpresa` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`IdFactura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `facturas_tipos` */

DROP TABLE IF EXISTS `facturas_tipos`;

CREATE TABLE `facturas_tipos` (
  `IdTipoFactura` int(11) NOT NULL,
  `NmTipoFactura` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`IdTipoFactura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192;

/*Table structure for table `facturasplanillas` */

DROP TABLE IF EXISTS `facturasplanillas`;

CREATE TABLE `facturasplanillas` (
  `IdPlanilla` int(11) NOT NULL AUTO_INCREMENT,
  `IdFactura` int(11) DEFAULT NULL,
  `RelCliente` varchar(25) DEFAULT NULL,
  `VrFletePlanilla` double(15,3) DEFAULT NULL,
  `VrManejoPlanilla` double(15,3) DEFAULT NULL,
  `NroGuiasPlanilla` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdPlanilla`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `formularios` */

DROP TABLE IF EXISTS `formularios`;

CREATE TABLE `formularios` (
  `IdFormulario` int(11) NOT NULL AUTO_INCREMENT,
  `NmFormulario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdFormulario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 6144 kB';

/*Table structure for table `frecuencias` */

DROP TABLE IF EXISTS `frecuencias`;

CREATE TABLE `frecuencias` (
  `IdProgRuta` int(11) DEFAULT NULL,
  `IdRuta` smallint(6) DEFAULT NULL,
  `Lunes` tinyint(4) DEFAULT NULL,
  `Martes` tinyint(4) DEFAULT NULL,
  `Miercoles` tinyint(4) DEFAULT NULL,
  `Jueves` tinyint(4) DEFAULT NULL,
  `Viernes` tinyint(4) DEFAULT NULL,
  `Sabado` tinyint(4) DEFAULT NULL,
  `Domingo` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `guias` */

DROP TABLE IF EXISTS `guias`;

CREATE TABLE `guias` (
  `Guia` int(11) NOT NULL,
  `CR` smallint(6) DEFAULT NULL,
  `Remitente` varchar(50) DEFAULT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `DocCliente` varchar(15) DEFAULT NULL,
  `NmDestinatario` varchar(50) DEFAULT NULL,
  `DirDestinatario` varchar(50) DEFAULT NULL,
  `TelDestinatario` varchar(11) DEFAULT NULL,
  `IdCiuDestino` int(11) DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `FhEntregaMercancia` datetime DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `KilosVolumen` int(11) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  `IdFactura` int(11) DEFAULT NULL,
  `IdDespacho` int(11) DEFAULT NULL,
  `Observaciones` varchar(200) DEFAULT NULL,
  `COIng` smallint(6) DEFAULT NULL,
  `Cuenta` varchar(11) DEFAULT NULL,
  `Cliente` varchar(60) DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  `EmpaqueRef` varchar(70) DEFAULT NULL,
  `RelCliente` varchar(30) DEFAULT NULL,
  `IdCiuOrigen` int(11) DEFAULT NULL,
  `IdRelEntrega` int(11) DEFAULT NULL,
  `FhDescargada` datetime DEFAULT NULL,
  `IdFactura2` int(11) DEFAULT NULL,
  `IdFactura3` int(11) DEFAULT NULL,
  `Despachada` tinyint(4) DEFAULT NULL,
  `TpServicio` tinyint(4) DEFAULT NULL,
  `IdTpCtaFlete` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejo` tinyint(4) DEFAULT NULL,
  `CPorte` tinyint(4) DEFAULT NULL,
  `Entregada` tinyint(4) DEFAULT '0',
  `Descargada` tinyint(4) DEFAULT '0',
  `Anulada` tinyint(4) DEFAULT NULL,
  `GuiFac` tinyint(4) DEFAULT NULL,
  `Facturada` tinyint(1) DEFAULT NULL,
  `Facturada2` tinyint(4) NOT NULL DEFAULT '0',
  `Facturada3` tinyint(1) DEFAULT '0',
  `IdUsuario` int(11) DEFAULT NULL,
  `IdPlanillaFactura` int(11) DEFAULT NULL,
  `IdEmpresa` smallint(6) DEFAULT NULL,
  `Relacionada` tinyint(4) DEFAULT '0',
  `EnNovedad` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`Guia`),
  KEY `IdCiuDestino` (`IdCiuDestino`),
  KEY `IdRuta` (`IdRuta`),
  KEY `IdCliente` (`IdCliente`),
  KEY `Cuenta` (`Cuenta`),
  KEY `IdDespacho` (`IdDespacho`),
  KEY `DocCliente` (`DocCliente`),
  KEY `IdPlanillaFactura` (`IdPlanillaFactura`),
  KEY `IdCiuOrigen` (`IdCiuOrigen`),
  CONSTRAINT `guias_fk` FOREIGN KEY (`IdCiuDestino`) REFERENCES `ciudades` (`IdCiudad`),
  CONSTRAINT `guias_fk1` FOREIGN KEY (`IdRuta`) REFERENCES `rutas` (`IdRuta`),
  CONSTRAINT `guias_fk2` FOREIGN KEY (`Cuenta`) REFERENCES `terceros` (`IDTercero`),
  CONSTRAINT `guias_fk3` FOREIGN KEY (`IdCliente`) REFERENCES `negociaciones` (`Id`),
  CONSTRAINT `guias_fk4` FOREIGN KEY (`IdDespacho`) REFERENCES `despachos` (`OrdDespacho`),
  CONSTRAINT `guias_fk5` FOREIGN KEY (`IdCiuOrigen`) REFERENCES `ciudades` (`IdCiudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `guias_imp` */

DROP TABLE IF EXISTS `guias_imp`;

CREATE TABLE `guias_imp` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Remitente` varchar(150) DEFAULT NULL,
  `Relacion` varchar(50) DEFAULT NULL,
  `Documento` varchar(50) DEFAULT NULL,
  `NmDestinatario` varchar(100) DEFAULT NULL,
  `DirDestinatario` varchar(100) DEFAULT NULL,
  `TelDestinatario` varchar(20) DEFAULT NULL,
  `IdOrigen` int(11) DEFAULT NULL,
  `IdDestino` int(11) DEFAULT NULL,
  `Observaciones` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 22528 kB';

/*Table structure for table `informacionempresa` */

DROP TABLE IF EXISTS `informacionempresa`;

CREATE TABLE `informacionempresa` (
  `Id` int(11) DEFAULT NULL,
  `Nit` varchar(12) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Direccion` varchar(80) DEFAULT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  `Logo` mediumblob,
  `NroPoliza` varchar(20) DEFAULT NULL,
  `NitAseguradora` decimal(11,0) DEFAULT NULL,
  `VencePoliza` date DEFAULT NULL,
  `DireccionTerritorial` varchar(3) DEFAULT NULL,
  `Email` int(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `lineas` */

DROP TABLE IF EXISTS `lineas`;

CREATE TABLE `lineas` (
  `IdLinea` int(11) DEFAULT NULL,
  `IdMarca` int(11) DEFAULT NULL,
  `Linea` varchar(8) DEFAULT NULL,
  `NmLinea` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `listasprecios` */

DROP TABLE IF EXISTS `listasprecios`;

CREATE TABLE `listasprecios` (
  `IdListaPrecios` int(11) NOT NULL AUTO_INCREMENT,
  `NmListaPrecios` varchar(50) DEFAULT NULL,
  `FhVencimiento` date DEFAULT NULL,
  PRIMARY KEY (`IdListaPrecios`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

/*Table structure for table `listaspreciosciudades` */

DROP TABLE IF EXISTS `listaspreciosciudades`;

CREATE TABLE `listaspreciosciudades` (
  `IdListaPrecios` int(11) NOT NULL,
  `IdCiudad` int(11) NOT NULL,
  `IdProducto` int(11) NOT NULL,
  `VrKilo` double(15,3) DEFAULT NULL,
  `VrUnidad` double(15,3) DEFAULT NULL,
  `VrTonelada` double(15,3) DEFAULT NULL,
  `KTope` double(15,3) DEFAULT NULL,
  `VrKTope` double(15,3) DEFAULT NULL,
  `VrKAdicional` double(15,3) DEFAULT NULL,
  PRIMARY KEY (`IdListaPrecios`,`IdCiudad`,`IdProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `mangenerados` */

DROP TABLE IF EXISTS `mangenerados`;

CREATE TABLE `mangenerados` (
  `OrdDespacho` int(11) NOT NULL,
  `ManManifiesto` varchar(30) DEFAULT NULL,
  `Usuario` varchar(50) DEFAULT NULL,
  `Fecha` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`OrdDespacho`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `marcas` */

DROP TABLE IF EXISTS `marcas`;

CREATE TABLE `marcas` (
  `IdMarca` int(11) DEFAULT NULL,
  `NmMarca` varchar(50) DEFAULT NULL,
  `CodMinTrans` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `margenes_rentabilidad_ruta` */

DROP TABLE IF EXISTS `margenes_rentabilidad_ruta`;

CREATE TABLE `margenes_rentabilidad_ruta` (
  `Id` smallint(6) DEFAULT NULL,
  `IdRuta` smallint(6) DEFAULT NULL,
  `Peso` smallint(6) DEFAULT NULL,
  `Margen` double DEFAULT NULL,
  `FleteStd` double DEFAULT NULL,
  `Comentarios` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `monitoreo_acompañamiento` */

DROP TABLE IF EXISTS `monitoreo_acompañamiento`;

CREATE TABLE `monitoreo_acompañamiento` (
  `IdAcompañamiento` int(11) NOT NULL AUTO_INCREMENT,
  `IdMonitoreo` int(11) DEFAULT NULL,
  `IdEscolta` int(11) DEFAULT NULL,
  `VrAcompañamiento` double(15,3) DEFAULT NULL,
  `ComentariosAcompañamiento` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`IdAcompañamiento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `monitoreocontrolpost` */

DROP TABLE IF EXISTS `monitoreocontrolpost`;

CREATE TABLE `monitoreocontrolpost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDMonitoreo` int(11) DEFAULT NULL,
  `IDControlPost` int(11) DEFAULT NULL,
  `FhHrReporte` datetime DEFAULT NULL,
  `Notas` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDControlPost` (`IDControlPost`),
  KEY `IDMonitoreo` (`IDMonitoreo`),
  CONSTRAINT `monitoreocontrolpost_fk` FOREIGN KEY (`IDControlPost`) REFERENCES `controlpost` (`IdControlPost`),
  CONSTRAINT `monitoreocontrolpost_fk1` FOREIGN KEY (`IDMonitoreo`) REFERENCES `monitoreovehiculos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `monitoreovehiculos` */

DROP TABLE IF EXISTS `monitoreovehiculos`;

CREATE TABLE `monitoreovehiculos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Orden` int(11) DEFAULT '0',
  `Tipo` tinyint(4) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  `Ok` varchar(50) DEFAULT '0',
  `FhHrSalida` datetime DEFAULT NULL,
  `Vehiculo` varchar(6) DEFAULT NULL,
  `Destino` varchar(100) DEFAULT NULL,
  `UltReporte` datetime DEFAULT NULL,
  `Frecuencia` int(11) DEFAULT '0',
  `EnNovedad` tinyint(4) DEFAULT '0',
  `SinMonitoreo` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `mvtoguias` */

DROP TABLE IF EXISTS `mvtoguias`;

CREATE TABLE `mvtoguias` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Guia` int(11) DEFAULT NULL,
  `IdProducto` smallint(6) DEFAULT NULL,
  `IdEmpaque` smallint(6) DEFAULT NULL,
  `Largo` smallint(6) DEFAULT NULL,
  `Ancho` smallint(6) DEFAULT NULL,
  `Altura` smallint(6) DEFAULT NULL,
  `KilosReal` int(11) DEFAULT NULL,
  `KilosVol` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `Cant` smallint(6) DEFAULT NULL,
  `VlrFlete` double DEFAULT NULL,
  `Lote` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Guia` (`Guia`)
) ENGINE=InnoDB AUTO_INCREMENT=1745 DEFAULT CHARSET=latin1;

/*Table structure for table `negociaciones` */

DROP TABLE IF EXISTS `negociaciones`;

CREATE TABLE `negociaciones` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NmNegociacion` varchar(80) DEFAULT NULL,
  `Minimos` smallint(6) DEFAULT NULL,
  `MinUniManejo` double DEFAULT NULL,
  `MinDesManejo` double(15,3) DEFAULT NULL,
  `KilosMinUnidad` double(15,3) DEFAULT '0.000',
  `KilosMinDespacho` double(15,3) DEFAULT '0.000',
  `ManKilo` bit(1) DEFAULT NULL,
  `DctoK` double DEFAULT NULL,
  `ManUni` bit(1) DEFAULT NULL,
  `DctoU` double DEFAULT NULL,
  `ManAdicional` bit(1) DEFAULT NULL,
  `PorManejo` double DEFAULT NULL,
  `ListaPrecios` int(11) DEFAULT NULL,
  `HorarioRecoge` time DEFAULT NULL,
  `DirBodega` varchar(80) DEFAULT NULL,
  `IdRutaRecogida` int(11) DEFAULT NULL,
  `EncargadoRec` varchar(50) DEFAULT NULL,
  `Recoge` bit(1) DEFAULT NULL,
  `Plazo` smallint(6) DEFAULT NULL,
  `CupoCredito` double DEFAULT NULL,
  `Observaciones` varchar(255) DEFAULT NULL,
  `FecIng` datetime DEFAULT NULL,
  `DctoPieFac` double DEFAULT NULL,
  `DctoProPag` double DEFAULT NULL,
  `AntesDe` smallint(6) DEFAULT NULL,
  `TpCtaFleCor` bit(1) DEFAULT NULL,
  `TpCtaFleCon` bit(1) DEFAULT NULL,
  `TpCtaConFleEnt` bit(1) DEFAULT NULL,
  `TpCtaSinFlete` bit(1) DEFAULT NULL,
  `TpCtaManCtaCor` bit(1) DEFAULT NULL,
  `TpCtaManCon` bit(1) DEFAULT NULL,
  `TpCtaManCtraEnt` bit(1) DEFAULT NULL,
  `TpCtaSinManejo` int(11) DEFAULT NULL,
  `CartaPorte` tinyint(4) DEFAULT NULL,
  `Inactivo` bit(1) DEFAULT NULL,
  `ManPaqueteo` bit(1) DEFAULT NULL,
  `ManSemiMasivo` bit(1) DEFAULT NULL,
  `ManMasivo` bit(1) DEFAULT NULL,
  `ManLocal` bit(1) DEFAULT NULL,
  `ManEncomiendas` bit(1) DEFAULT NULL,
  `PermiteRecaudo` bit(1) DEFAULT NULL,
  `PermiteListaGral` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `negociaciones_terceros` */

DROP TABLE IF EXISTS `negociaciones_terceros`;

CREATE TABLE `negociaciones_terceros` (
  `IdTercero` varchar(11) NOT NULL,
  `IdNegociacion` int(11) NOT NULL,
  `Activo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`IdTercero`,`IdNegociacion`),
  KEY `IdTercero` (`IdTercero`),
  KEY `IdNegociacion` (`IdNegociacion`),
  CONSTRAINT `negociaciones_terceros_fk` FOREIGN KEY (`IdTercero`) REFERENCES `terceros` (`IDTercero`),
  CONSTRAINT `negociaciones_terceros_fk1` FOREIGN KEY (`IdNegociacion`) REFERENCES `negociaciones` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `novedades` */

DROP TABLE IF EXISTS `novedades`;

CREATE TABLE `novedades` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Guia` int(11) DEFAULT NULL,
  `IdNovedad` smallint(6) DEFAULT NULL,
  `Comentarios` mediumtext,
  `UsuIng` int(11) DEFAULT NULL,
  `FHIngreso` datetime DEFAULT NULL,
  `FhNovedad` datetime DEFAULT NULL,
  `Solucion` mediumtext,
  `UsuSol` int(11) DEFAULT NULL,
  `FhSolucion` datetime DEFAULT NULL,
  `Solucionada` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Guia` (`Guia`),
  CONSTRAINT `novedades_fk` FOREIGN KEY (`Guia`) REFERENCES `guias` (`Guia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `novedadesmonitoreo` */

DROP TABLE IF EXISTS `novedadesmonitoreo`;

CREATE TABLE `novedadesmonitoreo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IdMonitoreo` int(11) DEFAULT NULL,
  `IdNovedad` smallint(6) DEFAULT NULL,
  `Comentarios` mediumtext,
  `UsuIng` int(11) DEFAULT NULL,
  `FhIngreso` datetime DEFAULT NULL,
  `FhNovedad` datetime DEFAULT NULL,
  `Solucion` mediumtext,
  `UsuSol` int(11) DEFAULT NULL,
  `FhSolucion` datetime DEFAULT NULL,
  `Solucionada` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `parametrizacionliquidaciones` */

DROP TABLE IF EXISTS `parametrizacionliquidaciones`;

CREATE TABLE `parametrizacionliquidaciones` (
  `RteFte` double DEFAULT NULL,
  `RteFteMayor` double DEFAULT NULL,
  `IndCom` double DEFAULT NULL,
  `DctoPapeleria` double(15,3) DEFAULT '0.000',
  `Estampilla` double(15,3) DEFAULT '0.000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `permisos` */

DROP TABLE IF EXISTS `permisos`;

CREATE TABLE `permisos` (
  `IdUsuario` int(11) NOT NULL,
  `IdFormulario` int(11) NOT NULL,
  `Ingreso` tinyint(4) DEFAULT NULL,
  `Nuevo` tinyint(4) DEFAULT NULL,
  `Editar` tinyint(4) DEFAULT NULL,
  `Eliminar` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`IdUsuario`,`IdFormulario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 6144 kB';

/*Table structure for table `permisosespeciales` */

DROP TABLE IF EXISTS `permisosespeciales`;

CREATE TABLE `permisosespeciales` (
  `IdPermiso` int(11) NOT NULL AUTO_INCREMENT,
  `NmPermiso` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`IdPermiso`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 8192 kB; InnoDB free: 6144 kB';

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `IdProducto` smallint(6) NOT NULL AUTO_INCREMENT,
  `NmProducto` varchar(50) DEFAULT NULL,
  `CodMinTrans` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

/*Table structure for table `recibos` */

DROP TABLE IF EXISTS `recibos`;

CREATE TABLE `recibos` (
  `NroRecibo` int(11) DEFAULT NULL,
  `FechaRecibo` datetime DEFAULT NULL,
  `GuiaRecibo` int(11) NOT NULL,
  `Flete` double(15,3) DEFAULT NULL,
  `Manejo` double(15,3) DEFAULT NULL,
  `Anulado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`GuiaRecibo`),
  CONSTRAINT `recibos_fk` FOREIGN KEY (`GuiaRecibo`) REFERENCES `guias` (`Guia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `recibos_cartera` */

DROP TABLE IF EXISTS `recibos_cartera`;

CREATE TABLE `recibos_cartera` (
  `IdRecibo` int(11) NOT NULL,
  `Fecha` datetime DEFAULT NULL,
  `IdTercero` int(11) DEFAULT NULL,
  `ValorRecibo` double(15,3) DEFAULT NULL,
  PRIMARY KEY (`IdRecibo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `redespachos` */

DROP TABLE IF EXISTS `redespachos`;

CREATE TABLE `redespachos` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Guia` int(11) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL,
  `IdDespacho` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IdDespacho` (`IdDespacho`),
  KEY `IdUsuario` (`IdUsuario`),
  CONSTRAINT `redespachos_fk` FOREIGN KEY (`IdUsuario`) REFERENCES `usuarios` (`IDUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `registro_envios_email` */

DROP TABLE IF EXISTS `registro_envios_email`;

CREATE TABLE `registro_envios_email` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Guia` int(11) DEFAULT NULL,
  `FechaEnvio` datetime DEFAULT NULL,
  `MailEnvio` varchar(150) DEFAULT NULL,
  `MailDestino` varchar(150) DEFAULT NULL,
  `Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `relentregadoc` */

DROP TABLE IF EXISTS `relentregadoc`;

CREATE TABLE `relentregadoc` (
  `IDRel` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `IdTercero` varchar(11) DEFAULT NULL,
  `Comentarios` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`IDRel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 22528 kB';

/*Table structure for table `relentregadocdet` */

DROP TABLE IF EXISTS `relentregadocdet`;

CREATE TABLE `relentregadocdet` (
  `IdRelacion` int(11) NOT NULL,
  `Guia` int(11) NOT NULL,
  PRIMARY KEY (`IdRelacion`,`Guia`),
  UNIQUE KEY `Guia` (`Guia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 22528 kB';

/*Table structure for table `remitentes` */

DROP TABLE IF EXISTS `remitentes`;

CREATE TABLE `remitentes` (
  `IdRemitente` varchar(11) DEFAULT NULL,
  `NmRemitente` varchar(60) DEFAULT NULL,
  `DirRemitente` varchar(50) DEFAULT NULL,
  `TelRemitente` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `reportes` */

DROP TABLE IF EXISTS `reportes`;

CREATE TABLE `reportes` (
  `IdReporte` int(11) DEFAULT NULL,
  `Tipo` varchar(2) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Ruta` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `rutas` */

DROP TABLE IF EXISTS `rutas`;

CREATE TABLE `rutas` (
  `IdRuta` int(11) NOT NULL AUTO_INCREMENT,
  `NmRuta` varchar(50) DEFAULT NULL,
  UNIQUE KEY `Id` (`IdRuta`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `rutas_caracterizadas` */

DROP TABLE IF EXISTS `rutas_caracterizadas`;

CREATE TABLE `rutas_caracterizadas` (
  `CODIGORUTA` int(11) NOT NULL,
  `CIUD_ORIGEN` varchar(9) DEFAULT NULL,
  `CIUD_DESTINO` varchar(9) DEFAULT NULL,
  `NOMBRE` varchar(100) DEFAULT NULL,
  `KILOMETROS` int(11) DEFAULT NULL,
  PRIMARY KEY (`CODIGORUTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `rutas_ciudades` */

DROP TABLE IF EXISTS `rutas_ciudades`;

CREATE TABLE `rutas_ciudades` (
  `IdRuta` int(11) NOT NULL,
  `IdCiudad` int(11) NOT NULL,
  `Orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdRuta`,`IdCiudad`),
  KEY `IdCiudad` (`IdCiudad`),
  KEY `IdRuta` (`IdRuta`),
  CONSTRAINT `rutas_ciudades_fk` FOREIGN KEY (`IdCiudad`) REFERENCES `ciudades` (`IdCiudad`),
  CONSTRAINT `rutas_ciudades_fk1` FOREIGN KEY (`IdRuta`) REFERENCES `rutas` (`IdRuta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `rutas_referencia` */

DROP TABLE IF EXISTS `rutas_referencia`;

CREATE TABLE `rutas_referencia` (
  `codigoRuta` int(11) NOT NULL,
  `codigoOrigen` varchar(9) DEFAULT NULL,
  `codigoDestino` varchar(9) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `kilometros` int(11) DEFAULT NULL,
  `valorxTonelada` double(15,3) DEFAULT NULL,
  PRIMARY KEY (`codigoRuta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `rutasurbanas` */

DROP TABLE IF EXISTS `rutasurbanas`;

CREATE TABLE `rutasurbanas` (
  `IdRutaRec` int(11) DEFAULT NULL,
  `NmRuta` varchar(70) DEFAULT NULL,
  `CO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `sql_im_pend_desp2` */

DROP TABLE IF EXISTS `sql_im_pend_desp2`;

CREATE TABLE `sql_im_pend_desp2` (
  `Guia` int(11) DEFAULT NULL,
  `CR` smallint(6) DEFAULT NULL,
  `Remitente` varchar(50) DEFAULT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `DocCliente` varchar(15) DEFAULT NULL,
  `NmDestinatario` varchar(50) DEFAULT NULL,
  `DirDestinatario` varchar(50) DEFAULT NULL,
  `TelDestinatario` varchar(11) DEFAULT NULL,
  `IdCiuDestino` int(11) DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `FhEntregaMercancia` datetime DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `KilosVolumen` int(11) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  `IdFactura` int(11) DEFAULT NULL,
  `IdDespacho` int(11) DEFAULT NULL,
  `Observaciones` varchar(200) DEFAULT NULL,
  `COIng` smallint(6) DEFAULT NULL,
  `Cuenta` varchar(11) DEFAULT NULL,
  `Cliente` varchar(60) DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  `TpServicio` tinyint(4) DEFAULT NULL,
  `IdTpCtaFlete` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejo` tinyint(4) DEFAULT NULL,
  `CPorte` tinyint(4) DEFAULT NULL,
  `Entregada` tinyint(4) DEFAULT NULL,
  `Descargada` tinyint(4) DEFAULT NULL,
  `FhDescargada` datetime DEFAULT NULL,
  `NmRuta` varchar(50) DEFAULT NULL,
  `NmCiudad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `sql_im_pendescargar2` */

DROP TABLE IF EXISTS `sql_im_pendescargar2`;

CREATE TABLE `sql_im_pendescargar2` (
  `Guia` int(11) DEFAULT NULL,
  `CR` smallint(6) DEFAULT NULL,
  `Remitente` varchar(50) DEFAULT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `DocCliente` varchar(15) DEFAULT NULL,
  `NmDestinatario` varchar(50) DEFAULT NULL,
  `DirDestinatario` varchar(50) DEFAULT NULL,
  `TelDestinatario` varchar(11) DEFAULT NULL,
  `IdCiuDestino` int(11) DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `FhEntregaMercancia` datetime DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `KilosVolumen` int(11) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  `IdFactura` int(11) DEFAULT NULL,
  `IdDespacho` int(11) DEFAULT NULL,
  `Observaciones` varchar(200) DEFAULT NULL,
  `COIng` smallint(6) DEFAULT NULL,
  `Cuenta` varchar(11) DEFAULT NULL,
  `Cliente` varchar(60) DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  `EmpaqueRef` varchar(40) DEFAULT NULL,
  `RelCliente` varchar(30) DEFAULT NULL,
  `TpServicio` tinyint(4) DEFAULT NULL,
  `IdTpCtaFlete` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejo` tinyint(4) DEFAULT NULL,
  `CPorte` tinyint(4) DEFAULT NULL,
  `Entregada` tinyint(4) DEFAULT NULL,
  `Descargada` tinyint(4) DEFAULT NULL,
  `FhDescargada` datetime DEFAULT NULL,
  `Despachada` tinyint(4) DEFAULT NULL,
  `Anulada` tinyint(4) DEFAULT NULL,
  `GuiFac` tinyint(4) DEFAULT NULL,
  `Facturada` tinyint(1) DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL,
  `IdPlanillaFactura` int(11) DEFAULT NULL,
  `NmCiudad` varchar(50) DEFAULT NULL,
  `IdVehiculo` varchar(10) DEFAULT NULL,
  `IdConductor` varchar(11) DEFAULT NULL,
  `NmConductor` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `sql_im_rel_guias_desp2` */

DROP TABLE IF EXISTS `sql_im_rel_guias_desp2`;

CREATE TABLE `sql_im_rel_guias_desp2` (
  `Guia` int(11) DEFAULT NULL,
  `DocCliente` varchar(15) DEFAULT NULL,
  `NmDestinatario` varchar(50) DEFAULT NULL,
  `IdCiuDestino` int(11) DEFAULT NULL,
  `NmCiudad` varchar(50) DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `KilosVolumen` int(11) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  `IdDespacho` int(11) DEFAULT NULL,
  `COIng` smallint(6) DEFAULT NULL,
  `Cuenta` varchar(11) DEFAULT NULL,
  `Cliente` varchar(60) DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  `TpServicio` tinyint(4) DEFAULT NULL,
  `Anulada` tinyint(4) DEFAULT NULL,
  `FhExpedicion` datetime DEFAULT NULL,
  `IdVehiculo` varchar(10) DEFAULT NULL,
  `IdConductor` varchar(11) DEFAULT NULL,
  `Remesas` int(11) DEFAULT NULL,
  `UnidadesDespacho` int(11) DEFAULT NULL,
  `KRDespacho` int(11) DEFAULT NULL,
  `VrFleteDespacho` double DEFAULT NULL,
  `VrAnticipo` double DEFAULT NULL,
  `Observaciones` varchar(254) DEFAULT NULL,
  `TRecaudo` double DEFAULT NULL,
  `TotalViaje` double DEFAULT NULL,
  `FIELD_1` varchar(92) DEFAULT NULL,
  `VrDctoIndCom` double DEFAULT NULL,
  `VrDctoRteFte` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `sql_im_relguiasclientes` */

DROP TABLE IF EXISTS `sql_im_relguiasclientes`;

CREATE TABLE `sql_im_relguiasclientes` (
  `Guia` int(11) DEFAULT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `DocCliente` varchar(15) DEFAULT NULL,
  `NmDestinatario` varchar(50) DEFAULT NULL,
  `NmCiudad` varchar(50) DEFAULT NULL,
  `IdCiuDestino` int(11) DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `IdFactura` int(11) DEFAULT NULL,
  `IdDespacho` int(11) DEFAULT NULL,
  `Cuenta` varchar(11) DEFAULT NULL,
  `Cliente` varchar(60) DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `RelCliente` varchar(30) DEFAULT NULL,
  `TpServicio` tinyint(4) DEFAULT NULL,
  `IdTpCtaFlete` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejo` tinyint(4) DEFAULT NULL,
  `Entregada` tinyint(4) DEFAULT NULL,
  `Descargada` tinyint(4) DEFAULT NULL,
  `FhDescargada` datetime DEFAULT NULL,
  `Despachada` tinyint(4) DEFAULT NULL,
  `Anulada` tinyint(4) DEFAULT NULL,
  `Facturada` tinyint(1) DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL,
  `IdPlanillaFactura` int(11) DEFAULT NULL,
  `FhEntregaMercancia` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `sql_im_relguiasplanilla2` */

DROP TABLE IF EXISTS `sql_im_relguiasplanilla2`;

CREATE TABLE `sql_im_relguiasplanilla2` (
  `Guia` int(11) DEFAULT NULL,
  `DocCliente` varchar(15) DEFAULT NULL,
  `NmDestinatario` varchar(50) DEFAULT NULL,
  `NmCiudad` varchar(50) DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `IdFactura` int(11) DEFAULT NULL,
  `Cliente` varchar(60) DEFAULT NULL,
  `Anulada` tinyint(4) DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `IdPlanillaFactura` int(11) DEFAULT NULL,
  `RelCliente` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `sql_im_rutas` */

DROP TABLE IF EXISTS `sql_im_rutas`;

CREATE TABLE `sql_im_rutas` (
  `IdRuta` int(11) DEFAULT NULL,
  `NmRuta` varchar(50) DEFAULT NULL,
  `IdCiudad` int(11) DEFAULT NULL,
  `NmCiudad` varchar(50) DEFAULT NULL,
  `Ord` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `sql_im_ventascontado1` */

DROP TABLE IF EXISTS `sql_im_ventascontado1`;

CREATE TABLE `sql_im_ventascontado1` (
  `Guia` int(11) DEFAULT NULL,
  `DocCliente` varchar(15) DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `KilosVolumen` int(11) DEFAULT NULL,
  `COIng` smallint(6) DEFAULT NULL,
  `Cuenta` varchar(11) DEFAULT NULL,
  `Cliente` varchar(60) DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `TpServicio` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejo` tinyint(4) DEFAULT NULL,
  `IdTpCtaFlete` tinyint(4) DEFAULT NULL,
  `GuiFac` tinyint(4) DEFAULT NULL,
  `Anulada` tinyint(4) DEFAULT NULL,
  `NmDestinatario` varchar(50) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  `Manejo` double(15,3) DEFAULT NULL,
  `Flete` double(15,3) DEFAULT NULL,
  `NroRecibo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `sql_lp_listaprecios` */

DROP TABLE IF EXISTS `sql_lp_listaprecios`;

CREATE TABLE `sql_lp_listaprecios` (
  `IdListaPrecios` int(11) DEFAULT NULL,
  `IdCiudad` int(11) DEFAULT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  `VrKilo` double(15,3) DEFAULT NULL,
  `VrUnidad` double(15,3) DEFAULT NULL,
  `VrTonelada` double(15,3) DEFAULT NULL,
  `KTope` double(15,3) DEFAULT NULL,
  `VrKTope` double(15,3) DEFAULT NULL,
  `VrKAdicional` double(15,3) DEFAULT NULL,
  `NmCiudad` varchar(50) DEFAULT NULL,
  `NmListaPrecios` varchar(50) DEFAULT NULL,
  `NmProducto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `temprecios` */

DROP TABLE IF EXISTS `temprecios`;

CREATE TABLE `temprecios` (
  `Id` double(15,3) NOT NULL,
  `IdListaPrecios` int(11) NOT NULL,
  `IdCiudad` int(11) NOT NULL,
  `IdProducto` int(11) NOT NULL,
  `VrKilo` double(15,3) DEFAULT NULL,
  `VrUnidad` double(15,3) DEFAULT NULL,
  `VrTonelada` double(15,3) DEFAULT NULL,
  `KTope` double(15,3) DEFAULT NULL,
  `VrKTope` double(15,3) DEFAULT NULL,
  `VrKAdicional` double(15,3) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `terceros` */

DROP TABLE IF EXISTS `terceros`;

CREATE TABLE `terceros` (
  `IDTercero` varchar(11) NOT NULL,
  `TpDoc` varchar(1) DEFAULT NULL,
  `RazonSocial` varchar(100) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido1` varchar(20) DEFAULT NULL,
  `Apellido2` varchar(20) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Telefono` varchar(11) DEFAULT NULL,
  `IdCiudad` smallint(6) DEFAULT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Inactivo` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`IDTercero`),
  KEY `IDTercero` (`IDTercero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tiposdespacho` */

DROP TABLE IF EXISTS `tiposdespacho`;

CREATE TABLE `tiposdespacho` (
  `IdTipo` tinyint(4) DEFAULT NULL,
  `NmTipo` varchar(15) DEFAULT NULL,
  `Comentarios` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tpcuentas` */

DROP TABLE IF EXISTS `tpcuentas`;

CREATE TABLE `tpcuentas` (
  `IdTpCuenta` int(11) NOT NULL,
  `NmTpCuenta` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IdTpCuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tramos_ruta` */

DROP TABLE IF EXISTS `tramos_ruta`;

CREATE TABLE `tramos_ruta` (
  `ID` int(11) NOT NULL,
  `CODIGORUTA` int(11) DEFAULT NULL,
  `SECUENCIAOD` int(11) DEFAULT NULL,
  `CIUDAD` varchar(9) DEFAULT NULL,
  `NOMBRE` varchar(100) DEFAULT NULL,
  `KILOMETROSTRAMO` int(11) DEFAULT NULL,
  `KILOMETROSTOTAL` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `transacciones` */

DROP TABLE IF EXISTS `transacciones`;

CREATE TABLE `transacciones` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Modulo` varchar(50) NOT NULL,
  `Transaccion` varchar(100) NOT NULL,
  `IdUsuario` int(11) NOT NULL,
  `FleteViejo` double NOT NULL,
  `ManejoViejo` double NOT NULL,
  `FleteNuevo` double NOT NULL,
  `ManejoNuevo` double NOT NULL,
  `DeclaradoViejo` double NOT NULL,
  `DeclaradoNuevo` double NOT NULL,
  `Comentarios` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `IDUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `NmUsuario` varchar(50) DEFAULT NULL,
  `Contraseña` varchar(15) DEFAULT NULL,
  `ModMovimiento` tinyint(4) DEFAULT '0',
  `ModMonitoreo` tinyint(4) DEFAULT '0',
  `ModFacturacion` tinyint(4) DEFAULT '0',
  `ModRecogidas` tinyint(4) DEFAULT '0',
  `ModVehiculos` tinyint(4) DEFAULT '0',
  `ModDatosBasicos` tinyint(4) DEFAULT '0',
  `Inactivo` tinyint(4) DEFAULT '0',
  `UsuarioMail` varchar(100) DEFAULT NULL,
  `ClaveMail` varchar(30) DEFAULT NULL,
  `RemiteMail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

/*Table structure for table `usuariospermisos` */

DROP TABLE IF EXISTS `usuariospermisos`;

CREATE TABLE `usuariospermisos` (
  `Usuario` varchar(30) NOT NULL,
  `Permiso` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `usupermisosesp` */

DROP TABLE IF EXISTS `usupermisosesp`;

CREATE TABLE `usupermisosesp` (
  `Idusuario` int(11) NOT NULL,
  `IdPermiso` int(11) NOT NULL,
  PRIMARY KEY (`Idusuario`,`IdPermiso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 8192 kB; InnoDB free: 6144 kB';

/*Table structure for table `vehiculos` */

DROP TABLE IF EXISTS `vehiculos`;

CREATE TABLE `vehiculos` (
  `IdPlaca` varchar(10) NOT NULL,
  `PlacaRemolque` varchar(6) DEFAULT NULL,
  `Modelo` varchar(4) DEFAULT NULL,
  `ModeloRep` varchar(4) DEFAULT NULL,
  `Motor` varchar(20) DEFAULT NULL,
  `NroEjes` varchar(2) DEFAULT NULL,
  `Chasis` varchar(20) DEFAULT NULL,
  `Serie` varchar(50) DEFAULT NULL,
  `PesoVacio` varchar(6) DEFAULT NULL,
  `Capkilos` varchar(6) DEFAULT NULL,
  `CapVol` varchar(6) DEFAULT NULL,
  `Cel` varchar(12) DEFAULT NULL,
  `RegNalCarga` varchar(20) DEFAULT NULL,
  `IdAseguradora` varchar(10) DEFAULT NULL,
  `Soat` varchar(20) DEFAULT NULL,
  `IdAfiliadora` varchar(11) DEFAULT NULL,
  `TOperacion` varchar(20) DEFAULT NULL,
  `IdTenedor` varchar(11) DEFAULT NULL,
  `IdPropietario` varchar(11) DEFAULT NULL,
  `Comentarios` varchar(500) DEFAULT NULL,
  `IdMarca` smallint(6) DEFAULT NULL,
  `IdColor` smallint(6) DEFAULT NULL,
  `IdLinea` smallint(6) DEFAULT NULL,
  `IdCarroceria` smallint(6) DEFAULT NULL,
  `VehConfiguracion` varchar(4) DEFAULT NULL,
  `VenceSoat` date DEFAULT NULL,
  `VenceTOperacion` date DEFAULT NULL,
  `RevFisicoMec` tinyint(4) DEFAULT NULL,
  `Inactivo` tinyint(4) DEFAULT '0',
  `FhIngreso` datetime DEFAULT NULL,
  `ImagenVehiculo` varchar(1000) DEFAULT NULL,
  `TipoCombustible` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`IdPlaca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `vehiculosrecogida` */

DROP TABLE IF EXISTS `vehiculosrecogida`;

CREATE TABLE `vehiculosrecogida` (
  `IdAsignacion` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `Placa` varchar(50) DEFAULT NULL,
  `Flete` double DEFAULT NULL,
  `Rec` int(11) DEFAULT NULL,
  `Pend` int(11) DEFAULT NULL,
  `Unidades` decimal(19,0) DEFAULT NULL,
  `KilosReales` decimal(19,0) DEFAULT NULL,
  `KilosVol` decimal(19,0) DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `Notas` mediumtext,
  `Coperaciones` smallint(6) DEFAULT NULL,
  `UltOrden` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdAsignacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `zonas` */

DROP TABLE IF EXISTS `zonas`;

CREATE TABLE `zonas` (
  `IdZona` int(11) DEFAULT NULL,
  `NmZona` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `spAseguradora` */

/*!50003 DROP PROCEDURE IF EXISTS  `spAseguradora` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `spAseguradora`(IN FhInicio DATE)
BEGIN
  select
    `despachos`.`IdVehiculo` AS `IdVehiculo`,
    count(`despachos`.`OrdDespacho`) AS `CuentaDeOrdDespacho`,
    `vehiculos`.`Modelo` AS `Modelo`,
    `vehiculos`.`Serie` AS `Serie`,
    concat(`propietario`.`Nombre`,
    _latin1' ',`propietario`.`Apellido1`,_latin1' ',`propietario`.`Apellido2`) AS `NmPropietario`,concat(`tenedor`.`Nombre`,_latin1' ',`tenedor`.`Apellido1`,_latin1' ',`tenedor`.`Apellido2`) AS `NmTenedor`,sum(`despachos`.`Unidades`) AS `TUnidades`,sum(`despachos`.`KilosReales`) AS `TKilosReales`,sum(`despachos`.`Remesas`) AS `TRemesas` from (((`despachos` left join `vehiculos` on((`despachos`.`IdVehiculo` = `vehiculos`.`IdPlaca`))) left join `terceros` `propietario` on((`vehiculos`.`IdPropietario` = `propietario`.`IDTercero`))) left join `terceros` `tenedor` on((`vehiculos`.`IdTenedor` = `tenedor`.`IDTercero`))) where (`despachos`.`FhExpedicion` >= _latin1'2010-06-01')
  group by
    `despachos`.`IdVehiculo`,
    `vehiculos`.`Modelo`,
    `vehiculos`.`Serie`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spConsultarPermisosUsuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `spConsultarPermisosUsuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `spConsultarPermisosUsuario`()
BEGIN
SELECT
  `Usuario` as idUsuario,
  `Permiso` as Permiso
FROM
  `usuariospermisos`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spDatosConductor` */

/*!50003 DROP PROCEDURE IF EXISTS  `spDatosConductor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `spDatosConductor`(IN CedulaConductor INTEGER(11))
BEGIN
select
    `conductores`.`TpIdConductor` AS `Pertipid`,
    `conductores`.`IdConductor` AS `Periden`,
    `conductores`.`Apellido1` AS `perapell1`,
    `conductores`.`Apellido2` AS `perapell2`,
    `conductores`.`Nombre` AS `pernombre`,
    `conductores`.`TelConductor` AS `pertelefono`,
    `conductores`.`Direccion` AS `perdireccion`,
    `ciudades`.`CodMinTrans` AS `perciudad`,
    concat(`conductores`.`Categoria`,'-', `conductores`.`LicenciaConductor`) AS `percateglice`
  from
    (`ciudades` join `conductores` on((`ciudades`.`IdCiudad` = `conductores`.`IdCiudad`)))
  where (conductores . IdConductor= CedulaConductor);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spDatosManifiesto` */

/*!50003 DROP PROCEDURE IF EXISTS  `spDatosManifiesto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `spDatosManifiesto`(IN manInterno INTEGER(11))
BEGIN
select
    `informacionempresa`.`Nit` AS `Nitempresa`,
    `despachos`.`IdManifiesto` AS `Mannumero`,
    `despachos`.`OrdDespacho` AS `mannumero_empresa`,
    `despachos`.`FhExpedicion` AS `Manfechexped`,
    `ciuorigen`.`CodMinTrans` AS `manciud_origen`,
    `ciudestino`.`CodMinTrans` AS `manciud_destin`,
    `despachos`.`IdVehiculo` AS `Manplaca`,
    `conductores`.`TpIdConductor` AS `Mantipidconduc`,
    `conductores`.`IdConductor` AS `Manidenconduc`,
    `vehiculos`.`PlacaRemolque` AS `Manplacacsemir`,
    `carrocerias`.`CodMinTrans` AS `Mantipocarrocer`,
    `vehiculos`.`VehConfiguracion` AS `Manconfiguraci`,
    `vehiculos`.`PesoVacio` AS `Manpeso`,
    `despachos`.`VrFlete` AS `Manvlrtotflete`,
    `despachos`.`VrDctoRteFte` AS `Manretefuente`,
    `despachos`.`VrDctoIndCom` AS `mandescu_ley`,
    `despachos`.`VrAnticipo` AS `manvlr_anticip`,
    `despachos`.`LugarPago` AS `manlugar_pago`,
    `despachos`.`FhPagoSaldo` AS `Manfechpagsal`,
    `despachos`.`PagoCargue` AS `manpago_cargue`,
    `despachos`.`PagoDescargue` AS `manpago_descar`,
    `despachos`.`Observaciones` AS `manobservacion`,
    `titular`.`TpDoc` AS `mantipidtitular`,
    `vehiculos`.`IdPropietario` AS `manidentitular`,
    `despachos`.`KilosReales` AS `manpesobv`,
    `despachos`.`FhCumplidos` AS `fechentrega`,
    `despachos`.`IdRuta1Min` AS `Ruta1`,
    `despachos`.`IdRuta2Min` AS `ruta2`,
    `despachos`.`Kilometrostotal` AS `Kilometrostotal`,
    `despachos`.`tarifaflete` AS `Tarifaflete`,
    `despachos`.`ciudadtramoorigen` AS `ciudadtramoorigen`,
    `despachos`.`ciudadtramodestino` AS `ciudadtramodestino`,
    `despachos`.`kilomtramoorigen` AS `kilomtramoorigen`,
    `despachos`.`kilomtramodestino` AS `kilomtramodestino`
  from
    (((((((`despachos` left join `informacionempresa` on((`despachos`.`IdEmpresa` = `informacionempresa`.`Id`))) join `ciudades` `ciuorigen` on((`despachos`.`IdCiudadOrigen` = `ciuorigen`.`IdCiudad`))) join `ciudades` `ciudestino` on((`despachos`.`IdCiudadDestino` = `ciudestino`.`IdCiudad`))) join `conductores` on((`despachos`.`IdConductor` = `conductores`.`IdConductor`))) join `vehiculos` on((`despachos`.`IdVehiculo` = `vehiculos`.`IdPlaca`))) join `carrocerias` on((`vehiculos`.`IdCarroceria` = `carrocerias`.`IdCarroceria`))) join `terceros` `titular` on((`vehiculos`.`IdPropietario` = `titular`.`IDTercero`)))
  where
    (`despachos`.`OrdDespacho` = manInterno);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spDatosRemesas` */

/*!50003 DROP PROCEDURE IF EXISTS  `spDatosRemesas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `spDatosRemesas`(IN manInterno  INTEGER(11))
BEGIN
  select
    `informacionempresa`.`Nit` AS `nitempresa`,
    `despachos`.`IdManifiesto` AS `remnumero`,
    `guias`.`Unidades` AS `remcantidad`,
    `guias`.`KilosReales` AS `rempeso`,
    `guias`.`Remitente` AS `remremtente`,
    `guias`.`NmDestinatario` AS `remdestinatario`,
    `ciudestino`.`CodMinTrans` AS `remciudad_desti`,
    `guias`.`IdDespacho` AS `remnromanifiesto`,
    `guias`.`Guia` AS `remnrorempresa`,
    `informacionempresa`.`NroPoliza` AS `rempoliza`,
    `informacionempresa`.`NitAseguradora` AS `remaseguradora`,
    `informacionempresa`.`VencePoliza` AS `remvencimiento`,
    `ciuorigen`.`CodMinTrans` AS `remciudad_orig`,
    `guias`.`VrFlete` AS `Remvalremesa`,
    `guias`.`VrDeclarado` AS `Remvalproducto`
  from
    ((((`guias` left join `informacionempresa` on((`guias`.`IdEmpresa` = `informacionempresa`.`Id`))) join `ciudades` `ciudestino` on((`guias`.`IdCiuDestino` = `ciudestino`.`IdCiudad`))) join `ciudades` `ciuorigen` on((`guias`.`IdCiuOrigen` = `ciuorigen`.`IdCiudad`))) join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`)))
  where
    (`guias`.`IdDespacho` = manInterno);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spDatosTerceros` */

/*!50003 DROP PROCEDURE IF EXISTS  `spDatosTerceros` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `spDatosTerceros`(IN idPropietario INTEGER(11), IN idTenedor  INTEGER(11), IN idTitular INTEGER(11))
BEGIN
  select
    `terceros`.`TpDoc` AS `emptipid`,
    `terceros`.`IDTercero` AS `empident`,
    `terceros`.`RazonSocial` AS `empnombr`,
    `terceros`.`Telefono` AS `emptelefono`,
    `terceros`.`Direccion` AS `empdireccion`
  from
    `terceros`
    where `terceros`.`IDTercero` = idPropietario or `terceros`.`IDTercero`=idTenedor or `terceros`.`IDTercero`=idTitular;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spDatosVehiculo` */

/*!50003 DROP PROCEDURE IF EXISTS  `spDatosVehiculo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `spDatosVehiculo`(IN Placa CHAR(6))
BEGIN
  select
    `vehiculos`.`IdPlaca` AS `vehplaca`,
    `marcas`.`CodMinTrans` AS `vehmarca`,
    `lineas`.`Linea` AS `vehlinea`,
    `vehiculos`.`Modelo` AS `vehmodelo`,
    `vehiculos`.`ModeloRep` AS `vehmodelotransf`,
    `vehiculos`.`Serie` AS `vehnroserie`,
    `colores`.`CodMinTrans` AS `vehcolor`,
    `carrocerias`.`CodMinTrans` AS `vehtipocarrocer`,
    `vehiculos`.`VehConfiguracion` AS `vehconfiguraci`,
    `vehiculos`.`PesoVacio` AS `vehpeso`,
    `vehiculos`.`RegNalCarga` AS `vehregistro`,
    `vehiculos`.`Soat` AS `vehnro_poliza`,
    `aseguradora`.`TpDoc` AS `vehtipidasegur`,
    `aseguradora`.`IDTercero` AS `vehidenasegur`,
    `vehiculos`.`VenceSoat` AS `vehfechvenci`,
    `vehiculos`.`PlacaRemolque` AS `vehplacsemir`,
    `propietario`.`TpDoc` AS `vehtipidpropiet`,
    `propietario`.`IDTercero` AS `vehidentprop`,
    `tenedor`.`TpDoc` AS `Vehtipidtenenc`,
    `tenedor`.`IDTercero` AS `Vehidentenenc`,
    `vehiculos`.`CapKilos` AS `vehcapacidad`
  from
    (((((((`vehiculos` left join `marcas` on((`vehiculos`.`IdMarca` = `marcas`.`IdMarca`))) left join `lineas` on((`vehiculos`.`IdLinea` = `lineas`.`IdLinea`))) left join `colores` on((`vehiculos`.`IdColor` = `colores`.`IdColor`))) left join `carrocerias` on((`vehiculos`.`IdCarroceria` = `carrocerias`.`IdCarroceria`))) left join `terceros` `aseguradora` on((`vehiculos`.`IdAseguradora` = `aseguradora`.`IDTercero`))) left join `terceros` `propietario` on((`vehiculos`.`IdPropietario` = `propietario`.`IDTercero`))) left join `terceros` `tenedor` on((`vehiculos`.`IdTenedor` = `tenedor`.`IDTercero`)))
  where
    (`vehiculos`.`IdPlaca` = Placa);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spGuardarManifiestos` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGuardarManifiestos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `spGuardarManifiestos`(IN  OrdDespacho INTEGER(11), IN  numManifiesto VARCHAR(30))
BEGIN
UPDATE `despachos` SET `ManElectronico`=numManifiesto
WHERE (`despachos`.`OrdDespacho` = OrdDespacho);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spGuardarManifiestosDiario` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGuardarManifiestosDiario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `spGuardarManifiestosDiario`(IN OrdDespacho INTEGER(11), IN numManifiesto VARCHAR(30), IN numUsuario VARCHAR(30), IN numFecha VARCHAR(25))
BEGIN
INSERT INTO `mangenerados`(`OrdDespacho`,`ManManifiesto`,`Usuario`,`Fecha`)
VALUES(OrdDespacho,numManifiesto,numUsuario,numFecha);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spGuardarUsuarios` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGuardarUsuarios` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `spGuardarUsuarios`(IN Usuario VARCHAR(20), IN seleccionCheck INTEGER(2), OUT iResultado INTEGER(11), IN opSP INTEGER(2))
BEGIN
DECLARE iCuenta INT;
IF opSP = 0 THEN
INSERT INTO usuariospermisos
VALUES(Usuario,seleccionCheck);
ELSE
UPDATE `usuariospermisos` SET `Permiso`=seleccionCheck
WHERE `usuariospermisos`.`Usuario` = Usuario;
END IF;
SET @iResultado=1;
/*SELECT COUNT(*) INTO iCuenta FROM `usuariospermisos`
WHERE `usuariospermisos`.`IdUsuario`=Usuario;
IF iCuenta>0 THEN
 SET @iResultado=1;
END IF;*/
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKLEmpresas` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKLEmpresas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKLEmpresas`(
        IN IdTercero DOUBLE
    )
BEGIN
  select
    `terceros`.`TpDoc` AS `emptipid`,
    `terceros`.`IDTercero` AS `empident`, 
   `terceros`.`RazonSocial` AS `empnombr`,
    `terceros`.`Telefono` AS `emptelefono`,
    `terceros`.`Direccion` AS `empdireccion`,
    `ciudades`.`CodMinTrans` as `empciudad`
  from
    `terceros`
  left join `ciudades` on `terceros`.`IdCiudad` = `ciudades`.`IdCiudad`
  where `terceros`.`IDTercero` = IdTercero;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKLManifiesto` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKLManifiesto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKLManifiesto`(
        IN manInterno INTEGER(11)
    )
BEGIN
select
    `informacionempresa`.`Nit` AS `Nitempresa`,
    `despachos`.`IdManifiesto` AS `Mannumero`,
    `despachos`.`FhExpedicion` AS `Manfechexped`,
    `ciuorigen`.`CodMinTrans` AS `manciud_origen`,
    `ciudestino`.`CodMinTrans` AS `manciud_destin`,
    `despachos`.`IdVehiculo` AS `Manplaca`,
    `conductores`.`TpIdConductor` AS `Mantipidconduc`,
    `conductores`.`IdConductor` AS `Manidenconduc`,
    `vehiculos`.`PlacaRemolque` AS `Manplacacsemir`,
    `despachos`.`VrFlete` AS `Manvlrtoviaje`,
    `despachos`.`VrDctoRteFte` AS `Manretefuente`,    
    `despachos`.`VrDctoIndCom` AS `mandescu_ley`,
    `despachos`.`VrAnticipo` AS `manvlr_anticip`,            
    `despachos`.`LugarPago` AS `manlugar_pago`,    
    `despachos`.`FhPagoSaldo` AS `Manfechpagsal`,    
    `despachos`.`Observaciones` AS `manobservacion`,    
    `titular`.`TpDoc` AS `mantipidtitular`,    
    `vehiculos`.`IdPropietario` AS `manidentitular`,
    `despachos`.`FhCumplidos` AS `Manfechentrega` 
  from
    (((((((`despachos` left join `informacionempresa` on((`despachos`.`IdEmpresa` = `informacionempresa`.`Id`))) join `ciudades` `ciuorigen` on((`despachos`.`IdCiudadOrigen` = `ciuorigen`.`IdCiudad`))) join `ciudades` `ciudestino` on((`despachos`.`IdCiudadDestino` = `ciudestino`.`IdCiudad`))) join `conductores` on((`despachos`.`IdConductor` = `conductores`.`IdConductor`))) join `vehiculos` on((`despachos`.`IdVehiculo` = `vehiculos`.`IdPlaca`))) join `carrocerias` on((`vehiculos`.`IdCarroceria` = `carrocerias`.`IdCarroceria`))) join `terceros` `titular` on((`vehiculos`.`IdPropietario` = `titular`.`IDTercero`)))
  where
    (`despachos`.`OrdDespacho` = manInterno);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKLPersonas` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKLPersonas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKLPersonas`(
        IN IdTercero DOUBLE
    )
BEGIN
  select
    `terceros`.`TpDoc` AS `pertipid`,
    `terceros`.`IDTercero` AS `perident`,
    `terceros`.`Apellido1` AS `perapell1`,    
    `terceros`.`Apellido2` AS `perapell2`, 
   `terceros`.`Nombre` AS `pernombre`,
    `terceros`.`Telefono` AS `pertelefono`,
    `terceros`.`Direccion` AS `perdireccion`,
    `ciudades`.`CodMinTrans` as `perciudad`    
  from
    `terceros`
  left join `ciudades` on `terceros`.`IdCiudad` = `ciudades`.`IdCiudad`
  where `terceros`.`IDTercero` = IdTercero;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKLRemesas` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKLRemesas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKLRemesas`(
        IN OrdDespacho INTEGER(11)
    )
BEGIN
  select
    `informacionempresa`.`Nit` as Nitempresa,
    despachos.`IdManifiesto` as Remnumero,
    guias.`Guia` as remnroremempresa,    
    `guias`.`KilosReales` AS `Remcantidad`,
    remitente.`TpDoc` as remtipidremitente,
    remitente.`IDTercero` as remidenremitente,
    `ciuorigen`.`CodMinTrans` AS `remciudad_orig`,
    remitente.`Direccion` as remdireccionorigen,
    `ciudestino`.`CodMinTrans` AS `remciudad_desti`,
    `guias`.`DirDestinatario` as remdirecciondestino,
    remitente.`TpDoc` as Remtipidpropietario,
    remitente.`IDTercero` as remidenpropietario,    
    `informacionempresa`.`NroPoliza` AS `rempoliza`,
    `informacionempresa`.`NitAseguradora` AS `remaseguradora`,        
    `informacionempresa`.`VencePoliza` AS `remvencimiento`
    
  from `guias` 
    left join `informacionempresa` on `guias`.`IdEmpresa` = `informacionempresa`.`Id`
    left join `ciudades` `ciudestino` on `guias`.`IdCiuDestino` = `ciudestino`.`IdCiudad`
    left join `ciudades` `ciuorigen` on `guias`.`IdCiuOrigen` = `ciuorigen`.`IdCiudad`
    left join `despachos` on `guias`.`IdDespacho` = `despachos`.`OrdDespacho`
    left join terceros as remitente on guias.`Cuenta` = remitente.`IDTercero`
  where
    (`guias`.`IdDespacho` = OrdDespacho);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKLTiempos` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKLTiempos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKLTiempos`(
        IN OrdDespacho INTEGER(11)
    )
BEGIN
  select
    despachos.`IdManifiesto` as Mannumero,
    guias.`Guia` as Remnumero,
    `despachos`.`FhExpedicion` as Remfechallegacargue,
    guias.`FhEntregaMercancia` as Fechainiciodescargue
    
  from `guias` 
    left join `despachos` on `guias`.`IdDespacho` = `despachos`.`OrdDespacho`
  where
    (`guias`.`IdDespacho` = OrdDespacho);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKLVehiculo` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKLVehiculo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKLVehiculo`(
        IN Placa VARCHAR(6)
    )
BEGIN
  select
    `vehiculos`.`IdPlaca` AS `vehplaca`,
    `marcas`.`CodMinTrans` AS `vehmarca`,
    `lineas`.`Linea` AS `vehlinea`,
    `vehiculos`.`Modelo` AS `vehmodelo`,
    `vehiculos`.`ModeloRep` AS `vehmodelotransf`,
    `colores`.`CodMinTrans` AS `vehcolor`,
    `carrocerias`.`CodMinTrans` AS `vehtipocarrocer`,
    `vehiculos`.`VehConfiguracion` AS `vehconfiguraci`,
    `vehiculos`.`PesoVacio` AS `vehpeso`,
    `vehiculos`.`Soat` AS `vehnro_poliza`,
    `aseguradora`.`TpDoc` AS `vehtipidasegur`,
    `aseguradora`.`IDTercero` AS `vehidenasegur`,
    `vehiculos`.`VenceSoat` AS `vehfechvenci`,
    `vehiculos`.`CapKilos` AS `vehcapacidad`,
    `vehiculos`.`NroEjes` As vehnroejes,
    `vehiculos`.`TipoCombustible` as vehtipocombus,
    `propietario`.`TpDoc` AS `vehtipidpropiet`,
    `propietario`.`IDTercero` AS `vehidentprop`,
    `tenedor`.`TpDoc` AS `Vehtipidtenenc`,
    `tenedor`.`IDTercero` AS `Vehidentenenc`    
  from
    (((((((`vehiculos` left join `marcas` on((`vehiculos`.`IdMarca` = `marcas`.`IdMarca`))) left join `lineas` on((`vehiculos`.`IdLinea` = `lineas`.`IdLinea`))) left join `colores` on((`vehiculos`.`IdColor` = `colores`.`IdColor`))) left join `carrocerias` on((`vehiculos`.`IdCarroceria` = `carrocerias`.`IdCarroceria`))) left join `terceros` `aseguradora` on((`vehiculos`.`IdAseguradora` = `aseguradora`.`IDTercero`))) left join `terceros` `propietario` on((`vehiculos`.`IdPropietario` = `propietario`.`IDTercero`))) left join `terceros` `tenedor` on((`vehiculos`.`IdTenedor` = `tenedor`.`IDTercero`)))
  where
    (`vehiculos`.`IdPlaca` = Placa);
END */$$
DELIMITER ;

/*Table structure for table `slq_im_formatoliqdesp` */

DROP TABLE IF EXISTS `slq_im_formatoliqdesp`;

/*!50001 DROP VIEW IF EXISTS `slq_im_formatoliqdesp` */;
/*!50001 DROP TABLE IF EXISTS `slq_im_formatoliqdesp` */;

/*!50001 CREATE TABLE `slq_im_formatoliqdesp` (
  `IdManifiesto` int(11) DEFAULT NULL COMMENT '0',
  `OrdDespacho` int(11) NOT NULL,
  `Tipo` tinyint(4) DEFAULT NULL,
  `FhExpedicion` datetime DEFAULT NULL,
  `FhCumplidos` datetime DEFAULT NULL,
  `IdVehiculo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `IdConductor` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `IdCiudadOrigen` int(11) DEFAULT NULL,
  `IdCiudadDestino` int(11) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `Remesas` int(11) DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosVol` int(11) DEFAULT NULL,
  `FleteCobra` double DEFAULT NULL,
  `ManejoCobra` double DEFAULT NULL,
  `FleteCE` double DEFAULT NULL,
  `ManejoCE` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrAnticipo` double DEFAULT NULL,
  `VrDctoPapeleria` double DEFAULT NULL,
  `VrDctoSeguridad` double DEFAULT NULL,
  `VrDctoCargue` double DEFAULT NULL,
  `VrDctoEstampilla` double DEFAULT NULL,
  `VrFleteAdicional` double DEFAULT NULL,
  `VrDctoIndCom` double DEFAULT NULL,
  `VrDctoRteFte` double DEFAULT NULL,
  `VrOtrosDctos` double DEFAULT NULL,
  `SaldoDesp` double DEFAULT NULL,
  `TotalViaje` double DEFAULT NULL,
  `NmConductor` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `TRecaudo` double DEFAULT NULL,
  `Observaciones` varchar(254) CHARACTER SET latin1 DEFAULT NULL,
  `CO` int(11) DEFAULT NULL,
  `Cerrado` tinyint(4) DEFAULT NULL,
  `Liquidado` tinyint(4) DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL,
  `IdEmpresa` smallint(6) DEFAULT NULL,
  `AbonosCE` double(15,3) DEFAULT NULL,
  `FletesNoCancelados` double(15,3) DEFAULT NULL,
  `NmCiudad` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Logo` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `slq_im_producciongral` */

DROP TABLE IF EXISTS `slq_im_producciongral`;

/*!50001 DROP VIEW IF EXISTS `slq_im_producciongral` */;
/*!50001 DROP TABLE IF EXISTS `slq_im_producciongral` */;

/*!50001 CREATE TABLE `slq_im_producciongral` (
  `Guia` int(11) NOT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `COIng` smallint(6) DEFAULT NULL,
  `Cuenta` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Cliente` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `TpServicio` tinyint(4) DEFAULT NULL,
  `IdTpCtaFlete` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejo` tinyint(4) DEFAULT NULL,
  `Anulada` tinyint(4) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_if_facturado` */

DROP TABLE IF EXISTS `sql_if_facturado`;

/*!50001 DROP VIEW IF EXISTS `sql_if_facturado` */;
/*!50001 DROP TABLE IF EXISTS `sql_if_facturado` */;

/*!50001 CREATE TABLE `sql_if_facturado` (
  `IdFactura` int(11) NOT NULL,
  `FhFac` datetime DEFAULT NULL,
  `FhVenceFac` datetime DEFAULT NULL,
  `IdCliente` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `Notas` mediumtext CHARACTER SET latin1,
  `TFlete` double DEFAULT NULL,
  `TManejo` double DEFAULT NULL,
  `TOtros` double DEFAULT NULL,
  `DctoComercial` double DEFAULT NULL,
  `BaseCcial` double DEFAULT NULL,
  `DctoFinanciero` double DEFAULT NULL,
  `BaseFin` double DEFAULT NULL,
  `AntesDeDcto` smallint(6) DEFAULT NULL,
  `Abonos` double DEFAULT NULL,
  `TotalFactura` double DEFAULT NULL,
  `Saldo` double DEFAULT NULL,
  `NroGuias` int(11) DEFAULT NULL,
  `NroPlanillas` int(11) DEFAULT NULL,
  `NroConceptos` int(11) DEFAULT NULL,
  `Exportada` tinyint(4) DEFAULT NULL,
  `RazonSocial` varchar(100) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_if_pend_fac` */

DROP TABLE IF EXISTS `sql_if_pend_fac`;

/*!50001 DROP VIEW IF EXISTS `sql_if_pend_fac` */;
/*!50001 DROP TABLE IF EXISTS `sql_if_pend_fac` */;

/*!50001 CREATE TABLE `sql_if_pend_fac` (
  `Guia` int(11) NOT NULL,
  `CR` smallint(6) DEFAULT NULL,
  `NmDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `DocCliente` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `NmCiudad` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `IdCiuDestino` int(11) DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `KilosVolumen` int(11) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `IdFactura` int(11) DEFAULT NULL,
  `COIng` smallint(6) DEFAULT NULL,
  `Cuenta` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Cliente` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `TpServicio` tinyint(4) DEFAULT NULL,
  `IdTpCtaFlete` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejo` tinyint(4) DEFAULT NULL,
  `Anulada` tinyint(4) DEFAULT NULL,
  `GuiFac` tinyint(4) DEFAULT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `IdPlanillaFactura` int(11) DEFAULT NULL,
  `RelCliente` varchar(30) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_if_pend_fac_cont` */

DROP TABLE IF EXISTS `sql_if_pend_fac_cont`;

/*!50001 DROP VIEW IF EXISTS `sql_if_pend_fac_cont` */;
/*!50001 DROP TABLE IF EXISTS `sql_if_pend_fac_cont` */;

/*!50001 CREATE TABLE `sql_if_pend_fac_cont` (
  `Guia` int(11) NOT NULL,
  `CR` smallint(6) DEFAULT NULL,
  `NmDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `DocCliente` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `NmCiudad` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `IdCiuDestino` int(11) DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `KilosVolumen` int(11) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `IdFactura` int(11) DEFAULT NULL,
  `COIng` smallint(6) DEFAULT NULL,
  `Cuenta` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Cliente` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `TpServicio` tinyint(4) DEFAULT NULL,
  `IdTpCtaFlete` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejo` tinyint(4) DEFAULT NULL,
  `Anulada` tinyint(4) DEFAULT NULL,
  `GuiFac` tinyint(4) DEFAULT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `IdPlanillaFactura` int(11) DEFAULT NULL,
  `RelCliente` varchar(30) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_if_pend_fac_dest` */

DROP TABLE IF EXISTS `sql_if_pend_fac_dest`;

/*!50001 DROP VIEW IF EXISTS `sql_if_pend_fac_dest` */;
/*!50001 DROP TABLE IF EXISTS `sql_if_pend_fac_dest` */;

/*!50001 CREATE TABLE `sql_if_pend_fac_dest` (
  `Guia` int(11) NOT NULL,
  `CR` smallint(6) DEFAULT NULL,
  `NmDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `DocCliente` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `NmCiudad` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `IdCiuDestino` int(11) DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `KilosVolumen` int(11) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `IdFactura` int(11) DEFAULT NULL,
  `COIng` smallint(6) DEFAULT NULL,
  `Cuenta` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Cliente` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `TpServicio` tinyint(4) DEFAULT NULL,
  `IdTpCtaFlete` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejo` tinyint(4) DEFAULT NULL,
  `Anulada` tinyint(4) DEFAULT NULL,
  `GuiFac` tinyint(4) DEFAULT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `IdPlanillaFactura` int(11) DEFAULT NULL,
  `RelCliente` varchar(30) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_aseguradora` */

DROP TABLE IF EXISTS `sql_im_aseguradora`;

/*!50001 DROP VIEW IF EXISTS `sql_im_aseguradora` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_aseguradora` */;

/*!50001 CREATE TABLE `sql_im_aseguradora` (
  `IdVehiculo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `NroDespachos` bigint(21) NOT NULL DEFAULT '0',
  `Modelo` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `Serie` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `FhExpedicion` datetime DEFAULT NULL,
  `NmPropietario` varchar(92) CHARACTER SET latin1 DEFAULT NULL,
  `NmTenedor` varchar(92) CHARACTER SET latin1 DEFAULT NULL,
  `TUnidades` decimal(32,0) DEFAULT NULL,
  `TKilosReales` decimal(32,0) DEFAULT NULL,
  `TRemesas` decimal(32,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_contraentregas` */

DROP TABLE IF EXISTS `sql_im_contraentregas`;

/*!50001 DROP VIEW IF EXISTS `sql_im_contraentregas` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_contraentregas` */;

/*!50001 CREATE TABLE `sql_im_contraentregas` (
  `Guia` int(11) NOT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `DocCliente` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `NmDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `IdCiuDestino` int(11) DEFAULT NULL,
  `NmCiudad` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `IdDespacho` int(11) DEFAULT NULL,
  `Cuenta` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Cliente` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `IdTpCtaFlete` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejo` tinyint(4) DEFAULT NULL,
  `Anulada` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_correcciones` */

DROP TABLE IF EXISTS `sql_im_correcciones`;

/*!50001 DROP VIEW IF EXISTS `sql_im_correcciones` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_correcciones` */;

/*!50001 CREATE TABLE `sql_im_correcciones` (
  `IdCorreccion` int(11) NOT NULL DEFAULT '0',
  `GuiaCorregida` int(11) DEFAULT NULL,
  `FechaCorreccion` datetime DEFAULT NULL,
  `CuentaC` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `IdUsuarioCorreccion` int(11) DEFAULT NULL,
  `IdTpServicio` tinyint(4) DEFAULT NULL,
  `VrDeclaradoC` double(15,3) DEFAULT NULL,
  `VrFleteC` double(15,3) DEFAULT NULL,
  `VrManejoC` double(15,3) DEFAULT NULL,
  `GuiaFacC` tinyint(4) DEFAULT NULL,
  `KilosRealesC` int(11) DEFAULT NULL,
  `KilosVolumenC` int(11) DEFAULT NULL,
  `KilosFacturadosC` int(11) DEFAULT NULL,
  `UnidadesC` int(11) DEFAULT NULL,
  `IdTpCtaFleteC` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejoC` int(11) DEFAULT NULL,
  `Comentarios` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `IdCiuDestinoC` int(11) DEFAULT NULL,
  `DocClienteC` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `RecaudoC` double(15,3) DEFAULT NULL,
  `Cuenta` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Cliente` varchar(60) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_despachos` */

DROP TABLE IF EXISTS `sql_im_despachos`;

/*!50001 DROP VIEW IF EXISTS `sql_im_despachos` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_despachos` */;

/*!50001 CREATE TABLE `sql_im_despachos` (
  `OrdDespacho` int(11) NOT NULL,
  `IdManifiesto` int(11) DEFAULT NULL COMMENT '0',
  `Tipo` tinyint(4) DEFAULT NULL,
  `FhExpedicion` datetime DEFAULT NULL,
  `IdVehiculo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `IdConductor` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `IdCiudadDestino` int(11) DEFAULT NULL,
  `NmCiudad` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `Remesas` int(11) DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosVol` int(11) DEFAULT NULL,
  `FleteCobra` double DEFAULT NULL,
  `ManejoCobra` double DEFAULT NULL,
  `FleteCE` double DEFAULT NULL,
  `ManejoCE` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrAnticipo` double DEFAULT NULL,
  `TRecaudo` double DEFAULT NULL,
  `VrDeclaradoTotal` double(15,3) NOT NULL DEFAULT '0.000',
  `VrKiloPagado` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_despachospendientesabiertos` */

DROP TABLE IF EXISTS `sql_im_despachospendientesabiertos`;

/*!50001 DROP VIEW IF EXISTS `sql_im_despachospendientesabiertos` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_despachospendientesabiertos` */;

/*!50001 CREATE TABLE `sql_im_despachospendientesabiertos` (
  `IdManifiesto` int(11) DEFAULT NULL COMMENT '0',
  `OrdDespacho` int(11) NOT NULL,
  `Tipo` tinyint(4) DEFAULT NULL,
  `FhExpedicion` datetime DEFAULT NULL,
  `FhCumplidos` datetime DEFAULT NULL,
  `IdVehiculo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `IdConductor` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `IdCiudadOrigen` int(11) DEFAULT NULL,
  `IdCiudadDestino` int(11) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `Remesas` int(11) DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosVol` int(11) DEFAULT NULL,
  `FleteCobra` double DEFAULT NULL,
  `ManejoCobra` double DEFAULT NULL,
  `FleteCE` double DEFAULT NULL,
  `ManejoCE` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrAnticipo` double DEFAULT NULL,
  `VrDctoPapeleria` double DEFAULT NULL,
  `VrDctoSeguridad` double DEFAULT NULL,
  `VrDctoCargue` double DEFAULT NULL,
  `VrDctoEstampilla` double DEFAULT NULL,
  `VrFleteAdicional` double DEFAULT NULL,
  `VrDctoIndCom` double DEFAULT NULL,
  `VrDctoRteFte` double DEFAULT NULL,
  `VrOtrosDctos` double DEFAULT NULL,
  `SaldoDesp` double DEFAULT NULL,
  `TotalViaje` double DEFAULT NULL,
  `CO` int(11) DEFAULT NULL,
  `Observaciones` varchar(254) CHARACTER SET latin1 DEFAULT NULL,
  `TRecaudo` double DEFAULT NULL,
  `Cerrado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_despachosporcerrar` */

DROP TABLE IF EXISTS `sql_im_despachosporcerrar`;

/*!50001 DROP VIEW IF EXISTS `sql_im_despachosporcerrar` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_despachosporcerrar` */;

/*!50001 CREATE TABLE `sql_im_despachosporcerrar` (
  `IdManifiesto` int(11) DEFAULT NULL COMMENT '0',
  `OrdDespacho` int(11) NOT NULL,
  `Tipo` tinyint(4) DEFAULT NULL,
  `FhExpedicion` datetime DEFAULT NULL,
  `FhCumplidos` datetime DEFAULT NULL,
  `IdVehiculo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `IdConductor` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `IdCiudadOrigen` int(11) DEFAULT NULL,
  `IdCiudadDestino` int(11) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `Remesas` int(11) DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosVol` int(11) DEFAULT NULL,
  `FleteCobra` double DEFAULT NULL,
  `ManejoCobra` double DEFAULT NULL,
  `FleteCE` double DEFAULT NULL,
  `ManejoCE` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrAnticipo` double DEFAULT NULL,
  `VrDctoPapeleria` double DEFAULT NULL,
  `VrDctoSeguridad` double DEFAULT NULL,
  `VrDctoCargue` double DEFAULT NULL,
  `VrDctoEstampilla` double DEFAULT NULL,
  `VrFleteAdicional` double DEFAULT NULL,
  `VrDctoIndCom` double DEFAULT NULL,
  `VrDctoRteFte` double DEFAULT NULL,
  `VrOtrosDctos` double DEFAULT NULL,
  `SaldoDesp` double DEFAULT NULL,
  `TotalViaje` double DEFAULT NULL,
  `CO` int(11) DEFAULT NULL,
  `Observaciones` varchar(254) CHARACTER SET latin1 DEFAULT NULL,
  `TRecaudo` double DEFAULT NULL,
  `VrDeclaradoTotal` double(15,3) NOT NULL DEFAULT '0.000',
  `ruta1` int(11) DEFAULT NULL,
  `Kilometrostotal` int(11) DEFAULT NULL,
  `tarifaflete` double(15,3) DEFAULT NULL,
  `ciudadtramoorigen` int(11) DEFAULT NULL,
  `ciudadtramodestino` int(11) DEFAULT NULL,
  `kilomtramoorigen` int(11) DEFAULT NULL,
  `kilomtramodestino` int(11) DEFAULT NULL COMMENT '41',
  `ManElectronico` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `NmConductor` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `Cerrado` tinyint(4) DEFAULT NULL,
  `Liquidado` tinyint(4) DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL,
  `IdEmpresa` smallint(6) DEFAULT NULL,
  `Exportado` tinyint(4) DEFAULT NULL,
  `LugarPago` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `FhPagoSaldo` date DEFAULT NULL,
  `PagoCargue` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `PagoDescargue` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Estado1` tinyint(4) DEFAULT NULL,
  `IdRuta1Min` int(11) DEFAULT NULL,
  `IdRuta2Min` int(11) DEFAULT NULL,
  `AbonosCE` double(15,3) DEFAULT NULL,
  `FletesNoCancelados` double(15,3) DEFAULT NULL,
  `NmRuta` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_flec_vs_flep` */

DROP TABLE IF EXISTS `sql_im_flec_vs_flep`;

/*!50001 DROP VIEW IF EXISTS `sql_im_flec_vs_flep` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_flec_vs_flep` */;

/*!50001 CREATE TABLE `sql_im_flec_vs_flep` (
  `IdManifiesto` int(11) DEFAULT NULL COMMENT '0',
  `OrdDespacho` int(11) NOT NULL,
  `Tipo` tinyint(4) DEFAULT NULL,
  `FhExpedicion` datetime DEFAULT NULL,
  `FhCumplidos` datetime DEFAULT NULL,
  `IdVehiculo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `IdConductor` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `IdCiudadOrigen` int(11) DEFAULT NULL,
  `IdCiudadDestino` int(11) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `Remesas` int(11) DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosVol` int(11) DEFAULT NULL,
  `FleteCobra` double DEFAULT NULL,
  `ManejoCobra` double DEFAULT NULL,
  `FleteCE` double DEFAULT NULL,
  `ManejoCE` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrAnticipo` double DEFAULT NULL,
  `VrDctoPapeleria` double DEFAULT NULL,
  `VrDctoSeguridad` double DEFAULT NULL,
  `VrDctoCargue` double DEFAULT NULL,
  `VrDctoEstampilla` double DEFAULT NULL,
  `VrFleteAdicional` double DEFAULT NULL,
  `VrDctoIndCom` double DEFAULT NULL,
  `VrDctoRteFte` double DEFAULT NULL,
  `VrOtrosDctos` double DEFAULT NULL,
  `SaldoDesp` double DEFAULT NULL,
  `TotalViaje` double DEFAULT NULL,
  `CO` int(11) DEFAULT NULL,
  `Observaciones` varchar(254) CHARACTER SET latin1 DEFAULT NULL,
  `TRecaudo` double DEFAULT NULL,
  `VrDeclaradoTotal` double(15,3) NOT NULL DEFAULT '0.000',
  `NmConductor` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `Cerrado` tinyint(4) DEFAULT NULL,
  `Liquidado` tinyint(4) DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL,
  `IdEmpresa` smallint(6) DEFAULT NULL,
  `Exportado` tinyint(4) DEFAULT NULL,
  `NmCiudad` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `NmRuta` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_guias` */

DROP TABLE IF EXISTS `sql_im_guias`;

/*!50001 DROP VIEW IF EXISTS `sql_im_guias` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_guias` */;

/*!50001 CREATE TABLE `sql_im_guias` (
  `Guia` int(11) NOT NULL,
  `NmCiudad` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `IdCiuDestino` int(11) DEFAULT NULL,
  `NmRuta` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosVolumen` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `Cuenta` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `Despachada` tinyint(4) DEFAULT NULL,
  `Entregada` tinyint(4) DEFAULT NULL,
  `Descargada` tinyint(4) DEFAULT NULL,
  `Anulada` tinyint(4) DEFAULT NULL,
  `TpServicio` tinyint(4) DEFAULT NULL,
  `IdTpCtaFlete` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejo` tinyint(4) DEFAULT NULL,
  `Cliente` varchar(60) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_impanuncio` */

DROP TABLE IF EXISTS `sql_im_impanuncio`;

/*!50001 DROP VIEW IF EXISTS `sql_im_impanuncio` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_impanuncio` */;

/*!50001 CREATE TABLE `sql_im_impanuncio` (
  `IdAnuncio` int(11) NOT NULL,
  `FhAnuncio` datetime DEFAULT NULL,
  `IdCliente` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Anunciante` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `DirAnunciante` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `TelAnunciante` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `Asignacion` int(11) DEFAULT NULL,
  `FhRecogida` datetime DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosVol` int(11) DEFAULT NULL,
  `Comentarios` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `Programada` tinyint(4) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `Efectiva` tinyint(4) DEFAULT NULL,
  `TiempoEfectiva` datetime DEFAULT NULL,
  `Coperaciones` smallint(6) DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  `IdConductor` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `IdVehiculo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `NmConductor` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `Apellido1Conductor` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `Apellido2Conductor` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `NmRuta` varchar(70) CHARACTER SET latin1 DEFAULT NULL,
  `RazonSocial` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `NmColor` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `NmMarca` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `TOperacion` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Modelo` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `LicenciaConductor` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `IdEmpresa` smallint(6) DEFAULT NULL,
  `Logo` mediumblob,
  `Nombre` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Direccion` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `Telefono` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Nit` varchar(12) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_impguia` */

DROP TABLE IF EXISTS `sql_im_impguia`;

/*!50001 DROP VIEW IF EXISTS `sql_im_impguia` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_impguia` */;

/*!50001 CREATE TABLE `sql_im_impguia` (
  `Guia` int(11) NOT NULL,
  `CR` smallint(6) DEFAULT NULL,
  `DocCliente` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `NmDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `DirDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `TelDestinatario` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `IdCiuDestino` int(11) DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `Observaciones` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `Cuenta` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `RazonSocial` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `Direccion` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Telefono` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `TpServicio` tinyint(4) DEFAULT NULL,
  `IdTpCtaFlete` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejo` tinyint(4) DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL,
  `NmCiuOrigen` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `NmCiuDestino` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `NitEmpresa` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `NmEmpresa` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `DirEmpresa` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `TelEmpresa` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Logo` mediumblob,
  `IdEmpresa` smallint(6) DEFAULT NULL,
  `CuentaFlete` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `CuentaManejo` varchar(30) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_impmanifiesto` */

DROP TABLE IF EXISTS `sql_im_impmanifiesto`;

/*!50001 DROP VIEW IF EXISTS `sql_im_impmanifiesto` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_impmanifiesto` */;

/*!50001 CREATE TABLE `sql_im_impmanifiesto` (
  `IdManifiesto` int(11) DEFAULT NULL COMMENT '0',
  `OrdDespacho` int(11) NOT NULL,
  `Tipo` tinyint(4) DEFAULT NULL,
  `FhExpedicion` datetime DEFAULT NULL,
  `FhCumplidos` datetime DEFAULT NULL,
  `IdVehiculo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `IdConductor` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `IdCiudadOrigen` int(11) DEFAULT NULL,
  `IdCiudadDestino` int(11) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `Remesas` int(11) DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosVol` int(11) DEFAULT NULL,
  `FleteCobra` double DEFAULT NULL,
  `ManejoCobra` double DEFAULT NULL,
  `FleteCE` double DEFAULT NULL,
  `ManejoCE` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrAnticipo` double DEFAULT NULL,
  `VrDctoPapeleria` double DEFAULT NULL,
  `VrDctoSeguridad` double DEFAULT NULL,
  `VrDctoCargue` double DEFAULT NULL,
  `VrDctoEstampilla` double DEFAULT NULL,
  `VrFleteAdicional` double DEFAULT NULL,
  `VrDctoIndCom` double DEFAULT NULL,
  `VrDctoRteFte` double DEFAULT NULL,
  `VrOtrosDctos` double DEFAULT NULL,
  `SaldoDesp` double DEFAULT NULL,
  `TotalViaje` double DEFAULT NULL,
  `CO` int(11) DEFAULT NULL,
  `Observaciones` varchar(254) CHARACTER SET latin1 DEFAULT NULL,
  `TRecaudo` double DEFAULT NULL,
  `NmConductor` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `Cerrado` tinyint(4) DEFAULT NULL,
  `Liquidado` tinyint(4) DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL,
  `Nombre` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `Apellido1` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `Apellido2` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `Direccion` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `Categoria` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `Celular` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `NmCiudadOrigen` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `NmCiudadDestino` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `NmMarca` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `NmCarroceria` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `NmColor` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `NmLinea` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `NmAseguradora` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `NombreEmpresa` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `DirEmpresa` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `TelEmpresa` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `NitEmpresa` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `IdEmpresa` smallint(6) DEFAULT NULL,
  `Logo` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_impnovedadsolucionada` */

DROP TABLE IF EXISTS `sql_im_impnovedadsolucionada`;

/*!50001 DROP VIEW IF EXISTS `sql_im_impnovedadsolucionada` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_impnovedadsolucionada` */;

/*!50001 CREATE TABLE `sql_im_impnovedadsolucionada` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `Guia` int(11) DEFAULT NULL,
  `IdNovedad` smallint(6) DEFAULT NULL,
  `Comentarios` mediumtext CHARACTER SET latin1,
  `UsuIng` int(11) DEFAULT NULL,
  `FHIngreso` datetime DEFAULT NULL,
  `FhNovedad` datetime DEFAULT NULL,
  `Solucion` mediumtext CHARACTER SET latin1,
  `UsuSol` int(11) DEFAULT NULL,
  `FhSolucion` datetime DEFAULT NULL,
  `Solucionada` tinyint(4) DEFAULT NULL,
  `NmNovedad` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `NmUsuario` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_novedadespendientes` */

DROP TABLE IF EXISTS `sql_im_novedadespendientes`;

/*!50001 DROP VIEW IF EXISTS `sql_im_novedadespendientes` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_novedadespendientes` */;

/*!50001 CREATE TABLE `sql_im_novedadespendientes` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `Guia` int(11) DEFAULT NULL,
  `IdNovedad` smallint(6) DEFAULT NULL,
  `Comentarios` mediumtext CHARACTER SET latin1,
  `UsuIng` int(11) DEFAULT NULL,
  `FHIngreso` datetime DEFAULT NULL,
  `FhNovedad` datetime DEFAULT NULL,
  `Solucion` mediumtext CHARACTER SET latin1,
  `UsuSol` int(11) DEFAULT NULL,
  `FhSolucion` datetime DEFAULT NULL,
  `Solucionada` tinyint(4) DEFAULT NULL,
  `Cuenta` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Cliente` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `NmNovedad` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `DocCliente` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `NmCiudad` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `NmDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_novedadessolucionadas` */

DROP TABLE IF EXISTS `sql_im_novedadessolucionadas`;

/*!50001 DROP VIEW IF EXISTS `sql_im_novedadessolucionadas` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_novedadessolucionadas` */;

/*!50001 CREATE TABLE `sql_im_novedadessolucionadas` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `Guia` int(11) DEFAULT NULL,
  `IdNovedad` smallint(6) DEFAULT NULL,
  `Comentarios` mediumtext CHARACTER SET latin1,
  `UsuIng` int(11) DEFAULT NULL,
  `FHIngreso` datetime DEFAULT NULL,
  `FhNovedad` datetime DEFAULT NULL,
  `Solucion` mediumtext CHARACTER SET latin1,
  `UsuSol` int(11) DEFAULT NULL,
  `FhSolucion` datetime DEFAULT NULL,
  `Solucionada` tinyint(4) DEFAULT NULL,
  `Cuenta` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Cliente` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `NmNovedad` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `DocCliente` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `NmCiudad` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `NmDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_ordendespacho` */

DROP TABLE IF EXISTS `sql_im_ordendespacho`;

/*!50001 DROP VIEW IF EXISTS `sql_im_ordendespacho` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_ordendespacho` */;

/*!50001 CREATE TABLE `sql_im_ordendespacho` (
  `Guia` int(11) NOT NULL,
  `CR` smallint(6) DEFAULT NULL,
  `Remitente` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `DocCliente` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `NmDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `DirDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `TelDestinatario` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `IdCiuDestino` int(11) DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `FhEntregaMercancia` datetime DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `KilosVolumen` int(11) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `IdFactura` int(11) DEFAULT NULL,
  `IdDespacho` int(11) DEFAULT NULL,
  `Observaciones` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `COIng` smallint(6) DEFAULT NULL,
  `Cuenta` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Cliente` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  `EmpaqueRef` varchar(70) CHARACTER SET latin1 DEFAULT NULL,
  `TpServicio` tinyint(4) DEFAULT NULL,
  `IdTpCtaFlete` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejo` tinyint(4) DEFAULT NULL,
  `CPorte` tinyint(4) DEFAULT NULL,
  `Entregada` tinyint(4) DEFAULT NULL,
  `Descargada` tinyint(4) DEFAULT NULL,
  `FhDescargada` datetime DEFAULT NULL,
  `Despachada` tinyint(4) DEFAULT NULL,
  `Anulada` tinyint(4) DEFAULT NULL,
  `NmCiudad` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_pen_ent_cli` */

DROP TABLE IF EXISTS `sql_im_pen_ent_cli`;

/*!50001 DROP VIEW IF EXISTS `sql_im_pen_ent_cli` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_pen_ent_cli` */;

/*!50001 CREATE TABLE `sql_im_pen_ent_cli` (
  `Guia` int(11) NOT NULL,
  `CR` smallint(6) DEFAULT NULL,
  `Remitente` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `DocCliente` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `NmDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `DirDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `TelDestinatario` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `IdCiuDestino` int(11) DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `FhEntregaMercancia` datetime DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `KilosVolumen` int(11) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `IdFactura` int(11) DEFAULT NULL,
  `IdDespacho` int(11) DEFAULT NULL,
  `Observaciones` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `COIng` smallint(6) DEFAULT NULL,
  `Cuenta` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Cliente` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  `EmpaqueRef` varchar(70) CHARACTER SET latin1 DEFAULT NULL,
  `TpServicio` tinyint(4) DEFAULT NULL,
  `IdTpCtaFlete` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejo` tinyint(4) DEFAULT NULL,
  `CPorte` tinyint(4) DEFAULT NULL,
  `Entregada` tinyint(4) DEFAULT NULL,
  `Descargada` tinyint(4) DEFAULT NULL,
  `FhDescargada` datetime DEFAULT NULL,
  `Despachada` tinyint(4) DEFAULT NULL,
  `Anulada` tinyint(4) DEFAULT NULL,
  `NmCiudad` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_pend_desp` */

DROP TABLE IF EXISTS `sql_im_pend_desp`;

/*!50001 DROP VIEW IF EXISTS `sql_im_pend_desp` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_pend_desp` */;

/*!50001 CREATE TABLE `sql_im_pend_desp` (
  `Guia` int(11) NOT NULL,
  `CR` smallint(6) DEFAULT NULL,
  `Remitente` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `DocCliente` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `NmDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `IdCiuDestino` int(11) DEFAULT NULL,
  `TelDestinatario` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `DirDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `FhEntregaMercancia` datetime DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `KilosVolumen` int(11) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `IdFactura` int(11) DEFAULT NULL,
  `IdDespacho` int(11) DEFAULT NULL,
  `Observaciones` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `COIng` smallint(6) DEFAULT NULL,
  `Cuenta` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Cliente` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  `TpServicio` tinyint(4) DEFAULT NULL,
  `IdTpCtaFlete` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejo` tinyint(4) DEFAULT NULL,
  `CPorte` tinyint(4) DEFAULT NULL,
  `Entregada` tinyint(4) DEFAULT NULL,
  `Descargada` tinyint(4) DEFAULT NULL,
  `FhDescargada` datetime DEFAULT NULL,
  `NmRuta` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `NmCiudad` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_pendescargar` */

DROP TABLE IF EXISTS `sql_im_pendescargar`;

/*!50001 DROP VIEW IF EXISTS `sql_im_pendescargar` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_pendescargar` */;

/*!50001 CREATE TABLE `sql_im_pendescargar` (
  `Guia` int(11) NOT NULL,
  `CR` smallint(6) DEFAULT NULL,
  `Remitente` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `DocCliente` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `NmDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `DirDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `TelDestinatario` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `IdCiuDestino` int(11) DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `FhEntregaMercancia` datetime DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `KilosVolumen` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `IdDespacho` int(11) DEFAULT NULL,
  `Observaciones` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `IdFactura` int(11) DEFAULT NULL,
  `COIng` smallint(6) DEFAULT NULL,
  `Cuenta` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Cliente` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  `EmpaqueRef` varchar(70) CHARACTER SET latin1 DEFAULT NULL,
  `RelCliente` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `IdCiuOrigen` int(11) DEFAULT NULL,
  `IdRelEntrega` int(11) DEFAULT NULL,
  `FhDescargada` datetime DEFAULT NULL,
  `Despachada` tinyint(4) DEFAULT NULL,
  `TpServicio` tinyint(4) DEFAULT NULL,
  `IdTpCtaFlete` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejo` tinyint(4) DEFAULT NULL,
  `CPorte` tinyint(4) DEFAULT NULL,
  `Entregada` tinyint(4) DEFAULT NULL,
  `Descargada` tinyint(4) DEFAULT NULL,
  `Anulada` tinyint(4) DEFAULT NULL,
  `GuiFac` tinyint(4) DEFAULT NULL,
  `Facturada` tinyint(1) DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL,
  `IdPlanillaFactura` int(11) DEFAULT NULL,
  `IdEmpresa` smallint(6) DEFAULT NULL,
  `Relacionada` tinyint(4) DEFAULT NULL,
  `EnNovedad` tinyint(4) DEFAULT NULL,
  `NmCiudad` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `IdVehiculo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `IdConductor` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `NmConductor` varchar(60) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_produccionruta` */

DROP TABLE IF EXISTS `sql_im_produccionruta`;

/*!50001 DROP VIEW IF EXISTS `sql_im_produccionruta` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_produccionruta` */;

/*!50001 CREATE TABLE `sql_im_produccionruta` (
  `Guia` int(11) NOT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `NmRuta` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `COIng` smallint(6) DEFAULT NULL,
  `IdTpCtaFlete` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejo` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_reexpediciones` */

DROP TABLE IF EXISTS `sql_im_reexpediciones`;

/*!50001 DROP VIEW IF EXISTS `sql_im_reexpediciones` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_reexpediciones` */;

/*!50001 CREATE TABLE `sql_im_reexpediciones` (
  `Guia` int(11) NOT NULL,
  `Tipo` tinyint(4) DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `IdDespacho` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_rel_guias_desp` */

DROP TABLE IF EXISTS `sql_im_rel_guias_desp`;

/*!50001 DROP VIEW IF EXISTS `sql_im_rel_guias_desp` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_rel_guias_desp` */;

/*!50001 CREATE TABLE `sql_im_rel_guias_desp` (
  `Guia` int(11) NOT NULL,
  `DocCliente` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `NmDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `IdCiuDestino` int(11) DEFAULT NULL,
  `NmCiudad` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `KilosVolumen` int(11) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `IdDespacho` int(11) DEFAULT NULL,
  `COIng` smallint(6) DEFAULT NULL,
  `Cuenta` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Cliente` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  `TpServicio` tinyint(4) DEFAULT NULL,
  `Anulada` tinyint(4) DEFAULT NULL,
  `FhExpedicion` datetime DEFAULT NULL,
  `IdVehiculo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `IdConductor` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Remesas` int(11) DEFAULT NULL,
  `UnidadesDespacho` int(11) DEFAULT NULL,
  `KRDespacho` int(11) DEFAULT NULL,
  `VrFleteDespacho` double DEFAULT NULL,
  `VrAnticipo` double DEFAULT NULL,
  `Observaciones` varchar(254) CHARACTER SET latin1 DEFAULT NULL,
  `TRecaudo` double DEFAULT NULL,
  `TotalViaje` double DEFAULT NULL,
  `VrDctoIndCom` double DEFAULT NULL,
  `VrDctoRteFte` double DEFAULT NULL,
  `NmConductor` varchar(60) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_relguiasplanilla` */

DROP TABLE IF EXISTS `sql_im_relguiasplanilla`;

/*!50001 DROP VIEW IF EXISTS `sql_im_relguiasplanilla` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_relguiasplanilla` */;

/*!50001 CREATE TABLE `sql_im_relguiasplanilla` (
  `Guia` int(11) NOT NULL,
  `DocCliente` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `NmDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `NmCiudad` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `IdFactura` int(11) DEFAULT NULL,
  `Cliente` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `Anulada` tinyint(4) DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `IdPlanillaFactura` int(11) DEFAULT NULL,
  `RelCliente` varchar(25) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_resumendespacho` */

DROP TABLE IF EXISTS `sql_im_resumendespacho`;

/*!50001 DROP VIEW IF EXISTS `sql_im_resumendespacho` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_resumendespacho` */;

/*!50001 CREATE TABLE `sql_im_resumendespacho` (
  `Guia` int(11) NOT NULL,
  `NmDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `NmCiudad` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `IdCiuDestino` int(11) DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `VrFlete` double DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `VrManejo` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `Cliente` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `Cuenta` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `IdManifiesto` int(11) DEFAULT NULL COMMENT '0',
  `FhExpedicion` datetime DEFAULT NULL,
  `IdVehiculo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `IdConductor` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `Remesas` int(11) DEFAULT NULL,
  `UnidadesDespacho` int(11) DEFAULT NULL,
  `KilosRealesDespacho` int(11) DEFAULT NULL,
  `FleteCobra` double DEFAULT NULL,
  `ManejoCobra` double DEFAULT NULL,
  `FleteCE` double DEFAULT NULL,
  `ManejoCE` double DEFAULT NULL,
  `VrFleteDespacho` double DEFAULT NULL,
  `VrAnticipo` double DEFAULT NULL,
  `TRecaudo` double DEFAULT NULL,
  `NmConductor` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `IdDespacho` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_im_ventascontado` */

DROP TABLE IF EXISTS `sql_im_ventascontado`;

/*!50001 DROP VIEW IF EXISTS `sql_im_ventascontado` */;
/*!50001 DROP TABLE IF EXISTS `sql_im_ventascontado` */;

/*!50001 CREATE TABLE `sql_im_ventascontado` (
  `Guia` int(11),
  `DocCliente` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `FhEntradaBodega` datetime DEFAULT NULL,
  `VrDeclarado` double DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosFacturados` int(11) DEFAULT NULL,
  `KilosVolumen` int(11) DEFAULT NULL,
  `COIng` smallint(6) DEFAULT NULL,
  `Cuenta` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Cliente` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `Recaudo` double DEFAULT NULL,
  `TpServicio` tinyint(4) DEFAULT NULL,
  `IdTpCtaFlete` tinyint(4) DEFAULT NULL,
  `IdTpCtaManejo` tinyint(4) DEFAULT NULL,
  `GuiFac` tinyint(4) DEFAULT NULL,
  `Anulada` tinyint(4) DEFAULT NULL,
  `NmDestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `Manejo` double(15,3) DEFAULT NULL,
  `Flete` double(15,3) DEFAULT NULL,
  `NroRecibo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_ir_listadorecogidas` */

DROP TABLE IF EXISTS `sql_ir_listadorecogidas`;

/*!50001 DROP VIEW IF EXISTS `sql_ir_listadorecogidas` */;
/*!50001 DROP TABLE IF EXISTS `sql_ir_listadorecogidas` */;

/*!50001 CREATE TABLE `sql_ir_listadorecogidas` (
  `IdAnuncio` int(11) NOT NULL,
  `FhAnuncio` datetime DEFAULT NULL,
  `IdCliente` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Anunciante` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `DirAnunciante` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `TelAnunciante` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `Asignacion` int(11) DEFAULT NULL,
  `FhRecogida` datetime DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosVol` int(11) DEFAULT NULL,
  `Comentarios` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `Programada` tinyint(4) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `Efectiva` tinyint(4) DEFAULT NULL,
  `TiempoEfectiva` datetime DEFAULT NULL,
  `Coperaciones` smallint(6) DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  `IdConductor` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `IdVehiculo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `IdEmpresa` smallint(6) DEFAULT NULL,
  `IdAsignacion` int(11) DEFAULT NULL,
  `RazonSocial` varchar(100) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_ir_listadorecogidasvehiculo` */

DROP TABLE IF EXISTS `sql_ir_listadorecogidasvehiculo`;

/*!50001 DROP VIEW IF EXISTS `sql_ir_listadorecogidasvehiculo` */;
/*!50001 DROP TABLE IF EXISTS `sql_ir_listadorecogidasvehiculo` */;

/*!50001 CREATE TABLE `sql_ir_listadorecogidasvehiculo` (
  `IdAnuncio` int(11) NOT NULL,
  `FhAnuncio` datetime DEFAULT NULL,
  `IdCliente` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Anunciante` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `DirAnunciante` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `TelAnunciante` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `Asignacion` int(11) DEFAULT NULL,
  `FhRecogida` datetime DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosVol` int(11) DEFAULT NULL,
  `Comentarios` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `Programada` tinyint(4) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `Efectiva` tinyint(4) DEFAULT NULL,
  `TiempoEfectiva` datetime DEFAULT NULL,
  `Coperaciones` smallint(6) DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  `IdConductor` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `IdVehiculo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `IdEmpresa` smallint(6) DEFAULT NULL,
  `IdAsignacion` int(11) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Placa` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Flete` double DEFAULT NULL,
  `RazonSocial` varchar(100) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_ir_resumenrecogidas` */

DROP TABLE IF EXISTS `sql_ir_resumenrecogidas`;

/*!50001 DROP VIEW IF EXISTS `sql_ir_resumenrecogidas` */;
/*!50001 DROP TABLE IF EXISTS `sql_ir_resumenrecogidas` */;

/*!50001 CREATE TABLE `sql_ir_resumenrecogidas` (
  `IdAnuncio` int(11) NOT NULL,
  `FhAnuncio` datetime DEFAULT NULL,
  `IdCliente` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `Anunciante` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `DirAnunciante` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `TelAnunciante` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `IdRuta` int(11) DEFAULT NULL,
  `Asignacion` int(11) DEFAULT NULL,
  `FhRecogida` datetime DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `KilosReales` int(11) DEFAULT NULL,
  `KilosVol` int(11) DEFAULT NULL,
  `Comentarios` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `Programada` tinyint(4) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `Efectiva` tinyint(4) DEFAULT NULL,
  `TiempoEfectiva` datetime DEFAULT NULL,
  `Coperaciones` smallint(6) DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  `IdConductor` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `IdVehiculo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `IdEmpresa` smallint(6) DEFAULT NULL,
  `IdAsignacion` int(11) DEFAULT NULL,
  `Placa` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Flete` double DEFAULT NULL,
  `Rec` int(11) DEFAULT NULL,
  `Pend` int(11) DEFAULT NULL,
  `FechaRecogida` date DEFAULT NULL,
  `RazonSocial` varchar(100) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_ism_monitoreos` */

DROP TABLE IF EXISTS `sql_ism_monitoreos`;

/*!50001 DROP VIEW IF EXISTS `sql_ism_monitoreos` */;
/*!50001 DROP TABLE IF EXISTS `sql_ism_monitoreos` */;

/*!50001 CREATE TABLE `sql_ism_monitoreos` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `IDMonitoreo` int(11) DEFAULT NULL,
  `IDControlPost` int(11) DEFAULT NULL,
  `FhHrReporte` datetime DEFAULT NULL,
  `Notas` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `NmControlPost` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  `Tipo` tinyint(4) DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `Ok` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `FhHrSalida` datetime DEFAULT NULL,
  `Vehiculo` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `Destino` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `UltReporte` datetime DEFAULT NULL,
  `Frecuencia` int(11) DEFAULT NULL,
  `EnNovedad` tinyint(4) DEFAULT NULL,
  `SinMonitoreo` tinyint(4) DEFAULT NULL,
  `NmCiudadOrigen` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `NmCiudadDestino` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `FhExpedicion` datetime DEFAULT NULL,
  `IdConductor` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `NmConductor` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `IdManifiesto` int(11) DEFAULT NULL COMMENT '0',
  `CelularConductor` varchar(15) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_manconductor` */

DROP TABLE IF EXISTS `sql_manconductor`;

/*!50001 DROP VIEW IF EXISTS `sql_manconductor` */;
/*!50001 DROP TABLE IF EXISTS `sql_manconductor` */;

/*!50001 CREATE TABLE `sql_manconductor` (
  `Pertipid` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `Periden` varchar(11) CHARACTER SET latin1 NOT NULL,
  `perapell1` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `perapell2` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `pernombre` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `pertelefono` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `perdireccion` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `perciudad` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `percateglice` varchar(2) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_manmanifiesto` */

DROP TABLE IF EXISTS `sql_manmanifiesto`;

/*!50001 DROP VIEW IF EXISTS `sql_manmanifiesto` */;
/*!50001 DROP TABLE IF EXISTS `sql_manmanifiesto` */;

/*!50001 CREATE TABLE `sql_manmanifiesto` (
  `Nitempresa` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `Mannumero` int(11) DEFAULT NULL COMMENT '0',
  `mannumero_empresa` int(11) NOT NULL,
  `Manfechexped` datetime DEFAULT NULL,
  `manciud_origen` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `manciud_destin` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `Manplaca` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `Mantipidconduc` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `Manidenconduc` varchar(11) CHARACTER SET latin1 NOT NULL,
  `Manplacacsemir` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `Mantipocarrocer` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `Manconfiguraci` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `Manpeso` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `Manvlrtotflete` double DEFAULT NULL,
  `Manretefuente` double DEFAULT NULL,
  `mandescu_ley` double DEFAULT NULL,
  `manvlr_anticip` double DEFAULT NULL,
  `manlugar_pago` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `Manfechpagsal` date DEFAULT NULL,
  `manpago_cargue` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `manpago_descar` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `manobservacion` varchar(254) CHARACTER SET latin1 DEFAULT NULL,
  `mantipidtitular` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `manidentitular` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `manpesobv` int(11) DEFAULT NULL,
  `fechentrega` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_manremesas` */

DROP TABLE IF EXISTS `sql_manremesas`;

/*!50001 DROP VIEW IF EXISTS `sql_manremesas` */;
/*!50001 DROP TABLE IF EXISTS `sql_manremesas` */;

/*!50001 CREATE TABLE `sql_manremesas` (
  `nitempresa` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `remnumero` int(11) DEFAULT NULL COMMENT '0',
  `remcantidad` int(11) DEFAULT NULL,
  `rempeso` int(11) DEFAULT NULL,
  `remremtente` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `remdestinatario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `remciudad_desti` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `remnromanifiesto` int(11) DEFAULT NULL,
  `remnrorempresa` int(11) NOT NULL,
  `rempoliza` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `remaseguradora` decimal(11,0) DEFAULT NULL,
  `remvencimiento` date DEFAULT NULL,
  `remciudad_orig` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `Remvalremesa` double DEFAULT NULL,
  `Remvalproducto` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_manterceros` */

DROP TABLE IF EXISTS `sql_manterceros`;

/*!50001 DROP VIEW IF EXISTS `sql_manterceros` */;
/*!50001 DROP TABLE IF EXISTS `sql_manterceros` */;

/*!50001 CREATE TABLE `sql_manterceros` (
  `emptipid` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `empident` varchar(11) CHARACTER SET latin1 NOT NULL,
  `empnombr` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `emptelefono` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `empdireccion` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*Table structure for table `sql_manvehiculo` */

DROP TABLE IF EXISTS `sql_manvehiculo`;

/*!50001 DROP VIEW IF EXISTS `sql_manvehiculo` */;
/*!50001 DROP TABLE IF EXISTS `sql_manvehiculo` */;

/*!50001 CREATE TABLE `sql_manvehiculo` (
  `vehplaca` varchar(10) CHARACTER SET latin1 NOT NULL,
  `vehmarca` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `vehlinea` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `vehmodelo` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `vehmodelotransf` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `vehnroserie` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `vehcolor` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `vehtipocarrocer` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `vehconfiguraci` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `vehpeso` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `vehregistro` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `vehnro_poliza` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `vehtipidasegur` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `vehidenasegur` varchar(11) CHARACTER SET latin1,
  `vehfechvenci` date DEFAULT NULL,
  `vehplacsemir` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `vehtipidpropiet` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `vehidentprop` varchar(11) CHARACTER SET latin1,
  `Vehtipidtenenc` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `Vehidentenenc` varchar(11) CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci */;

/*View structure for view slq_im_formatoliqdesp */

/*!50001 DROP TABLE IF EXISTS `slq_im_formatoliqdesp` */;
/*!50001 DROP VIEW IF EXISTS `slq_im_formatoliqdesp` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `slq_im_formatoliqdesp` AS select `despachos`.`IdManifiesto` AS `IdManifiesto`,`despachos`.`OrdDespacho` AS `OrdDespacho`,`despachos`.`Tipo` AS `Tipo`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`FhCumplidos` AS `FhCumplidos`,`despachos`.`IdVehiculo` AS `IdVehiculo`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`IdCiudadOrigen` AS `IdCiudadOrigen`,`despachos`.`IdCiudadDestino` AS `IdCiudadDestino`,`despachos`.`Estado` AS `Estado`,`despachos`.`Remesas` AS `Remesas`,`despachos`.`Unidades` AS `Unidades`,`despachos`.`KilosReales` AS `KilosReales`,`despachos`.`KilosVol` AS `KilosVol`,`despachos`.`FleteCobra` AS `FleteCobra`,`despachos`.`ManejoCobra` AS `ManejoCobra`,`despachos`.`FleteCE` AS `FleteCE`,`despachos`.`ManejoCE` AS `ManejoCE`,`despachos`.`VrFlete` AS `VrFlete`,`despachos`.`VrAnticipo` AS `VrAnticipo`,`despachos`.`VrDctoPapeleria` AS `VrDctoPapeleria`,`despachos`.`VrDctoSeguridad` AS `VrDctoSeguridad`,`despachos`.`VrDctoCargue` AS `VrDctoCargue`,`despachos`.`VrDctoEstampilla` AS `VrDctoEstampilla`,`despachos`.`VrFleteAdicional` AS `VrFleteAdicional`,`despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,`despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,`despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,`despachos`.`SaldoDesp` AS `SaldoDesp`,`despachos`.`TotalViaje` AS `TotalViaje`,`despachos`.`NmConductor` AS `NmConductor`,`despachos`.`TRecaudo` AS `TRecaudo`,`despachos`.`Observaciones` AS `Observaciones`,`despachos`.`CO` AS `CO`,`despachos`.`Cerrado` AS `Cerrado`,`despachos`.`Liquidado` AS `Liquidado`,`despachos`.`IdUsuario` AS `IdUsuario`,`despachos`.`IdEmpresa` AS `IdEmpresa`,`despachos`.`AbonosCE` AS `AbonosCE`,`despachos`.`FletesNoCancelados` AS `FletesNoCancelados`,`ciudades`.`NmCiudad` AS `NmCiudad`,`informacionempresa`.`Logo` AS `Logo` from ((`despachos` left join `ciudades` on((`despachos`.`IdCiudadDestino` = `ciudades`.`IdCiudad`))) left join `informacionempresa` on((`despachos`.`IdEmpresa` = `informacionempresa`.`Id`))) */;

/*View structure for view slq_im_producciongral */

/*!50001 DROP TABLE IF EXISTS `slq_im_producciongral` */;
/*!50001 DROP VIEW IF EXISTS `slq_im_producciongral` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `slq_im_producciongral` AS select `guias`.`Guia` AS `Guia`,`guias`.`IdCliente` AS `IdCliente`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`Estado` AS `Estado`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`Anulada` AS `Anulada`,`guias`.`KilosFacturados` AS `KilosFacturados` from `guias` where (`guias`.`Anulada` = 0) order by `guias`.`Cuenta` */;

/*View structure for view sql_if_facturado */

/*!50001 DROP TABLE IF EXISTS `sql_if_facturado` */;
/*!50001 DROP VIEW IF EXISTS `sql_if_facturado` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_if_facturado` AS select `facturas`.`IdFactura` AS `IdFactura`,`facturas`.`FhFac` AS `FhFac`,`facturas`.`FhVenceFac` AS `FhVenceFac`,`facturas`.`IdCliente` AS `IdCliente`,`facturas`.`Estado` AS `Estado`,`facturas`.`Notas` AS `Notas`,`facturas`.`TFlete` AS `TFlete`,`facturas`.`TManejo` AS `TManejo`,`facturas`.`TOtros` AS `TOtros`,`facturas`.`DctoComercial` AS `DctoComercial`,`facturas`.`BaseCcial` AS `BaseCcial`,`facturas`.`DctoFinanciero` AS `DctoFinanciero`,`facturas`.`BaseFin` AS `BaseFin`,`facturas`.`AntesDeDcto` AS `AntesDeDcto`,`facturas`.`Abonos` AS `Abonos`,`facturas`.`TotalFactura` AS `TotalFactura`,`facturas`.`Saldo` AS `Saldo`,`facturas`.`NroGuias` AS `NroGuias`,`facturas`.`NroPlanillas` AS `NroPlanillas`,`facturas`.`NroConceptos` AS `NroConceptos`,`facturas`.`Exportada` AS `Exportada`,`terceros`.`RazonSocial` AS `RazonSocial` from (`facturas` left join `terceros` on((`facturas`.`IdCliente` = `terceros`.`IDTercero`))) where ((`facturas`.`Estado` <> _latin1'A') and (`facturas`.`Estado` <> _latin1'D')) */;

/*View structure for view sql_if_pend_fac */

/*!50001 DROP TABLE IF EXISTS `sql_if_pend_fac` */;
/*!50001 DROP VIEW IF EXISTS `sql_if_pend_fac` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_if_pend_fac` AS select `guias`.`Guia` AS `Guia`,`guias`.`CR` AS `CR`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`DocCliente` AS `DocCliente`,`ciudades`.`NmCiudad` AS `NmCiudad`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`Estado` AS `Estado`,`guias`.`IdFactura` AS `IdFactura`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`Anulada` AS `Anulada`,`guias`.`GuiFac` AS `GuiFac`,`guias`.`IdCliente` AS `IdCliente`,`guias`.`IdPlanillaFactura` AS `IdPlanillaFactura`,`guias`.`RelCliente` AS `RelCliente` from (`guias` join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) where ((`guias`.`Anulada` = 0) and (`guias`.`GuiFac` = 0) and ((`guias`.`IdTpCtaFlete` = 3) or (`guias`.`IdTpCtaManejo` = 3)) and (`guias`.`Facturada` = 0)) */;

/*View structure for view sql_if_pend_fac_cont */

/*!50001 DROP TABLE IF EXISTS `sql_if_pend_fac_cont` */;
/*!50001 DROP VIEW IF EXISTS `sql_if_pend_fac_cont` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sql_if_pend_fac_cont` AS select `guias`.`Guia` AS `Guia`,`guias`.`CR` AS `CR`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`DocCliente` AS `DocCliente`,`ciudades`.`NmCiudad` AS `NmCiudad`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`Estado` AS `Estado`,`guias`.`IdFactura` AS `IdFactura`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`Anulada` AS `Anulada`,`guias`.`GuiFac` AS `GuiFac`,`guias`.`IdCliente` AS `IdCliente`,`guias`.`IdPlanillaFactura` AS `IdPlanillaFactura`,`guias`.`RelCliente` AS `RelCliente` from (`guias` join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) where ((`guias`.`Anulada` = 0) and (`guias`.`GuiFac` = 0) and ((`guias`.`IdTpCtaFlete` = 1) or (`guias`.`IdTpCtaManejo` = 1)) and (`guias`.`Facturada2` = 0)) */;

/*View structure for view sql_if_pend_fac_dest */

/*!50001 DROP TABLE IF EXISTS `sql_if_pend_fac_dest` */;
/*!50001 DROP VIEW IF EXISTS `sql_if_pend_fac_dest` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sql_if_pend_fac_dest` AS select `guias`.`Guia` AS `Guia`,`guias`.`CR` AS `CR`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`DocCliente` AS `DocCliente`,`ciudades`.`NmCiudad` AS `NmCiudad`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`Estado` AS `Estado`,`guias`.`IdFactura` AS `IdFactura`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`Anulada` AS `Anulada`,`guias`.`GuiFac` AS `GuiFac`,`guias`.`IdCliente` AS `IdCliente`,`guias`.`IdPlanillaFactura` AS `IdPlanillaFactura`,`guias`.`RelCliente` AS `RelCliente` from (`guias` join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) where ((`guias`.`Anulada` = 0) and (`guias`.`GuiFac` = 0) and ((`guias`.`IdTpCtaFlete` = 2) or (`guias`.`IdTpCtaManejo` = 2)) and (`guias`.`Facturada3` = 0)) */;

/*View structure for view sql_im_aseguradora */

/*!50001 DROP TABLE IF EXISTS `sql_im_aseguradora` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_aseguradora` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_aseguradora` AS select `despachos`.`IdVehiculo` AS `IdVehiculo`,count(`despachos`.`OrdDespacho`) AS `NroDespachos`,`vehiculos`.`Modelo` AS `Modelo`,`vehiculos`.`Serie` AS `Serie`,`despachos`.`FhExpedicion` AS `FhExpedicion`,concat(`propietario`.`Nombre`,_latin1' ',`propietario`.`Apellido1`,_latin1' ',`propietario`.`Apellido2`) AS `NmPropietario`,concat(`tenedor`.`Nombre`,_latin1' ',`tenedor`.`Apellido1`,_latin1' ',`tenedor`.`Apellido2`) AS `NmTenedor`,sum(`despachos`.`Unidades`) AS `TUnidades`,sum(`despachos`.`KilosReales`) AS `TKilosReales`,sum(`despachos`.`Remesas`) AS `TRemesas` from (((`despachos` left join `vehiculos` on((`despachos`.`IdVehiculo` = `vehiculos`.`IdPlaca`))) left join `terceros` `propietario` on((`vehiculos`.`IdPropietario` = `propietario`.`IDTercero`))) left join `terceros` `tenedor` on((`vehiculos`.`IdTenedor` = `tenedor`.`IDTercero`))) where (`despachos`.`FhExpedicion` >= _latin1'2010-02-01') group by `despachos`.`IdVehiculo`,`vehiculos`.`Modelo`,`vehiculos`.`Serie` */;

/*View structure for view sql_im_contraentregas */

/*!50001 DROP TABLE IF EXISTS `sql_im_contraentregas` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_contraentregas` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_contraentregas` AS select `guias`.`Guia` AS `Guia`,`guias`.`IdCliente` AS `IdCliente`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`ciudades`.`NmCiudad` AS `NmCiudad`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`IdDespacho` AS `IdDespacho`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`Anulada` AS `Anulada` from (`guias` join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) where ((`guias`.`Anulada` = 0) and ((`guias`.`IdTpCtaFlete` = 2) or (`guias`.`IdTpCtaManejo` = 2) or (`guias`.`Recaudo` <> 0))) */;

/*View structure for view sql_im_correcciones */

/*!50001 DROP TABLE IF EXISTS `sql_im_correcciones` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_correcciones` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_correcciones` AS select `correcciones`.`IdCorreccion` AS `IdCorreccion`,`correcciones`.`GuiaCorregida` AS `GuiaCorregida`,`correcciones`.`FechaCorreccion` AS `FechaCorreccion`,`correcciones`.`CuentaC` AS `CuentaC`,`correcciones`.`IdUsuarioCorreccion` AS `IdUsuarioCorreccion`,`correcciones`.`IdTpServicio` AS `IdTpServicio`,`correcciones`.`VrDeclaradoC` AS `VrDeclaradoC`,`correcciones`.`VrFleteC` AS `VrFleteC`,`correcciones`.`VrManejoC` AS `VrManejoC`,`correcciones`.`GuiaFacC` AS `GuiaFacC`,`correcciones`.`KilosRealesC` AS `KilosRealesC`,`correcciones`.`KilosVolumenC` AS `KilosVolumenC`,`correcciones`.`KilosFacturadosC` AS `KilosFacturadosC`,`correcciones`.`UnidadesC` AS `UnidadesC`,`correcciones`.`IdTpCtaFleteC` AS `IdTpCtaFleteC`,`correcciones`.`IdTpCtaManejoC` AS `IdTpCtaManejoC`,`correcciones`.`Comentarios` AS `Comentarios`,`correcciones`.`IdCiuDestinoC` AS `IdCiuDestinoC`,`correcciones`.`DocClienteC` AS `DocClienteC`,`correcciones`.`RecaudoC` AS `RecaudoC`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente` from (`correcciones` left join `guias` on((`correcciones`.`GuiaCorregida` = `guias`.`Guia`))) */;

/*View structure for view sql_im_despachos */

/*!50001 DROP TABLE IF EXISTS `sql_im_despachos` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_despachos` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sql_im_despachos` AS select `despachos`.`OrdDespacho` AS `OrdDespacho`,`despachos`.`IdManifiesto` AS `IdManifiesto`,`despachos`.`Tipo` AS `Tipo`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`IdVehiculo` AS `IdVehiculo`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`IdCiudadDestino` AS `IdCiudadDestino`,`destino`.`NmCiudad` AS `NmCiudad`,`despachos`.`Estado` AS `Estado`,`despachos`.`Remesas` AS `Remesas`,`despachos`.`Unidades` AS `Unidades`,`despachos`.`KilosReales` AS `KilosReales`,`despachos`.`KilosVol` AS `KilosVol`,`despachos`.`FleteCobra` AS `FleteCobra`,`despachos`.`ManejoCobra` AS `ManejoCobra`,`despachos`.`FleteCE` AS `FleteCE`,`despachos`.`ManejoCE` AS `ManejoCE`,`despachos`.`VrFlete` AS `VrFlete`,`despachos`.`VrAnticipo` AS `VrAnticipo`,`despachos`.`TRecaudo` AS `TRecaudo`,`despachos`.`VrDeclaradoTotal` AS `VrDeclaradoTotal`,(`despachos`.`VrFlete` / `despachos`.`KilosReales`) AS `VrKiloPagado` from ((`despachos` left join `ciudades` `destino` on((`despachos`.`IdCiudadDestino` = `destino`.`IdCiudad`))) left join `vehiculos` on((`despachos`.`IdVehiculo` = `vehiculos`.`IdPlaca`))) where ((`despachos`.`Estado` <> _latin1'A') and (`despachos`.`Estado` <> _latin1'D') and (`despachos`.`FhExpedicion` >= _utf8'2010/01/01')) */;

/*View structure for view sql_im_despachospendientesabiertos */

/*!50001 DROP TABLE IF EXISTS `sql_im_despachospendientesabiertos` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_despachospendientesabiertos` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_despachospendientesabiertos` AS select `despachos`.`IdManifiesto` AS `IdManifiesto`,`despachos`.`OrdDespacho` AS `OrdDespacho`,`despachos`.`Tipo` AS `Tipo`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`FhCumplidos` AS `FhCumplidos`,`despachos`.`IdVehiculo` AS `IdVehiculo`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`IdRuta` AS `IdRuta`,`despachos`.`IdCiudadOrigen` AS `IdCiudadOrigen`,`despachos`.`IdCiudadDestino` AS `IdCiudadDestino`,`despachos`.`Estado` AS `Estado`,`despachos`.`Remesas` AS `Remesas`,`despachos`.`Unidades` AS `Unidades`,`despachos`.`KilosReales` AS `KilosReales`,`despachos`.`KilosVol` AS `KilosVol`,`despachos`.`FleteCobra` AS `FleteCobra`,`despachos`.`ManejoCobra` AS `ManejoCobra`,`despachos`.`FleteCE` AS `FleteCE`,`despachos`.`ManejoCE` AS `ManejoCE`,`despachos`.`VrFlete` AS `VrFlete`,`despachos`.`VrAnticipo` AS `VrAnticipo`,`despachos`.`VrDctoPapeleria` AS `VrDctoPapeleria`,`despachos`.`VrDctoSeguridad` AS `VrDctoSeguridad`,`despachos`.`VrDctoCargue` AS `VrDctoCargue`,`despachos`.`VrDctoEstampilla` AS `VrDctoEstampilla`,`despachos`.`VrFleteAdicional` AS `VrFleteAdicional`,`despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,`despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,`despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,`despachos`.`SaldoDesp` AS `SaldoDesp`,`despachos`.`TotalViaje` AS `TotalViaje`,`despachos`.`CO` AS `CO`,`despachos`.`Observaciones` AS `Observaciones`,`despachos`.`TRecaudo` AS `TRecaudo`,`despachos`.`Cerrado` AS `Cerrado` from `despachos` where ((`despachos`.`Estado` = _latin1'D') and (`despachos`.`Tipo` = 1)) */;

/*View structure for view sql_im_despachosporcerrar */

/*!50001 DROP TABLE IF EXISTS `sql_im_despachosporcerrar` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_despachosporcerrar` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_despachosporcerrar` AS select `despachos`.`IdManifiesto` AS `IdManifiesto`,`despachos`.`OrdDespacho` AS `OrdDespacho`,`despachos`.`Tipo` AS `Tipo`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`FhCumplidos` AS `FhCumplidos`,`despachos`.`IdVehiculo` AS `IdVehiculo`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`IdRuta` AS `IdRuta`,`despachos`.`IdCiudadOrigen` AS `IdCiudadOrigen`,`despachos`.`IdCiudadDestino` AS `IdCiudadDestino`,`despachos`.`Estado` AS `Estado`,`despachos`.`Remesas` AS `Remesas`,`despachos`.`Unidades` AS `Unidades`,`despachos`.`KilosReales` AS `KilosReales`,`despachos`.`KilosVol` AS `KilosVol`,`despachos`.`FleteCobra` AS `FleteCobra`,`despachos`.`ManejoCobra` AS `ManejoCobra`,`despachos`.`FleteCE` AS `FleteCE`,`despachos`.`ManejoCE` AS `ManejoCE`,`despachos`.`VrFlete` AS `VrFlete`,`despachos`.`VrAnticipo` AS `VrAnticipo`,`despachos`.`VrDctoPapeleria` AS `VrDctoPapeleria`,`despachos`.`VrDctoSeguridad` AS `VrDctoSeguridad`,`despachos`.`VrDctoCargue` AS `VrDctoCargue`,`despachos`.`VrDctoEstampilla` AS `VrDctoEstampilla`,`despachos`.`VrFleteAdicional` AS `VrFleteAdicional`,`despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,`despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,`despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,`despachos`.`SaldoDesp` AS `SaldoDesp`,`despachos`.`TotalViaje` AS `TotalViaje`,`despachos`.`CO` AS `CO`,`despachos`.`Observaciones` AS `Observaciones`,`despachos`.`TRecaudo` AS `TRecaudo`,`despachos`.`VrDeclaradoTotal` AS `VrDeclaradoTotal`,`despachos`.`ruta1` AS `ruta1`,`despachos`.`Kilometrostotal` AS `Kilometrostotal`,`despachos`.`tarifaflete` AS `tarifaflete`,`despachos`.`ciudadtramoorigen` AS `ciudadtramoorigen`,`despachos`.`ciudadtramodestino` AS `ciudadtramodestino`,`despachos`.`kilomtramoorigen` AS `kilomtramoorigen`,`despachos`.`kilomtramodestino` AS `kilomtramodestino`,`despachos`.`ManElectronico` AS `ManElectronico`,`despachos`.`NmConductor` AS `NmConductor`,`despachos`.`Cerrado` AS `Cerrado`,`despachos`.`Liquidado` AS `Liquidado`,`despachos`.`IdUsuario` AS `IdUsuario`,`despachos`.`IdEmpresa` AS `IdEmpresa`,`despachos`.`Exportado` AS `Exportado`,`despachos`.`LugarPago` AS `LugarPago`,`despachos`.`FhPagoSaldo` AS `FhPagoSaldo`,`despachos`.`PagoCargue` AS `PagoCargue`,`despachos`.`PagoDescargue` AS `PagoDescargue`,`despachos`.`Estado1` AS `Estado1`,`despachos`.`IdRuta1Min` AS `IdRuta1Min`,`despachos`.`IdRuta2Min` AS `IdRuta2Min`,`despachos`.`AbonosCE` AS `AbonosCE`,`despachos`.`FletesNoCancelados` AS `FletesNoCancelados`,`rutas`.`NmRuta` AS `NmRuta` from (`despachos` left join `rutas` on((`despachos`.`IdRuta` = `rutas`.`IdRuta`))) where (`despachos`.`Cerrado` = 0) */;

/*View structure for view sql_im_flec_vs_flep */

/*!50001 DROP TABLE IF EXISTS `sql_im_flec_vs_flep` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_flec_vs_flep` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sql_im_flec_vs_flep` AS select `despachos`.`IdManifiesto` AS `IdManifiesto`,`despachos`.`OrdDespacho` AS `OrdDespacho`,`despachos`.`Tipo` AS `Tipo`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`FhCumplidos` AS `FhCumplidos`,`despachos`.`IdVehiculo` AS `IdVehiculo`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`IdRuta` AS `IdRuta`,`despachos`.`IdCiudadOrigen` AS `IdCiudadOrigen`,`despachos`.`IdCiudadDestino` AS `IdCiudadDestino`,`despachos`.`Estado` AS `Estado`,`despachos`.`Remesas` AS `Remesas`,`despachos`.`Unidades` AS `Unidades`,`despachos`.`KilosReales` AS `KilosReales`,`despachos`.`KilosVol` AS `KilosVol`,`despachos`.`FleteCobra` AS `FleteCobra`,`despachos`.`ManejoCobra` AS `ManejoCobra`,`despachos`.`FleteCE` AS `FleteCE`,`despachos`.`ManejoCE` AS `ManejoCE`,`despachos`.`VrFlete` AS `VrFlete`,`despachos`.`VrAnticipo` AS `VrAnticipo`,`despachos`.`VrDctoPapeleria` AS `VrDctoPapeleria`,`despachos`.`VrDctoSeguridad` AS `VrDctoSeguridad`,`despachos`.`VrDctoCargue` AS `VrDctoCargue`,`despachos`.`VrDctoEstampilla` AS `VrDctoEstampilla`,`despachos`.`VrFleteAdicional` AS `VrFleteAdicional`,`despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,`despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,`despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,`despachos`.`SaldoDesp` AS `SaldoDesp`,`despachos`.`TotalViaje` AS `TotalViaje`,`despachos`.`CO` AS `CO`,`despachos`.`Observaciones` AS `Observaciones`,`despachos`.`TRecaudo` AS `TRecaudo`,`despachos`.`VrDeclaradoTotal` AS `VrDeclaradoTotal`,`despachos`.`NmConductor` AS `NmConductor`,`despachos`.`Cerrado` AS `Cerrado`,`despachos`.`Liquidado` AS `Liquidado`,`despachos`.`IdUsuario` AS `IdUsuario`,`despachos`.`IdEmpresa` AS `IdEmpresa`,`despachos`.`Exportado` AS `Exportado`,`ciudades`.`NmCiudad` AS `NmCiudad`,`rutas`.`NmRuta` AS `NmRuta` from ((`despachos` left join `ciudades` on((`despachos`.`IdCiudadDestino` = `ciudades`.`IdCiudad`))) left join `rutas` on((`despachos`.`IdRuta` = `rutas`.`IdRuta`))) where (`despachos`.`Estado` <> _latin1'A') */;

/*View structure for view sql_im_guias */

/*!50001 DROP TABLE IF EXISTS `sql_im_guias` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_guias` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_guias` AS select `guias`.`Guia` AS `Guia`,`ciudad_destino`.`NmCiudad` AS `NmCiudad`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`ruta_guia`.`NmRuta` AS `NmRuta`,`guias`.`IdRuta` AS `IdRuta`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`Despachada` AS `Despachada`,`guias`.`Entregada` AS `Entregada`,`guias`.`Descargada` AS `Descargada`,`guias`.`Anulada` AS `Anulada`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`Cliente` AS `Cliente` from ((`guias` left join `rutas` `ruta_guia` on((`guias`.`IdRuta` = `ruta_guia`.`IdRuta`))) left join `ciudades` `ciudad_destino` on((`guias`.`IdCiuDestino` = `ciudad_destino`.`IdCiudad`))) where (`guias`.`Anulada` = 0) */;

/*View structure for view sql_im_impanuncio */

/*!50001 DROP TABLE IF EXISTS `sql_im_impanuncio` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_impanuncio` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_impanuncio` AS select `anuncios`.`IdAnuncio` AS `IdAnuncio`,`anuncios`.`FhAnuncio` AS `FhAnuncio`,`anuncios`.`IdCliente` AS `IdCliente`,`anuncios`.`Anunciante` AS `Anunciante`,`anuncios`.`DirAnunciante` AS `DirAnunciante`,`anuncios`.`TelAnunciante` AS `TelAnunciante`,`anuncios`.`IdRuta` AS `IdRuta`,`anuncios`.`Asignacion` AS `Asignacion`,`anuncios`.`FhRecogida` AS `FhRecogida`,`anuncios`.`Unidades` AS `Unidades`,`anuncios`.`KilosReales` AS `KilosReales`,`anuncios`.`KilosVol` AS `KilosVol`,`anuncios`.`Comentarios` AS `Comentarios`,`anuncios`.`Programada` AS `Programada`,`anuncios`.`Estado` AS `Estado`,`anuncios`.`Efectiva` AS `Efectiva`,`anuncios`.`TiempoEfectiva` AS `TiempoEfectiva`,`anuncios`.`Coperaciones` AS `Coperaciones`,`anuncios`.`Orden` AS `Orden`,`anuncios`.`IdConductor` AS `IdConductor`,`anuncios`.`IdVehiculo` AS `IdVehiculo`,`conductores`.`Nombre` AS `NmConductor`,`conductores`.`Apellido1` AS `Apellido1Conductor`,`conductores`.`Apellido2` AS `Apellido2Conductor`,`rutasurbanas`.`NmRuta` AS `NmRuta`,`terceros`.`RazonSocial` AS `RazonSocial`,`colores`.`NmColor` AS `NmColor`,`marcas`.`NmMarca` AS `NmMarca`,`vehiculos`.`TOperacion` AS `TOperacion`,`vehiculos`.`Modelo` AS `Modelo`,`conductores`.`LicenciaConductor` AS `LicenciaConductor`,`anuncios`.`IdEmpresa` AS `IdEmpresa`,`informacionempresa`.`Logo` AS `Logo`,`informacionempresa`.`Nombre` AS `Nombre`,`informacionempresa`.`Direccion` AS `Direccion`,`informacionempresa`.`Telefono` AS `Telefono`,`informacionempresa`.`Nit` AS `Nit` from (((((((`anuncios` left join `conductores` on((`anuncios`.`IdConductor` = `conductores`.`IdConductor`))) left join `rutasurbanas` on((`anuncios`.`IdRuta` = `rutasurbanas`.`IdRutaRec`))) left join `terceros` on((`anuncios`.`IdCliente` = `terceros`.`IDTercero`))) left join `vehiculos` on((`anuncios`.`IdVehiculo` = `vehiculos`.`IdPlaca`))) left join `colores` on((`vehiculos`.`IdColor` = `colores`.`IdColor`))) left join `marcas` on((`vehiculos`.`IdMarca` = `marcas`.`IdMarca`))) left join `informacionempresa` on((`anuncios`.`IdEmpresa` = `informacionempresa`.`Id`))) */;

/*View structure for view sql_im_impguia */

/*!50001 DROP TABLE IF EXISTS `sql_im_impguia` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_impguia` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sql_im_impguia` AS select `guias`.`Guia` AS `Guia`,`guias`.`CR` AS `CR`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`DirDestinatario` AS `DirDestinatario`,`guias`.`TelDestinatario` AS `TelDestinatario`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`Observaciones` AS `Observaciones`,`guias`.`Cuenta` AS `Cuenta`,`terceros`.`RazonSocial` AS `RazonSocial`,`terceros`.`Direccion` AS `Direccion`,`terceros`.`Telefono` AS `Telefono`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`IdUsuario` AS `IdUsuario`,`origen`.`NmCiudad` AS `NmCiuOrigen`,`destino`.`NmCiudad` AS `NmCiuDestino`,`informacionempresa`.`Nit` AS `NitEmpresa`,`informacionempresa`.`Nombre` AS `NmEmpresa`,`informacionempresa`.`Direccion` AS `DirEmpresa`,`informacionempresa`.`Telefono` AS `TelEmpresa`,`informacionempresa`.`Logo` AS `Logo`,`guias`.`IdEmpresa` AS `IdEmpresa`,`cuentaflete`.`NmTpCuenta` AS `CuentaFlete`,`cuentamanejo`.`NmTpCuenta` AS `CuentaManejo` from ((((((`guias` left join `terceros` on((`guias`.`Cuenta` = `terceros`.`IDTercero`))) left join `ciudades` `destino` on((`guias`.`IdCiuDestino` = `destino`.`IdCiudad`))) left join `ciudades` `origen` on((`guias`.`IdCiuOrigen` = `origen`.`IdCiudad`))) left join `informacionempresa` on((`guias`.`IdEmpresa` = `informacionempresa`.`Id`))) left join `tpcuentas` `cuentaflete` on((`guias`.`IdTpCtaFlete` = `cuentaflete`.`IdTpCuenta`))) left join `tpcuentas` `cuentamanejo` on((`guias`.`IdTpCtaManejo` = `cuentamanejo`.`IdTpCuenta`))) */;

/*View structure for view sql_im_impmanifiesto */

/*!50001 DROP TABLE IF EXISTS `sql_im_impmanifiesto` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_impmanifiesto` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sql_im_impmanifiesto` AS select `despachos`.`IdManifiesto` AS `IdManifiesto`,`despachos`.`OrdDespacho` AS `OrdDespacho`,`despachos`.`Tipo` AS `Tipo`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`FhCumplidos` AS `FhCumplidos`,`despachos`.`IdVehiculo` AS `IdVehiculo`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`IdRuta` AS `IdRuta`,`despachos`.`IdCiudadOrigen` AS `IdCiudadOrigen`,`despachos`.`IdCiudadDestino` AS `IdCiudadDestino`,`despachos`.`Estado` AS `Estado`,`despachos`.`Remesas` AS `Remesas`,`despachos`.`Unidades` AS `Unidades`,`despachos`.`KilosReales` AS `KilosReales`,`despachos`.`KilosVol` AS `KilosVol`,`despachos`.`FleteCobra` AS `FleteCobra`,`despachos`.`ManejoCobra` AS `ManejoCobra`,`despachos`.`FleteCE` AS `FleteCE`,`despachos`.`ManejoCE` AS `ManejoCE`,`despachos`.`VrFlete` AS `VrFlete`,`despachos`.`VrAnticipo` AS `VrAnticipo`,`despachos`.`VrDctoPapeleria` AS `VrDctoPapeleria`,`despachos`.`VrDctoSeguridad` AS `VrDctoSeguridad`,`despachos`.`VrDctoCargue` AS `VrDctoCargue`,`despachos`.`VrDctoEstampilla` AS `VrDctoEstampilla`,`despachos`.`VrFleteAdicional` AS `VrFleteAdicional`,`despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,`despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,`despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,`despachos`.`SaldoDesp` AS `SaldoDesp`,`despachos`.`TotalViaje` AS `TotalViaje`,`despachos`.`CO` AS `CO`,`despachos`.`Observaciones` AS `Observaciones`,`despachos`.`TRecaudo` AS `TRecaudo`,`despachos`.`NmConductor` AS `NmConductor`,`despachos`.`Cerrado` AS `Cerrado`,`despachos`.`Liquidado` AS `Liquidado`,`despachos`.`IdUsuario` AS `IdUsuario`,`conductores`.`Nombre` AS `Nombre`,`conductores`.`Apellido1` AS `Apellido1`,`conductores`.`Apellido2` AS `Apellido2`,`conductores`.`Direccion` AS `Direccion`,`conductores`.`Categoria` AS `Categoria`,`conductores`.`Celular` AS `Celular`,`origen`.`NmCiudad` AS `NmCiudadOrigen`,`destino`.`NmCiudad` AS `NmCiudadDestino`,`marcas`.`NmMarca` AS `NmMarca`,`carrocerias`.`NmCarroceria` AS `NmCarroceria`,`colores`.`NmColor` AS `NmColor`,`lineas`.`NmLinea` AS `NmLinea`,`aseguradora`.`RazonSocial` AS `NmAseguradora`,`informacionempresa`.`Nombre` AS `NombreEmpresa`,`informacionempresa`.`Direccion` AS `DirEmpresa`,`informacionempresa`.`Telefono` AS `TelEmpresa`,`informacionempresa`.`Nit` AS `NitEmpresa`,`despachos`.`IdEmpresa` AS `IdEmpresa`,`informacionempresa`.`Logo` AS `Logo` from ((((((((((`despachos` left join `conductores` on((`despachos`.`IdConductor` = `conductores`.`IdConductor`))) left join `ciudades` `origen` on((`despachos`.`IdCiudadOrigen` = `origen`.`IdCiudad`))) left join `ciudades` `destino` on((`despachos`.`IdCiudadDestino` = `destino`.`IdCiudad`))) left join `vehiculos` on((`despachos`.`IdVehiculo` = `vehiculos`.`IdPlaca`))) left join `marcas` on((`vehiculos`.`IdMarca` = `marcas`.`IdMarca`))) left join `colores` on((`vehiculos`.`IdColor` = `colores`.`IdColor`))) left join `lineas` on((`vehiculos`.`IdLinea` = `lineas`.`IdLinea`))) left join `carrocerias` on((`vehiculos`.`IdCarroceria` = `carrocerias`.`IdCarroceria`))) left join `terceros` `aseguradora` on((`vehiculos`.`IdAseguradora` = `aseguradora`.`IDTercero`))) left join `informacionempresa` on((`despachos`.`IdEmpresa` = `informacionempresa`.`Id`))) where (`despachos`.`OrdDespacho` = 10000) */;

/*View structure for view sql_im_impnovedadsolucionada */

/*!50001 DROP TABLE IF EXISTS `sql_im_impnovedadsolucionada` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_impnovedadsolucionada` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_impnovedadsolucionada` AS select `novedades`.`ID` AS `ID`,`novedades`.`Guia` AS `Guia`,`novedades`.`IdNovedad` AS `IdNovedad`,`novedades`.`Comentarios` AS `Comentarios`,`novedades`.`UsuIng` AS `UsuIng`,`novedades`.`FHIngreso` AS `FHIngreso`,`novedades`.`FhNovedad` AS `FhNovedad`,`novedades`.`Solucion` AS `Solucion`,`novedades`.`UsuSol` AS `UsuSol`,`novedades`.`FhSolucion` AS `FhSolucion`,`novedades`.`Solucionada` AS `Solucionada`,`causalesnovedad`.`NmNovedad` AS `NmNovedad`,`usuarios`.`NmUsuario` AS `NmUsuario` from ((`novedades` join `causalesnovedad` on((`novedades`.`IdNovedad` = `causalesnovedad`.`IdNovedad`))) join `usuarios` on((`novedades`.`UsuSol` = `usuarios`.`IDUsuario`))) */;

/*View structure for view sql_im_novedadespendientes */

/*!50001 DROP TABLE IF EXISTS `sql_im_novedadespendientes` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_novedadespendientes` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_novedadespendientes` AS select `novedades`.`ID` AS `ID`,`novedades`.`Guia` AS `Guia`,`novedades`.`IdNovedad` AS `IdNovedad`,`novedades`.`Comentarios` AS `Comentarios`,`novedades`.`UsuIng` AS `UsuIng`,`novedades`.`FHIngreso` AS `FHIngreso`,`novedades`.`FhNovedad` AS `FhNovedad`,`novedades`.`Solucion` AS `Solucion`,`novedades`.`UsuSol` AS `UsuSol`,`novedades`.`FhSolucion` AS `FhSolucion`,`novedades`.`Solucionada` AS `Solucionada`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`causalesnovedad`.`NmNovedad` AS `NmNovedad`,`guias`.`DocCliente` AS `DocCliente`,`ciudades`.`NmCiudad` AS `NmCiudad`,`guias`.`NmDestinatario` AS `NmDestinatario` from (((`novedades` join `guias` on((`novedades`.`Guia` = `guias`.`Guia`))) join `causalesnovedad` on((`novedades`.`IdNovedad` = `causalesnovedad`.`IdNovedad`))) join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) where (`novedades`.`Solucionada` = 0) */;

/*View structure for view sql_im_novedadessolucionadas */

/*!50001 DROP TABLE IF EXISTS `sql_im_novedadessolucionadas` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_novedadessolucionadas` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_novedadessolucionadas` AS select `novedades`.`ID` AS `ID`,`novedades`.`Guia` AS `Guia`,`novedades`.`IdNovedad` AS `IdNovedad`,`novedades`.`Comentarios` AS `Comentarios`,`novedades`.`UsuIng` AS `UsuIng`,`novedades`.`FHIngreso` AS `FHIngreso`,`novedades`.`FhNovedad` AS `FhNovedad`,`novedades`.`Solucion` AS `Solucion`,`novedades`.`UsuSol` AS `UsuSol`,`novedades`.`FhSolucion` AS `FhSolucion`,`novedades`.`Solucionada` AS `Solucionada`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`causalesnovedad`.`NmNovedad` AS `NmNovedad`,`guias`.`DocCliente` AS `DocCliente`,`ciudades`.`NmCiudad` AS `NmCiudad`,`guias`.`NmDestinatario` AS `NmDestinatario` from (((`novedades` left join `guias` on((`novedades`.`Guia` = `guias`.`Guia`))) join `causalesnovedad` on((`novedades`.`IdNovedad` = `causalesnovedad`.`IdNovedad`))) join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) where (`novedades`.`Solucionada` = 1) */;

/*View structure for view sql_im_ordendespacho */

/*!50001 DROP TABLE IF EXISTS `sql_im_ordendespacho` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_ordendespacho` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_ordendespacho` AS select `guias`.`Guia` AS `Guia`,`guias`.`CR` AS `CR`,`guias`.`Remitente` AS `Remitente`,`guias`.`IdCliente` AS `IdCliente`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`DirDestinatario` AS `DirDestinatario`,`guias`.`TelDestinatario` AS `TelDestinatario`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`guias`.`IdRuta` AS `IdRuta`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`FhEntregaMercancia` AS `FhEntregaMercancia`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`Estado` AS `Estado`,`guias`.`IdFactura` AS `IdFactura`,`guias`.`IdDespacho` AS `IdDespacho`,`guias`.`Observaciones` AS `Observaciones`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`Orden` AS `Orden`,`guias`.`EmpaqueRef` AS `EmpaqueRef`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`CPorte` AS `CPorte`,`guias`.`Entregada` AS `Entregada`,`guias`.`Descargada` AS `Descargada`,`guias`.`FhDescargada` AS `FhDescargada`,`guias`.`Despachada` AS `Despachada`,`guias`.`Anulada` AS `Anulada`,`ciudades`.`NmCiudad` AS `NmCiudad` from (`guias` join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) */;

/*View structure for view sql_im_pen_ent_cli */

/*!50001 DROP TABLE IF EXISTS `sql_im_pen_ent_cli` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_pen_ent_cli` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_pen_ent_cli` AS select `guias`.`Guia` AS `Guia`,`guias`.`CR` AS `CR`,`guias`.`Remitente` AS `Remitente`,`guias`.`IdCliente` AS `IdCliente`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`DirDestinatario` AS `DirDestinatario`,`guias`.`TelDestinatario` AS `TelDestinatario`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`guias`.`IdRuta` AS `IdRuta`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`FhEntregaMercancia` AS `FhEntregaMercancia`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`Estado` AS `Estado`,`guias`.`IdFactura` AS `IdFactura`,`guias`.`IdDespacho` AS `IdDespacho`,`guias`.`Observaciones` AS `Observaciones`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`Orden` AS `Orden`,`guias`.`EmpaqueRef` AS `EmpaqueRef`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`CPorte` AS `CPorte`,`guias`.`Entregada` AS `Entregada`,`guias`.`Descargada` AS `Descargada`,`guias`.`FhDescargada` AS `FhDescargada`,`guias`.`Despachada` AS `Despachada`,`guias`.`Anulada` AS `Anulada`,`ciudades`.`NmCiudad` AS `NmCiudad` from (`guias` join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) where ((`guias`.`Entregada` = 0) and (`guias`.`Anulada` = 0) and (`guias`.`Despachada` = 1)) */;

/*View structure for view sql_im_pend_desp */

/*!50001 DROP TABLE IF EXISTS `sql_im_pend_desp` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_pend_desp` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_pend_desp` AS select `guias`.`Guia` AS `Guia`,`guias`.`CR` AS `CR`,`guias`.`Remitente` AS `Remitente`,`guias`.`IdCliente` AS `IdCliente`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`guias`.`TelDestinatario` AS `TelDestinatario`,`guias`.`DirDestinatario` AS `DirDestinatario`,`guias`.`IdRuta` AS `IdRuta`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`FhEntregaMercancia` AS `FhEntregaMercancia`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`Estado` AS `Estado`,`guias`.`IdFactura` AS `IdFactura`,`guias`.`IdDespacho` AS `IdDespacho`,`guias`.`Observaciones` AS `Observaciones`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`Orden` AS `Orden`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`CPorte` AS `CPorte`,`guias`.`Entregada` AS `Entregada`,`guias`.`Descargada` AS `Descargada`,`guias`.`FhDescargada` AS `FhDescargada`,`rutas`.`NmRuta` AS `NmRuta`,`ciudades`.`NmCiudad` AS `NmCiudad` from ((`guias` left join `rutas` on((`guias`.`IdRuta` = `rutas`.`IdRuta`))) left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) where ((`guias`.`Despachada` = 0) and (`guias`.`Anulada` = 0)) */;

/*View structure for view sql_im_pendescargar */

/*!50001 DROP TABLE IF EXISTS `sql_im_pendescargar` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_pendescargar` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_pendescargar` AS select `guias`.`Guia` AS `Guia`,`guias`.`CR` AS `CR`,`guias`.`Remitente` AS `Remitente`,`guias`.`IdCliente` AS `IdCliente`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`DirDestinatario` AS `DirDestinatario`,`guias`.`TelDestinatario` AS `TelDestinatario`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`guias`.`IdRuta` AS `IdRuta`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`FhEntregaMercancia` AS `FhEntregaMercancia`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`Unidades` AS `Unidades`,`guias`.`Estado` AS `Estado`,`guias`.`IdDespacho` AS `IdDespacho`,`guias`.`Observaciones` AS `Observaciones`,`guias`.`IdFactura` AS `IdFactura`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`Orden` AS `Orden`,`guias`.`EmpaqueRef` AS `EmpaqueRef`,`guias`.`RelCliente` AS `RelCliente`,`guias`.`IdCiuOrigen` AS `IdCiuOrigen`,`guias`.`IdRelEntrega` AS `IdRelEntrega`,`guias`.`FhDescargada` AS `FhDescargada`,`guias`.`Despachada` AS `Despachada`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`CPorte` AS `CPorte`,`guias`.`Entregada` AS `Entregada`,`guias`.`Descargada` AS `Descargada`,`guias`.`Anulada` AS `Anulada`,`guias`.`GuiFac` AS `GuiFac`,`guias`.`Facturada` AS `Facturada`,`guias`.`IdUsuario` AS `IdUsuario`,`guias`.`IdPlanillaFactura` AS `IdPlanillaFactura`,`guias`.`IdEmpresa` AS `IdEmpresa`,`guias`.`Relacionada` AS `Relacionada`,`guias`.`EnNovedad` AS `EnNovedad`,`ciudades`.`NmCiudad` AS `NmCiudad`,`despachos`.`IdVehiculo` AS `IdVehiculo`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`NmConductor` AS `NmConductor` from ((`guias` left join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`))) left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) where ((`guias`.`Anulada` = 0) and (`guias`.`Descargada` = 0) and (`guias`.`Despachada` = 1)) */;

/*View structure for view sql_im_produccionruta */

/*!50001 DROP TABLE IF EXISTS `sql_im_produccionruta` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_produccionruta` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_produccionruta` AS select `guias`.`Guia` AS `Guia`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`rutas`.`NmRuta` AS `NmRuta`,`despachos`.`IdRuta` AS `IdRuta`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`COIng` AS `COIng`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo` from ((`guias` left join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`))) left join `rutas` on((`despachos`.`IdRuta` = `rutas`.`IdRuta`))) where (`guias`.`Anulada` = 0) */;

/*View structure for view sql_im_reexpediciones */

/*!50001 DROP TABLE IF EXISTS `sql_im_reexpediciones` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_reexpediciones` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_reexpediciones` AS select `guias`.`Guia` AS `Guia`,`despachos`.`Tipo` AS `Tipo`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`IdDespacho` AS `IdDespacho` from (`guias` left join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`))) where (`despachos`.`Tipo` = 1) */;

/*View structure for view sql_im_rel_guias_desp */

/*!50001 DROP TABLE IF EXISTS `sql_im_rel_guias_desp` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_rel_guias_desp` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_rel_guias_desp` AS select `guias`.`Guia` AS `Guia`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`ciudades`.`NmCiudad` AS `NmCiudad`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`Estado` AS `Estado`,`guias`.`IdDespacho` AS `IdDespacho`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`Orden` AS `Orden`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`Anulada` AS `Anulada`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`IdVehiculo` AS `IdVehiculo`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`Remesas` AS `Remesas`,`despachos`.`Unidades` AS `UnidadesDespacho`,`despachos`.`KilosReales` AS `KRDespacho`,`despachos`.`VrFlete` AS `VrFleteDespacho`,`despachos`.`VrAnticipo` AS `VrAnticipo`,`despachos`.`Observaciones` AS `Observaciones`,`despachos`.`TRecaudo` AS `TRecaudo`,`despachos`.`TotalViaje` AS `TotalViaje`,`despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,`despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,`despachos`.`NmConductor` AS `NmConductor` from ((`guias` left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) left join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`))) */;

/*View structure for view sql_im_relguiasplanilla */

/*!50001 DROP TABLE IF EXISTS `sql_im_relguiasplanilla` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_relguiasplanilla` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_relguiasplanilla` AS select `guias`.`Guia` AS `Guia`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`ciudades`.`NmCiudad` AS `NmCiudad`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`IdFactura` AS `IdFactura`,`guias`.`Cliente` AS `Cliente`,`guias`.`Anulada` AS `Anulada`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`IdPlanillaFactura` AS `IdPlanillaFactura`,`facturasplanillas`.`RelCliente` AS `RelCliente` from ((`guias` left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) left join `facturasplanillas` on((`guias`.`IdPlanillaFactura` = `facturasplanillas`.`IdPlanilla`))) */;

/*View structure for view sql_im_resumendespacho */

/*!50001 DROP TABLE IF EXISTS `sql_im_resumendespacho` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_resumendespacho` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_resumendespacho` AS select `guias`.`Guia` AS `Guia`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guiadestino`.`NmCiudad` AS `NmCiudad`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`Cliente` AS `Cliente`,`guias`.`Cuenta` AS `Cuenta`,`despachos`.`IdManifiesto` AS `IdManifiesto`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`IdVehiculo` AS `IdVehiculo`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`IdRuta` AS `IdRuta`,`despachos`.`Remesas` AS `Remesas`,`despachos`.`Unidades` AS `UnidadesDespacho`,`despachos`.`KilosReales` AS `KilosRealesDespacho`,`despachos`.`FleteCobra` AS `FleteCobra`,`despachos`.`ManejoCobra` AS `ManejoCobra`,`despachos`.`FleteCE` AS `FleteCE`,`despachos`.`ManejoCE` AS `ManejoCE`,`despachos`.`VrFlete` AS `VrFleteDespacho`,`despachos`.`VrAnticipo` AS `VrAnticipo`,`despachos`.`TRecaudo` AS `TRecaudo`,`despachos`.`NmConductor` AS `NmConductor`,`guias`.`IdDespacho` AS `IdDespacho` from ((`guias` left join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`))) left join `ciudades` `guiadestino` on((`guias`.`IdCiuDestino` = `guiadestino`.`IdCiudad`))) */;

/*View structure for view sql_im_ventascontado */

/*!50001 DROP TABLE IF EXISTS `sql_im_ventascontado` */;
/*!50001 DROP VIEW IF EXISTS `sql_im_ventascontado` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_im_ventascontado` AS select `guias`.`Guia` AS `Guia`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`GuiFac` AS `GuiFac`,`guias`.`Anulada` AS `Anulada`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`Estado` AS `Estado`,`recibos`.`Manejo` AS `Manejo`,`recibos`.`Flete` AS `Flete`,`recibos`.`NroRecibo` AS `NroRecibo` from (`recibos` left join `guias` on((`recibos`.`GuiaRecibo` = `guias`.`Guia`))) */;

/*View structure for view sql_ir_listadorecogidas */

/*!50001 DROP TABLE IF EXISTS `sql_ir_listadorecogidas` */;
/*!50001 DROP VIEW IF EXISTS `sql_ir_listadorecogidas` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_ir_listadorecogidas` AS select `anuncios`.`IdAnuncio` AS `IdAnuncio`,`anuncios`.`FhAnuncio` AS `FhAnuncio`,`anuncios`.`IdCliente` AS `IdCliente`,`anuncios`.`Anunciante` AS `Anunciante`,`anuncios`.`DirAnunciante` AS `DirAnunciante`,`anuncios`.`TelAnunciante` AS `TelAnunciante`,`anuncios`.`IdRuta` AS `IdRuta`,`anuncios`.`Asignacion` AS `Asignacion`,`anuncios`.`FhRecogida` AS `FhRecogida`,`anuncios`.`Unidades` AS `Unidades`,`anuncios`.`KilosReales` AS `KilosReales`,`anuncios`.`KilosVol` AS `KilosVol`,`anuncios`.`Comentarios` AS `Comentarios`,`anuncios`.`Programada` AS `Programada`,`anuncios`.`Estado` AS `Estado`,`anuncios`.`Efectiva` AS `Efectiva`,`anuncios`.`TiempoEfectiva` AS `TiempoEfectiva`,`anuncios`.`Coperaciones` AS `Coperaciones`,`anuncios`.`Orden` AS `Orden`,`anuncios`.`IdConductor` AS `IdConductor`,`anuncios`.`IdVehiculo` AS `IdVehiculo`,`anuncios`.`IdEmpresa` AS `IdEmpresa`,`anuncios`.`IdAsignacion` AS `IdAsignacion`,`terceros`.`RazonSocial` AS `RazonSocial` from (`anuncios` left join `terceros` on((`anuncios`.`IdCliente` = `terceros`.`IDTercero`))) */;

/*View structure for view sql_ir_listadorecogidasvehiculo */

/*!50001 DROP TABLE IF EXISTS `sql_ir_listadorecogidasvehiculo` */;
/*!50001 DROP VIEW IF EXISTS `sql_ir_listadorecogidasvehiculo` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_ir_listadorecogidasvehiculo` AS select `anuncios`.`IdAnuncio` AS `IdAnuncio`,`anuncios`.`FhAnuncio` AS `FhAnuncio`,`anuncios`.`IdCliente` AS `IdCliente`,`anuncios`.`Anunciante` AS `Anunciante`,`anuncios`.`DirAnunciante` AS `DirAnunciante`,`anuncios`.`TelAnunciante` AS `TelAnunciante`,`anuncios`.`IdRuta` AS `IdRuta`,`anuncios`.`Asignacion` AS `Asignacion`,`anuncios`.`FhRecogida` AS `FhRecogida`,`anuncios`.`Unidades` AS `Unidades`,`anuncios`.`KilosReales` AS `KilosReales`,`anuncios`.`KilosVol` AS `KilosVol`,`anuncios`.`Comentarios` AS `Comentarios`,`anuncios`.`Programada` AS `Programada`,`anuncios`.`Estado` AS `Estado`,`anuncios`.`Efectiva` AS `Efectiva`,`anuncios`.`TiempoEfectiva` AS `TiempoEfectiva`,`anuncios`.`Coperaciones` AS `Coperaciones`,`anuncios`.`Orden` AS `Orden`,`anuncios`.`IdConductor` AS `IdConductor`,`anuncios`.`IdVehiculo` AS `IdVehiculo`,`anuncios`.`IdEmpresa` AS `IdEmpresa`,`anuncios`.`IdAsignacion` AS `IdAsignacion`,`vehiculosrecogida`.`Fecha` AS `Fecha`,`vehiculosrecogida`.`Placa` AS `Placa`,`vehiculosrecogida`.`Flete` AS `Flete`,`terceros`.`RazonSocial` AS `RazonSocial` from ((`anuncios` left join `vehiculosrecogida` on((`anuncios`.`IdAsignacion` = `vehiculosrecogida`.`IdAsignacion`))) left join `terceros` on((`anuncios`.`IdCliente` = `terceros`.`IDTercero`))) */;

/*View structure for view sql_ir_resumenrecogidas */

/*!50001 DROP TABLE IF EXISTS `sql_ir_resumenrecogidas` */;
/*!50001 DROP VIEW IF EXISTS `sql_ir_resumenrecogidas` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_ir_resumenrecogidas` AS select `anuncios`.`IdAnuncio` AS `IdAnuncio`,`anuncios`.`FhAnuncio` AS `FhAnuncio`,`anuncios`.`IdCliente` AS `IdCliente`,`anuncios`.`Anunciante` AS `Anunciante`,`anuncios`.`DirAnunciante` AS `DirAnunciante`,`anuncios`.`TelAnunciante` AS `TelAnunciante`,`anuncios`.`IdRuta` AS `IdRuta`,`anuncios`.`Asignacion` AS `Asignacion`,`anuncios`.`FhRecogida` AS `FhRecogida`,`anuncios`.`Unidades` AS `Unidades`,`anuncios`.`KilosReales` AS `KilosReales`,`anuncios`.`KilosVol` AS `KilosVol`,`anuncios`.`Comentarios` AS `Comentarios`,`anuncios`.`Programada` AS `Programada`,`anuncios`.`Estado` AS `Estado`,`anuncios`.`Efectiva` AS `Efectiva`,`anuncios`.`TiempoEfectiva` AS `TiempoEfectiva`,`anuncios`.`Coperaciones` AS `Coperaciones`,`anuncios`.`Orden` AS `Orden`,`anuncios`.`IdConductor` AS `IdConductor`,`anuncios`.`IdVehiculo` AS `IdVehiculo`,`anuncios`.`IdEmpresa` AS `IdEmpresa`,`anuncios`.`IdAsignacion` AS `IdAsignacion`,`vehiculosrecogida`.`Placa` AS `Placa`,`vehiculosrecogida`.`Flete` AS `Flete`,`vehiculosrecogida`.`Rec` AS `Rec`,`vehiculosrecogida`.`Pend` AS `Pend`,`vehiculosrecogida`.`Fecha` AS `FechaRecogida`,`terceros`.`RazonSocial` AS `RazonSocial` from ((`anuncios` left join `vehiculosrecogida` on((`anuncios`.`IdAsignacion` = `vehiculosrecogida`.`IdAsignacion`))) left join `terceros` on((`anuncios`.`IdCliente` = `terceros`.`IDTercero`))) where (`anuncios`.`FhAnuncio` >= _latin1'2011/01/01') */;

/*View structure for view sql_ism_monitoreos */

/*!50001 DROP TABLE IF EXISTS `sql_ism_monitoreos` */;
/*!50001 DROP VIEW IF EXISTS `sql_ism_monitoreos` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `sql_ism_monitoreos` AS select `monitoreocontrolpost`.`ID` AS `ID`,`monitoreocontrolpost`.`IDMonitoreo` AS `IDMonitoreo`,`monitoreocontrolpost`.`IDControlPost` AS `IDControlPost`,`monitoreocontrolpost`.`FhHrReporte` AS `FhHrReporte`,`monitoreocontrolpost`.`Notas` AS `Notas`,`controlpost`.`NmControlPost` AS `NmControlPost`,`monitoreovehiculos`.`Orden` AS `Orden`,`monitoreovehiculos`.`Tipo` AS `Tipo`,`monitoreovehiculos`.`Estado` AS `Estado`,`monitoreovehiculos`.`Ok` AS `Ok`,`monitoreovehiculos`.`FhHrSalida` AS `FhHrSalida`,`monitoreovehiculos`.`Vehiculo` AS `Vehiculo`,`monitoreovehiculos`.`Destino` AS `Destino`,`monitoreovehiculos`.`UltReporte` AS `UltReporte`,`monitoreovehiculos`.`Frecuencia` AS `Frecuencia`,`monitoreovehiculos`.`EnNovedad` AS `EnNovedad`,`monitoreovehiculos`.`SinMonitoreo` AS `SinMonitoreo`,`origen`.`NmCiudad` AS `NmCiudadOrigen`,`destinodesp`.`NmCiudad` AS `NmCiudadDestino`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`NmConductor` AS `NmConductor`,`despachos`.`IdManifiesto` AS `IdManifiesto`,`conductores`.`Celular` AS `CelularConductor` from ((((((`monitoreocontrolpost` left join `monitoreovehiculos` on((`monitoreocontrolpost`.`IDMonitoreo` = `monitoreovehiculos`.`ID`))) left join `controlpost` on((`monitoreocontrolpost`.`IDControlPost` = `controlpost`.`IdControlPost`))) left join `despachos` on((`monitoreovehiculos`.`Orden` = `despachos`.`OrdDespacho`))) left join `ciudades` `origen` on((`despachos`.`IdCiudadOrigen` = `origen`.`IdCiudad`))) left join `ciudades` `destinodesp` on((`despachos`.`IdCiudadDestino` = `destinodesp`.`IdCiudad`))) left join `conductores` on((`despachos`.`IdConductor` = `conductores`.`IdConductor`))) */;

/*View structure for view sql_manconductor */

/*!50001 DROP TABLE IF EXISTS `sql_manconductor` */;
/*!50001 DROP VIEW IF EXISTS `sql_manconductor` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sql_manconductor` AS select `conductores`.`TpIdConductor` AS `Pertipid`,`conductores`.`IdConductor` AS `Periden`,`conductores`.`Apellido1` AS `perapell1`,`conductores`.`Apellido2` AS `perapell2`,`conductores`.`Nombre` AS `pernombre`,`conductores`.`TelConductor` AS `pertelefono`,`conductores`.`Direccion` AS `perdireccion`,`ciudades`.`CodMinTrans` AS `perciudad`,`conductores`.`Categoria` AS `percateglice` from (`ciudades` join `conductores` on((`ciudades`.`IdCiudad` = `conductores`.`IdCiudad`))) */;

/*View structure for view sql_manmanifiesto */

/*!50001 DROP TABLE IF EXISTS `sql_manmanifiesto` */;
/*!50001 DROP VIEW IF EXISTS `sql_manmanifiesto` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sql_manmanifiesto` AS select `informacionempresa`.`Nit` AS `Nitempresa`,`despachos`.`IdManifiesto` AS `Mannumero`,`despachos`.`OrdDespacho` AS `mannumero_empresa`,`despachos`.`FhExpedicion` AS `Manfechexped`,`ciuorigen`.`CodMinTrans` AS `manciud_origen`,`ciudestino`.`CodMinTrans` AS `manciud_destin`,`despachos`.`IdVehiculo` AS `Manplaca`,`conductores`.`TpIdConductor` AS `Mantipidconduc`,`conductores`.`IdConductor` AS `Manidenconduc`,`vehiculos`.`PlacaRemolque` AS `Manplacacsemir`,`carrocerias`.`CodMinTrans` AS `Mantipocarrocer`,`vehiculos`.`VehConfiguracion` AS `Manconfiguraci`,`vehiculos`.`PesoVacio` AS `Manpeso`,`despachos`.`VrFlete` AS `Manvlrtotflete`,`despachos`.`VrDctoRteFte` AS `Manretefuente`,`despachos`.`VrDctoIndCom` AS `mandescu_ley`,`despachos`.`VrAnticipo` AS `manvlr_anticip`,`despachos`.`LugarPago` AS `manlugar_pago`,`despachos`.`FhPagoSaldo` AS `Manfechpagsal`,`despachos`.`PagoCargue` AS `manpago_cargue`,`despachos`.`PagoDescargue` AS `manpago_descar`,`despachos`.`Observaciones` AS `manobservacion`,`titular`.`TpDoc` AS `mantipidtitular`,`vehiculos`.`IdPropietario` AS `manidentitular`,`despachos`.`KilosReales` AS `manpesobv`,`despachos`.`FhCumplidos` AS `fechentrega` from (((((((`despachos` left join `informacionempresa` on((`despachos`.`IdEmpresa` = `informacionempresa`.`Id`))) join `ciudades` `ciuorigen` on((`despachos`.`IdCiudadOrigen` = `ciuorigen`.`IdCiudad`))) join `ciudades` `ciudestino` on((`despachos`.`IdCiudadDestino` = `ciudestino`.`IdCiudad`))) join `conductores` on((`despachos`.`IdConductor` = `conductores`.`IdConductor`))) join `vehiculos` on((`despachos`.`IdVehiculo` = `vehiculos`.`IdPlaca`))) join `carrocerias` on((`vehiculos`.`IdCarroceria` = `carrocerias`.`IdCarroceria`))) join `terceros` `titular` on((`vehiculos`.`IdPropietario` = `titular`.`IDTercero`))) where (`despachos`.`OrdDespacho` = 15148) */;

/*View structure for view sql_manremesas */

/*!50001 DROP TABLE IF EXISTS `sql_manremesas` */;
/*!50001 DROP VIEW IF EXISTS `sql_manremesas` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sql_manremesas` AS select `informacionempresa`.`Nit` AS `nitempresa`,`despachos`.`IdManifiesto` AS `remnumero`,`guias`.`Unidades` AS `remcantidad`,`guias`.`KilosReales` AS `rempeso`,`guias`.`Remitente` AS `remremtente`,`guias`.`NmDestinatario` AS `remdestinatario`,`ciudestino`.`CodMinTrans` AS `remciudad_desti`,`guias`.`IdDespacho` AS `remnromanifiesto`,`guias`.`Guia` AS `remnrorempresa`,`informacionempresa`.`NroPoliza` AS `rempoliza`,`informacionempresa`.`NitAseguradora` AS `remaseguradora`,`informacionempresa`.`VencePoliza` AS `remvencimiento`,`ciuorigen`.`CodMinTrans` AS `remciudad_orig`,`guias`.`VrFlete` AS `Remvalremesa`,`guias`.`VrDeclarado` AS `Remvalproducto` from ((((`guias` left join `informacionempresa` on((`guias`.`IdEmpresa` = `informacionempresa`.`Id`))) join `ciudades` `ciudestino` on((`guias`.`IdCiuDestino` = `ciudestino`.`IdCiudad`))) join `ciudades` `ciuorigen` on((`guias`.`IdCiuOrigen` = `ciuorigen`.`IdCiudad`))) join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`))) where (`guias`.`IdDespacho` = 14018) */;

/*View structure for view sql_manterceros */

/*!50001 DROP TABLE IF EXISTS `sql_manterceros` */;
/*!50001 DROP VIEW IF EXISTS `sql_manterceros` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sql_manterceros` AS select `terceros`.`TpDoc` AS `emptipid`,`terceros`.`IDTercero` AS `empident`,`terceros`.`RazonSocial` AS `empnombr`,`terceros`.`Telefono` AS `emptelefono`,`terceros`.`Direccion` AS `empdireccion` from `terceros` */;

/*View structure for view sql_manvehiculo */

/*!50001 DROP TABLE IF EXISTS `sql_manvehiculo` */;
/*!50001 DROP VIEW IF EXISTS `sql_manvehiculo` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sql_manvehiculo` AS select `vehiculos`.`IdPlaca` AS `vehplaca`,`marcas`.`CodMinTrans` AS `vehmarca`,`lineas`.`NmLinea` AS `vehlinea`,`vehiculos`.`Modelo` AS `vehmodelo`,`vehiculos`.`ModeloRep` AS `vehmodelotransf`,`vehiculos`.`Serie` AS `vehnroserie`,`colores`.`CodMinTrans` AS `vehcolor`,`carrocerias`.`CodMinTrans` AS `vehtipocarrocer`,`vehiculos`.`VehConfiguracion` AS `vehconfiguraci`,`vehiculos`.`PesoVacio` AS `vehpeso`,`vehiculos`.`RegNalCarga` AS `vehregistro`,`vehiculos`.`Soat` AS `vehnro_poliza`,`aseguradora`.`TpDoc` AS `vehtipidasegur`,`aseguradora`.`IDTercero` AS `vehidenasegur`,`vehiculos`.`VenceSoat` AS `vehfechvenci`,`vehiculos`.`PlacaRemolque` AS `vehplacsemir`,`propietario`.`TpDoc` AS `vehtipidpropiet`,`propietario`.`IDTercero` AS `vehidentprop`,`tenedor`.`TpDoc` AS `Vehtipidtenenc`,`tenedor`.`IDTercero` AS `Vehidentenenc` from (((((((`vehiculos` left join `marcas` on((`vehiculos`.`IdMarca` = `marcas`.`IdMarca`))) left join `lineas` on((`vehiculos`.`IdLinea` = `lineas`.`IdLinea`))) left join `colores` on((`vehiculos`.`IdColor` = `colores`.`IdColor`))) left join `carrocerias` on((`vehiculos`.`IdCarroceria` = `carrocerias`.`IdCarroceria`))) left join `terceros` `aseguradora` on((`vehiculos`.`IdAseguradora` = `aseguradora`.`IDTercero`))) left join `terceros` `propietario` on((`vehiculos`.`IdPropietario` = `propietario`.`IDTercero`))) left join `terceros` `tenedor` on((`vehiculos`.`IdTenedor` = `tenedor`.`IDTercero`))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
