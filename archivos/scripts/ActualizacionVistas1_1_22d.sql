CREATE DATABASE  IF NOT EXISTS `bdkl` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `bdkl`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: bdkl
-- ------------------------------------------------------
-- Server version	5.5.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary table structure for view `sql_if_facturado`
--

DROP TABLE IF EXISTS `sql_if_facturado`;
/*!50001 DROP VIEW IF EXISTS `sql_if_facturado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_if_facturado` (
  `IdFactura` int(11),
  `FhFac` datetime,
  `FhVenceFac` datetime,
  `IdCliente` varchar(11),
  `Estado` varchar(1),
  `Notas` mediumtext,
  `TFlete` double,
  `TManejo` double,
  `TOtros` double,
  `DctoComercial` double,
  `BaseCcial` double,
  `DctoFinanciero` double,
  `BaseFin` double,
  `AntesDeDcto` smallint(6),
  `Abonos` double,
  `TotalFactura` double,
  `Saldo` double,
  `NroGuias` int(11),
  `NroPlanillas` int(11),
  `NroConceptos` int(11),
  `Exportada` tinyint(4),
  `RazonSocial` varchar(100),
  `IdCentroCostos` int(11),
  `NmCentroCostos` varchar(50)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_redespachos`
--

DROP TABLE IF EXISTS `sql_im_redespachos`;
/*!50001 DROP VIEW IF EXISTS `sql_im_redespachos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_redespachos` (
  `Guia` int(11),
  `Fecha` datetime,
  `FechaViaje` datetime,
  `IDTercero` varchar(11),
  `RazonSocial` varchar(100),
  `NmCiuDestino` varchar(50),
  `Nit` varchar(12),
  `Nombre` varchar(50),
  `Direccion` varchar(80),
  `Telefono` varchar(50),
  `Logo` mediumblob,
  `Unidades` int(11),
  `KilosReales` int(11),
  `NmConductor` varchar(60)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_novedades_cliente`
--

DROP TABLE IF EXISTS `sql_im_novedades_cliente`;
/*!50001 DROP VIEW IF EXISTS `sql_im_novedades_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_novedades_cliente` (
  `ID` int(11),
  `Guia` int(11),
  `IdNovedad` smallint(6),
  `Comentarios` mediumtext,
  `UsuIng` int(11),
  `FHIngreso` datetime,
  `FhNovedad` datetime,
  `Solucion` mediumtext,
  `UsuSol` int(11),
  `FhSolucion` datetime,
  `Solucionada` tinyint(4),
  `FhEntradaBodega` datetime,
  `RazonSocial` varchar(100),
  `Cuenta` varchar(11),
  `NmNovedad` varchar(200),
  `NombreEmpresa` varchar(50),
  `DireccionEmpresa` varchar(80),
  `TelefonoEmpresa` varchar(50),
  `NitEmpresa` varchar(12),
  `Logo` mediumblob,
  `DocCliente` varchar(15),
  `Despachada` tinyint(4),
  `Entregada` tinyint(4),
  `Descargada` tinyint(4),
  `EnNovedad` tinyint(4),
  `NmCiuDestino` varchar(50)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_formato_liquidar_despacho2`
--

DROP TABLE IF EXISTS `sql_im_formato_liquidar_despacho2`;
/*!50001 DROP VIEW IF EXISTS `sql_im_formato_liquidar_despacho2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_formato_liquidar_despacho2` (
  `IdManifiesto` int(11),
  `OrdDespacho` int(11),
  `Tipo` tinyint(4),
  `FhExpedicion` datetime,
  `FhCumplidos` datetime,
  `IdVehiculo` varchar(10),
  `IdConductor` varchar(11),
  `IdRuta` int(11),
  `IdCiudadOrigen` int(11),
  `IdCiudadDestino` int(11),
  `Estado` varchar(1),
  `Remesas` int(11),
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosVol` int(11),
  `FleteCobra` double,
  `ManejoCobra` double,
  `FleteCE` double,
  `ManejoCE` double,
  `VrFlete` double,
  `VrAnticipo` double,
  `VrDctoPapeleria` double,
  `VrDctoSeguridad` double,
  `VrDctoCargue` double,
  `VrDctoEstampilla` double,
  `VrFleteAdicional` double,
  `VrDctoIndCom` double,
  `VrDctoRteFte` double,
  `VrOtrosDctos` double,
  `SaldoDesp` double,
  `TotalViaje` double,
  `CO` int(11),
  `Observaciones` varchar(254),
  `TRecaudo` double,
  `VrDeclaradoTotal` double(15,3),
  `ManElectronico` varchar(30),
  `NmConductor` varchar(60),
  `Cerrado` tinyint(4),
  `Liquidado` tinyint(4),
  `IdUsuario` int(11),
  `IdEmpresa` smallint(6),
  `Exportado` tinyint(4),
  `LugarPago` varchar(100),
  `FhPagoSaldo` date,
  `PagoCargue` varchar(80),
  `PagoDescargue` varchar(80),
  `Estado1` tinyint(4),
  `AbonosCE` double(15,3),
  `FletesNoCancelados` double(15,3),
  `EnviadoMT` tinyint(1),
  `EnviadoGuia` tinyint(1),
  `OrigenViaje` varchar(50),
  `DestinoViaje` varchar(50),
  `TotalCE` double,
  `FleteContado` double,
  `ManejoContado` double,
  `ManejoCorriente` double,
  `FleteCorriente` double,
  `FleteCETotal` double,
  `ManejoCETotal` double
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `slq_im_producciongral`
--

DROP TABLE IF EXISTS `slq_im_producciongral`;
/*!50001 DROP VIEW IF EXISTS `slq_im_producciongral`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `slq_im_producciongral` (
  `Guia` int(11),
  `IdCliente` int(11),
  `FhEntradaBodega` datetime,
  `VrDeclarado` double,
  `VrFlete` double,
  `VrManejo` double,
  `Unidades` int(11),
  `KilosReales` int(11),
  `Estado` varchar(1),
  `COIng` smallint(6),
  `Cuenta` varchar(11),
  `Cliente` varchar(60),
  `TpServicio` tinyint(4),
  `IdTpCtaFlete` tinyint(4),
  `IdTpCtaManejo` tinyint(4),
  `Anulada` tinyint(4),
  `KilosFacturados` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_ventascontado`
--

DROP TABLE IF EXISTS `sql_im_ventascontado`;
/*!50001 DROP VIEW IF EXISTS `sql_im_ventascontado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_ventascontado` (
  `Guia` int(11),
  `DocCliente` varchar(15),
  `FhEntradaBodega` datetime,
  `VrDeclarado` double,
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosFacturados` int(11),
  `KilosVolumen` int(11),
  `COIng` smallint(6),
  `Cuenta` varchar(11),
  `Cliente` varchar(60),
  `Recaudo` double,
  `TpServicio` tinyint(4),
  `IdTpCtaFlete` tinyint(4),
  `IdTpCtaManejo` tinyint(4),
  `GuiFac` tinyint(4),
  `Anulada` tinyint(4),
  `NmDestinatario` varchar(50),
  `Estado` varchar(1),
  `VrFlete` double,
  `VrManejo` double,
  `Total` double,
  `Nit` varchar(12),
  `NombreEmpresa` varchar(50),
  `DireccionEmpresa` varchar(80),
  `TelefonoEmpresa` varchar(50),
  `Logo` mediumblob
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_correcciones`
--

DROP TABLE IF EXISTS `sql_im_correcciones`;
/*!50001 DROP VIEW IF EXISTS `sql_im_correcciones`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_correcciones` (
  `IdCorreccion` int(11),
  `GuiaCorregida` int(11),
  `FechaCorreccion` datetime,
  `CuentaC` varchar(11),
  `IdUsuarioCorreccion` int(11),
  `IdTpServicio` tinyint(4),
  `VrDeclaradoC` double(15,3),
  `VrFleteC` double(15,3),
  `VrManejoC` double(15,3),
  `GuiaFacC` tinyint(4),
  `KilosRealesC` int(11),
  `KilosVolumenC` int(11),
  `KilosFacturadosC` int(11),
  `UnidadesC` int(11),
  `IdTpCtaFleteC` tinyint(4),
  `IdTpCtaManejoC` int(11),
  `Comentarios` varchar(500),
  `IdCiuDestinoC` int(11),
  `DocClienteC` varchar(30),
  `RecaudoC` double(15,3),
  `Cuenta` varchar(11),
  `Cliente` varchar(60)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_if_imp_factura_conceptos`
--

DROP TABLE IF EXISTS `sql_if_imp_factura_conceptos`;
/*!50001 DROP VIEW IF EXISTS `sql_if_imp_factura_conceptos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_if_imp_factura_conceptos` (
  `FhFac` datetime,
  `RazonSocial` varchar(100),
  `TFlete` double,
  `TManejo` double,
  `TOtros` double,
  `NroGuias` int(11),
  `Nit` varchar(12),
  `Nombre` varchar(50),
  `Direccion` varchar(80),
  `Telefono` varchar(50),
  `Logo` mediumblob,
  `FhVenceFac` datetime,
  `NumeroFactura` int(11),
  `Plazo` int(11),
  `NmFormaPago` varchar(60),
  `DireccionTercero` varchar(50),
  `TelefonoTercero` varchar(11),
  `NmCiudadTercero` varchar(50),
  `IdCliente` varchar(11),
  `Notas` mediumtext,
  `TotalFactura` double,
  `DigitoVerificacion` tinyint(4),
  `ValorEnLetras` varchar(250),
  `IdConceptoFactura` int(11),
  `IdFactura` int(11),
  `Valor` double,
  `NmConcepto` varchar(80)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_pen_ent_cli`
--

DROP TABLE IF EXISTS `sql_im_pen_ent_cli`;
/*!50001 DROP VIEW IF EXISTS `sql_im_pen_ent_cli`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_pen_ent_cli` (
  `Guia` int(11),
  `CR` smallint(6),
  `Remitente` varchar(50),
  `IdCliente` int(11),
  `DocCliente` varchar(15),
  `NmDestinatario` varchar(50),
  `DirDestinatario` varchar(50),
  `TelDestinatario` varchar(11),
  `IdCiuDestino` int(11),
  `IdRuta` int(11),
  `FhEntradaBodega` datetime,
  `FhEntregaMercancia` datetime,
  `VrDeclarado` double,
  `VrFlete` double,
  `VrManejo` double,
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosFacturados` int(11),
  `KilosVolumen` int(11),
  `Estado` varchar(1),
  `IdFactura` int(11),
  `IdDespacho` int(11),
  `Observaciones` varchar(200),
  `COIng` smallint(6),
  `Cuenta` varchar(11),
  `Cliente` varchar(60),
  `Recaudo` double,
  `Orden` int(11),
  `EmpaqueRef` varchar(250),
  `TpServicio` tinyint(4),
  `IdTpCtaFlete` tinyint(4),
  `IdTpCtaManejo` tinyint(4),
  `CPorte` tinyint(4),
  `Entregada` tinyint(4),
  `Descargada` tinyint(4),
  `FhDescargada` datetime,
  `Despachada` tinyint(4),
  `Anulada` tinyint(4),
  `NmCiudad` varchar(50)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_manmanifiesto`
--

DROP TABLE IF EXISTS `sql_manmanifiesto`;
/*!50001 DROP VIEW IF EXISTS `sql_manmanifiesto`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_manmanifiesto` (
  `Nitempresa` varchar(12),
  `Mannumero` int(11),
  `mannumero_empresa` int(11),
  `Manfechexped` datetime,
  `manciud_origen` varchar(10),
  `manciud_destin` varchar(10),
  `Manplaca` varchar(10),
  `Mantipidconduc` varchar(1),
  `Manidenconduc` varchar(11),
  `Manplacacsemir` varchar(6),
  `Mantipocarrocer` varchar(10),
  `Manconfiguraci` varchar(4),
  `Manpeso` varchar(6),
  `Manvlrtotflete` double,
  `Manretefuente` double,
  `mandescu_ley` double,
  `manvlr_anticip` double,
  `manlugar_pago` varchar(100),
  `Manfechpagsal` date,
  `manpago_cargue` varchar(80),
  `manpago_descar` varchar(80),
  `manobservacion` varchar(254),
  `mantipidtitular` varchar(1),
  `manidentitular` varchar(11),
  `manpesobv` int(11),
  `fechentrega` datetime
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_if_pend_fac`
--

DROP TABLE IF EXISTS `sql_if_pend_fac`;
/*!50001 DROP VIEW IF EXISTS `sql_if_pend_fac`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_if_pend_fac` (
  `Guia` int(11),
  `CR` smallint(6),
  `NmDestinatario` varchar(50),
  `DocCliente` varchar(15),
  `NmCiudad` varchar(50),
  `IdCiuDestino` int(11),
  `FhEntradaBodega` datetime,
  `VrDeclarado` double,
  `VrFlete` double,
  `VrManejo` double,
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosFacturados` int(11),
  `KilosVolumen` int(11),
  `Estado` varchar(1),
  `IdFactura` int(11),
  `COIng` smallint(6),
  `Cuenta` varchar(11),
  `Cliente` varchar(60),
  `Recaudo` double,
  `TpServicio` tinyint(4),
  `IdTpCtaFlete` tinyint(4),
  `IdTpCtaManejo` tinyint(4),
  `Anulada` tinyint(4),
  `GuiFac` tinyint(4),
  `IdCliente` int(11),
  `IdPlanillaFactura` int(11),
  `RelCliente` varchar(30)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_produccionasesor`
--

DROP TABLE IF EXISTS `sql_im_produccionasesor`;
/*!50001 DROP VIEW IF EXISTS `sql_im_produccionasesor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_produccionasesor` (
  `Guia` int(11),
  `IdCliente` int(11),
  `FhEntradaBodega` datetime,
  `VrDeclarado` double,
  `VrFlete` double,
  `VrManejo` double,
  `Unidades` int(11),
  `KilosReales` int(11),
  `Estado` varchar(1),
  `COIng` smallint(6),
  `Cuenta` varchar(11),
  `Cliente` varchar(60),
  `TpServicio` tinyint(4),
  `IdTpCtaFlete` tinyint(4),
  `IdTpCtaManejo` tinyint(4),
  `Anulada` tinyint(4),
  `KilosFacturados` int(11),
  `RazonSocial` varchar(100),
  `NmAsesor` varchar(80),
  `IdAsesor` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_flec_vs_flep`
--

DROP TABLE IF EXISTS `sql_im_flec_vs_flep`;
/*!50001 DROP VIEW IF EXISTS `sql_im_flec_vs_flep`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_flec_vs_flep` (
  `IdManifiesto` int(11),
  `OrdDespacho` int(11),
  `Tipo` tinyint(4),
  `FhExpedicion` datetime,
  `FhCumplidos` datetime,
  `IdVehiculo` varchar(10),
  `IdConductor` varchar(11),
  `IdRuta` int(11),
  `IdCiudadOrigen` int(11),
  `IdCiudadDestino` int(11),
  `Estado` varchar(1),
  `Remesas` int(11),
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosVol` int(11),
  `FleteCobra` double,
  `ManejoCobra` double,
  `FleteCE` double,
  `ManejoCE` double,
  `VrFlete` double,
  `VrAnticipo` double,
  `VrDctoPapeleria` double,
  `VrDctoSeguridad` double,
  `VrDctoCargue` double,
  `VrDctoEstampilla` double,
  `VrFleteAdicional` double,
  `VrDctoIndCom` double,
  `VrDctoRteFte` double,
  `VrOtrosDctos` double,
  `SaldoDesp` double,
  `TotalViaje` double,
  `CO` int(11),
  `Observaciones` varchar(254),
  `TRecaudo` double,
  `VrDeclaradoTotal` double(15,3),
  `NmConductor` varchar(60),
  `Cerrado` tinyint(4),
  `Liquidado` tinyint(4),
  `IdUsuario` int(11),
  `IdEmpresa` smallint(6),
  `Exportado` tinyint(4),
  `NmCiudad` varchar(50),
  `NmRuta` varchar(50)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_rel_guias_cumplidos`
--

DROP TABLE IF EXISTS `sql_im_rel_guias_cumplidos`;
/*!50001 DROP VIEW IF EXISTS `sql_im_rel_guias_cumplidos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_rel_guias_cumplidos` (
  `Guia` int(11),
  `DocCliente` varchar(15),
  `FhEntradaBodega` datetime,
  `NmCiudadDestino` varchar(50),
  `VrDeclarado` double,
  `VrFlete` double,
  `VrManejo` double,
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosFacturados` int(11),
  `Cuenta` varchar(11),
  `Cliente` varchar(60),
  `Nit` varchar(12),
  `Nombre` varchar(50),
  `Direccion` varchar(80),
  `Telefono` varchar(50),
  `Logo` mediumblob,
  `RelCliente` varchar(30),
  `IdRelEntrega` int(11),
  `FechaRelacion` date,
  `ComentariosRelacion` varchar(500),
  `RazonSocial` varchar(100),
  `IdTercero` varchar(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_ic_imprimir_nota_credito`
--

DROP TABLE IF EXISTS `sql_ic_imprimir_nota_credito`;
/*!50001 DROP VIEW IF EXISTS `sql_ic_imprimir_nota_credito`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_ic_imprimir_nota_credito` (
  `IdNotaCreditoDet` int(11),
  `IdNotaCredito` int(11),
  `IdCxC` int(11),
  `Tipo` tinyint(4),
  `IdCuenta` int(11),
  `Valor` double,
  `Fecha` date,
  `IdTercero` varchar(11),
  `Total` double,
  `Comentarios` varchar(250),
  `Impreso` tinyint(4),
  `Anulado` tinyint(4),
  `Nit` varchar(12),
  `Nombre` varchar(50),
  `Direccion` varchar(80),
  `Telefono` varchar(50),
  `Logo` mediumblob,
  `Id` int(11),
  `NroDocumento` int(11),
  `FechaDoc` date,
  `RazonSocial` varchar(100),
  `DireccionCliente` varchar(50),
  `TelefonoCliente` varchar(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_reexpediciones`
--

DROP TABLE IF EXISTS `sql_im_reexpediciones`;
/*!50001 DROP VIEW IF EXISTS `sql_im_reexpediciones`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_reexpediciones` (
  `Guia` int(11),
  `Tipo` tinyint(4),
  `FhEntradaBodega` datetime,
  `IdDespacho` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_if_imp_factura_planillas`
--

DROP TABLE IF EXISTS `sql_if_imp_factura_planillas`;
/*!50001 DROP VIEW IF EXISTS `sql_if_imp_factura_planillas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_if_imp_factura_planillas` (
  `IdPlanilla` int(11),
  `IdFactura` int(11),
  `RelCliente` varchar(25),
  `VrFletePlanilla` double(15,3),
  `VrManejoPlanilla` double(15,3),
  `NroGuiasPlanilla` int(11),
  `FhFac` datetime,
  `RazonSocial` varchar(100),
  `TFlete` double,
  `TManejo` double,
  `TOtros` double,
  `NroGuias` int(11),
  `Nit` varchar(12),
  `Nombre` varchar(50),
  `Direccion` varchar(80),
  `Telefono` varchar(50),
  `Logo` mediumblob,
  `FhVenceFac` datetime,
  `NumeroFactura` int(11),
  `Plazo` int(11),
  `NmFormaPago` varchar(60),
  `DireccionTercero` varchar(50),
  `TelefonoTercero` varchar(11),
  `NmCiudadTercero` varchar(50),
  `IdCliente` varchar(11),
  `Notas` mediumtext,
  `TotalFactura` double,
  `DigitoVerificacion` tinyint(4),
  `ValorEnLetras` varchar(250)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_ilp_imprimir_lista`
--

DROP TABLE IF EXISTS `sql_ilp_imprimir_lista`;
/*!50001 DROP VIEW IF EXISTS `sql_ilp_imprimir_lista`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_ilp_imprimir_lista` (
  `NmListaPrecios` varchar(50),
  `FhVencimiento` date,
  `IdListaPrecios` int(11),
  `IdCiudad` int(11),
  `IdProducto` int(11),
  `VrKilo` double(15,3),
  `VrUnidad` double(15,3),
  `VrTonelada` double(15,3),
  `KTope` double(15,3),
  `VrKTope` double(15,3),
  `VrKAdicional` double(15,3),
  `Minimos` int(11),
  `NmCiudad` varchar(50),
  `NmDepartamento` varchar(30),
  `IdDepartamento` smallint(6),
  `Reexpedicion` bit(1),
  `NmProducto` varchar(50),
  `Nit` varchar(12),
  `Nombre` varchar(50),
  `Direccion` varchar(80),
  `Telefono` varchar(50),
  `Logo` mediumblob
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_impguia`
--

DROP TABLE IF EXISTS `sql_im_impguia`;
/*!50001 DROP VIEW IF EXISTS `sql_im_impguia`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_impguia` (
  `Guia` int(11),
  `CR` smallint(6),
  `DocCliente` varchar(15),
  `NmDestinatario` varchar(50),
  `DirDestinatario` varchar(50),
  `TelDestinatario` varchar(11),
  `IdCiuDestino` int(11),
  `FhEntradaBodega` datetime,
  `VrFlete` double,
  `VrManejo` double,
  `Unidades` int(11),
  `KilosReales` int(11),
  `Observaciones` varchar(200),
  `Cuenta` varchar(11),
  `RazonSocial` varchar(100),
  `Direccion` varchar(50),
  `Telefono` varchar(11),
  `TpServicio` tinyint(4),
  `IdTpCtaFlete` tinyint(4),
  `IdTpCtaManejo` tinyint(4),
  `IdUsuario` int(11),
  `NmCiuOrigen` varchar(50),
  `NmCiuDestino` varchar(50),
  `NitEmpresa` varchar(12),
  `NmEmpresa` varchar(50),
  `DirEmpresa` varchar(80),
  `TelEmpresa` varchar(50),
  `Logo` mediumblob,
  `IdEmpresa` smallint(6),
  `Abonos` double,
  `NmTipoCobro` varchar(20),
  `CodigoBarras` varchar(20),
  `TipoCobro` tinyint(4),
  `GuiaTipo` smallint(6),
  `Recaudo` double,
  `GuiFac` tinyint(4),
  `EmpaqueRef` varchar(250),
  `Celular` varchar(10)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_impmanifiesto`
--

DROP TABLE IF EXISTS `sql_im_impmanifiesto`;
/*!50001 DROP VIEW IF EXISTS `sql_im_impmanifiesto`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_impmanifiesto` (
  `IdManifiesto` int(11),
  `OrdDespacho` int(11),
  `Tipo` tinyint(4),
  `FhExpedicion` datetime,
  `FhCumplidos` datetime,
  `IdVehiculo` varchar(10),
  `IdConductor` varchar(11),
  `IdRuta` int(11),
  `IdCiudadOrigen` int(11),
  `IdCiudadDestino` int(11),
  `Estado` varchar(1),
  `Remesas` int(11),
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosVol` int(11),
  `FleteCobra` double,
  `ManejoCobra` double,
  `FleteCE` double,
  `ManejoCE` double,
  `VrFlete` double,
  `VrAnticipo` double,
  `VrDctoPapeleria` double,
  `VrDctoSeguridad` double,
  `VrDctoCargue` double,
  `VrDctoEstampilla` double,
  `VrFleteAdicional` double,
  `VrDctoIndCom` double,
  `VrDctoRteFte` double,
  `VrOtrosDctos` double,
  `SaldoDesp` double,
  `TotalViaje` double,
  `CO` int(11),
  `Observaciones` varchar(254),
  `TRecaudo` double,
  `NmConductor` varchar(60),
  `Cerrado` tinyint(4),
  `Liquidado` tinyint(4),
  `IdUsuario` int(11),
  `Nombre` varchar(30),
  `Apellido1` varchar(30),
  `Apellido2` varchar(30),
  `Direccion` varchar(80),
  `Categoria` varchar(2),
  `Celular` varchar(15),
  `NmCiudadOrigen` varchar(50),
  `NmCiudadDestino` varchar(50),
  `NmMarca` varchar(50),
  `NmCarroceria` varchar(50),
  `NmColor` varchar(100),
  `NmLinea` varchar(200),
  `NmAseguradora` varchar(100),
  `NombreEmpresa` varchar(50),
  `DirEmpresa` varchar(80),
  `TelEmpresa` varchar(50),
  `NitEmpresa` varchar(12),
  `IdEmpresa` smallint(6),
  `Logo` mediumblob
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_ir_formato_recogidas`
--

DROP TABLE IF EXISTS `sql_ir_formato_recogidas`;
/*!50001 DROP VIEW IF EXISTS `sql_ir_formato_recogidas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_ir_formato_recogidas` (
  `IdAnuncio` int(11),
  `FhAnuncio` datetime,
  `IdCliente` varchar(11),
  `Anunciante` varchar(50),
  `DirAnunciante` varchar(80),
  `TelAnunciante` varchar(15),
  `Asignacion` int(11),
  `FhRecogida` datetime,
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosVol` int(11),
  `Comentarios` varchar(250),
  `MotivoCancelacion` varchar(250),
  `Programada` tinyint(4),
  `Estado` varchar(1),
  `Efectiva` tinyint(4),
  `TiempoEfectiva` datetime,
  `Orden` int(11),
  `IdConductor` varchar(11),
  `IdVehiculo` varchar(10),
  `IdEmpresa` smallint(6),
  `IdAsignacion` int(11),
  `Cerrada` tinyint(4),
  `Fecha` date,
  `Placa` varchar(50),
  `Flete` double,
  `Rec` int(11),
  `Pend` int(11),
  `TotalUnidades` decimal(19,0),
  `TotalKilosRelaes` decimal(19,0),
  `TotalKilosVol` decimal(19,0),
  `IdRuta` int(11),
  `Notas` mediumtext,
  `Coperaciones` smallint(6),
  `UltOrden` int(11),
  `RazonSocial` varchar(100),
  `Id` int(11),
  `Nombre` varchar(50),
  `Nit` varchar(12),
  `Direccion` varchar(80),
  `Telefono` varchar(50),
  `Logo` mediumblob,
  `NmRuta` varchar(70)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_ir_listadorecogidas`
--

DROP TABLE IF EXISTS `sql_ir_listadorecogidas`;
/*!50001 DROP VIEW IF EXISTS `sql_ir_listadorecogidas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_ir_listadorecogidas` (
  `IdAnuncio` int(11),
  `FhAnuncio` datetime,
  `IdCliente` varchar(11),
  `Anunciante` varchar(50),
  `DirAnunciante` varchar(80),
  `TelAnunciante` varchar(15),
  `IdRuta` int(11),
  `Asignacion` int(11),
  `FhRecogida` datetime,
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosVol` int(11),
  `Comentarios` varchar(250),
  `Programada` tinyint(4),
  `Estado` varchar(1),
  `Efectiva` tinyint(4),
  `TiempoEfectiva` datetime,
  `Coperaciones` smallint(6),
  `Orden` int(11),
  `IdConductor` varchar(11),
  `IdVehiculo` varchar(10),
  `IdEmpresa` smallint(6),
  `IdAsignacion` int(11),
  `RazonSocial` varchar(100)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_movimiento_formato_recibo_soporte`
--

DROP TABLE IF EXISTS `sql_movimiento_formato_recibo_soporte`;
/*!50001 DROP VIEW IF EXISTS `sql_movimiento_formato_recibo_soporte`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_movimiento_formato_recibo_soporte` (
  `IdRecibo` int(11),
  `FechaRecibo` datetime,
  `VrFlete` double(15,3),
  `VrManejo` double(15,3),
  `ValorTotal` double,
  `Guia` int(11),
  `RazonSocial` varchar(100),
  `Direccion` varchar(50),
  `Telefono` varchar(11),
  `CiudadCliente` varchar(50),
  `DocCliente` varchar(15),
  `NmDestinatario` varchar(50),
  `DirDestinatario` varchar(50),
  `TelDestinatario` varchar(11),
  `CiudadDestino` varchar(50),
  `Unidades` int(11),
  `Cuenta` varchar(11),
  `NitEmpresa` varchar(12),
  `NombreEmpresa` varchar(50),
  `DireccionEmpresa` varchar(80),
  `TelefonoEmpresa` varchar(50),
  `Logo` mediumblob,
  `NmTipoCobro` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_manconductor`
--

DROP TABLE IF EXISTS `sql_manconductor`;
/*!50001 DROP VIEW IF EXISTS `sql_manconductor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_manconductor` (
  `Pertipid` varchar(1),
  `Periden` varchar(11),
  `perapell1` varchar(30),
  `perapell2` varchar(30),
  `pernombre` varchar(30),
  `pertelefono` varchar(15),
  `perdireccion` varchar(80),
  `perciudad` varchar(10),
  `percateglice` varchar(2)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `slq_im_formatoliqdesp`
--

DROP TABLE IF EXISTS `slq_im_formatoliqdesp`;
/*!50001 DROP VIEW IF EXISTS `slq_im_formatoliqdesp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `slq_im_formatoliqdesp` (
  `IdManifiesto` int(11),
  `OrdDespacho` int(11),
  `Tipo` tinyint(4),
  `FhExpedicion` datetime,
  `FhCumplidos` datetime,
  `IdVehiculo` varchar(10),
  `IdConductor` varchar(11),
  `IdCiudadOrigen` int(11),
  `IdCiudadDestino` int(11),
  `Estado` varchar(1),
  `Remesas` int(11),
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosVol` int(11),
  `FleteCobra` double,
  `ManejoCobra` double,
  `FleteCE` double,
  `ManejoCE` double,
  `VrFlete` double,
  `VrAnticipo` double,
  `VrDctoPapeleria` double,
  `VrDctoSeguridad` double,
  `VrDctoCargue` double,
  `VrDctoEstampilla` double,
  `VrFleteAdicional` double,
  `VrDctoIndCom` double,
  `VrDctoRteFte` double,
  `VrOtrosDctos` double,
  `SaldoDesp` double,
  `TotalViaje` double,
  `NmConductor` varchar(60),
  `TRecaudo` double,
  `Observaciones` varchar(254),
  `CO` int(11),
  `Cerrado` tinyint(4),
  `Liquidado` tinyint(4),
  `IdUsuario` int(11),
  `IdEmpresa` smallint(6),
  `AbonosCE` double(15,3),
  `FletesNoCancelados` double(15,3),
  `NmCiudad` varchar(50),
  `Logo` mediumblob
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_novedadessolucionadas`
--

DROP TABLE IF EXISTS `sql_im_novedadessolucionadas`;
/*!50001 DROP VIEW IF EXISTS `sql_im_novedadessolucionadas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_novedadessolucionadas` (
  `ID` int(11),
  `Guia` int(11),
  `IdNovedad` smallint(6),
  `Comentarios` mediumtext,
  `UsuIng` int(11),
  `FHIngreso` datetime,
  `FhNovedad` datetime,
  `Solucion` mediumtext,
  `UsuSol` int(11),
  `FhSolucion` datetime,
  `Solucionada` tinyint(4),
  `Cuenta` varchar(11),
  `Cliente` varchar(60),
  `NmNovedad` varchar(200),
  `DocCliente` varchar(15),
  `NmCiudad` varchar(50),
  `NmDestinatario` varchar(50)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_despachospendientesabiertos`
--

DROP TABLE IF EXISTS `sql_im_despachospendientesabiertos`;
/*!50001 DROP VIEW IF EXISTS `sql_im_despachospendientesabiertos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_despachospendientesabiertos` (
  `IdManifiesto` int(11),
  `OrdDespacho` int(11),
  `Tipo` tinyint(4),
  `FhExpedicion` datetime,
  `FhCumplidos` datetime,
  `IdVehiculo` varchar(10),
  `IdConductor` varchar(11),
  `IdRuta` int(11),
  `IdCiudadOrigen` int(11),
  `IdCiudadDestino` int(11),
  `Estado` varchar(1),
  `Remesas` int(11),
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosVol` int(11),
  `FleteCobra` double,
  `ManejoCobra` double,
  `FleteCE` double,
  `ManejoCE` double,
  `VrFlete` double,
  `VrAnticipo` double,
  `VrDctoPapeleria` double,
  `VrDctoSeguridad` double,
  `VrDctoCargue` double,
  `VrDctoEstampilla` double,
  `VrFleteAdicional` double,
  `VrDctoIndCom` double,
  `VrDctoRteFte` double,
  `VrOtrosDctos` double,
  `SaldoDesp` double,
  `TotalViaje` double,
  `CO` int(11),
  `Observaciones` varchar(254),
  `TRecaudo` double,
  `Cerrado` tinyint(4)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_impguia_clientes`
--

DROP TABLE IF EXISTS `sql_im_impguia_clientes`;
/*!50001 DROP VIEW IF EXISTS `sql_im_impguia_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_impguia_clientes` (
  `Guia` int(11),
  `IdTercero` varchar(11),
  `CodigoBarras` varchar(20),
  `RazonSocial` varchar(100),
  `Direccion` varchar(50),
  `Telefono` varchar(11),
  `Id` int(11),
  `Nit` varchar(12),
  `Nombre` varchar(50),
  `DireccionEmpresa` varchar(80),
  `TelefonoEmpresa` varchar(50),
  `Logo` mediumblob,
  `NroPoliza` varchar(20),
  `NitAseguradora` decimal(11,0),
  `VencePoliza` date,
  `DireccionTerritorial` varchar(3),
  `Email` varchar(80),
  `Aseguradora` varchar(100),
  `CodRegionalMin` varchar(50),
  `CodEmpresaMin` varchar(50),
  `ResolucionMinTransporte` varchar(10)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_ism_monitoreos`
--

DROP TABLE IF EXISTS `sql_ism_monitoreos`;
/*!50001 DROP VIEW IF EXISTS `sql_ism_monitoreos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_ism_monitoreos` (
  `ID` int(11),
  `IDMonitoreo` int(11),
  `IDControlPost` int(11),
  `FhHrReporte` datetime,
  `Notas` varchar(250),
  `NmControlPost` varchar(80),
  `Orden` int(11),
  `Tipo` tinyint(4),
  `Estado` varchar(1),
  `Ok` varchar(50),
  `FhHrSalida` datetime,
  `Vehiculo` varchar(6),
  `Destino` varchar(100),
  `UltReporte` datetime,
  `Frecuencia` int(11),
  `EnNovedad` tinyint(4),
  `SinMonitoreo` tinyint(4),
  `NmCiudadOrigen` varchar(50),
  `NmCiudadDestino` varchar(50),
  `FhExpedicion` datetime,
  `IdConductor` varchar(11),
  `NmConductor` varchar(60),
  `IdManifiesto` int(11),
  `CelularConductor` varchar(15)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_relguiasplanilla`
--

DROP TABLE IF EXISTS `sql_im_relguiasplanilla`;
/*!50001 DROP VIEW IF EXISTS `sql_im_relguiasplanilla`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_relguiasplanilla` (
  `Guia` int(11),
  `DocCliente` varchar(15),
  `NmDestinatario` varchar(50),
  `NmCiudad` varchar(50),
  `VrDeclarado` double,
  `VrFlete` double,
  `VrManejo` double,
  `Unidades` int(11),
  `KilosFacturados` int(11),
  `IdFactura` int(11),
  `Cliente` varchar(60),
  `Anulada` tinyint(4),
  `Recaudo` double,
  `IdPlanillaFactura` int(11),
  `RelCliente` varchar(25)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_contraentregas`
--

DROP TABLE IF EXISTS `sql_im_contraentregas`;
/*!50001 DROP VIEW IF EXISTS `sql_im_contraentregas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_contraentregas` (
  `Guia` int(11),
  `IdCliente` int(11),
  `DocCliente` varchar(15),
  `NmDestinatario` varchar(50),
  `IdCiuDestino` int(11),
  `NmCiudad` varchar(50),
  `FhEntradaBodega` datetime,
  `VrDeclarado` double,
  `VrFlete` double,
  `VrManejo` double,
  `Unidades` int(11),
  `KilosReales` int(11),
  `IdDespacho` int(11),
  `Cuenta` varchar(11),
  `Cliente` varchar(60),
  `Recaudo` double,
  `IdTpCtaFlete` tinyint(4),
  `IdTpCtaManejo` tinyint(4),
  `Anulada` tinyint(4),
  `TipoCobro` tinyint(4),
  `CodEmpresa` int(11),
  `NitEmpresa` varchar(12),
  `NombreEmpresa` varchar(50),
  `DireccionEmpresa` varchar(80),
  `TelefonoEmpresa` varchar(50),
  `Logo` mediumblob,
  `EmailEmpresa` varchar(80),
  `Abonos` double
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_manterceros`
--

DROP TABLE IF EXISTS `sql_manterceros`;
/*!50001 DROP VIEW IF EXISTS `sql_manterceros`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_manterceros` (
  `emptipid` varchar(1),
  `empident` varchar(11),
  `empnombr` varchar(100),
  `emptelefono` varchar(11),
  `empdireccion` varchar(50)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_novedadespendientes`
--

DROP TABLE IF EXISTS `sql_im_novedadespendientes`;
/*!50001 DROP VIEW IF EXISTS `sql_im_novedadespendientes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_novedadespendientes` (
  `ID` int(11),
  `Guia` int(11),
  `IdNovedad` smallint(6),
  `Comentarios` mediumtext,
  `UsuIng` int(11),
  `FHIngreso` datetime,
  `FhNovedad` datetime,
  `Solucion` mediumtext,
  `UsuSol` int(11),
  `FhSolucion` datetime,
  `Solucionada` tinyint(4),
  `Cuenta` varchar(11),
  `Cliente` varchar(60),
  `NmNovedad` varchar(200),
  `DocCliente` varchar(15),
  `NmCiudad` varchar(50),
  `NmDestinatario` varchar(50)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_imprimirmanifiestodetalle`
--

DROP TABLE IF EXISTS `sql_im_imprimirmanifiestodetalle`;
/*!50001 DROP VIEW IF EXISTS `sql_im_imprimirmanifiestodetalle`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_imprimirmanifiestodetalle` (
  `Guia` int(11),
  `UnidadMedida` varchar(3),
  `Unidades` int(11),
  `KilosReales` int(11),
  `CodNaturaleza` varchar(1),
  `CodEmpaque` varchar(1),
  `CodProducto` varchar(4),
  `ProductoTransportado` varchar(5),
  `Remitente` varchar(50),
  `NmDestinatario` varchar(50),
  `NmCiudad` varchar(50),
  `FhExpedicion` datetime,
  `IdManifiesto` int(11),
  `OrdDespacho` int(11),
  `ManElectronico` varchar(30),
  `CiudadOrigenViaje` varchar(50),
  `CiudadDestinoViaje` varchar(50),
  `Logo` mediumblob
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_recibos_caja`
--

DROP TABLE IF EXISTS `sql_im_recibos_caja`;
/*!50001 DROP VIEW IF EXISTS `sql_im_recibos_caja`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_recibos_caja` (
  `IdRecibo` int(11),
  `FechaRecibo` datetime,
  `VrFlete` double(15,3),
  `VrManejo` double(15,3),
  `ValorTotal` double,
  `Guia` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_ic_imprimir_recibo_caja`
--

DROP TABLE IF EXISTS `sql_ic_imprimir_recibo_caja`;
/*!50001 DROP VIEW IF EXISTS `sql_ic_imprimir_recibo_caja`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_ic_imprimir_recibo_caja` (
  `IdReciboDet` int(11),
  `IdRecibo` int(11),
  `IdCxC` int(11),
  `Tipo` tinyint(4),
  `IdCuenta` int(11),
  `Valor` double,
  `Fecha` date,
  `IdTercero` varchar(11),
  `Total` double,
  `Comentarios` varchar(250),
  `Impreso` tinyint(4),
  `Anulado` tinyint(4),
  `Nit` varchar(12),
  `Nombre` varchar(50),
  `Direccion` varchar(80),
  `Telefono` varchar(50),
  `Logo` mediumblob,
  `Id` int(11),
  `NroDocumento` int(11),
  `FechaDoc` date,
  `RazonSocial` varchar(100),
  `DireccionCliente` varchar(50),
  `TelefonoCliente` varchar(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_if_imp_factura`
--

DROP TABLE IF EXISTS `sql_if_imp_factura`;
/*!50001 DROP VIEW IF EXISTS `sql_if_imp_factura`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_if_imp_factura` (
  `Guia` int(11),
  `Remitente` varchar(50),
  `DocCliente` varchar(15),
  `NmDestinatario` varchar(50),
  `DirDestinatario` varchar(50),
  `NmCiudad` varchar(50),
  `FhEntradaBodega` datetime,
  `VrDeclarado` double,
  `VrFlete` double,
  `VrManejo` double,
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosFacturados` int(11),
  `KilosVolumen` int(11),
  `Estado` varchar(1),
  `IdFactura` int(11),
  `FhFac` datetime,
  `RazonSocial` varchar(100),
  `TFlete` double,
  `TManejo` double,
  `TOtros` double,
  `NroGuias` int(11),
  `Nit` varchar(12),
  `Nombre` varchar(50),
  `Direccion` varchar(80),
  `Telefono` varchar(50),
  `Logo` mediumblob,
  `FhVenceFac` datetime,
  `NumeroFactura` int(11),
  `Plazo` int(11),
  `NmFormaPago` varchar(60),
  `DireccionTercero` varchar(50),
  `TelefonoTercero` varchar(11),
  `NmCiudadTercero` varchar(50),
  `IdCliente` varchar(11),
  `Notas` mediumtext,
  `TotalFactura` double,
  `DigitoVerificacion` tinyint(4),
  `NitCompleto` varchar(15),
  `CiudadOrigen` varchar(50),
  `ValorEnLetras` varchar(250)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_formato_guia_factura`
--

DROP TABLE IF EXISTS `sql_im_formato_guia_factura`;
/*!50001 DROP VIEW IF EXISTS `sql_im_formato_guia_factura`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_formato_guia_factura` (
  `Guia` int(11),
  `NitEmpresa` varchar(12),
  `NombreEmpresa` varchar(50),
  `DireccionEmpresa` varchar(80),
  `TelefonoEmpresa` varchar(50),
  `Logo` mediumblob,
  `RazonSocial` varchar(100),
  `Cuenta` varchar(11),
  `Direccion` varchar(50),
  `Telefono` varchar(11),
  `IdCiudad` int(11),
  `CiudadCliente` varchar(50),
  `Email` varchar(100),
  `Plazo` int(11),
  `NmFormaPago` varchar(60),
  `VrFlete` double,
  `VrManejo` double,
  `VrDeclarado` double,
  `Unidades` int(11),
  `KilosFacturados` int(11),
  `CiudadDestino` varchar(50),
  `DocCliente` varchar(15),
  `FhEntradaBodega` datetime,
  `Total` double,
  `NmDestinatario` varchar(50),
  `DirDestinatario` varchar(50),
  `TelDestinatario` varchar(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_ic_cartera_edades`
--

DROP TABLE IF EXISTS `sql_ic_cartera_edades`;
/*!50001 DROP VIEW IF EXISTS `sql_ic_cartera_edades`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_ic_cartera_edades` (
  `NroDocumento` int(11),
  `FechaDoc` date,
  `FhVence` date,
  `IdTercero` varchar(11),
  `Total` double,
  `Abono` double,
  `Saldo` double,
  `VrFlete` double,
  `VrManejo` double,
  `Condicion` int(11),
  `TipoFactura` smallint(6),
  `RazonSocial` varchar(100),
  `DiasVencida` int(7),
  `TipoVencimiento` varchar(10),
  `Rango` varchar(10),
  `Nit` varchar(12),
  `Nombre` varchar(50),
  `Direccion` varchar(80),
  `Telefono` varchar(50),
  `Logo` mediumblob,
  `IdCxC` int(11),
  `GuiaFactura` tinyint(4),
  `NmTipoFactura` varchar(60)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_digitacion`
--

DROP TABLE IF EXISTS `sql_im_digitacion`;
/*!50001 DROP VIEW IF EXISTS `sql_im_digitacion`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_digitacion` (
  `NroGuias` bigint(21),
  `Usuario` varchar(50),
  `FhEntradaBodega` datetime
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_imprimirmanifiesto`
--

DROP TABLE IF EXISTS `sql_im_imprimirmanifiesto`;
/*!50001 DROP VIEW IF EXISTS `sql_im_imprimirmanifiesto`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_imprimirmanifiesto` (
  `IdManifiesto` int(11),
  `OrdDespacho` int(11),
  `FhExpedicion` datetime,
  `NmCiudadOrigen` varchar(50),
  `NmCiudadDestino` varchar(50),
  `IdPlaca` varchar(10),
  `Modelo` varchar(4),
  `ModeloRep` varchar(4),
  `Serie` varchar(50),
  `RegNalCarga` varchar(20),
  `VehConfiguracion` varchar(4),
  `PesoVacio` varchar(6),
  `Soat` varchar(20),
  `NmAseguradora` varchar(100),
  `VenceSoat` date,
  `PlacaRemolque` varchar(6),
  `NmPropietario` varchar(100),
  `NmTenedor` varchar(100),
  `IdPropietario` varchar(11),
  `IdTenedor` varchar(11),
  `DirPropietario` varchar(50),
  `DirTenedor` varchar(50),
  `TelTenedor` varchar(11),
  `TelPropietario` varchar(11),
  `CiudadTenedor` varchar(50),
  `CiudadPropietario` varchar(50),
  `Nombre` varchar(30),
  `Apellido1` varchar(30),
  `Apellido2` varchar(30),
  `IdConductor` varchar(11),
  `Direccion` varchar(80),
  `Categoria` varchar(2),
  `VrFlete` double,
  `VrDctoRteFte` double,
  `VrDctoIndCom` double,
  `VrAnticipo` double,
  `VrOtrosDctos` double,
  `Logo` mediumblob,
  `NroPoliza` varchar(20),
  `VencePoliza` date,
  `NmConductor` varchar(60),
  `Observaciones` varchar(254),
  `TotalViaje` double,
  `NmCarroceria` varchar(50),
  `DepartamentoOrigen` varchar(30),
  `DepartamentoDestino` varchar(30),
  `PagoCargue` varchar(80),
  `PagoDescargue` varchar(80),
  `FhPagoSaldo` date,
  `LugarPago` varchar(100),
  `Aseguradora` varchar(100),
  `ManElectronico` varchar(30),
  `NmMarca` varchar(50),
  `NmColor` varchar(100),
  `NmLinea` varchar(200),
  `NitEmpresa` varchar(12),
  `NombreEmpresa` varchar(50),
  `DireccionEmpresa` varchar(80),
  `TelefonoEmpresa` varchar(50),
  `DireccionTerritorial` varchar(3),
  `CodRegionalMin` varchar(50),
  `CodEmpresaMin` varchar(50),
  `ResolucionMinTransporte` varchar(10),
  `TotalContraEntregas` double,
  `TotalUnidades` int(11),
  `TotalKilosReales` int(11),
  `Remesas` int(11),
  `Unidades` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_ordendespacho`
--

DROP TABLE IF EXISTS `sql_im_ordendespacho`;
/*!50001 DROP VIEW IF EXISTS `sql_im_ordendespacho`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_ordendespacho` (
  `Guia` int(11),
  `CR` smallint(6),
  `Remitente` varchar(50),
  `IdCliente` int(11),
  `DocCliente` varchar(15),
  `NmDestinatario` varchar(50),
  `DirDestinatario` varchar(50),
  `TelDestinatario` varchar(11),
  `IdCiuDestino` int(11),
  `IdRuta` int(11),
  `FhEntradaBodega` datetime,
  `FhEntregaMercancia` datetime,
  `VrDeclarado` double,
  `VrFlete` double,
  `VrManejo` double,
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosFacturados` int(11),
  `KilosVolumen` int(11),
  `Estado` varchar(1),
  `IdFactura` int(11),
  `IdDespacho` int(11),
  `Observaciones` varchar(200),
  `COIng` smallint(6),
  `Cuenta` varchar(11),
  `Cliente` varchar(60),
  `Recaudo` double,
  `Orden` int(11),
  `EmpaqueRef` varchar(250),
  `TpServicio` tinyint(4),
  `IdTpCtaFlete` tinyint(4),
  `IdTpCtaManejo` tinyint(4),
  `CPorte` tinyint(4),
  `Entregada` tinyint(4),
  `Descargada` tinyint(4),
  `FhDescargada` datetime,
  `Despachada` tinyint(4),
  `Anulada` tinyint(4),
  `NmCiudad` varchar(50)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_impanuncio`
--

DROP TABLE IF EXISTS `sql_im_impanuncio`;
/*!50001 DROP VIEW IF EXISTS `sql_im_impanuncio`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_impanuncio` (
  `IdAnuncio` int(11),
  `FhAnuncio` datetime,
  `IdCliente` varchar(11),
  `Anunciante` varchar(50),
  `DirAnunciante` varchar(80),
  `TelAnunciante` varchar(15),
  `IdRuta` int(11),
  `Asignacion` int(11),
  `FhRecogida` datetime,
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosVol` int(11),
  `Comentarios` varchar(250),
  `Programada` tinyint(4),
  `Estado` varchar(1),
  `Efectiva` tinyint(4),
  `TiempoEfectiva` datetime,
  `Coperaciones` smallint(6),
  `Orden` int(11),
  `IdConductor` varchar(11),
  `IdVehiculo` varchar(10),
  `NmConductor` varchar(30),
  `Apellido1Conductor` varchar(30),
  `Apellido2Conductor` varchar(30),
  `NmRuta` varchar(70),
  `RazonSocial` varchar(100),
  `NmColor` varchar(100),
  `NmMarca` varchar(50),
  `Modelo` varchar(4),
  `LicenciaConductor` varchar(50),
  `IdEmpresa` smallint(6),
  `Logo` mediumblob,
  `Nombre` varchar(50),
  `Direccion` varchar(80),
  `Telefono` varchar(50),
  `Nit` varchar(12)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_guias`
--

DROP TABLE IF EXISTS `sql_im_guias`;
/*!50001 DROP VIEW IF EXISTS `sql_im_guias`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_guias` (
  `Guia` int(11),
  `NmCiudad` varchar(50),
  `IdCiuDestino` int(11),
  `NmRuta` varchar(50),
  `IdRuta` int(11),
  `FhEntradaBodega` datetime,
  `VrDeclarado` double,
  `VrFlete` double,
  `VrManejo` double,
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosVolumen` int(11),
  `KilosFacturados` int(11),
  `Cuenta` varchar(11),
  `Recaudo` double,
  `Despachada` tinyint(4),
  `Entregada` tinyint(4),
  `Descargada` tinyint(4),
  `Anulada` tinyint(4),
  `TpServicio` tinyint(4),
  `IdTpCtaFlete` tinyint(4),
  `IdTpCtaManejo` tinyint(4),
  `Cliente` varchar(60),
  `Abonos` double
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_aseguradora`
--

DROP TABLE IF EXISTS `sql_im_aseguradora`;
/*!50001 DROP VIEW IF EXISTS `sql_im_aseguradora`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_aseguradora` (
  `IdVehiculo` varchar(10),
  `NroDespachos` bigint(21),
  `Modelo` varchar(4),
  `Serie` varchar(50),
  `FhExpedicion` datetime,
  `NmPropietario` varchar(92),
  `NmTenedor` varchar(92),
  `TUnidades` decimal(32,0),
  `TKilosReales` decimal(32,0),
  `TRemesas` decimal(32,0)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_rel_guias_desp`
--

DROP TABLE IF EXISTS `sql_im_rel_guias_desp`;
/*!50001 DROP VIEW IF EXISTS `sql_im_rel_guias_desp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_rel_guias_desp` (
  `Guia` int(11),
  `DocCliente` varchar(15),
  `NmDestinatario` varchar(50),
  `IdCiuDestino` int(11),
  `NmCiudad` varchar(50),
  `FhEntradaBodega` datetime,
  `VrDeclarado` double,
  `VrFlete` double,
  `VrManejo` double,
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosFacturados` int(11),
  `KilosVolumen` int(11),
  `Estado` varchar(1),
  `IdDespacho` int(11),
  `COIng` smallint(6),
  `Cuenta` varchar(11),
  `Cliente` varchar(60),
  `Recaudo` double,
  `Orden` int(11),
  `TpServicio` tinyint(4),
  `Anulada` tinyint(4),
  `FhExpedicion` datetime,
  `IdVehiculo` varchar(10),
  `IdConductor` varchar(11),
  `Remesas` int(11),
  `UnidadesDespacho` int(11),
  `KRDespacho` int(11),
  `VrFleteDespacho` double,
  `VrAnticipo` double,
  `Observaciones` varchar(254),
  `TRecaudo` double,
  `TotalViaje` double,
  `VrDctoIndCom` double,
  `VrDctoRteFte` double,
  `NmConductor` varchar(60)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_ir_resumenrecogidas`
--

DROP TABLE IF EXISTS `sql_ir_resumenrecogidas`;
/*!50001 DROP VIEW IF EXISTS `sql_ir_resumenrecogidas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_ir_resumenrecogidas` (
  `IdAnuncio` int(11),
  `FhAnuncio` datetime,
  `IdCliente` varchar(11),
  `Anunciante` varchar(50),
  `DirAnunciante` varchar(80),
  `TelAnunciante` varchar(15),
  `IdRuta` int(11),
  `Asignacion` int(11),
  `FhRecogida` datetime,
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosVol` int(11),
  `Comentarios` varchar(250),
  `Programada` tinyint(4),
  `Estado` varchar(1),
  `Efectiva` tinyint(4),
  `TiempoEfectiva` datetime,
  `Coperaciones` smallint(6),
  `Orden` int(11),
  `IdConductor` varchar(11),
  `IdVehiculo` varchar(10),
  `IdEmpresa` smallint(6),
  `IdAsignacion` int(11),
  `Placa` varchar(50),
  `Flete` double,
  `Rec` int(11),
  `Pend` int(11),
  `FechaRecogida` date,
  `RazonSocial` varchar(100)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_manvehiculo`
--

DROP TABLE IF EXISTS `sql_manvehiculo`;
/*!50001 DROP VIEW IF EXISTS `sql_manvehiculo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_manvehiculo` (
  `vehplaca` varchar(10),
  `vehmarca` varchar(10),
  `vehlinea` varchar(200),
  `vehmodelo` varchar(4),
  `vehmodelotransf` varchar(4),
  `vehnroserie` varchar(50),
  `vehcolor` varchar(20),
  `vehtipocarrocer` varchar(10),
  `vehconfiguraci` varchar(4),
  `vehpeso` varchar(6),
  `vehregistro` varchar(20),
  `vehnro_poliza` varchar(20),
  `vehtipidasegur` varchar(1),
  `vehidenasegur` varchar(11),
  `vehfechvenci` date,
  `vehplacsemir` varchar(6),
  `vehtipidpropiet` varchar(1),
  `vehidentprop` varchar(11),
  `Vehtipidtenenc` varchar(1),
  `Vehidentenenc` varchar(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_despachosporcerrar`
--

DROP TABLE IF EXISTS `sql_im_despachosporcerrar`;
/*!50001 DROP VIEW IF EXISTS `sql_im_despachosporcerrar`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_despachosporcerrar` (
  `IdManifiesto` int(11),
  `OrdDespacho` int(11),
  `Tipo` tinyint(4),
  `FhExpedicion` datetime,
  `FhCumplidos` datetime,
  `IdVehiculo` varchar(10),
  `IdConductor` varchar(11),
  `IdRuta` int(11),
  `IdCiudadOrigen` int(11),
  `IdCiudadDestino` int(11),
  `Estado` varchar(1),
  `Remesas` int(11),
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosVol` int(11),
  `FleteCobra` double,
  `ManejoCobra` double,
  `FleteCE` double,
  `ManejoCE` double,
  `VrFlete` double,
  `VrAnticipo` double,
  `VrDctoPapeleria` double,
  `VrDctoSeguridad` double,
  `VrDctoCargue` double,
  `VrDctoEstampilla` double,
  `VrFleteAdicional` double,
  `VrDctoIndCom` double,
  `VrDctoRteFte` double,
  `VrOtrosDctos` double,
  `SaldoDesp` double,
  `TotalViaje` double,
  `CO` int(11),
  `Observaciones` varchar(254),
  `TRecaudo` double,
  `VrDeclaradoTotal` double(15,3),
  `ManElectronico` varchar(30),
  `NmConductor` varchar(60),
  `Cerrado` tinyint(4),
  `Liquidado` tinyint(4),
  `IdUsuario` int(11),
  `IdEmpresa` smallint(6),
  `Exportado` tinyint(4),
  `LugarPago` varchar(100),
  `FhPagoSaldo` date,
  `PagoCargue` varchar(80),
  `PagoDescargue` varchar(80),
  `Estado1` tinyint(4),
  `AbonosCE` double(15,3),
  `FletesNoCancelados` double(15,3),
  `NmRuta` varchar(50)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_ir_listadorecogidasvehiculo`
--

DROP TABLE IF EXISTS `sql_ir_listadorecogidasvehiculo`;
/*!50001 DROP VIEW IF EXISTS `sql_ir_listadorecogidasvehiculo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_ir_listadorecogidasvehiculo` (
  `IdAnuncio` int(11),
  `FhAnuncio` datetime,
  `IdCliente` varchar(11),
  `Anunciante` varchar(50),
  `DirAnunciante` varchar(80),
  `TelAnunciante` varchar(15),
  `IdRuta` int(11),
  `Asignacion` int(11),
  `FhRecogida` datetime,
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosVol` int(11),
  `Comentarios` varchar(250),
  `Programada` tinyint(4),
  `Estado` varchar(1),
  `Efectiva` tinyint(4),
  `TiempoEfectiva` datetime,
  `Coperaciones` smallint(6),
  `Orden` int(11),
  `IdConductor` varchar(11),
  `IdVehiculo` varchar(10),
  `IdEmpresa` smallint(6),
  `IdAsignacion` int(11),
  `Fecha` date,
  `Placa` varchar(50),
  `Flete` double,
  `RazonSocial` varchar(100)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_pend_desp`
--

DROP TABLE IF EXISTS `sql_im_pend_desp`;
/*!50001 DROP VIEW IF EXISTS `sql_im_pend_desp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_pend_desp` (
  `Guia` int(11),
  `CR` smallint(6),
  `Remitente` varchar(50),
  `IdCliente` int(11),
  `DocCliente` varchar(15),
  `NmDestinatario` varchar(50),
  `IdCiuDestino` int(11),
  `TelDestinatario` varchar(11),
  `DirDestinatario` varchar(50),
  `IdRuta` int(11),
  `FhEntradaBodega` datetime,
  `FhEntregaMercancia` datetime,
  `VrDeclarado` double,
  `VrFlete` double,
  `VrManejo` double,
  `Unidades` int(11),
  `KilosReales` int(11),
  `KilosFacturados` int(11),
  `KilosVolumen` int(11),
  `Estado` varchar(1),
  `IdFactura` int(11),
  `IdDespacho` int(11),
  `Observaciones` varchar(200),
  `COIng` smallint(6),
  `Cuenta` varchar(11),
  `Cliente` varchar(60),
  `Recaudo` double,
  `Orden` int(11),
  `TpServicio` tinyint(4),
  `IdTpCtaFlete` tinyint(4),
  `IdTpCtaManejo` tinyint(4),
  `CPorte` tinyint(4),
  `Entregada` tinyint(4),
  `Descargada` tinyint(4),
  `FhDescargada` datetime,
  `NmRuta` varchar(50),
  `NmCiudad` varchar(50)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_impnovedadsolucionada`
--

DROP TABLE IF EXISTS `sql_im_impnovedadsolucionada`;
/*!50001 DROP VIEW IF EXISTS `sql_im_impnovedadsolucionada`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_impnovedadsolucionada` (
  `ID` int(11),
  `Guia` int(11),
  `IdNovedad` smallint(6),
  `Comentarios` mediumtext,
  `UsuIng` int(11),
  `FHIngreso` datetime,
  `FhNovedad` datetime,
  `Solucion` mediumtext,
  `UsuSol` int(11),
  `FhSolucion` datetime,
  `Solucionada` tinyint(4),
  `NmNovedad` varchar(200),
  `NmUsuario` varchar(50)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_produccionruta`
--

DROP TABLE IF EXISTS `sql_im_produccionruta`;
/*!50001 DROP VIEW IF EXISTS `sql_im_produccionruta`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_produccionruta` (
  `Guia` int(11),
  `FhEntradaBodega` datetime,
  `VrDeclarado` double,
  `VrFlete` double,
  `VrManejo` double,
  `Unidades` int(11),
  `KilosReales` int(11),
  `NmRuta` varchar(50),
  `IdRuta` int(11),
  `KilosFacturados` int(11),
  `COIng` smallint(6),
  `IdTpCtaFlete` tinyint(4),
  `IdTpCtaManejo` tinyint(4)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_manremesas`
--

DROP TABLE IF EXISTS `sql_manremesas`;
/*!50001 DROP VIEW IF EXISTS `sql_manremesas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_manremesas` (
  `nitempresa` varchar(12),
  `remnumero` int(11),
  `remcantidad` int(11),
  `rempeso` int(11),
  `remremtente` varchar(50),
  `remdestinatario` varchar(50),
  `remciudad_desti` varchar(10),
  `remnromanifiesto` int(11),
  `remnrorempresa` int(11),
  `rempoliza` varchar(20),
  `remaseguradora` decimal(11,0),
  `remvencimiento` date,
  `remciudad_orig` varchar(10),
  `Remvalremesa` double,
  `Remvalproducto` double
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_resumendespacho`
--

DROP TABLE IF EXISTS `sql_im_resumendespacho`;
/*!50001 DROP VIEW IF EXISTS `sql_im_resumendespacho`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_resumendespacho` (
  `Guia` int(11),
  `NmDestinatario` varchar(50),
  `NmCiudad` varchar(50),
  `IdCiuDestino` int(11),
  `FhEntradaBodega` datetime,
  `VrFlete` double,
  `VrDeclarado` double,
  `VrManejo` double,
  `Unidades` int(11),
  `KilosReales` int(11),
  `Cliente` varchar(60),
  `Cuenta` varchar(11),
  `IdManifiesto` int(11),
  `FhExpedicion` datetime,
  `IdVehiculo` varchar(10),
  `IdConductor` varchar(11),
  `IdRuta` int(11),
  `Remesas` int(11),
  `UnidadesDespacho` int(11),
  `KilosRealesDespacho` int(11),
  `FleteCobra` double,
  `ManejoCobra` double,
  `FleteCE` double,
  `ManejoCE` double,
  `VrFleteDespacho` double,
  `VrAnticipo` double,
  `TRecaudo` double,
  `NmConductor` varchar(60),
  `IdDespacho` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_pendescargar`
--

DROP TABLE IF EXISTS `sql_im_pendescargar`;
/*!50001 DROP VIEW IF EXISTS `sql_im_pendescargar`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_pendescargar` (
  `Guia` int(11),
  `CR` smallint(6),
  `Remitente` varchar(50),
  `IdCliente` int(11),
  `DocCliente` varchar(15),
  `NmDestinatario` varchar(50),
  `DirDestinatario` varchar(50),
  `TelDestinatario` varchar(11),
  `IdCiuDestino` int(11),
  `IdRuta` int(11),
  `FhEntradaBodega` datetime,
  `FhEntregaMercancia` datetime,
  `VrDeclarado` double,
  `VrFlete` double,
  `VrManejo` double,
  `KilosVolumen` int(11),
  `KilosFacturados` int(11),
  `KilosReales` int(11),
  `Unidades` int(11),
  `Estado` varchar(1),
  `IdDespacho` int(11),
  `Observaciones` varchar(200),
  `IdFactura` int(11),
  `COIng` smallint(6),
  `Cuenta` varchar(11),
  `Cliente` varchar(60),
  `Recaudo` double,
  `Orden` int(11),
  `EmpaqueRef` varchar(250),
  `RelCliente` varchar(30),
  `IdCiuOrigen` int(11),
  `IdRelEntrega` int(11),
  `FhDescargada` datetime,
  `Despachada` tinyint(4),
  `TpServicio` tinyint(4),
  `IdTpCtaFlete` tinyint(4),
  `IdTpCtaManejo` tinyint(4),
  `CPorte` tinyint(4),
  `Entregada` tinyint(4),
  `Descargada` tinyint(4),
  `Anulada` tinyint(4),
  `GuiFac` tinyint(4),
  `Facturada` tinyint(1),
  `IdUsuario` int(11),
  `IdPlanillaFactura` int(11),
  `IdEmpresa` smallint(6),
  `Relacionada` tinyint(4),
  `EnNovedad` tinyint(4),
  `NmCiudad` varchar(50),
  `IdVehiculo` varchar(10),
  `IdConductor` varchar(11),
  `NmConductor` varchar(60)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sql_im_guias_factura`
--

DROP TABLE IF EXISTS `sql_im_guias_factura`;
/*!50001 DROP VIEW IF EXISTS `sql_im_guias_factura`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sql_im_guias_factura` (
  `Guia` int(11),
  `FhEntradaBodega` datetime,
  `Cuenta` varchar(11),
  `Cliente` varchar(60),
  `Unidades` int(11),
  `KilosFacturados` int(11),
  `VrDeclarado` double,
  `Recaudo` double,
  `IdTpCtaFlete` tinyint(4),
  `IdTpCtaManejo` tinyint(4),
  `VrFlete` double,
  `VrManejo` double,
  `Abonos` double,
  `COIng` smallint(6),
  `NmPuntoOperaciones` varchar(50),
  `TipoCobro` tinyint(4),
  `NmTipoCobro` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `sql_if_facturado`
--

/*!50001 DROP TABLE IF EXISTS `sql_if_facturado`*/;
/*!50001 DROP VIEW IF EXISTS `sql_if_facturado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_if_facturado` AS select `facturas`.`IdFactura` AS `IdFactura`,`facturas`.`FhFac` AS `FhFac`,`facturas`.`FhVenceFac` AS `FhVenceFac`,`facturas`.`IdCliente` AS `IdCliente`,`facturas`.`Estado` AS `Estado`,`facturas`.`Notas` AS `Notas`,`facturas`.`TFlete` AS `TFlete`,`facturas`.`TManejo` AS `TManejo`,`facturas`.`TOtros` AS `TOtros`,`facturas`.`DctoComercial` AS `DctoComercial`,`facturas`.`BaseCcial` AS `BaseCcial`,`facturas`.`DctoFinanciero` AS `DctoFinanciero`,`facturas`.`BaseFin` AS `BaseFin`,`facturas`.`AntesDeDcto` AS `AntesDeDcto`,`facturas`.`Abonos` AS `Abonos`,`facturas`.`TotalFactura` AS `TotalFactura`,`facturas`.`Saldo` AS `Saldo`,`facturas`.`NroGuias` AS `NroGuias`,`facturas`.`NroPlanillas` AS `NroPlanillas`,`facturas`.`NroConceptos` AS `NroConceptos`,`facturas`.`Exportada` AS `Exportada`,`terceros`.`RazonSocial` AS `RazonSocial`,`terceros`.`IdCentroCostos` AS `IdCentroCostos`,`centros_costos`.`NmCentroCostos` AS `NmCentroCostos` from ((`facturas` left join `terceros` on((`facturas`.`IdCliente` = `terceros`.`IDTercero`))) left join `centros_costos` on((`terceros`.`IdCentroCostos` = `centros_costos`.`IdCentroCostos`))) where ((`facturas`.`Estado` <> _latin1'A') and (`facturas`.`Estado` <> _latin1'D')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_redespachos`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_redespachos`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_redespachos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_redespachos` AS select `redespachos`.`Guia` AS `Guia`,`redespachos`.`Fecha` AS `Fecha`,`despachos`.`FhExpedicion` AS `FechaViaje`,`terceros`.`IDTercero` AS `IDTercero`,`terceros`.`RazonSocial` AS `RazonSocial`,`ciudades`.`NmCiudad` AS `NmCiuDestino`,`informacionempresa`.`Nit` AS `Nit`,`informacionempresa`.`Nombre` AS `Nombre`,`informacionempresa`.`Direccion` AS `Direccion`,`informacionempresa`.`Telefono` AS `Telefono`,`informacionempresa`.`Logo` AS `Logo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`despachos`.`NmConductor` AS `NmConductor` from (((((`redespachos` left join `despachos` on((`redespachos`.`IdDespacho` = `despachos`.`OrdDespacho`))) left join `guias` on((`guias`.`Guia` = `redespachos`.`Guia`))) left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) left join `terceros` on((`guias`.`Cuenta` = `terceros`.`IDTercero`))) join `informacionempresa`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_novedades_cliente`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_novedades_cliente`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_novedades_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_novedades_cliente` AS select `novedades`.`ID` AS `ID`,`novedades`.`Guia` AS `Guia`,`novedades`.`IdNovedad` AS `IdNovedad`,`novedades`.`Comentarios` AS `Comentarios`,`novedades`.`UsuIng` AS `UsuIng`,`novedades`.`FHIngreso` AS `FHIngreso`,`novedades`.`FhNovedad` AS `FhNovedad`,`novedades`.`Solucion` AS `Solucion`,`novedades`.`UsuSol` AS `UsuSol`,`novedades`.`FhSolucion` AS `FhSolucion`,`novedades`.`Solucionada` AS `Solucionada`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`terceros`.`RazonSocial` AS `RazonSocial`,`guias`.`Cuenta` AS `Cuenta`,`causalesnovedad`.`NmNovedad` AS `NmNovedad`,`informacionempresa`.`Nombre` AS `NombreEmpresa`,`informacionempresa`.`Direccion` AS `DireccionEmpresa`,`informacionempresa`.`Telefono` AS `TelefonoEmpresa`,`informacionempresa`.`Nit` AS `NitEmpresa`,`informacionempresa`.`Logo` AS `Logo`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`Despachada` AS `Despachada`,`guias`.`Entregada` AS `Entregada`,`guias`.`Descargada` AS `Descargada`,`guias`.`EnNovedad` AS `EnNovedad`,`ciudades`.`NmCiudad` AS `NmCiuDestino` from (((((`novedades` left join `guias` on((`novedades`.`Guia` = `guias`.`Guia`))) left join `terceros` on((`guias`.`Cuenta` = `terceros`.`IDTercero`))) left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) left join `causalesnovedad` on((`novedades`.`IdNovedad` = `causalesnovedad`.`IdNovedad`))) join `informacionempresa`) where (`guias`.`Anulada` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_formato_liquidar_despacho2`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_formato_liquidar_despacho2`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_formato_liquidar_despacho2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_formato_liquidar_despacho2` AS select `despachos`.`IdManifiesto` AS `IdManifiesto`,`despachos`.`OrdDespacho` AS `OrdDespacho`,`despachos`.`Tipo` AS `Tipo`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`FhCumplidos` AS `FhCumplidos`,`despachos`.`IdVehiculo` AS `IdVehiculo`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`IdRuta` AS `IdRuta`,`despachos`.`IdCiudadOrigen` AS `IdCiudadOrigen`,`despachos`.`IdCiudadDestino` AS `IdCiudadDestino`,`despachos`.`Estado` AS `Estado`,`despachos`.`Remesas` AS `Remesas`,`despachos`.`Unidades` AS `Unidades`,`despachos`.`KilosReales` AS `KilosReales`,`despachos`.`KilosVol` AS `KilosVol`,`despachos`.`FleteCobra` AS `FleteCobra`,`despachos`.`ManejoCobra` AS `ManejoCobra`,`despachos`.`FleteCE` AS `FleteCE`,`despachos`.`ManejoCE` AS `ManejoCE`,`despachos`.`VrFlete` AS `VrFlete`,`despachos`.`VrAnticipo` AS `VrAnticipo`,`despachos`.`VrDctoPapeleria` AS `VrDctoPapeleria`,`despachos`.`VrDctoSeguridad` AS `VrDctoSeguridad`,`despachos`.`VrDctoCargue` AS `VrDctoCargue`,`despachos`.`VrDctoEstampilla` AS `VrDctoEstampilla`,`despachos`.`VrFleteAdicional` AS `VrFleteAdicional`,`despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,`despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,`despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,`despachos`.`SaldoDesp` AS `SaldoDesp`,`despachos`.`TotalViaje` AS `TotalViaje`,`despachos`.`CO` AS `CO`,`despachos`.`Observaciones` AS `Observaciones`,`despachos`.`TRecaudo` AS `TRecaudo`,`despachos`.`VrDeclaradoTotal` AS `VrDeclaradoTotal`,`despachos`.`ManElectronico` AS `ManElectronico`,`despachos`.`NmConductor` AS `NmConductor`,`despachos`.`Cerrado` AS `Cerrado`,`despachos`.`Liquidado` AS `Liquidado`,`despachos`.`IdUsuario` AS `IdUsuario`,`despachos`.`IdEmpresa` AS `IdEmpresa`,`despachos`.`Exportado` AS `Exportado`,`despachos`.`LugarPago` AS `LugarPago`,`despachos`.`FhPagoSaldo` AS `FhPagoSaldo`,`despachos`.`PagoCargue` AS `PagoCargue`,`despachos`.`PagoDescargue` AS `PagoDescargue`,`despachos`.`Estado1` AS `Estado1`,`despachos`.`AbonosCE` AS `AbonosCE`,`despachos`.`FletesNoCancelados` AS `FletesNoCancelados`,`despachos`.`EnviadoMT` AS `EnviadoMT`,`despachos`.`EnviadoGuia` AS `EnviadoGuia`,`origen`.`NmCiudad` AS `OrigenViaje`,`destino`.`NmCiudad` AS `DestinoViaje`,`despachos`.`TotalCE` AS `TotalCE`,`despachos`.`FleteContado` AS `FleteContado`,`despachos`.`ManejoContado` AS `ManejoContado`,`despachos`.`ManejoCorriente` AS `ManejoCorriente`,`despachos`.`FleteCorriente` AS `FleteCorriente`,`despachos`.`FleteCETotal` AS `FleteCETotal`,`despachos`.`ManejoCETotal` AS `ManejoCETotal` from ((`despachos` left join `ciudades` `origen` on((`despachos`.`IdCiudadOrigen` = `origen`.`IdCiudad`))) left join `ciudades` `destino` on((`despachos`.`IdCiudadDestino` = `destino`.`IdCiudad`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `slq_im_producciongral`
--

/*!50001 DROP TABLE IF EXISTS `slq_im_producciongral`*/;
/*!50001 DROP VIEW IF EXISTS `slq_im_producciongral`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `slq_im_producciongral` AS select `guias`.`Guia` AS `Guia`,`guias`.`IdCliente` AS `IdCliente`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`Estado` AS `Estado`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`Anulada` AS `Anulada`,`guias`.`KilosFacturados` AS `KilosFacturados` from `guias` where (`guias`.`Anulada` = 0) order by `guias`.`Cuenta` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_ventascontado`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_ventascontado`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_ventascontado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_ventascontado` AS select `guias`.`Guia` AS `Guia`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`GuiFac` AS `GuiFac`,`guias`.`Anulada` AS `Anulada`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`Estado` AS `Estado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,(`guias`.`VrFlete` + `guias`.`VrManejo`) AS `Total`,`informacionempresa`.`Nit` AS `Nit`,`informacionempresa`.`Nombre` AS `NombreEmpresa`,`informacionempresa`.`Direccion` AS `DireccionEmpresa`,`informacionempresa`.`Telefono` AS `TelefonoEmpresa`,`informacionempresa`.`Logo` AS `Logo` from (`guias` join `informacionempresa`) where (`guias`.`TipoCobro` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_correcciones`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_correcciones`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_correcciones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_correcciones` AS select `correcciones`.`IdCorreccion` AS `IdCorreccion`,`correcciones`.`GuiaCorregida` AS `GuiaCorregida`,`correcciones`.`FechaCorreccion` AS `FechaCorreccion`,`correcciones`.`CuentaC` AS `CuentaC`,`correcciones`.`IdUsuarioCorreccion` AS `IdUsuarioCorreccion`,`correcciones`.`IdTpServicio` AS `IdTpServicio`,`correcciones`.`VrDeclaradoC` AS `VrDeclaradoC`,`correcciones`.`VrFleteC` AS `VrFleteC`,`correcciones`.`VrManejoC` AS `VrManejoC`,`correcciones`.`GuiaFacC` AS `GuiaFacC`,`correcciones`.`KilosRealesC` AS `KilosRealesC`,`correcciones`.`KilosVolumenC` AS `KilosVolumenC`,`correcciones`.`KilosFacturadosC` AS `KilosFacturadosC`,`correcciones`.`UnidadesC` AS `UnidadesC`,`correcciones`.`IdTpCtaFleteC` AS `IdTpCtaFleteC`,`correcciones`.`IdTpCtaManejoC` AS `IdTpCtaManejoC`,`correcciones`.`Comentarios` AS `Comentarios`,`correcciones`.`IdCiuDestinoC` AS `IdCiuDestinoC`,`correcciones`.`DocClienteC` AS `DocClienteC`,`correcciones`.`RecaudoC` AS `RecaudoC`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente` from (`correcciones` left join `guias` on((`correcciones`.`GuiaCorregida` = `guias`.`Guia`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_if_imp_factura_conceptos`
--

/*!50001 DROP TABLE IF EXISTS `sql_if_imp_factura_conceptos`*/;
/*!50001 DROP VIEW IF EXISTS `sql_if_imp_factura_conceptos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_if_imp_factura_conceptos` AS select `facturas`.`FhFac` AS `FhFac`,`terceros`.`RazonSocial` AS `RazonSocial`,`facturas`.`TFlete` AS `TFlete`,`facturas`.`TManejo` AS `TManejo`,`facturas`.`TOtros` AS `TOtros`,`facturas`.`NroGuias` AS `NroGuias`,`informacionempresa`.`Nit` AS `Nit`,`informacionempresa`.`Nombre` AS `Nombre`,`informacionempresa`.`Direccion` AS `Direccion`,`informacionempresa`.`Telefono` AS `Telefono`,`informacionempresa`.`Logo` AS `Logo`,`facturas`.`FhVenceFac` AS `FhVenceFac`,`facturas`.`IdFactura` AS `NumeroFactura`,`facturas`.`Plazo` AS `Plazo`,`formas_pago`.`NmFormaPago` AS `NmFormaPago`,`terceros`.`Direccion` AS `DireccionTercero`,`terceros`.`Telefono` AS `TelefonoTercero`,`ciudadtercero`.`NmCiudad` AS `NmCiudadTercero`,`facturas`.`IdCliente` AS `IdCliente`,`facturas`.`Notas` AS `Notas`,`facturas`.`TotalFactura` AS `TotalFactura`,`terceros`.`DigitoVerificacion` AS `DigitoVerificacion`,`facturas`.`ValorEnLetras` AS `ValorEnLetras`,`conceptosfacturas`.`IdConceptoFactura` AS `IdConceptoFactura`,`conceptosfacturas`.`IdFactura` AS `IdFactura`,`conceptosfacturas`.`Valor` AS `Valor`,`conceptoscontables`.`NmConcepto` AS `NmConcepto` from ((`conceptosfacturas` left join ((((`facturas` left join `terceros` on((`facturas`.`IdCliente` = `terceros`.`IDTercero`))) left join `informacionempresa` on((`facturas`.`IdEmpresa` = `informacionempresa`.`Id`))) left join `formas_pago` on((`facturas`.`IdFormaPago` = `formas_pago`.`IdFormaPago`))) left join `ciudades` `ciudadtercero` on((`terceros`.`IdCiudad` = `ciudadtercero`.`IdCiudad`))) on((`facturas`.`IdFactura` = `conceptosfacturas`.`IdFactura`))) left join `conceptoscontables` on((`conceptosfacturas`.`IdConcepto` = `conceptoscontables`.`IdConcepto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_pen_ent_cli`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_pen_ent_cli`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_pen_ent_cli`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_pen_ent_cli` AS select `guias`.`Guia` AS `Guia`,`guias`.`CR` AS `CR`,`guias`.`Remitente` AS `Remitente`,`guias`.`IdCliente` AS `IdCliente`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`DirDestinatario` AS `DirDestinatario`,`guias`.`TelDestinatario` AS `TelDestinatario`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`guias`.`IdRuta` AS `IdRuta`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`FhEntregaMercancia` AS `FhEntregaMercancia`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`Estado` AS `Estado`,`guias`.`IdFactura` AS `IdFactura`,`guias`.`IdDespacho` AS `IdDespacho`,`guias`.`Observaciones` AS `Observaciones`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`Orden` AS `Orden`,`guias`.`EmpaqueRef` AS `EmpaqueRef`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`CPorte` AS `CPorte`,`guias`.`Entregada` AS `Entregada`,`guias`.`Descargada` AS `Descargada`,`guias`.`FhDescargada` AS `FhDescargada`,`guias`.`Despachada` AS `Despachada`,`guias`.`Anulada` AS `Anulada`,`ciudades`.`NmCiudad` AS `NmCiudad` from (`guias` join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) where ((`guias`.`Entregada` = 0) and (`guias`.`Anulada` = 0) and (`guias`.`Despachada` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_manmanifiesto`
--

/*!50001 DROP TABLE IF EXISTS `sql_manmanifiesto`*/;
/*!50001 DROP VIEW IF EXISTS `sql_manmanifiesto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_manmanifiesto` AS select `informacionempresa`.`Nit` AS `Nitempresa`,`despachos`.`IdManifiesto` AS `Mannumero`,`despachos`.`OrdDespacho` AS `mannumero_empresa`,`despachos`.`FhExpedicion` AS `Manfechexped`,`ciuorigen`.`CodMinTrans` AS `manciud_origen`,`ciudestino`.`CodMinTrans` AS `manciud_destin`,`despachos`.`IdVehiculo` AS `Manplaca`,`conductores`.`TpIdConductor` AS `Mantipidconduc`,`conductores`.`IdConductor` AS `Manidenconduc`,`vehiculos`.`PlacaRemolque` AS `Manplacacsemir`,`carrocerias`.`CodMinTrans` AS `Mantipocarrocer`,`vehiculos`.`VehConfiguracion` AS `Manconfiguraci`,`vehiculos`.`PesoVacio` AS `Manpeso`,`despachos`.`VrFlete` AS `Manvlrtotflete`,`despachos`.`VrDctoRteFte` AS `Manretefuente`,`despachos`.`VrDctoIndCom` AS `mandescu_ley`,`despachos`.`VrAnticipo` AS `manvlr_anticip`,`despachos`.`LugarPago` AS `manlugar_pago`,`despachos`.`FhPagoSaldo` AS `Manfechpagsal`,`despachos`.`PagoCargue` AS `manpago_cargue`,`despachos`.`PagoDescargue` AS `manpago_descar`,`despachos`.`Observaciones` AS `manobservacion`,`titular`.`TpDoc` AS `mantipidtitular`,`vehiculos`.`IdPropietario` AS `manidentitular`,`despachos`.`KilosReales` AS `manpesobv`,`despachos`.`FhCumplidos` AS `fechentrega` from (((((((`despachos` left join `informacionempresa` on((`despachos`.`IdEmpresa` = `informacionempresa`.`Id`))) join `ciudades` `ciuorigen` on((`despachos`.`IdCiudadOrigen` = `ciuorigen`.`IdCiudad`))) join `ciudades` `ciudestino` on((`despachos`.`IdCiudadDestino` = `ciudestino`.`IdCiudad`))) join `conductores` on((`despachos`.`IdConductor` = `conductores`.`IdConductor`))) join `vehiculos` on((`despachos`.`IdVehiculo` = `vehiculos`.`IdPlaca`))) join `carrocerias` on((`vehiculos`.`IdCarroceria` = `carrocerias`.`IdCarroceria`))) join `terceros` `titular` on((`vehiculos`.`IdPropietario` = `titular`.`IDTercero`))) where (`despachos`.`OrdDespacho` = 15148) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_if_pend_fac`
--

/*!50001 DROP TABLE IF EXISTS `sql_if_pend_fac`*/;
/*!50001 DROP VIEW IF EXISTS `sql_if_pend_fac`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_if_pend_fac` AS select `guias`.`Guia` AS `Guia`,`guias`.`CR` AS `CR`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`DocCliente` AS `DocCliente`,`ciudades`.`NmCiudad` AS `NmCiudad`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`Estado` AS `Estado`,`guias`.`IdFactura` AS `IdFactura`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`Anulada` AS `Anulada`,`guias`.`GuiFac` AS `GuiFac`,`guias`.`IdCliente` AS `IdCliente`,`guias`.`IdPlanillaFactura` AS `IdPlanillaFactura`,`guias`.`RelCliente` AS `RelCliente` from (`guias` join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) where ((`guias`.`Anulada` = 0) and (`guias`.`GuiFac` = 0) and (`guias`.`Facturada` = 0) and (`guias`.`TipoCobro` = 3)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_produccionasesor`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_produccionasesor`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_produccionasesor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_produccionasesor` AS select `guias`.`Guia` AS `Guia`,`guias`.`IdCliente` AS `IdCliente`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`Estado` AS `Estado`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`Anulada` AS `Anulada`,`guias`.`KilosFacturados` AS `KilosFacturados`,`terceros`.`RazonSocial` AS `RazonSocial`,`asesores`.`NmAsesor` AS `NmAsesor`,`asesores`.`IdAsesor` AS `IdAsesor` from ((`guias` left join `terceros` on((`guias`.`Cuenta` = `terceros`.`IDTercero`))) left join `asesores` on((`terceros`.`IdAsesor` = `asesores`.`IdAsesor`))) where (`guias`.`Anulada` = 0) order by `guias`.`Cuenta` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_flec_vs_flep`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_flec_vs_flep`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_flec_vs_flep`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_flec_vs_flep` AS select `despachos`.`IdManifiesto` AS `IdManifiesto`,`despachos`.`OrdDespacho` AS `OrdDespacho`,`despachos`.`Tipo` AS `Tipo`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`FhCumplidos` AS `FhCumplidos`,`despachos`.`IdVehiculo` AS `IdVehiculo`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`IdRuta` AS `IdRuta`,`despachos`.`IdCiudadOrigen` AS `IdCiudadOrigen`,`despachos`.`IdCiudadDestino` AS `IdCiudadDestino`,`despachos`.`Estado` AS `Estado`,`despachos`.`Remesas` AS `Remesas`,`despachos`.`Unidades` AS `Unidades`,`despachos`.`KilosReales` AS `KilosReales`,`despachos`.`KilosVol` AS `KilosVol`,`despachos`.`FleteCobra` AS `FleteCobra`,`despachos`.`ManejoCobra` AS `ManejoCobra`,`despachos`.`FleteCE` AS `FleteCE`,`despachos`.`ManejoCE` AS `ManejoCE`,`despachos`.`VrFlete` AS `VrFlete`,`despachos`.`VrAnticipo` AS `VrAnticipo`,`despachos`.`VrDctoPapeleria` AS `VrDctoPapeleria`,`despachos`.`VrDctoSeguridad` AS `VrDctoSeguridad`,`despachos`.`VrDctoCargue` AS `VrDctoCargue`,`despachos`.`VrDctoEstampilla` AS `VrDctoEstampilla`,`despachos`.`VrFleteAdicional` AS `VrFleteAdicional`,`despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,`despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,`despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,`despachos`.`SaldoDesp` AS `SaldoDesp`,`despachos`.`TotalViaje` AS `TotalViaje`,`despachos`.`CO` AS `CO`,`despachos`.`Observaciones` AS `Observaciones`,`despachos`.`TRecaudo` AS `TRecaudo`,`despachos`.`VrDeclaradoTotal` AS `VrDeclaradoTotal`,`despachos`.`NmConductor` AS `NmConductor`,`despachos`.`Cerrado` AS `Cerrado`,`despachos`.`Liquidado` AS `Liquidado`,`despachos`.`IdUsuario` AS `IdUsuario`,`despachos`.`IdEmpresa` AS `IdEmpresa`,`despachos`.`Exportado` AS `Exportado`,`ciudades`.`NmCiudad` AS `NmCiudad`,`rutas`.`NmRuta` AS `NmRuta` from ((`despachos` left join `ciudades` on((`despachos`.`IdCiudadDestino` = `ciudades`.`IdCiudad`))) left join `rutas` on((`despachos`.`IdRuta` = `rutas`.`IdRuta`))) where (`despachos`.`Estado` <> _latin1'A') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_rel_guias_cumplidos`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_rel_guias_cumplidos`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_rel_guias_cumplidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_rel_guias_cumplidos` AS select `guias`.`Guia` AS `Guia`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`ciudestino`.`NmCiudad` AS `NmCiudadDestino`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`informacionempresa`.`Nit` AS `Nit`,`informacionempresa`.`Nombre` AS `Nombre`,`informacionempresa`.`Direccion` AS `Direccion`,`informacionempresa`.`Telefono` AS `Telefono`,`informacionempresa`.`Logo` AS `Logo`,`guias`.`RelCliente` AS `RelCliente`,`guias`.`IdRelEntrega` AS `IdRelEntrega`,`relentregadoc`.`Fecha` AS `FechaRelacion`,`relentregadoc`.`Comentarios` AS `ComentariosRelacion`,`terceros`.`RazonSocial` AS `RazonSocial`,`relentregadoc`.`IdTercero` AS `IdTercero` from ((((`guias` left join `ciudades` `ciudestino` on((`guias`.`IdCiuDestino` = `ciudestino`.`IdCiudad`))) left join `relentregadoc` on((`guias`.`IdRelEntrega` = `relentregadoc`.`IDRel`))) left join `terceros` on((`relentregadoc`.`IdTercero` = `terceros`.`IDTercero`))) join `informacionempresa`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_ic_imprimir_nota_credito`
--

/*!50001 DROP TABLE IF EXISTS `sql_ic_imprimir_nota_credito`*/;
/*!50001 DROP VIEW IF EXISTS `sql_ic_imprimir_nota_credito`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_ic_imprimir_nota_credito` AS select `notas_credito_det`.`IdNotaCreditoDet` AS `IdNotaCreditoDet`,`notas_credito_det`.`IdNotaCredito` AS `IdNotaCredito`,`notas_credito_det`.`IdCxC` AS `IdCxC`,`notas_credito_det`.`Tipo` AS `Tipo`,`notas_credito_det`.`IdCuenta` AS `IdCuenta`,`notas_credito_det`.`Valor` AS `Valor`,`notas_credito`.`Fecha` AS `Fecha`,`notas_credito`.`IdTercero` AS `IdTercero`,`notas_credito`.`Total` AS `Total`,`notas_credito`.`Comentarios` AS `Comentarios`,`notas_credito`.`Impreso` AS `Impreso`,`notas_credito`.`Anulado` AS `Anulado`,`informacionempresa`.`Nit` AS `Nit`,`informacionempresa`.`Nombre` AS `Nombre`,`informacionempresa`.`Direccion` AS `Direccion`,`informacionempresa`.`Telefono` AS `Telefono`,`informacionempresa`.`Logo` AS `Logo`,`informacionempresa`.`Id` AS `Id`,`cuentas_cobrar`.`NroDocumento` AS `NroDocumento`,`cuentas_cobrar`.`FechaDoc` AS `FechaDoc`,`terceros`.`RazonSocial` AS `RazonSocial`,`terceros`.`Direccion` AS `DireccionCliente`,`terceros`.`Telefono` AS `TelefonoCliente` from ((((`notas_credito_det` left join `notas_credito` on((`notas_credito_det`.`IdNotaCredito` = `notas_credito`.`IdNotaCredito`))) left join `cuentas_cobrar` on((`notas_credito_det`.`IdCxC` = `cuentas_cobrar`.`IdCxC`))) left join `terceros` on((convert(`notas_credito`.`IdTercero` using utf8) = convert(`terceros`.`IDTercero` using utf8)))) join `informacionempresa`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_reexpediciones`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_reexpediciones`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_reexpediciones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_reexpediciones` AS select `guias`.`Guia` AS `Guia`,`despachos`.`Tipo` AS `Tipo`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`IdDespacho` AS `IdDespacho` from (`guias` left join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`))) where (`despachos`.`Tipo` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_if_imp_factura_planillas`
--

/*!50001 DROP TABLE IF EXISTS `sql_if_imp_factura_planillas`*/;
/*!50001 DROP VIEW IF EXISTS `sql_if_imp_factura_planillas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_if_imp_factura_planillas` AS select `facturasplanillas`.`IdPlanilla` AS `IdPlanilla`,`facturasplanillas`.`IdFactura` AS `IdFactura`,`facturasplanillas`.`RelCliente` AS `RelCliente`,`facturasplanillas`.`VrFletePlanilla` AS `VrFletePlanilla`,`facturasplanillas`.`VrManejoPlanilla` AS `VrManejoPlanilla`,`facturasplanillas`.`NroGuiasPlanilla` AS `NroGuiasPlanilla`,`facturas`.`FhFac` AS `FhFac`,`terceros`.`RazonSocial` AS `RazonSocial`,`facturas`.`TFlete` AS `TFlete`,`facturas`.`TManejo` AS `TManejo`,`facturas`.`TOtros` AS `TOtros`,`facturas`.`NroGuias` AS `NroGuias`,`informacionempresa`.`Nit` AS `Nit`,`informacionempresa`.`Nombre` AS `Nombre`,`informacionempresa`.`Direccion` AS `Direccion`,`informacionempresa`.`Telefono` AS `Telefono`,`informacionempresa`.`Logo` AS `Logo`,`facturas`.`FhVenceFac` AS `FhVenceFac`,`facturas`.`IdFactura` AS `NumeroFactura`,`facturas`.`Plazo` AS `Plazo`,`formas_pago`.`NmFormaPago` AS `NmFormaPago`,`terceros`.`Direccion` AS `DireccionTercero`,`terceros`.`Telefono` AS `TelefonoTercero`,`ciudadtercero`.`NmCiudad` AS `NmCiudadTercero`,`facturas`.`IdCliente` AS `IdCliente`,`facturas`.`Notas` AS `Notas`,`facturas`.`TotalFactura` AS `TotalFactura`,`terceros`.`DigitoVerificacion` AS `DigitoVerificacion`,`facturas`.`ValorEnLetras` AS `ValorEnLetras` from (((((`facturasplanillas` left join `facturas` on((`facturasplanillas`.`IdFactura` = `facturas`.`IdFactura`))) left join `terceros` on((`facturas`.`IdCliente` = `terceros`.`IDTercero`))) left join `informacionempresa` on((`facturas`.`IdEmpresa` = `informacionempresa`.`Id`))) left join `formas_pago` on((`facturas`.`IdFormaPago` = `formas_pago`.`IdFormaPago`))) left join `ciudades` `ciudadtercero` on((`terceros`.`IdCiudad` = `ciudadtercero`.`IdCiudad`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_ilp_imprimir_lista`
--

/*!50001 DROP TABLE IF EXISTS `sql_ilp_imprimir_lista`*/;
/*!50001 DROP VIEW IF EXISTS `sql_ilp_imprimir_lista`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_ilp_imprimir_lista` AS select `listasprecios`.`NmListaPrecios` AS `NmListaPrecios`,`listasprecios`.`FhVencimiento` AS `FhVencimiento`,`listaspreciosciudades`.`IdListaPrecios` AS `IdListaPrecios`,`listaspreciosciudades`.`IdCiudad` AS `IdCiudad`,`listaspreciosciudades`.`IdProducto` AS `IdProducto`,`listaspreciosciudades`.`VrKilo` AS `VrKilo`,`listaspreciosciudades`.`VrUnidad` AS `VrUnidad`,`listaspreciosciudades`.`VrTonelada` AS `VrTonelada`,`listaspreciosciudades`.`KTope` AS `KTope`,`listaspreciosciudades`.`VrKTope` AS `VrKTope`,`listaspreciosciudades`.`VrKAdicional` AS `VrKAdicional`,`listaspreciosciudades`.`Minimos` AS `Minimos`,`ciudades`.`NmCiudad` AS `NmCiudad`,`departamentos`.`NmDepartamento` AS `NmDepartamento`,`ciudades`.`IdDepartamento` AS `IdDepartamento`,`ciudades`.`Reexpedicion` AS `Reexpedicion`,`productos`.`NmProducto` AS `NmProducto`,`informacionempresa`.`Nit` AS `Nit`,`informacionempresa`.`Nombre` AS `Nombre`,`informacionempresa`.`Direccion` AS `Direccion`,`informacionempresa`.`Telefono` AS `Telefono`,`informacionempresa`.`Logo` AS `Logo` from (((((`listaspreciosciudades` left join `listasprecios` on((`listaspreciosciudades`.`IdListaPrecios` = `listasprecios`.`IdListaPrecios`))) left join `productos` on((`listaspreciosciudades`.`IdProducto` = `productos`.`IdProducto`))) left join `ciudades` on((`listaspreciosciudades`.`IdCiudad` = `ciudades`.`IdCiudad`))) left join `departamentos` on((`ciudades`.`IdDepartamento` = `departamentos`.`IdDepartamento`))) join `informacionempresa`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_impguia`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_impguia`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_impguia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_impguia` AS select `guias`.`Guia` AS `Guia`,`guias`.`CR` AS `CR`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`DirDestinatario` AS `DirDestinatario`,`guias`.`TelDestinatario` AS `TelDestinatario`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`Observaciones` AS `Observaciones`,`guias`.`Cuenta` AS `Cuenta`,`terceros`.`RazonSocial` AS `RazonSocial`,`terceros`.`Direccion` AS `Direccion`,`terceros`.`Telefono` AS `Telefono`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`IdUsuario` AS `IdUsuario`,`origen`.`NmCiudad` AS `NmCiuOrigen`,`destino`.`NmCiudad` AS `NmCiuDestino`,`informacionempresa`.`Nit` AS `NitEmpresa`,`informacionempresa`.`Nombre` AS `NmEmpresa`,`informacionempresa`.`Direccion` AS `DirEmpresa`,`informacionempresa`.`Telefono` AS `TelEmpresa`,`informacionempresa`.`Logo` AS `Logo`,`guias`.`IdEmpresa` AS `IdEmpresa`,`guias`.`Abonos` AS `Abonos`,`tipos_cobro`.`NmTipoCobro` AS `NmTipoCobro`,`guias`.`CodigoBarras` AS `CodigoBarras`,`guias`.`TipoCobro` AS `TipoCobro`,`guias`.`GuiaTipo` AS `GuiaTipo`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`GuiFac` AS `GuiFac`,`guias`.`EmpaqueRef` AS `EmpaqueRef`,`terceros`.`Celular` AS `Celular` from (((((`guias` left join `terceros` on((`guias`.`Cuenta` = `terceros`.`IDTercero`))) left join `ciudades` `destino` on((`guias`.`IdCiuDestino` = `destino`.`IdCiudad`))) left join `ciudades` `origen` on((`guias`.`IdCiuOrigen` = `origen`.`IdCiudad`))) left join `informacionempresa` on((`guias`.`IdEmpresa` = `informacionempresa`.`Id`))) left join `tipos_cobro` on((`guias`.`TipoCobro` = `tipos_cobro`.`IdTipoCobro`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_impmanifiesto`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_impmanifiesto`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_impmanifiesto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_impmanifiesto` AS select `despachos`.`IdManifiesto` AS `IdManifiesto`,`despachos`.`OrdDespacho` AS `OrdDespacho`,`despachos`.`Tipo` AS `Tipo`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`FhCumplidos` AS `FhCumplidos`,`despachos`.`IdVehiculo` AS `IdVehiculo`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`IdRuta` AS `IdRuta`,`despachos`.`IdCiudadOrigen` AS `IdCiudadOrigen`,`despachos`.`IdCiudadDestino` AS `IdCiudadDestino`,`despachos`.`Estado` AS `Estado`,`despachos`.`Remesas` AS `Remesas`,`despachos`.`Unidades` AS `Unidades`,`despachos`.`KilosReales` AS `KilosReales`,`despachos`.`KilosVol` AS `KilosVol`,`despachos`.`FleteCobra` AS `FleteCobra`,`despachos`.`ManejoCobra` AS `ManejoCobra`,`despachos`.`FleteCE` AS `FleteCE`,`despachos`.`ManejoCE` AS `ManejoCE`,`despachos`.`VrFlete` AS `VrFlete`,`despachos`.`VrAnticipo` AS `VrAnticipo`,`despachos`.`VrDctoPapeleria` AS `VrDctoPapeleria`,`despachos`.`VrDctoSeguridad` AS `VrDctoSeguridad`,`despachos`.`VrDctoCargue` AS `VrDctoCargue`,`despachos`.`VrDctoEstampilla` AS `VrDctoEstampilla`,`despachos`.`VrFleteAdicional` AS `VrFleteAdicional`,`despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,`despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,`despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,`despachos`.`SaldoDesp` AS `SaldoDesp`,`despachos`.`TotalViaje` AS `TotalViaje`,`despachos`.`CO` AS `CO`,`despachos`.`Observaciones` AS `Observaciones`,`despachos`.`TRecaudo` AS `TRecaudo`,`despachos`.`NmConductor` AS `NmConductor`,`despachos`.`Cerrado` AS `Cerrado`,`despachos`.`Liquidado` AS `Liquidado`,`despachos`.`IdUsuario` AS `IdUsuario`,`conductores`.`Nombre` AS `Nombre`,`conductores`.`Apellido1` AS `Apellido1`,`conductores`.`Apellido2` AS `Apellido2`,`conductores`.`Direccion` AS `Direccion`,`conductores`.`Categoria` AS `Categoria`,`conductores`.`Celular` AS `Celular`,`origen`.`NmCiudad` AS `NmCiudadOrigen`,`destino`.`NmCiudad` AS `NmCiudadDestino`,`marcas`.`NmMarca` AS `NmMarca`,`carrocerias`.`NmCarroceria` AS `NmCarroceria`,`colores`.`NmColor` AS `NmColor`,`lineas`.`NmLinea` AS `NmLinea`,`aseguradora`.`RazonSocial` AS `NmAseguradora`,`informacionempresa`.`Nombre` AS `NombreEmpresa`,`informacionempresa`.`Direccion` AS `DirEmpresa`,`informacionempresa`.`Telefono` AS `TelEmpresa`,`informacionempresa`.`Nit` AS `NitEmpresa`,`despachos`.`IdEmpresa` AS `IdEmpresa`,`informacionempresa`.`Logo` AS `Logo` from ((((((((((`despachos` left join `conductores` on((`despachos`.`IdConductor` = `conductores`.`IdConductor`))) left join `ciudades` `origen` on((`despachos`.`IdCiudadOrigen` = `origen`.`IdCiudad`))) left join `ciudades` `destino` on((`despachos`.`IdCiudadDestino` = `destino`.`IdCiudad`))) left join `vehiculos` on((`despachos`.`IdVehiculo` = `vehiculos`.`IdPlaca`))) left join `marcas` on((`vehiculos`.`IdMarca` = `marcas`.`IdMarca`))) left join `colores` on((`vehiculos`.`IdColor` = `colores`.`IdColor`))) left join `lineas` on((`vehiculos`.`IdLinea` = `lineas`.`IdLinea`))) left join `carrocerias` on((`vehiculos`.`IdCarroceria` = `carrocerias`.`IdCarroceria`))) left join `terceros` `aseguradora` on((`vehiculos`.`IdAseguradora` = `aseguradora`.`IDTercero`))) left join `informacionempresa` on((`despachos`.`IdEmpresa` = `informacionempresa`.`Id`))) limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_ir_formato_recogidas`
--

/*!50001 DROP TABLE IF EXISTS `sql_ir_formato_recogidas`*/;
/*!50001 DROP VIEW IF EXISTS `sql_ir_formato_recogidas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_ir_formato_recogidas` AS select `anuncios`.`IdAnuncio` AS `IdAnuncio`,`anuncios`.`FhAnuncio` AS `FhAnuncio`,`anuncios`.`IdCliente` AS `IdCliente`,`anuncios`.`Anunciante` AS `Anunciante`,`anuncios`.`DirAnunciante` AS `DirAnunciante`,`anuncios`.`TelAnunciante` AS `TelAnunciante`,`anuncios`.`Asignacion` AS `Asignacion`,`anuncios`.`FhRecogida` AS `FhRecogida`,`anuncios`.`Unidades` AS `Unidades`,`anuncios`.`KilosReales` AS `KilosReales`,`anuncios`.`KilosVol` AS `KilosVol`,`anuncios`.`Comentarios` AS `Comentarios`,`anuncios`.`MotivoCancelacion` AS `MotivoCancelacion`,`anuncios`.`Programada` AS `Programada`,`anuncios`.`Estado` AS `Estado`,`anuncios`.`Efectiva` AS `Efectiva`,`anuncios`.`TiempoEfectiva` AS `TiempoEfectiva`,`anuncios`.`Orden` AS `Orden`,`anuncios`.`IdConductor` AS `IdConductor`,`anuncios`.`IdVehiculo` AS `IdVehiculo`,`anuncios`.`IdEmpresa` AS `IdEmpresa`,`anuncios`.`IdAsignacion` AS `IdAsignacion`,`anuncios`.`Cerrada` AS `Cerrada`,`vehiculosrecogida`.`Fecha` AS `Fecha`,`vehiculosrecogida`.`Placa` AS `Placa`,`vehiculosrecogida`.`Flete` AS `Flete`,`vehiculosrecogida`.`Rec` AS `Rec`,`vehiculosrecogida`.`Pend` AS `Pend`,`vehiculosrecogida`.`Unidades` AS `TotalUnidades`,`vehiculosrecogida`.`KilosReales` AS `TotalKilosRelaes`,`vehiculosrecogida`.`KilosVol` AS `TotalKilosVol`,`vehiculosrecogida`.`IdRuta` AS `IdRuta`,`vehiculosrecogida`.`Notas` AS `Notas`,`vehiculosrecogida`.`Coperaciones` AS `Coperaciones`,`vehiculosrecogida`.`UltOrden` AS `UltOrden`,`terceros`.`RazonSocial` AS `RazonSocial`,`informacionempresa`.`Id` AS `Id`,`informacionempresa`.`Nombre` AS `Nombre`,`informacionempresa`.`Nit` AS `Nit`,`informacionempresa`.`Direccion` AS `Direccion`,`informacionempresa`.`Telefono` AS `Telefono`,`informacionempresa`.`Logo` AS `Logo`,`rutasurbanas`.`NmRuta` AS `NmRuta` from ((((`anuncios` left join `vehiculosrecogida` on((`anuncios`.`IdAsignacion` = `vehiculosrecogida`.`IdAsignacion`))) left join `terceros` on((`anuncios`.`IdCliente` = `terceros`.`IDTercero`))) left join `rutasurbanas` on((`vehiculosrecogida`.`IdRuta` = `rutasurbanas`.`IdRutaRec`))) join `informacionempresa`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_ir_listadorecogidas`
--

/*!50001 DROP TABLE IF EXISTS `sql_ir_listadorecogidas`*/;
/*!50001 DROP VIEW IF EXISTS `sql_ir_listadorecogidas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_ir_listadorecogidas` AS select `anuncios`.`IdAnuncio` AS `IdAnuncio`,`anuncios`.`FhAnuncio` AS `FhAnuncio`,`anuncios`.`IdCliente` AS `IdCliente`,`anuncios`.`Anunciante` AS `Anunciante`,`anuncios`.`DirAnunciante` AS `DirAnunciante`,`anuncios`.`TelAnunciante` AS `TelAnunciante`,`anuncios`.`IdRuta` AS `IdRuta`,`anuncios`.`Asignacion` AS `Asignacion`,`anuncios`.`FhRecogida` AS `FhRecogida`,`anuncios`.`Unidades` AS `Unidades`,`anuncios`.`KilosReales` AS `KilosReales`,`anuncios`.`KilosVol` AS `KilosVol`,`anuncios`.`Comentarios` AS `Comentarios`,`anuncios`.`Programada` AS `Programada`,`anuncios`.`Estado` AS `Estado`,`anuncios`.`Efectiva` AS `Efectiva`,`anuncios`.`TiempoEfectiva` AS `TiempoEfectiva`,`anuncios`.`Coperaciones` AS `Coperaciones`,`anuncios`.`Orden` AS `Orden`,`anuncios`.`IdConductor` AS `IdConductor`,`anuncios`.`IdVehiculo` AS `IdVehiculo`,`anuncios`.`IdEmpresa` AS `IdEmpresa`,`anuncios`.`IdAsignacion` AS `IdAsignacion`,`terceros`.`RazonSocial` AS `RazonSocial` from (`anuncios` left join `terceros` on((`anuncios`.`IdCliente` = `terceros`.`IDTercero`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_movimiento_formato_recibo_soporte`
--

/*!50001 DROP TABLE IF EXISTS `sql_movimiento_formato_recibo_soporte`*/;
/*!50001 DROP VIEW IF EXISTS `sql_movimiento_formato_recibo_soporte`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_movimiento_formato_recibo_soporte` AS select `recibos_caja_soporte`.`IdRecibo` AS `IdRecibo`,`recibos_caja_soporte`.`FechaRecibo` AS `FechaRecibo`,`recibos_caja_soporte`.`VrFlete` AS `VrFlete`,`recibos_caja_soporte`.`VrManejo` AS `VrManejo`,`recibos_caja_soporte`.`ValorTotal` AS `ValorTotal`,`recibos_caja_soporte`.`Guia` AS `Guia`,`terceros`.`RazonSocial` AS `RazonSocial`,`terceros`.`Direccion` AS `Direccion`,`terceros`.`Telefono` AS `Telefono`,`ciudadcliente`.`NmCiudad` AS `CiudadCliente`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`DirDestinatario` AS `DirDestinatario`,`guias`.`TelDestinatario` AS `TelDestinatario`,`ciudaddestino`.`NmCiudad` AS `CiudadDestino`,`guias`.`Unidades` AS `Unidades`,`guias`.`Cuenta` AS `Cuenta`,`informacionempresa`.`Nit` AS `NitEmpresa`,`informacionempresa`.`Nombre` AS `NombreEmpresa`,`informacionempresa`.`Direccion` AS `DireccionEmpresa`,`informacionempresa`.`Telefono` AS `TelefonoEmpresa`,`informacionempresa`.`Logo` AS `Logo`,`tipos_cobro`.`NmTipoCobro` AS `NmTipoCobro` from ((((((`recibos_caja_soporte` left join `guias` on((`recibos_caja_soporte`.`Guia` = `guias`.`Guia`))) left join `terceros` on((`guias`.`Cuenta` = `terceros`.`IDTercero`))) left join `ciudades` `ciudadcliente` on((`terceros`.`IdCiudad` = `ciudadcliente`.`IdCiudad`))) left join `ciudades` `ciudaddestino` on((`guias`.`IdCiuDestino` = `ciudaddestino`.`IdCiudad`))) left join `tipos_cobro` on((`guias`.`TipoCobro` = `tipos_cobro`.`IdTipoCobro`))) join `informacionempresa`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_manconductor`
--

/*!50001 DROP TABLE IF EXISTS `sql_manconductor`*/;
/*!50001 DROP VIEW IF EXISTS `sql_manconductor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_manconductor` AS select `conductores`.`TpIdConductor` AS `Pertipid`,`conductores`.`IdConductor` AS `Periden`,`conductores`.`Apellido1` AS `perapell1`,`conductores`.`Apellido2` AS `perapell2`,`conductores`.`Nombre` AS `pernombre`,`conductores`.`TelConductor` AS `pertelefono`,`conductores`.`Direccion` AS `perdireccion`,`ciudades`.`CodMinTrans` AS `perciudad`,`conductores`.`Categoria` AS `percateglice` from (`ciudades` join `conductores` on((`ciudades`.`IdCiudad` = `conductores`.`IdCiudad`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `slq_im_formatoliqdesp`
--

/*!50001 DROP TABLE IF EXISTS `slq_im_formatoliqdesp`*/;
/*!50001 DROP VIEW IF EXISTS `slq_im_formatoliqdesp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `slq_im_formatoliqdesp` AS select `despachos`.`IdManifiesto` AS `IdManifiesto`,`despachos`.`OrdDespacho` AS `OrdDespacho`,`despachos`.`Tipo` AS `Tipo`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`FhCumplidos` AS `FhCumplidos`,`despachos`.`IdVehiculo` AS `IdVehiculo`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`IdCiudadOrigen` AS `IdCiudadOrigen`,`despachos`.`IdCiudadDestino` AS `IdCiudadDestino`,`despachos`.`Estado` AS `Estado`,`despachos`.`Remesas` AS `Remesas`,`despachos`.`Unidades` AS `Unidades`,`despachos`.`KilosReales` AS `KilosReales`,`despachos`.`KilosVol` AS `KilosVol`,`despachos`.`FleteCobra` AS `FleteCobra`,`despachos`.`ManejoCobra` AS `ManejoCobra`,`despachos`.`FleteCE` AS `FleteCE`,`despachos`.`ManejoCE` AS `ManejoCE`,`despachos`.`VrFlete` AS `VrFlete`,`despachos`.`VrAnticipo` AS `VrAnticipo`,`despachos`.`VrDctoPapeleria` AS `VrDctoPapeleria`,`despachos`.`VrDctoSeguridad` AS `VrDctoSeguridad`,`despachos`.`VrDctoCargue` AS `VrDctoCargue`,`despachos`.`VrDctoEstampilla` AS `VrDctoEstampilla`,`despachos`.`VrFleteAdicional` AS `VrFleteAdicional`,`despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,`despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,`despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,`despachos`.`SaldoDesp` AS `SaldoDesp`,`despachos`.`TotalViaje` AS `TotalViaje`,`despachos`.`NmConductor` AS `NmConductor`,`despachos`.`TRecaudo` AS `TRecaudo`,`despachos`.`Observaciones` AS `Observaciones`,`despachos`.`CO` AS `CO`,`despachos`.`Cerrado` AS `Cerrado`,`despachos`.`Liquidado` AS `Liquidado`,`despachos`.`IdUsuario` AS `IdUsuario`,`despachos`.`IdEmpresa` AS `IdEmpresa`,`despachos`.`AbonosCE` AS `AbonosCE`,`despachos`.`FletesNoCancelados` AS `FletesNoCancelados`,`ciudades`.`NmCiudad` AS `NmCiudad`,`informacionempresa`.`Logo` AS `Logo` from ((`despachos` left join `ciudades` on((`despachos`.`IdCiudadDestino` = `ciudades`.`IdCiudad`))) left join `informacionempresa` on((`despachos`.`IdEmpresa` = `informacionempresa`.`Id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_novedadessolucionadas`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_novedadessolucionadas`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_novedadessolucionadas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_novedadessolucionadas` AS select `novedades`.`ID` AS `ID`,`novedades`.`Guia` AS `Guia`,`novedades`.`IdNovedad` AS `IdNovedad`,`novedades`.`Comentarios` AS `Comentarios`,`novedades`.`UsuIng` AS `UsuIng`,`novedades`.`FHIngreso` AS `FHIngreso`,`novedades`.`FhNovedad` AS `FhNovedad`,`novedades`.`Solucion` AS `Solucion`,`novedades`.`UsuSol` AS `UsuSol`,`novedades`.`FhSolucion` AS `FhSolucion`,`novedades`.`Solucionada` AS `Solucionada`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`causalesnovedad`.`NmNovedad` AS `NmNovedad`,`guias`.`DocCliente` AS `DocCliente`,`ciudades`.`NmCiudad` AS `NmCiudad`,`guias`.`NmDestinatario` AS `NmDestinatario` from (((`novedades` left join `guias` on((`novedades`.`Guia` = `guias`.`Guia`))) join `causalesnovedad` on((`novedades`.`IdNovedad` = `causalesnovedad`.`IdNovedad`))) join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) where (`novedades`.`Solucionada` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_despachospendientesabiertos`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_despachospendientesabiertos`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_despachospendientesabiertos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_despachospendientesabiertos` AS select `despachos`.`IdManifiesto` AS `IdManifiesto`,`despachos`.`OrdDespacho` AS `OrdDespacho`,`despachos`.`Tipo` AS `Tipo`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`FhCumplidos` AS `FhCumplidos`,`despachos`.`IdVehiculo` AS `IdVehiculo`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`IdRuta` AS `IdRuta`,`despachos`.`IdCiudadOrigen` AS `IdCiudadOrigen`,`despachos`.`IdCiudadDestino` AS `IdCiudadDestino`,`despachos`.`Estado` AS `Estado`,`despachos`.`Remesas` AS `Remesas`,`despachos`.`Unidades` AS `Unidades`,`despachos`.`KilosReales` AS `KilosReales`,`despachos`.`KilosVol` AS `KilosVol`,`despachos`.`FleteCobra` AS `FleteCobra`,`despachos`.`ManejoCobra` AS `ManejoCobra`,`despachos`.`FleteCE` AS `FleteCE`,`despachos`.`ManejoCE` AS `ManejoCE`,`despachos`.`VrFlete` AS `VrFlete`,`despachos`.`VrAnticipo` AS `VrAnticipo`,`despachos`.`VrDctoPapeleria` AS `VrDctoPapeleria`,`despachos`.`VrDctoSeguridad` AS `VrDctoSeguridad`,`despachos`.`VrDctoCargue` AS `VrDctoCargue`,`despachos`.`VrDctoEstampilla` AS `VrDctoEstampilla`,`despachos`.`VrFleteAdicional` AS `VrFleteAdicional`,`despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,`despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,`despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,`despachos`.`SaldoDesp` AS `SaldoDesp`,`despachos`.`TotalViaje` AS `TotalViaje`,`despachos`.`CO` AS `CO`,`despachos`.`Observaciones` AS `Observaciones`,`despachos`.`TRecaudo` AS `TRecaudo`,`despachos`.`Cerrado` AS `Cerrado` from `despachos` where ((`despachos`.`Estado` = _latin1'D') and (`despachos`.`Tipo` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_impguia_clientes`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_impguia_clientes`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_impguia_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_impguia_clientes` AS select `guias_cliente`.`Guia` AS `Guia`,`guias_cliente`.`IdTercero` AS `IdTercero`,`guias_cliente`.`CodigoBarras` AS `CodigoBarras`,`terceros`.`RazonSocial` AS `RazonSocial`,`terceros`.`Direccion` AS `Direccion`,`terceros`.`Telefono` AS `Telefono`,`informacionempresa`.`Id` AS `Id`,`informacionempresa`.`Nit` AS `Nit`,`informacionempresa`.`Nombre` AS `Nombre`,`informacionempresa`.`Direccion` AS `DireccionEmpresa`,`informacionempresa`.`Telefono` AS `TelefonoEmpresa`,`informacionempresa`.`Logo` AS `Logo`,`informacionempresa`.`NroPoliza` AS `NroPoliza`,`informacionempresa`.`NitAseguradora` AS `NitAseguradora`,`informacionempresa`.`VencePoliza` AS `VencePoliza`,`informacionempresa`.`DireccionTerritorial` AS `DireccionTerritorial`,`informacionempresa`.`Email` AS `Email`,`informacionempresa`.`Aseguradora` AS `Aseguradora`,`informacionempresa`.`CodRegionalMin` AS `CodRegionalMin`,`informacionempresa`.`CodEmpresaMin` AS `CodEmpresaMin`,`informacionempresa`.`ResolucionMinTransporte` AS `ResolucionMinTransporte` from ((`guias_cliente` join `terceros` on((`terceros`.`IDTercero` = `guias_cliente`.`IdTercero`))) join `informacionempresa`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_ism_monitoreos`
--

/*!50001 DROP TABLE IF EXISTS `sql_ism_monitoreos`*/;
/*!50001 DROP VIEW IF EXISTS `sql_ism_monitoreos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_ism_monitoreos` AS select `monitoreocontrolpost`.`ID` AS `ID`,`monitoreocontrolpost`.`IDMonitoreo` AS `IDMonitoreo`,`monitoreocontrolpost`.`IDControlPost` AS `IDControlPost`,`monitoreocontrolpost`.`FhHrReporte` AS `FhHrReporte`,`monitoreocontrolpost`.`Notas` AS `Notas`,`controlpost`.`NmControlPost` AS `NmControlPost`,`monitoreovehiculos`.`Orden` AS `Orden`,`monitoreovehiculos`.`Tipo` AS `Tipo`,`monitoreovehiculos`.`Estado` AS `Estado`,`monitoreovehiculos`.`Ok` AS `Ok`,`monitoreovehiculos`.`FhHrSalida` AS `FhHrSalida`,`monitoreovehiculos`.`Vehiculo` AS `Vehiculo`,`monitoreovehiculos`.`Destino` AS `Destino`,`monitoreovehiculos`.`UltReporte` AS `UltReporte`,`monitoreovehiculos`.`Frecuencia` AS `Frecuencia`,`monitoreovehiculos`.`EnNovedad` AS `EnNovedad`,`monitoreovehiculos`.`SinMonitoreo` AS `SinMonitoreo`,`origen`.`NmCiudad` AS `NmCiudadOrigen`,`destinodesp`.`NmCiudad` AS `NmCiudadDestino`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`NmConductor` AS `NmConductor`,`despachos`.`IdManifiesto` AS `IdManifiesto`,`conductores`.`Celular` AS `CelularConductor` from ((((((`monitoreocontrolpost` left join `monitoreovehiculos` on((`monitoreocontrolpost`.`IDMonitoreo` = `monitoreovehiculos`.`ID`))) left join `controlpost` on((`monitoreocontrolpost`.`IDControlPost` = `controlpost`.`IdControlPost`))) left join `despachos` on((`monitoreovehiculos`.`Orden` = `despachos`.`OrdDespacho`))) left join `ciudades` `origen` on((`despachos`.`IdCiudadOrigen` = `origen`.`IdCiudad`))) left join `ciudades` `destinodesp` on((`despachos`.`IdCiudadDestino` = `destinodesp`.`IdCiudad`))) left join `conductores` on((`despachos`.`IdConductor` = `conductores`.`IdConductor`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_relguiasplanilla`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_relguiasplanilla`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_relguiasplanilla`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_relguiasplanilla` AS select `guias`.`Guia` AS `Guia`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`ciudades`.`NmCiudad` AS `NmCiudad`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`IdFactura` AS `IdFactura`,`guias`.`Cliente` AS `Cliente`,`guias`.`Anulada` AS `Anulada`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`IdPlanillaFactura` AS `IdPlanillaFactura`,`facturasplanillas`.`RelCliente` AS `RelCliente` from ((`guias` left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) left join `facturasplanillas` on((`guias`.`IdPlanillaFactura` = `facturasplanillas`.`IdPlanilla`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_contraentregas`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_contraentregas`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_contraentregas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_contraentregas` AS select `guias`.`Guia` AS `Guia`,`guias`.`IdCliente` AS `IdCliente`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`ciudades`.`NmCiudad` AS `NmCiudad`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`IdDespacho` AS `IdDespacho`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`Anulada` AS `Anulada`,`guias`.`TipoCobro` AS `TipoCobro`,`informacionempresa`.`Id` AS `CodEmpresa`,`informacionempresa`.`Nit` AS `NitEmpresa`,`informacionempresa`.`Nombre` AS `NombreEmpresa`,`informacionempresa`.`Direccion` AS `DireccionEmpresa`,`informacionempresa`.`Telefono` AS `TelefonoEmpresa`,`informacionempresa`.`Logo` AS `Logo`,`informacionempresa`.`Email` AS `EmailEmpresa`,`guias`.`Abonos` AS `Abonos` from ((`guias` join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) join `informacionempresa`) where ((`guias`.`Anulada` = 0) and ((`guias`.`TipoCobro` = 2) or (`guias`.`Recaudo` <> 0))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_manterceros`
--

/*!50001 DROP TABLE IF EXISTS `sql_manterceros`*/;
/*!50001 DROP VIEW IF EXISTS `sql_manterceros`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_manterceros` AS select `terceros`.`TpDoc` AS `emptipid`,`terceros`.`IDTercero` AS `empident`,`terceros`.`RazonSocial` AS `empnombr`,`terceros`.`Telefono` AS `emptelefono`,`terceros`.`Direccion` AS `empdireccion` from `terceros` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_novedadespendientes`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_novedadespendientes`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_novedadespendientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_novedadespendientes` AS select `novedades`.`ID` AS `ID`,`novedades`.`Guia` AS `Guia`,`novedades`.`IdNovedad` AS `IdNovedad`,`novedades`.`Comentarios` AS `Comentarios`,`novedades`.`UsuIng` AS `UsuIng`,`novedades`.`FHIngreso` AS `FHIngreso`,`novedades`.`FhNovedad` AS `FhNovedad`,`novedades`.`Solucion` AS `Solucion`,`novedades`.`UsuSol` AS `UsuSol`,`novedades`.`FhSolucion` AS `FhSolucion`,`novedades`.`Solucionada` AS `Solucionada`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`causalesnovedad`.`NmNovedad` AS `NmNovedad`,`guias`.`DocCliente` AS `DocCliente`,`ciudades`.`NmCiudad` AS `NmCiudad`,`guias`.`NmDestinatario` AS `NmDestinatario` from (((`novedades` join `guias` on((`novedades`.`Guia` = `guias`.`Guia`))) join `causalesnovedad` on((`novedades`.`IdNovedad` = `causalesnovedad`.`IdNovedad`))) join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) where (`novedades`.`Solucionada` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_imprimirmanifiestodetalle`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_imprimirmanifiestodetalle`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_imprimirmanifiestodetalle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_imprimirmanifiestodetalle` AS select `guias`.`Guia` AS `Guia`,_latin1'KIL' AS `UnidadMedida`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,_latin1'1' AS `CodNaturaleza`,_latin1'1' AS `CodEmpaque`,_latin1'9880' AS `CodProducto`,_latin1'VARIO' AS `ProductoTransportado`,`guias`.`Remitente` AS `Remitente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`ciudades`.`NmCiudad` AS `NmCiudad`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`IdManifiesto` AS `IdManifiesto`,`despachos`.`OrdDespacho` AS `OrdDespacho`,`despachos`.`ManElectronico` AS `ManElectronico`,`origenviaje`.`NmCiudad` AS `CiudadOrigenViaje`,`destinoviaje`.`NmCiudad` AS `CiudadDestinoViaje`,`informacionempresa`.`Logo` AS `Logo` from (((((`guias` left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) left join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`))) left join `ciudades` `origenviaje` on((`despachos`.`IdCiudadOrigen` = `origenviaje`.`IdCiudad`))) left join `ciudades` `destinoviaje` on((`despachos`.`IdCiudadDestino` = `destinoviaje`.`IdCiudad`))) left join `informacionempresa` on((`despachos`.`IdEmpresa` = `informacionempresa`.`Id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_recibos_caja`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_recibos_caja`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_recibos_caja`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_recibos_caja` AS select `recibos_caja_soporte`.`IdRecibo` AS `IdRecibo`,`recibos_caja_soporte`.`FechaRecibo` AS `FechaRecibo`,`recibos_caja_soporte`.`VrFlete` AS `VrFlete`,`recibos_caja_soporte`.`VrManejo` AS `VrManejo`,`recibos_caja_soporte`.`ValorTotal` AS `ValorTotal`,`recibos_caja_soporte`.`Guia` AS `Guia` from `recibos_caja_soporte` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_ic_imprimir_recibo_caja`
--

/*!50001 DROP TABLE IF EXISTS `sql_ic_imprimir_recibo_caja`*/;
/*!50001 DROP VIEW IF EXISTS `sql_ic_imprimir_recibo_caja`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_ic_imprimir_recibo_caja` AS select `recibos_caja_det`.`IdReciboDet` AS `IdReciboDet`,`recibos_caja_det`.`IdRecibo` AS `IdRecibo`,`recibos_caja_det`.`IdCxC` AS `IdCxC`,`recibos_caja_det`.`Tipo` AS `Tipo`,`recibos_caja_det`.`IdCuenta` AS `IdCuenta`,`recibos_caja_det`.`Valor` AS `Valor`,`recibos_caja`.`Fecha` AS `Fecha`,`recibos_caja`.`IdTercero` AS `IdTercero`,`recibos_caja`.`Total` AS `Total`,`recibos_caja`.`Comentarios` AS `Comentarios`,`recibos_caja`.`Impreso` AS `Impreso`,`recibos_caja`.`Anulado` AS `Anulado`,`informacionempresa`.`Nit` AS `Nit`,`informacionempresa`.`Nombre` AS `Nombre`,`informacionempresa`.`Direccion` AS `Direccion`,`informacionempresa`.`Telefono` AS `Telefono`,`informacionempresa`.`Logo` AS `Logo`,`informacionempresa`.`Id` AS `Id`,`cuentas_cobrar`.`NroDocumento` AS `NroDocumento`,`cuentas_cobrar`.`FechaDoc` AS `FechaDoc`,`terceros`.`RazonSocial` AS `RazonSocial`,`terceros`.`Direccion` AS `DireccionCliente`,`terceros`.`Telefono` AS `TelefonoCliente` from ((((`recibos_caja_det` left join `recibos_caja` on((`recibos_caja_det`.`IdRecibo` = `recibos_caja`.`IdRecibo`))) left join `cuentas_cobrar` on((`recibos_caja_det`.`IdCxC` = `cuentas_cobrar`.`IdCxC`))) left join `terceros` on((convert(`recibos_caja`.`IdTercero` using utf8) = convert(`terceros`.`IDTercero` using utf8)))) join `informacionempresa`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_if_imp_factura`
--

/*!50001 DROP TABLE IF EXISTS `sql_if_imp_factura`*/;
/*!50001 DROP VIEW IF EXISTS `sql_if_imp_factura`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_if_imp_factura` AS select `guias`.`Guia` AS `Guia`,`guias`.`Remitente` AS `Remitente`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`DirDestinatario` AS `DirDestinatario`,`ciudades`.`NmCiudad` AS `NmCiudad`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`Estado` AS `Estado`,`guias`.`IdFactura` AS `IdFactura`,`facturas`.`FhFac` AS `FhFac`,`terceros`.`RazonSocial` AS `RazonSocial`,`facturas`.`TFlete` AS `TFlete`,`facturas`.`TManejo` AS `TManejo`,`facturas`.`TOtros` AS `TOtros`,`facturas`.`NroGuias` AS `NroGuias`,`informacionempresa`.`Nit` AS `Nit`,`informacionempresa`.`Nombre` AS `Nombre`,`informacionempresa`.`Direccion` AS `Direccion`,`informacionempresa`.`Telefono` AS `Telefono`,`informacionempresa`.`Logo` AS `Logo`,`facturas`.`FhVenceFac` AS `FhVenceFac`,`facturas`.`IdFactura` AS `NumeroFactura`,`facturas`.`Plazo` AS `Plazo`,`formas_pago`.`NmFormaPago` AS `NmFormaPago`,`terceros`.`Direccion` AS `DireccionTercero`,`terceros`.`Telefono` AS `TelefonoTercero`,`ciudadtercero`.`NmCiudad` AS `NmCiudadTercero`,`facturas`.`IdCliente` AS `IdCliente`,`facturas`.`Notas` AS `Notas`,`facturas`.`TotalFactura` AS `TotalFactura`,`terceros`.`DigitoVerificacion` AS `DigitoVerificacion`,concat(`facturas`.`IdCliente`,`terceros`.`DigitoVerificacion`) AS `NitCompleto`,`ciu_origen`.`NmCiudad` AS `CiudadOrigen`,`facturas`.`ValorEnLetras` AS `ValorEnLetras` from (((((((`guias` left join `facturas` on((`guias`.`IdFactura` = `facturas`.`IdFactura`))) left join `terceros` on((`facturas`.`IdCliente` = `terceros`.`IDTercero`))) left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) left join `informacionempresa` on((`facturas`.`IdEmpresa` = `informacionempresa`.`Id`))) left join `formas_pago` on((`facturas`.`IdFormaPago` = `formas_pago`.`IdFormaPago`))) left join `ciudades` `ciudadtercero` on((`terceros`.`IdCiudad` = `ciudadtercero`.`IdCiudad`))) left join `ciudades` `ciu_origen` on((`guias`.`IdCiuOrigen` = `ciu_origen`.`IdCiudad`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_formato_guia_factura`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_formato_guia_factura`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_formato_guia_factura`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_formato_guia_factura` AS select `guias`.`Guia` AS `Guia`,`informacionempresa`.`Nit` AS `NitEmpresa`,`informacionempresa`.`Nombre` AS `NombreEmpresa`,`informacionempresa`.`Direccion` AS `DireccionEmpresa`,`informacionempresa`.`Telefono` AS `TelefonoEmpresa`,`informacionempresa`.`Logo` AS `Logo`,`terceros`.`RazonSocial` AS `RazonSocial`,`guias`.`Cuenta` AS `Cuenta`,`terceros`.`Direccion` AS `Direccion`,`terceros`.`Telefono` AS `Telefono`,`terceros`.`IdCiudad` AS `IdCiudad`,`ciudadcliente`.`NmCiudad` AS `CiudadCliente`,`terceros`.`Email` AS `Email`,`terceros`.`Plazo` AS `Plazo`,`formas_pago`.`NmFormaPago` AS `NmFormaPago`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosFacturados` AS `KilosFacturados`,`ciudaddestino`.`NmCiudad` AS `CiudadDestino`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,(`guias`.`VrFlete` + `guias`.`VrManejo`) AS `Total`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`DirDestinatario` AS `DirDestinatario`,`guias`.`TelDestinatario` AS `TelDestinatario` from (((((`guias` left join `terceros` on((`guias`.`Cuenta` = `terceros`.`IDTercero`))) left join `ciudades` `ciudadcliente` on((`terceros`.`IdCiudad` = `ciudadcliente`.`IdCiudad`))) left join `formas_pago` on((`terceros`.`IdFormaPago` = `formas_pago`.`IdFormaPago`))) left join `ciudades` `ciudaddestino` on((`guias`.`IdCiuDestino` = `ciudaddestino`.`IdCiudad`))) join `informacionempresa`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_ic_cartera_edades`
--

/*!50001 DROP TABLE IF EXISTS `sql_ic_cartera_edades`*/;
/*!50001 DROP VIEW IF EXISTS `sql_ic_cartera_edades`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_ic_cartera_edades` AS select `cuentas_cobrar`.`NroDocumento` AS `NroDocumento`,`cuentas_cobrar`.`FechaDoc` AS `FechaDoc`,`cuentas_cobrar`.`FhVence` AS `FhVence`,`cuentas_cobrar`.`IdTercero` AS `IdTercero`,`cuentas_cobrar`.`Total` AS `Total`,`cuentas_cobrar`.`Abono` AS `Abono`,`cuentas_cobrar`.`Saldo` AS `Saldo`,`cuentas_cobrar`.`VrFlete` AS `VrFlete`,`cuentas_cobrar`.`VrManejo` AS `VrManejo`,`cuentas_cobrar`.`Condicion` AS `Condicion`,`cuentas_cobrar`.`TipoFactura` AS `TipoFactura`,`terceros`.`RazonSocial` AS `RazonSocial`,(to_days(now()) - to_days(`cuentas_cobrar`.`FhVence`)) AS `DiasVencida`,(case when ((to_days(now()) - to_days(`cuentas_cobrar`.`FhVence`)) < 1) then 'Por Vencer' else 'Vencida' end) AS `TipoVencimiento`,(case when ((to_days(now()) - to_days(`cuentas_cobrar`.`FhVence`)) < 1) then 'Por Vencer' else (case when ((to_days(now()) - to_days(`cuentas_cobrar`.`FhVence`)) between 0 and 30) then '30' else (case when ((to_days(now()) - to_days(`cuentas_cobrar`.`FhVence`)) between 31 and 60) then '60' else (case when ((to_days(now()) - to_days(`cuentas_cobrar`.`FhVence`)) between 61 and 90) then '90' else 'Mas de 90' end) end) end) end) AS `Rango`,`informacionempresa`.`Nit` AS `Nit`,`informacionempresa`.`Nombre` AS `Nombre`,`informacionempresa`.`Direccion` AS `Direccion`,`informacionempresa`.`Telefono` AS `Telefono`,`informacionempresa`.`Logo` AS `Logo`,`cuentas_cobrar`.`IdCxC` AS `IdCxC`,`cuentas_cobrar`.`GuiaFactura` AS `GuiaFactura`,`facturas_tipos`.`NmTipoFactura` AS `NmTipoFactura` from (((`cuentas_cobrar` left join `terceros` on((`cuentas_cobrar`.`IdTercero` = `terceros`.`IDTercero`))) left join `facturas_tipos` on((`cuentas_cobrar`.`TipoFactura` = `facturas_tipos`.`IdTipoFactura`))) join `informacionempresa`) where (`cuentas_cobrar`.`Saldo` <> 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_digitacion`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_digitacion`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_digitacion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_digitacion` AS select count(`guias`.`Guia`) AS `NroGuias`,`usuarios`.`NmUsuario` AS `Usuario`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega` from (`guias` left join `usuarios` on((`guias`.`IdUsuario` = `usuarios`.`IDUsuario`))) where (`guias`.`FhEntradaBodega` >= _latin1'2012/10/01') group by `usuarios`.`NmUsuario`,`guias`.`FhEntradaBodega` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_imprimirmanifiesto`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_imprimirmanifiesto`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_imprimirmanifiesto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_imprimirmanifiesto` AS select `despachos`.`IdManifiesto` AS `IdManifiesto`,`despachos`.`OrdDespacho` AS `OrdDespacho`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`ciudadorigen`.`NmCiudad` AS `NmCiudadOrigen`,`ciudaddestino`.`NmCiudad` AS `NmCiudadDestino`,`vehiculos`.`IdPlaca` AS `IdPlaca`,`vehiculos`.`Modelo` AS `Modelo`,`vehiculos`.`ModeloRep` AS `ModeloRep`,`vehiculos`.`Serie` AS `Serie`,`vehiculos`.`RegNalCarga` AS `RegNalCarga`,`vehiculos`.`VehConfiguracion` AS `VehConfiguracion`,`vehiculos`.`PesoVacio` AS `PesoVacio`,`vehiculos`.`Soat` AS `Soat`,`aseguradora`.`RazonSocial` AS `NmAseguradora`,`vehiculos`.`VenceSoat` AS `VenceSoat`,`vehiculos`.`PlacaRemolque` AS `PlacaRemolque`,`propietario`.`RazonSocial` AS `NmPropietario`,`tenedor`.`RazonSocial` AS `NmTenedor`,`propietario`.`IDTercero` AS `IdPropietario`,`tenedor`.`IDTercero` AS `IdTenedor`,`propietario`.`Direccion` AS `DirPropietario`,`tenedor`.`Direccion` AS `DirTenedor`,`tenedor`.`Telefono` AS `TelTenedor`,`propietario`.`Telefono` AS `TelPropietario`,`ciudadtenedor`.`NmCiudad` AS `CiudadTenedor`,`ciudadpropietario`.`NmCiudad` AS `CiudadPropietario`,`conductores`.`Nombre` AS `Nombre`,`conductores`.`Apellido1` AS `Apellido1`,`conductores`.`Apellido2` AS `Apellido2`,`conductores`.`IdConductor` AS `IdConductor`,`conductores`.`Direccion` AS `Direccion`,`conductores`.`Categoria` AS `Categoria`,`despachos`.`VrFlete` AS `VrFlete`,`despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,`despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,`despachos`.`VrAnticipo` AS `VrAnticipo`,`despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,`informacionempresa`.`Logo` AS `Logo`,`informacionempresa`.`NroPoliza` AS `NroPoliza`,`informacionempresa`.`VencePoliza` AS `VencePoliza`,`despachos`.`NmConductor` AS `NmConductor`,`despachos`.`Observaciones` AS `Observaciones`,`despachos`.`TotalViaje` AS `TotalViaje`,`carrocerias`.`NmCarroceria` AS `NmCarroceria`,`departamentoorigen`.`NmDepartamento` AS `DepartamentoOrigen`,`departamentosdestino`.`NmDepartamento` AS `DepartamentoDestino`,`despachos`.`PagoCargue` AS `PagoCargue`,`despachos`.`PagoDescargue` AS `PagoDescargue`,`despachos`.`FhPagoSaldo` AS `FhPagoSaldo`,`despachos`.`LugarPago` AS `LugarPago`,`informacionempresa`.`Aseguradora` AS `Aseguradora`,`despachos`.`ManElectronico` AS `ManElectronico`,`marcas`.`NmMarca` AS `NmMarca`,`colores`.`NmColor` AS `NmColor`,`lineas`.`NmLinea` AS `NmLinea`,`informacionempresa`.`Nit` AS `NitEmpresa`,`informacionempresa`.`Nombre` AS `NombreEmpresa`,`informacionempresa`.`Direccion` AS `DireccionEmpresa`,`informacionempresa`.`Telefono` AS `TelefonoEmpresa`,`informacionempresa`.`DireccionTerritorial` AS `DireccionTerritorial`,`informacionempresa`.`CodRegionalMin` AS `CodRegionalMin`,`informacionempresa`.`CodEmpresaMin` AS `CodEmpresaMin`,`informacionempresa`.`ResolucionMinTransporte` AS `ResolucionMinTransporte`,(`despachos`.`FleteCE` + `despachos`.`TRecaudo`) AS `TotalContraEntregas`,`despachos`.`Unidades` AS `TotalUnidades`,`despachos`.`KilosReales` AS `TotalKilosReales`,`despachos`.`Remesas` AS `Remesas`,`despachos`.`Unidades` AS `Unidades` from ((((((((((((((((`despachos` left join `vehiculos` on((`despachos`.`IdVehiculo` = `vehiculos`.`IdPlaca`))) left join `ciudades` `ciudadorigen` on((`despachos`.`IdCiudadOrigen` = `ciudadorigen`.`IdCiudad`))) left join `ciudades` `ciudaddestino` on((`despachos`.`IdCiudadDestino` = `ciudaddestino`.`IdCiudad`))) left join `terceros` `aseguradora` on((`vehiculos`.`IdAseguradora` = `aseguradora`.`IDTercero`))) left join `terceros` `propietario` on((`vehiculos`.`IdPropietario` = `propietario`.`IDTercero`))) left join `terceros` `tenedor` on((`vehiculos`.`IdTenedor` = `tenedor`.`IDTercero`))) left join `ciudades` `ciudadtenedor` on((`tenedor`.`IdCiudad` = `ciudadtenedor`.`IdCiudad`))) left join `ciudades` `ciudadpropietario` on((`propietario`.`IdCiudad` = `ciudadpropietario`.`IdCiudad`))) left join `conductores` on((`despachos`.`IdConductor` = `conductores`.`IdConductor`))) left join `informacionempresa` on((`despachos`.`IdEmpresa` = `informacionempresa`.`Id`))) left join `carrocerias` on((`vehiculos`.`IdCarroceria` = `carrocerias`.`IdCarroceria`))) left join `departamentos` `departamentosdestino` on((`ciudaddestino`.`IdDepartamento` = `departamentosdestino`.`IdDepartamento`))) left join `departamentos` `departamentoorigen` on((`ciudadorigen`.`IdDepartamento` = `departamentoorigen`.`IdDepartamento`))) left join `marcas` on((`vehiculos`.`IdMarca` = `marcas`.`IdMarca`))) left join `colores` on((`vehiculos`.`IdColor` = `colores`.`IdColor`))) left join `lineas` on((`vehiculos`.`IdLinea` = `lineas`.`IdLinea`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_ordendespacho`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_ordendespacho`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_ordendespacho`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_ordendespacho` AS select `guias`.`Guia` AS `Guia`,`guias`.`CR` AS `CR`,`guias`.`Remitente` AS `Remitente`,`guias`.`IdCliente` AS `IdCliente`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`DirDestinatario` AS `DirDestinatario`,`guias`.`TelDestinatario` AS `TelDestinatario`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`guias`.`IdRuta` AS `IdRuta`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`FhEntregaMercancia` AS `FhEntregaMercancia`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`Estado` AS `Estado`,`guias`.`IdFactura` AS `IdFactura`,`guias`.`IdDespacho` AS `IdDespacho`,`guias`.`Observaciones` AS `Observaciones`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`Orden` AS `Orden`,`guias`.`EmpaqueRef` AS `EmpaqueRef`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`CPorte` AS `CPorte`,`guias`.`Entregada` AS `Entregada`,`guias`.`Descargada` AS `Descargada`,`guias`.`FhDescargada` AS `FhDescargada`,`guias`.`Despachada` AS `Despachada`,`guias`.`Anulada` AS `Anulada`,`ciudades`.`NmCiudad` AS `NmCiudad` from (`guias` join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_impanuncio`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_impanuncio`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_impanuncio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_impanuncio` AS select `anuncios`.`IdAnuncio` AS `IdAnuncio`,`anuncios`.`FhAnuncio` AS `FhAnuncio`,`anuncios`.`IdCliente` AS `IdCliente`,`anuncios`.`Anunciante` AS `Anunciante`,`anuncios`.`DirAnunciante` AS `DirAnunciante`,`anuncios`.`TelAnunciante` AS `TelAnunciante`,`anuncios`.`IdRuta` AS `IdRuta`,`anuncios`.`Asignacion` AS `Asignacion`,`anuncios`.`FhRecogida` AS `FhRecogida`,`anuncios`.`Unidades` AS `Unidades`,`anuncios`.`KilosReales` AS `KilosReales`,`anuncios`.`KilosVol` AS `KilosVol`,`anuncios`.`Comentarios` AS `Comentarios`,`anuncios`.`Programada` AS `Programada`,`anuncios`.`Estado` AS `Estado`,`anuncios`.`Efectiva` AS `Efectiva`,`anuncios`.`TiempoEfectiva` AS `TiempoEfectiva`,`anuncios`.`Coperaciones` AS `Coperaciones`,`anuncios`.`Orden` AS `Orden`,`anuncios`.`IdConductor` AS `IdConductor`,`anuncios`.`IdVehiculo` AS `IdVehiculo`,`conductores`.`Nombre` AS `NmConductor`,`conductores`.`Apellido1` AS `Apellido1Conductor`,`conductores`.`Apellido2` AS `Apellido2Conductor`,`rutasurbanas`.`NmRuta` AS `NmRuta`,`terceros`.`RazonSocial` AS `RazonSocial`,`colores`.`NmColor` AS `NmColor`,`marcas`.`NmMarca` AS `NmMarca`,`vehiculos`.`Modelo` AS `Modelo`,`conductores`.`LicenciaConductor` AS `LicenciaConductor`,`anuncios`.`IdEmpresa` AS `IdEmpresa`,`informacionempresa`.`Logo` AS `Logo`,`informacionempresa`.`Nombre` AS `Nombre`,`informacionempresa`.`Direccion` AS `Direccion`,`informacionempresa`.`Telefono` AS `Telefono`,`informacionempresa`.`Nit` AS `Nit` from (((((((`anuncios` left join `conductores` on((`anuncios`.`IdConductor` = `conductores`.`IdConductor`))) left join `rutasurbanas` on((`anuncios`.`IdRuta` = `rutasurbanas`.`IdRutaRec`))) left join `terceros` on((`anuncios`.`IdCliente` = `terceros`.`IDTercero`))) left join `vehiculos` on((`anuncios`.`IdVehiculo` = `vehiculos`.`IdPlaca`))) left join `colores` on((`vehiculos`.`IdColor` = `colores`.`IdColor`))) left join `marcas` on((`vehiculos`.`IdMarca` = `marcas`.`IdMarca`))) left join `informacionempresa` on((`anuncios`.`IdEmpresa` = `informacionempresa`.`Id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_guias`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_guias`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_guias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_guias` AS select `guias`.`Guia` AS `Guia`,`ciudad_destino`.`NmCiudad` AS `NmCiudad`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`ruta_guia`.`NmRuta` AS `NmRuta`,`guias`.`IdRuta` AS `IdRuta`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`Despachada` AS `Despachada`,`guias`.`Entregada` AS `Entregada`,`guias`.`Descargada` AS `Descargada`,`guias`.`Anulada` AS `Anulada`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`Cliente` AS `Cliente`,`guias`.`Abonos` AS `Abonos` from ((`guias` left join `rutas` `ruta_guia` on((`guias`.`IdRuta` = `ruta_guia`.`IdRuta`))) left join `ciudades` `ciudad_destino` on((`guias`.`IdCiuDestino` = `ciudad_destino`.`IdCiudad`))) where (`guias`.`Anulada` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_aseguradora`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_aseguradora`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_aseguradora`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_aseguradora` AS select `despachos`.`IdVehiculo` AS `IdVehiculo`,count(`despachos`.`OrdDespacho`) AS `NroDespachos`,`vehiculos`.`Modelo` AS `Modelo`,`vehiculos`.`Serie` AS `Serie`,`despachos`.`FhExpedicion` AS `FhExpedicion`,concat(`propietario`.`Nombre`,_latin1' ',`propietario`.`Apellido1`,_latin1' ',`propietario`.`Apellido2`) AS `NmPropietario`,concat(`tenedor`.`Nombre`,_latin1' ',`tenedor`.`Apellido1`,_latin1' ',`tenedor`.`Apellido2`) AS `NmTenedor`,sum(`despachos`.`Unidades`) AS `TUnidades`,sum(`despachos`.`KilosReales`) AS `TKilosReales`,sum(`despachos`.`Remesas`) AS `TRemesas` from (((`despachos` left join `vehiculos` on((`despachos`.`IdVehiculo` = `vehiculos`.`IdPlaca`))) left join `terceros` `propietario` on((`vehiculos`.`IdPropietario` = `propietario`.`IDTercero`))) left join `terceros` `tenedor` on((`vehiculos`.`IdTenedor` = `tenedor`.`IDTercero`))) where (`despachos`.`FhExpedicion` >= _latin1'2010-02-01') group by `despachos`.`IdVehiculo`,`vehiculos`.`Modelo`,`vehiculos`.`Serie` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_rel_guias_desp`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_rel_guias_desp`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_rel_guias_desp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_rel_guias_desp` AS select `guias`.`Guia` AS `Guia`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`ciudades`.`NmCiudad` AS `NmCiudad`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`Estado` AS `Estado`,`guias`.`IdDespacho` AS `IdDespacho`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`Orden` AS `Orden`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`Anulada` AS `Anulada`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`IdVehiculo` AS `IdVehiculo`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`Remesas` AS `Remesas`,`despachos`.`Unidades` AS `UnidadesDespacho`,`despachos`.`KilosReales` AS `KRDespacho`,`despachos`.`VrFlete` AS `VrFleteDespacho`,`despachos`.`VrAnticipo` AS `VrAnticipo`,`despachos`.`Observaciones` AS `Observaciones`,`despachos`.`TRecaudo` AS `TRecaudo`,`despachos`.`TotalViaje` AS `TotalViaje`,`despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,`despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,`despachos`.`NmConductor` AS `NmConductor` from ((`guias` left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) left join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_ir_resumenrecogidas`
--

/*!50001 DROP TABLE IF EXISTS `sql_ir_resumenrecogidas`*/;
/*!50001 DROP VIEW IF EXISTS `sql_ir_resumenrecogidas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_ir_resumenrecogidas` AS select `anuncios`.`IdAnuncio` AS `IdAnuncio`,`anuncios`.`FhAnuncio` AS `FhAnuncio`,`anuncios`.`IdCliente` AS `IdCliente`,`anuncios`.`Anunciante` AS `Anunciante`,`anuncios`.`DirAnunciante` AS `DirAnunciante`,`anuncios`.`TelAnunciante` AS `TelAnunciante`,`anuncios`.`IdRuta` AS `IdRuta`,`anuncios`.`Asignacion` AS `Asignacion`,`anuncios`.`FhRecogida` AS `FhRecogida`,`anuncios`.`Unidades` AS `Unidades`,`anuncios`.`KilosReales` AS `KilosReales`,`anuncios`.`KilosVol` AS `KilosVol`,`anuncios`.`Comentarios` AS `Comentarios`,`anuncios`.`Programada` AS `Programada`,`anuncios`.`Estado` AS `Estado`,`anuncios`.`Efectiva` AS `Efectiva`,`anuncios`.`TiempoEfectiva` AS `TiempoEfectiva`,`anuncios`.`Coperaciones` AS `Coperaciones`,`anuncios`.`Orden` AS `Orden`,`anuncios`.`IdConductor` AS `IdConductor`,`anuncios`.`IdVehiculo` AS `IdVehiculo`,`anuncios`.`IdEmpresa` AS `IdEmpresa`,`anuncios`.`IdAsignacion` AS `IdAsignacion`,`vehiculosrecogida`.`Placa` AS `Placa`,`vehiculosrecogida`.`Flete` AS `Flete`,`vehiculosrecogida`.`Rec` AS `Rec`,`vehiculosrecogida`.`Pend` AS `Pend`,`vehiculosrecogida`.`Fecha` AS `FechaRecogida`,`terceros`.`RazonSocial` AS `RazonSocial` from ((`anuncios` left join `vehiculosrecogida` on((`anuncios`.`IdAsignacion` = `vehiculosrecogida`.`IdAsignacion`))) left join `terceros` on((`anuncios`.`IdCliente` = `terceros`.`IDTercero`))) where (`anuncios`.`FhAnuncio` >= _latin1'2011/01/01') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_manvehiculo`
--

/*!50001 DROP TABLE IF EXISTS `sql_manvehiculo`*/;
/*!50001 DROP VIEW IF EXISTS `sql_manvehiculo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_manvehiculo` AS select `vehiculos`.`IdPlaca` AS `vehplaca`,`marcas`.`CodMinTrans` AS `vehmarca`,`lineas`.`NmLinea` AS `vehlinea`,`vehiculos`.`Modelo` AS `vehmodelo`,`vehiculos`.`ModeloRep` AS `vehmodelotransf`,`vehiculos`.`Serie` AS `vehnroserie`,`colores`.`CodMinTrans` AS `vehcolor`,`carrocerias`.`CodMinTrans` AS `vehtipocarrocer`,`vehiculos`.`VehConfiguracion` AS `vehconfiguraci`,`vehiculos`.`PesoVacio` AS `vehpeso`,`vehiculos`.`RegNalCarga` AS `vehregistro`,`vehiculos`.`Soat` AS `vehnro_poliza`,`aseguradora`.`TpDoc` AS `vehtipidasegur`,`aseguradora`.`IDTercero` AS `vehidenasegur`,`vehiculos`.`VenceSoat` AS `vehfechvenci`,`vehiculos`.`PlacaRemolque` AS `vehplacsemir`,`propietario`.`TpDoc` AS `vehtipidpropiet`,`propietario`.`IDTercero` AS `vehidentprop`,`tenedor`.`TpDoc` AS `Vehtipidtenenc`,`tenedor`.`IDTercero` AS `Vehidentenenc` from (((((((`vehiculos` left join `marcas` on((`vehiculos`.`IdMarca` = `marcas`.`IdMarca`))) left join `lineas` on((`vehiculos`.`IdLinea` = `lineas`.`IdLinea`))) left join `colores` on((`vehiculos`.`IdColor` = `colores`.`IdColor`))) left join `carrocerias` on((`vehiculos`.`IdCarroceria` = `carrocerias`.`IdCarroceria`))) left join `terceros` `aseguradora` on((`vehiculos`.`IdAseguradora` = `aseguradora`.`IDTercero`))) left join `terceros` `propietario` on((`vehiculos`.`IdPropietario` = `propietario`.`IDTercero`))) left join `terceros` `tenedor` on((`vehiculos`.`IdTenedor` = `tenedor`.`IDTercero`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_despachosporcerrar`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_despachosporcerrar`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_despachosporcerrar`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_despachosporcerrar` AS select `despachos`.`IdManifiesto` AS `IdManifiesto`,`despachos`.`OrdDespacho` AS `OrdDespacho`,`despachos`.`Tipo` AS `Tipo`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`FhCumplidos` AS `FhCumplidos`,`despachos`.`IdVehiculo` AS `IdVehiculo`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`IdRuta` AS `IdRuta`,`despachos`.`IdCiudadOrigen` AS `IdCiudadOrigen`,`despachos`.`IdCiudadDestino` AS `IdCiudadDestino`,`despachos`.`Estado` AS `Estado`,`despachos`.`Remesas` AS `Remesas`,`despachos`.`Unidades` AS `Unidades`,`despachos`.`KilosReales` AS `KilosReales`,`despachos`.`KilosVol` AS `KilosVol`,`despachos`.`FleteCobra` AS `FleteCobra`,`despachos`.`ManejoCobra` AS `ManejoCobra`,`despachos`.`FleteCE` AS `FleteCE`,`despachos`.`ManejoCE` AS `ManejoCE`,`despachos`.`VrFlete` AS `VrFlete`,`despachos`.`VrAnticipo` AS `VrAnticipo`,`despachos`.`VrDctoPapeleria` AS `VrDctoPapeleria`,`despachos`.`VrDctoSeguridad` AS `VrDctoSeguridad`,`despachos`.`VrDctoCargue` AS `VrDctoCargue`,`despachos`.`VrDctoEstampilla` AS `VrDctoEstampilla`,`despachos`.`VrFleteAdicional` AS `VrFleteAdicional`,`despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,`despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,`despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,`despachos`.`SaldoDesp` AS `SaldoDesp`,`despachos`.`TotalViaje` AS `TotalViaje`,`despachos`.`CO` AS `CO`,`despachos`.`Observaciones` AS `Observaciones`,`despachos`.`TRecaudo` AS `TRecaudo`,`despachos`.`VrDeclaradoTotal` AS `VrDeclaradoTotal`,`despachos`.`ManElectronico` AS `ManElectronico`,`despachos`.`NmConductor` AS `NmConductor`,`despachos`.`Cerrado` AS `Cerrado`,`despachos`.`Liquidado` AS `Liquidado`,`despachos`.`IdUsuario` AS `IdUsuario`,`despachos`.`IdEmpresa` AS `IdEmpresa`,`despachos`.`Exportado` AS `Exportado`,`despachos`.`LugarPago` AS `LugarPago`,`despachos`.`FhPagoSaldo` AS `FhPagoSaldo`,`despachos`.`PagoCargue` AS `PagoCargue`,`despachos`.`PagoDescargue` AS `PagoDescargue`,`despachos`.`Estado1` AS `Estado1`,`despachos`.`AbonosCE` AS `AbonosCE`,`despachos`.`FletesNoCancelados` AS `FletesNoCancelados`,`rutas`.`NmRuta` AS `NmRuta` from (`despachos` left join `rutas` on((`despachos`.`IdRuta` = `rutas`.`IdRuta`))) where (`despachos`.`Cerrado` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_ir_listadorecogidasvehiculo`
--

/*!50001 DROP TABLE IF EXISTS `sql_ir_listadorecogidasvehiculo`*/;
/*!50001 DROP VIEW IF EXISTS `sql_ir_listadorecogidasvehiculo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_ir_listadorecogidasvehiculo` AS select `anuncios`.`IdAnuncio` AS `IdAnuncio`,`anuncios`.`FhAnuncio` AS `FhAnuncio`,`anuncios`.`IdCliente` AS `IdCliente`,`anuncios`.`Anunciante` AS `Anunciante`,`anuncios`.`DirAnunciante` AS `DirAnunciante`,`anuncios`.`TelAnunciante` AS `TelAnunciante`,`anuncios`.`IdRuta` AS `IdRuta`,`anuncios`.`Asignacion` AS `Asignacion`,`anuncios`.`FhRecogida` AS `FhRecogida`,`anuncios`.`Unidades` AS `Unidades`,`anuncios`.`KilosReales` AS `KilosReales`,`anuncios`.`KilosVol` AS `KilosVol`,`anuncios`.`Comentarios` AS `Comentarios`,`anuncios`.`Programada` AS `Programada`,`anuncios`.`Estado` AS `Estado`,`anuncios`.`Efectiva` AS `Efectiva`,`anuncios`.`TiempoEfectiva` AS `TiempoEfectiva`,`anuncios`.`Coperaciones` AS `Coperaciones`,`anuncios`.`Orden` AS `Orden`,`anuncios`.`IdConductor` AS `IdConductor`,`anuncios`.`IdVehiculo` AS `IdVehiculo`,`anuncios`.`IdEmpresa` AS `IdEmpresa`,`anuncios`.`IdAsignacion` AS `IdAsignacion`,`vehiculosrecogida`.`Fecha` AS `Fecha`,`vehiculosrecogida`.`Placa` AS `Placa`,`vehiculosrecogida`.`Flete` AS `Flete`,`terceros`.`RazonSocial` AS `RazonSocial` from ((`anuncios` left join `vehiculosrecogida` on((`anuncios`.`IdAsignacion` = `vehiculosrecogida`.`IdAsignacion`))) left join `terceros` on((`anuncios`.`IdCliente` = `terceros`.`IDTercero`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_pend_desp`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_pend_desp`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_pend_desp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_pend_desp` AS select `guias`.`Guia` AS `Guia`,`guias`.`CR` AS `CR`,`guias`.`Remitente` AS `Remitente`,`guias`.`IdCliente` AS `IdCliente`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`guias`.`TelDestinatario` AS `TelDestinatario`,`guias`.`DirDestinatario` AS `DirDestinatario`,`guias`.`IdRuta` AS `IdRuta`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`FhEntregaMercancia` AS `FhEntregaMercancia`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`Estado` AS `Estado`,`guias`.`IdFactura` AS `IdFactura`,`guias`.`IdDespacho` AS `IdDespacho`,`guias`.`Observaciones` AS `Observaciones`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`Orden` AS `Orden`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`CPorte` AS `CPorte`,`guias`.`Entregada` AS `Entregada`,`guias`.`Descargada` AS `Descargada`,`guias`.`FhDescargada` AS `FhDescargada`,`rutas`.`NmRuta` AS `NmRuta`,`ciudades`.`NmCiudad` AS `NmCiudad` from ((`guias` left join `rutas` on((`guias`.`IdRuta` = `rutas`.`IdRuta`))) left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) where ((`guias`.`Despachada` = 0) and (`guias`.`Anulada` = 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_impnovedadsolucionada`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_impnovedadsolucionada`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_impnovedadsolucionada`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_impnovedadsolucionada` AS select `novedades`.`ID` AS `ID`,`novedades`.`Guia` AS `Guia`,`novedades`.`IdNovedad` AS `IdNovedad`,`novedades`.`Comentarios` AS `Comentarios`,`novedades`.`UsuIng` AS `UsuIng`,`novedades`.`FHIngreso` AS `FHIngreso`,`novedades`.`FhNovedad` AS `FhNovedad`,`novedades`.`Solucion` AS `Solucion`,`novedades`.`UsuSol` AS `UsuSol`,`novedades`.`FhSolucion` AS `FhSolucion`,`novedades`.`Solucionada` AS `Solucionada`,`causalesnovedad`.`NmNovedad` AS `NmNovedad`,`usuarios`.`NmUsuario` AS `NmUsuario` from ((`novedades` join `causalesnovedad` on((`novedades`.`IdNovedad` = `causalesnovedad`.`IdNovedad`))) join `usuarios` on((`novedades`.`UsuSol` = `usuarios`.`IDUsuario`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_produccionruta`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_produccionruta`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_produccionruta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_produccionruta` AS select `guias`.`Guia` AS `Guia`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`rutas`.`NmRuta` AS `NmRuta`,`despachos`.`IdRuta` AS `IdRuta`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`COIng` AS `COIng`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo` from ((`guias` left join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`))) left join `rutas` on((`despachos`.`IdRuta` = `rutas`.`IdRuta`))) where (`guias`.`Anulada` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_manremesas`
--

/*!50001 DROP TABLE IF EXISTS `sql_manremesas`*/;
/*!50001 DROP VIEW IF EXISTS `sql_manremesas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_manremesas` AS select `informacionempresa`.`Nit` AS `nitempresa`,`despachos`.`IdManifiesto` AS `remnumero`,`guias`.`Unidades` AS `remcantidad`,`guias`.`KilosReales` AS `rempeso`,`guias`.`Remitente` AS `remremtente`,`guias`.`NmDestinatario` AS `remdestinatario`,`ciudestino`.`CodMinTrans` AS `remciudad_desti`,`guias`.`IdDespacho` AS `remnromanifiesto`,`guias`.`Guia` AS `remnrorempresa`,`informacionempresa`.`NroPoliza` AS `rempoliza`,`informacionempresa`.`NitAseguradora` AS `remaseguradora`,`informacionempresa`.`VencePoliza` AS `remvencimiento`,`ciuorigen`.`CodMinTrans` AS `remciudad_orig`,`guias`.`VrFlete` AS `Remvalremesa`,`guias`.`VrDeclarado` AS `Remvalproducto` from ((((`guias` left join `informacionempresa` on((`guias`.`IdEmpresa` = `informacionempresa`.`Id`))) join `ciudades` `ciudestino` on((`guias`.`IdCiuDestino` = `ciudestino`.`IdCiudad`))) join `ciudades` `ciuorigen` on((`guias`.`IdCiuOrigen` = `ciuorigen`.`IdCiudad`))) join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`))) where (`guias`.`IdDespacho` = 14018) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_resumendespacho`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_resumendespacho`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_resumendespacho`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_resumendespacho` AS select `guias`.`Guia` AS `Guia`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guiadestino`.`NmCiudad` AS `NmCiudad`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`Cliente` AS `Cliente`,`guias`.`Cuenta` AS `Cuenta`,`despachos`.`IdManifiesto` AS `IdManifiesto`,`despachos`.`FhExpedicion` AS `FhExpedicion`,`despachos`.`IdVehiculo` AS `IdVehiculo`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`IdRuta` AS `IdRuta`,`despachos`.`Remesas` AS `Remesas`,`despachos`.`Unidades` AS `UnidadesDespacho`,`despachos`.`KilosReales` AS `KilosRealesDespacho`,`despachos`.`FleteCobra` AS `FleteCobra`,`despachos`.`ManejoCobra` AS `ManejoCobra`,`despachos`.`FleteCE` AS `FleteCE`,`despachos`.`ManejoCE` AS `ManejoCE`,`despachos`.`VrFlete` AS `VrFleteDespacho`,`despachos`.`VrAnticipo` AS `VrAnticipo`,`despachos`.`TRecaudo` AS `TRecaudo`,`despachos`.`NmConductor` AS `NmConductor`,`guias`.`IdDespacho` AS `IdDespacho` from ((`guias` left join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`))) left join `ciudades` `guiadestino` on((`guias`.`IdCiuDestino` = `guiadestino`.`IdCiudad`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_pendescargar`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_pendescargar`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_pendescargar`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_pendescargar` AS select `guias`.`Guia` AS `Guia`,`guias`.`CR` AS `CR`,`guias`.`Remitente` AS `Remitente`,`guias`.`IdCliente` AS `IdCliente`,`guias`.`DocCliente` AS `DocCliente`,`guias`.`NmDestinatario` AS `NmDestinatario`,`guias`.`DirDestinatario` AS `DirDestinatario`,`guias`.`TelDestinatario` AS `TelDestinatario`,`guias`.`IdCiuDestino` AS `IdCiuDestino`,`guias`.`IdRuta` AS `IdRuta`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`FhEntregaMercancia` AS `FhEntregaMercancia`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`KilosVolumen` AS `KilosVolumen`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`KilosReales` AS `KilosReales`,`guias`.`Unidades` AS `Unidades`,`guias`.`Estado` AS `Estado`,`guias`.`IdDespacho` AS `IdDespacho`,`guias`.`Observaciones` AS `Observaciones`,`guias`.`IdFactura` AS `IdFactura`,`guias`.`COIng` AS `COIng`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`Orden` AS `Orden`,`guias`.`EmpaqueRef` AS `EmpaqueRef`,`guias`.`RelCliente` AS `RelCliente`,`guias`.`IdCiuOrigen` AS `IdCiuOrigen`,`guias`.`IdRelEntrega` AS `IdRelEntrega`,`guias`.`FhDescargada` AS `FhDescargada`,`guias`.`Despachada` AS `Despachada`,`guias`.`TpServicio` AS `TpServicio`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`CPorte` AS `CPorte`,`guias`.`Entregada` AS `Entregada`,`guias`.`Descargada` AS `Descargada`,`guias`.`Anulada` AS `Anulada`,`guias`.`GuiFac` AS `GuiFac`,`guias`.`Facturada` AS `Facturada`,`guias`.`IdUsuario` AS `IdUsuario`,`guias`.`IdPlanillaFactura` AS `IdPlanillaFactura`,`guias`.`IdEmpresa` AS `IdEmpresa`,`guias`.`Relacionada` AS `Relacionada`,`guias`.`EnNovedad` AS `EnNovedad`,`ciudades`.`NmCiudad` AS `NmCiudad`,`despachos`.`IdVehiculo` AS `IdVehiculo`,`despachos`.`IdConductor` AS `IdConductor`,`despachos`.`NmConductor` AS `NmConductor` from ((`guias` left join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`))) left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) where ((`guias`.`Anulada` = 0) and (`guias`.`Descargada` = 0) and (`guias`.`Despachada` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sql_im_guias_factura`
--

/*!50001 DROP TABLE IF EXISTS `sql_im_guias_factura`*/;
/*!50001 DROP VIEW IF EXISTS `sql_im_guias_factura`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sql_im_guias_factura` AS select `guias`.`Guia` AS `Guia`,`guias`.`FhEntradaBodega` AS `FhEntradaBodega`,`guias`.`Cuenta` AS `Cuenta`,`guias`.`Cliente` AS `Cliente`,`guias`.`Unidades` AS `Unidades`,`guias`.`KilosFacturados` AS `KilosFacturados`,`guias`.`VrDeclarado` AS `VrDeclarado`,`guias`.`Recaudo` AS `Recaudo`,`guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,`guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,`guias`.`VrFlete` AS `VrFlete`,`guias`.`VrManejo` AS `VrManejo`,`guias`.`Abonos` AS `Abonos`,`guias`.`COIng` AS `COIng`,`centrosoperaciones`.`NmPuntoOperaciones` AS `NmPuntoOperaciones`,`guias`.`TipoCobro` AS `TipoCobro`,`tipos_cobro`.`NmTipoCobro` AS `NmTipoCobro` from ((`guias` left join `centrosoperaciones` on((`guias`.`COIng` = `centrosoperaciones`.`IDPO`))) left join `tipos_cobro` on((`guias`.`TipoCobro` = `tipos_cobro`.`IdTipoCobro`))) where ((`guias`.`TipoCobro` = 1) or (`guias`.`TipoCobro` = 2)) order by `guias`.`FhEntradaBodega` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'bdkl'
--

--
-- Dumping routines for database 'bdkl'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-02 16:24:41
