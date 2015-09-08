# SQL Manager 2010 for MySQL 4.5.0.9
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : bdkl


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

SET FOREIGN_KEY_CHECKS=0;

USE `bdkl`;

#
# Definition for the `slq_im_formatoliqdesp` view : 
#

DROP VIEW IF EXISTS `slq_im_formatoliqdesp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW slq_im_formatoliqdesp AS 
  select 
    `despachos`.`IdManifiesto` AS `IdManifiesto`,
    `despachos`.`OrdDespacho` AS `OrdDespacho`,
    `despachos`.`Tipo` AS `Tipo`,
    `despachos`.`FhExpedicion` AS `FhExpedicion`,
    `despachos`.`FhCumplidos` AS `FhCumplidos`,
    `despachos`.`IdVehiculo` AS `IdVehiculo`,
    `despachos`.`IdConductor` AS `IdConductor`,
    `despachos`.`IdCiudadOrigen` AS `IdCiudadOrigen`,
    `despachos`.`IdCiudadDestino` AS `IdCiudadDestino`,
    `despachos`.`Estado` AS `Estado`,
    `despachos`.`Remesas` AS `Remesas`,
    `despachos`.`Unidades` AS `Unidades`,
    `despachos`.`KilosReales` AS `KilosReales`,
    `despachos`.`KilosVol` AS `KilosVol`,
    `despachos`.`FleteCobra` AS `FleteCobra`,
    `despachos`.`ManejoCobra` AS `ManejoCobra`,
    `despachos`.`FleteCE` AS `FleteCE`,
    `despachos`.`ManejoCE` AS `ManejoCE`,
    `despachos`.`VrFlete` AS `VrFlete`,
    `despachos`.`VrAnticipo` AS `VrAnticipo`,
    `despachos`.`VrDctoPapeleria` AS `VrDctoPapeleria`,
    `despachos`.`VrDctoSeguridad` AS `VrDctoSeguridad`,
    `despachos`.`VrDctoCargue` AS `VrDctoCargue`,
    `despachos`.`VrDctoEstampilla` AS `VrDctoEstampilla`,
    `despachos`.`VrFleteAdicional` AS `VrFleteAdicional`,
    `despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,
    `despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,
    `despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,
    `despachos`.`SaldoDesp` AS `SaldoDesp`,
    `despachos`.`TotalViaje` AS `TotalViaje`,
    `despachos`.`NmConductor` AS `NmConductor`,
    `despachos`.`TRecaudo` AS `TRecaudo`,
    `despachos`.`Observaciones` AS `Observaciones`,
    `despachos`.`CO` AS `CO`,
    `despachos`.`Cerrado` AS `Cerrado`,
    `despachos`.`Liquidado` AS `Liquidado`,
    `despachos`.`IdUsuario` AS `IdUsuario`,
    `despachos`.`IdEmpresa` AS `IdEmpresa`,
    `despachos`.`AbonosCE` AS `AbonosCE`,
    `despachos`.`FletesNoCancelados` AS `FletesNoCancelados`,
    `ciudades`.`NmCiudad` AS `NmCiudad`,
    `informacionempresa`.`Logo` AS `Logo`,
    `despachos`.`VrDeclaradoTotal` AS `VrDeclaradoTotal`,
    `despachos`.`TotalCE` AS `TotalCE`,
    `despachos`.`FleteContado` AS `FleteContado`,
    `despachos`.`ManejoContado` AS `ManejoContado`,
    `despachos`.`FleteCorriente` AS `FleteCorriente`,
    `despachos`.`ManejoCorriente` AS `ManejoCorriente`,
    `despachos`.`FleteCETotal` AS `FleteCETotal`,
    `despachos`.`ManejoCETotal` AS `ManejoCETotal`,
    `despachos`.`ExportadoContabilidad` AS `ExportadoContabilidad` 
  from 
    ((`despachos` left join `ciudades` on((`despachos`.`IdCiudadDestino` = `ciudades`.`IdCiudad`))) left join `informacionempresa` on((`despachos`.`IdEmpresa` = `informacionempresa`.`Id`)));

#
# Definition for the `slq_im_producciongral` view : 
#

DROP VIEW IF EXISTS `slq_im_producciongral`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW slq_im_producciongral AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `guias`.`IdCliente` AS `IdCliente`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `guias`.`VrDeclarado` AS `VrDeclarado`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrManejo` AS `VrManejo`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosReales` AS `KilosReales`,
    `guias`.`Estado` AS `Estado`,
    `guias`.`COIng` AS `COIng`,
    `guias`.`Cuenta` AS `Cuenta`,
    `guias`.`Cliente` AS `Cliente`,
    `guias`.`TpServicio` AS `TpServicio`,
    `guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,
    `guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,
    `guias`.`Anulada` AS `Anulada`,
    `guias`.`KilosFacturados` AS `KilosFacturados` 
  from 
    `guias` 
  where 
    (`guias`.`Anulada` = 0) 
  order by 
    `guias`.`Cuenta`;

#
# Definition for the `sql_ic_cartera_edades` view : 
#

DROP VIEW IF EXISTS `sql_ic_cartera_edades`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_ic_cartera_edades AS 
  select 
    `cuentas_cobrar`.`NroDocumento` AS `NroDocumento`,
    `cuentas_cobrar`.`FechaDoc` AS `FechaDoc`,
    `cuentas_cobrar`.`FhVence` AS `FhVence`,
    `cuentas_cobrar`.`IdTercero` AS `IdTercero`,
    `cuentas_cobrar`.`Total` AS `Total`,
    `cuentas_cobrar`.`Abono` AS `Abono`,
    `cuentas_cobrar`.`Saldo` AS `Saldo`,
    `cuentas_cobrar`.`VrFlete` AS `VrFlete`,
    `cuentas_cobrar`.`VrManejo` AS `VrManejo`,
    `cuentas_cobrar`.`Condicion` AS `Condicion`,
    `cuentas_cobrar`.`TipoFactura` AS `TipoFactura`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    (to_days(now()) - to_days(`cuentas_cobrar`.`FhVence`)) AS `DiasVencida`,
    (case when ((to_days(now()) - to_days(`cuentas_cobrar`.`FhVence`)) < 1) then 'Por Vencer' else 'Vencida' end) AS `TipoVencimiento`,
    (case when ((to_days(now()) - to_days(`cuentas_cobrar`.`FhVence`)) < 1) then 'Por Vencer' else (case when ((to_days(now()) - to_days(`cuentas_cobrar`.`FhVence`)) between 0 and 30) then '30' else (case when ((to_days(now()) - to_days(`cuentas_cobrar`.`FhVence`)) between 31 and 60) then '60' else (case when ((to_days(now()) - to_days(`cuentas_cobrar`.`FhVence`)) between 61 and 90) then '90' else 'Mas de 90' end) end) end) end) AS `Rango`,
    `informacionempresa`.`Nit` AS `Nit`,
    `informacionempresa`.`Nombre` AS `Nombre`,
    `informacionempresa`.`Direccion` AS `Direccion`,
    `informacionempresa`.`Telefono` AS `Telefono`,
    `informacionempresa`.`Logo` AS `Logo`,
    `cuentas_cobrar`.`IdCxC` AS `IdCxC`,
    `cuentas_cobrar`.`GuiaFactura` AS `GuiaFactura`,
    `facturas_tipos`.`NmTipoFactura` AS `NmTipoFactura` 
  from 
    (((`cuentas_cobrar` left join `terceros` on((`cuentas_cobrar`.`IdTercero` = `terceros`.`IDTercero`))) left join `facturas_tipos` on((`cuentas_cobrar`.`TipoFactura` = `facturas_tipos`.`IdTipoFactura`))) join `informacionempresa`) 
  where 
    (`cuentas_cobrar`.`Saldo` <> 0);

#
# Definition for the `sql_ic_imprimir_nota_credito` view : 
#

DROP VIEW IF EXISTS `sql_ic_imprimir_nota_credito`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_ic_imprimir_nota_credito AS 
  select 
    `notas_credito_det`.`IdNotaCreditoDet` AS `IdNotaCreditoDet`,
    `notas_credito_det`.`IdNotaCredito` AS `IdNotaCredito`,
    `notas_credito_det`.`IdCxC` AS `IdCxC`,
    `notas_credito_det`.`Tipo` AS `Tipo`,
    `notas_credito_det`.`IdCuenta` AS `IdCuenta`,
    `notas_credito_det`.`Valor` AS `Valor`,
    `notas_credito`.`Fecha` AS `Fecha`,
    `notas_credito`.`IdTercero` AS `IdTercero`,
    `notas_credito`.`Total` AS `Total`,
    `notas_credito`.`Comentarios` AS `Comentarios`,
    `notas_credito`.`Impreso` AS `Impreso`,
    `notas_credito`.`Anulado` AS `Anulado`,
    `informacionempresa`.`Nit` AS `Nit`,
    `informacionempresa`.`Nombre` AS `Nombre`,
    `informacionempresa`.`Direccion` AS `Direccion`,
    `informacionempresa`.`Telefono` AS `Telefono`,
    `informacionempresa`.`Logo` AS `Logo`,
    `informacionempresa`.`Id` AS `Id`,
    `cuentas_cobrar`.`NroDocumento` AS `NroDocumento`,
    `cuentas_cobrar`.`FechaDoc` AS `FechaDoc`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    `terceros`.`Direccion` AS `DireccionCliente`,
    `terceros`.`Telefono` AS `TelefonoCliente` 
  from 
    ((((`notas_credito_det` left join `notas_credito` on((`notas_credito_det`.`IdNotaCredito` = `notas_credito`.`IdNotaCredito`))) left join `cuentas_cobrar` on((`notas_credito_det`.`IdCxC` = `cuentas_cobrar`.`IdCxC`))) left join `terceros` on((convert(`notas_credito`.`IdTercero` using utf8) = convert(`terceros`.`IDTercero` using utf8)))) join `informacionempresa`);

#
# Definition for the `sql_ic_imprimir_recibo_caja` view : 
#

DROP VIEW IF EXISTS `sql_ic_imprimir_recibo_caja`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_ic_imprimir_recibo_caja AS 
  select 
    `recibos_caja_det`.`IdReciboDet` AS `IdReciboDet`,
    `recibos_caja_det`.`IdRecibo` AS `IdRecibo`,
    `recibos_caja_det`.`IdCxC` AS `IdCxC`,
    `recibos_caja_det`.`Tipo` AS `Tipo`,
    `recibos_caja_det`.`IdCuenta` AS `IdCuenta`,
    `recibos_caja_det`.`Valor` AS `Valor`,
    `recibos_caja`.`Fecha` AS `Fecha`,
    `recibos_caja`.`IdTercero` AS `IdTercero`,
    `recibos_caja`.`Total` AS `Total`,
    `recibos_caja`.`Comentarios` AS `Comentarios`,
    `recibos_caja`.`Impreso` AS `Impreso`,
    `recibos_caja`.`Anulado` AS `Anulado`,
    `informacionempresa`.`Nit` AS `Nit`,
    `informacionempresa`.`Nombre` AS `Nombre`,
    `informacionempresa`.`Direccion` AS `Direccion`,
    `informacionempresa`.`Telefono` AS `Telefono`,
    `informacionempresa`.`Logo` AS `Logo`,
    `informacionempresa`.`Id` AS `Id`,
    `cuentas_cobrar`.`NroDocumento` AS `NroDocumento`,
    `cuentas_cobrar`.`FechaDoc` AS `FechaDoc`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    `terceros`.`Direccion` AS `DireccionCliente`,
    `terceros`.`Telefono` AS `TelefonoCliente` 
  from 
    ((((`recibos_caja_det` left join `recibos_caja` on((`recibos_caja_det`.`IdRecibo` = `recibos_caja`.`IdRecibo`))) left join `cuentas_cobrar` on((`recibos_caja_det`.`IdCxC` = `cuentas_cobrar`.`IdCxC`))) left join `terceros` on((convert(`recibos_caja`.`IdTercero` using utf8) = convert(`terceros`.`IDTercero` using utf8)))) join `informacionempresa`);

#
# Definition for the `sql_if_facturado` view : 
#

DROP VIEW IF EXISTS `sql_if_facturado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_if_facturado AS 
  select 
    `facturas`.`IdFactura` AS `IdFactura`,
    `facturas`.`FhFac` AS `FhFac`,
    `facturas`.`FhVenceFac` AS `FhVenceFac`,
    `facturas`.`IdCliente` AS `IdCliente`,
    `facturas`.`Estado` AS `Estado`,
    `facturas`.`Notas` AS `Notas`,
    `facturas`.`TFlete` AS `TFlete`,
    `facturas`.`TManejo` AS `TManejo`,
    `facturas`.`TOtros` AS `TOtros`,
    `facturas`.`DctoComercial` AS `DctoComercial`,
    `facturas`.`BaseCcial` AS `BaseCcial`,
    `facturas`.`DctoFinanciero` AS `DctoFinanciero`,
    `facturas`.`BaseFin` AS `BaseFin`,
    `facturas`.`AntesDeDcto` AS `AntesDeDcto`,
    `facturas`.`Abonos` AS `Abonos`,
    `facturas`.`TotalFactura` AS `TotalFactura`,
    `facturas`.`Saldo` AS `Saldo`,
    `facturas`.`NroGuias` AS `NroGuias`,
    `facturas`.`NroPlanillas` AS `NroPlanillas`,
    `facturas`.`NroConceptos` AS `NroConceptos`,
    `facturas`.`Exportada` AS `Exportada`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    `terceros`.`IdCentroCostos` AS `IdCentroCostos`,
    `centros_costos`.`NmCentroCostos` AS `NmCentroCostos` 
  from 
    ((`facturas` left join `terceros` on((`facturas`.`IdCliente` = `terceros`.`IDTercero`))) left join `centros_costos` on((`terceros`.`IdCentroCostos` = `centros_costos`.`IdCentroCostos`))) 
  where 
    ((`facturas`.`Estado` <> _latin1'A') and (`facturas`.`Estado` <> _latin1'D'));

#
# Definition for the `sql_if_facturas_consolidado` view : 
#

DROP VIEW IF EXISTS `sql_if_facturas_consolidado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_if_facturas_consolidado AS 
  select 
    `facturas_venta`.`Numero` AS `Numero`,
    `facturas_venta`.`TipoFactura` AS `TipoFactura`,
    `facturas_venta`.`FhVence` AS `FhVence`,
    `facturas_venta`.`Fecha` AS `Fecha`,
    `facturas_venta`.`IdTercero` AS `IdTercero`,
    `facturas_venta`.`Plazo` AS `Plazo`,
    `facturas_venta`.`Total` AS `Total`,
    `facturas_venta`.`VrFlete` AS `VrFlete`,
    `facturas_venta`.`VrManejo` AS `VrManejo`,
    `facturas_venta`.`VrOtros` AS `VrOtros`,
    `facturas_venta`.`Exportada` AS `Exportada`,
    `facturas_tipos`.`NmTipoFactura` AS `NmTipoFactura`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    `facturas_venta`.`IdPO` AS `IdPO`,
    `centrosoperaciones`.`NmPuntoOperaciones` AS `NmPuntoOperaciones` 
  from 
    (((`facturas_venta` left join `facturas_tipos` on((`facturas_venta`.`TipoFactura` = `facturas_tipos`.`IdTipoFactura`))) left join `terceros` on((`facturas_venta`.`IdTercero` = `terceros`.`IDTercero`))) left join `centrosoperaciones` on((`facturas_venta`.`IdPO` = `centrosoperaciones`.`IDPO`)));

#
# Definition for the `sql_if_imp_factura` view : 
#

DROP VIEW IF EXISTS `sql_if_imp_factura`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_if_imp_factura AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `guias`.`Remitente` AS `Remitente`,
    `guias`.`DocCliente` AS `DocCliente`,
    `guias`.`NmDestinatario` AS `NmDestinatario`,
    `guias`.`DirDestinatario` AS `DirDestinatario`,
    `ciudades`.`NmCiudad` AS `NmCiudad`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `guias`.`VrDeclarado` AS `VrDeclarado`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrManejo` AS `VrManejo`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosReales` AS `KilosReales`,
    `guias`.`KilosFacturados` AS `KilosFacturados`,
    `guias`.`KilosVolumen` AS `KilosVolumen`,
    `guias`.`Estado` AS `Estado`,
    `guias`.`IdFactura` AS `IdFactura`,
    `facturas`.`FhFac` AS `FhFac`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    `facturas`.`TFlete` AS `TFlete`,
    `facturas`.`TManejo` AS `TManejo`,
    `facturas`.`TOtros` AS `TOtros`,
    `facturas`.`NroGuias` AS `NroGuias`,
    `informacionempresa`.`Nit` AS `Nit`,
    `informacionempresa`.`Nombre` AS `Nombre`,
    `informacionempresa`.`Direccion` AS `Direccion`,
    `informacionempresa`.`Telefono` AS `Telefono`,
    `informacionempresa`.`Logo` AS `Logo`,
    `facturas`.`FhVenceFac` AS `FhVenceFac`,
    `facturas`.`IdFactura` AS `NumeroFactura`,
    `facturas`.`Plazo` AS `Plazo`,
    `formas_pago`.`NmFormaPago` AS `NmFormaPago`,
    `terceros`.`Direccion` AS `DireccionTercero`,
    `terceros`.`Telefono` AS `TelefonoTercero`,
    `ciudadtercero`.`NmCiudad` AS `NmCiudadTercero`,
    `facturas`.`IdCliente` AS `IdCliente`,
    `facturas`.`Notas` AS `Notas`,
    `facturas`.`TotalFactura` AS `TotalFactura`,
    `terceros`.`DigitoVerificacion` AS `DigitoVerificacion`,
    concat(`facturas`.`IdCliente`,`terceros`.`DigitoVerificacion`) AS `NitCompleto`,
    `ciu_origen`.`NmCiudad` AS `CiudadOrigen`,
    `facturas`.`ValorEnLetras` AS `ValorEnLetras` 
  from 
    (((((((`guias` left join `facturas` on((`guias`.`IdFactura` = `facturas`.`IdFactura`))) left join `terceros` on((`facturas`.`IdCliente` = `terceros`.`IDTercero`))) left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) left join `informacionempresa` on((`facturas`.`IdEmpresa` = `informacionempresa`.`Id`))) left join `formas_pago` on((`facturas`.`IdFormaPago` = `formas_pago`.`IdFormaPago`))) left join `ciudades` `ciudadtercero` on((`terceros`.`IdCiudad` = `ciudadtercero`.`IdCiudad`))) left join `ciudades` `ciu_origen` on((`guias`.`IdCiuOrigen` = `ciu_origen`.`IdCiudad`)));

#
# Definition for the `sql_if_imp_factura_conceptos` view : 
#

DROP VIEW IF EXISTS `sql_if_imp_factura_conceptos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_if_imp_factura_conceptos AS 
  select 
    `facturas`.`FhFac` AS `FhFac`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    `facturas`.`TFlete` AS `TFlete`,
    `facturas`.`TManejo` AS `TManejo`,
    `facturas`.`TOtros` AS `TOtros`,
    `facturas`.`NroGuias` AS `NroGuias`,
    `informacionempresa`.`Nit` AS `Nit`,
    `informacionempresa`.`Nombre` AS `Nombre`,
    `informacionempresa`.`Direccion` AS `Direccion`,
    `informacionempresa`.`Telefono` AS `Telefono`,
    `informacionempresa`.`Logo` AS `Logo`,
    `facturas`.`FhVenceFac` AS `FhVenceFac`,
    `facturas`.`IdFactura` AS `NumeroFactura`,
    `facturas`.`Plazo` AS `Plazo`,
    `formas_pago`.`NmFormaPago` AS `NmFormaPago`,
    `terceros`.`Direccion` AS `DireccionTercero`,
    `terceros`.`Telefono` AS `TelefonoTercero`,
    `ciudadtercero`.`NmCiudad` AS `NmCiudadTercero`,
    `facturas`.`IdCliente` AS `IdCliente`,
    `facturas`.`Notas` AS `Notas`,
    `facturas`.`TotalFactura` AS `TotalFactura`,
    `terceros`.`DigitoVerificacion` AS `DigitoVerificacion`,
    `facturas`.`ValorEnLetras` AS `ValorEnLetras`,
    `conceptosfacturas`.`IdConceptoFactura` AS `IdConceptoFactura`,
    `conceptosfacturas`.`IdFactura` AS `IdFactura`,
    `conceptosfacturas`.`Valor` AS `Valor`,
    `conceptoscontables`.`NmConcepto` AS `NmConcepto` 
  from 
    ((`conceptosfacturas` left join ((((`facturas` left join `terceros` on((`facturas`.`IdCliente` = `terceros`.`IDTercero`))) left join `informacionempresa` on((`facturas`.`IdEmpresa` = `informacionempresa`.`Id`))) left join `formas_pago` on((`facturas`.`IdFormaPago` = `formas_pago`.`IdFormaPago`))) left join `ciudades` `ciudadtercero` on((`terceros`.`IdCiudad` = `ciudadtercero`.`IdCiudad`))) on((`facturas`.`IdFactura` = `conceptosfacturas`.`IdFactura`))) left join `conceptoscontables` on((`conceptosfacturas`.`IdConcepto` = `conceptoscontables`.`IdConcepto`)));

#
# Definition for the `sql_if_imp_factura_planillas` view : 
#

DROP VIEW IF EXISTS `sql_if_imp_factura_planillas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_if_imp_factura_planillas AS 
  select 
    `facturasplanillas`.`IdPlanilla` AS `IdPlanilla`,
    `facturasplanillas`.`IdFactura` AS `IdFactura`,
    `facturasplanillas`.`RelCliente` AS `RelCliente`,
    `facturasplanillas`.`VrFletePlanilla` AS `VrFletePlanilla`,
    `facturasplanillas`.`VrManejoPlanilla` AS `VrManejoPlanilla`,
    `facturasplanillas`.`NroGuiasPlanilla` AS `NroGuiasPlanilla`,
    `facturas`.`FhFac` AS `FhFac`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    `facturas`.`TFlete` AS `TFlete`,
    `facturas`.`TManejo` AS `TManejo`,
    `facturas`.`TOtros` AS `TOtros`,
    `facturas`.`NroGuias` AS `NroGuias`,
    `informacionempresa`.`Nit` AS `Nit`,
    `informacionempresa`.`Nombre` AS `Nombre`,
    `informacionempresa`.`Direccion` AS `Direccion`,
    `informacionempresa`.`Telefono` AS `Telefono`,
    `informacionempresa`.`Logo` AS `Logo`,
    `facturas`.`FhVenceFac` AS `FhVenceFac`,
    `facturas`.`IdFactura` AS `NumeroFactura`,
    `facturas`.`Plazo` AS `Plazo`,
    `formas_pago`.`NmFormaPago` AS `NmFormaPago`,
    `terceros`.`Direccion` AS `DireccionTercero`,
    `terceros`.`Telefono` AS `TelefonoTercero`,
    `ciudadtercero`.`NmCiudad` AS `NmCiudadTercero`,
    `facturas`.`IdCliente` AS `IdCliente`,
    `facturas`.`Notas` AS `Notas`,
    `facturas`.`TotalFactura` AS `TotalFactura`,
    `terceros`.`DigitoVerificacion` AS `DigitoVerificacion`,
    `facturas`.`ValorEnLetras` AS `ValorEnLetras` 
  from 
    (((((`facturasplanillas` left join `facturas` on((`facturasplanillas`.`IdFactura` = `facturas`.`IdFactura`))) left join `terceros` on((`facturas`.`IdCliente` = `terceros`.`IDTercero`))) left join `informacionempresa` on((`facturas`.`IdEmpresa` = `informacionempresa`.`Id`))) left join `formas_pago` on((`facturas`.`IdFormaPago` = `formas_pago`.`IdFormaPago`))) left join `ciudades` `ciudadtercero` on((`terceros`.`IdCiudad` = `ciudadtercero`.`IdCiudad`)));

#
# Definition for the `sql_if_lista_facturas` view : 
#

DROP VIEW IF EXISTS `sql_if_lista_facturas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_if_lista_facturas AS 
  select 
    `facturas`.`IdFactura` AS `IdFactura`,
    `facturas`.`FhFac` AS `FhFac`,
    `facturas`.`FhVenceFac` AS `FhVenceFac`,
    `facturas`.`IdCliente` AS `IdCliente`,
    `facturas`.`Estado` AS `Estado`,
    `facturas`.`Notas` AS `Notas`,
    `facturas`.`TFlete` AS `TFlete`,
    `facturas`.`TManejo` AS `TManejo`,
    `facturas`.`TOtros` AS `TOtros`,
    `facturas`.`DctoComercial` AS `DctoComercial`,
    `facturas`.`BaseCcial` AS `BaseCcial`,
    `facturas`.`DctoFinanciero` AS `DctoFinanciero`,
    `facturas`.`BaseFin` AS `BaseFin`,
    `facturas`.`AntesDeDcto` AS `AntesDeDcto`,
    `facturas`.`Abonos` AS `Abonos`,
    `facturas`.`TotalFactura` AS `TotalFactura`,
    `facturas`.`Saldo` AS `Saldo`,
    `facturas`.`NroGuias` AS `NroGuias`,
    `facturas`.`NroPlanillas` AS `NroPlanillas`,
    `facturas`.`NroConceptos` AS `NroConceptos`,
    `facturas`.`Plazo` AS `Plazo`,
    `facturas`.`IdFormaPago` AS `IdFormaPago`,
    `facturas`.`IdTipoFactura` AS `IdTipoFactura`,
    `facturas`.`Exportada` AS `Exportada`,
    `facturas`.`IdEmpresa` AS `IdEmpresa`,
    `facturas`.`ValorEnLetras` AS `ValorEnLetras`,
    `terceros`.`IDTercero` AS `IDTercero`,
    `terceros`.`TpDoc` AS `TpDoc`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    `terceros`.`Nombre` AS `Nombre`,
    `terceros`.`Apellido1` AS `Apellido1`,
    `terceros`.`Apellido2` AS `Apellido2`,
    `terceros`.`Direccion` AS `Direccion`,
    `terceros`.`Telefono` AS `Telefono`,
    `terceros`.`IdCiudad` AS `IdCiudad`,
    `terceros`.`IdCliente` AS `IdNegociacion`,
    `terceros`.`Email` AS `Email`,
    `terceros`.`Celular` AS `Celular`,
    `terceros`.`Plazo` AS `PlazoTercero`,
    `terceros`.`DigitoVerificacion` AS `DigitoVerificacion`,
    `terceros`.`IdAsesor` AS `IdAsesor`,
    `terceros`.`IdCentroCostos` AS `IdCentroCostos`,
    `terceros`.`IdFormaPago` AS `IdFormaPagoTercero`,
    `terceros`.`Inactivo` AS `Inactivo`,
    `terceros`.`ActualizadoWebServices` AS `ActualizadoWebServices` 
  from 
    (`facturas` left join `terceros` on((`facturas`.`IdCliente` = `terceros`.`IDTercero`))) 
  where 
    (`facturas`.`Estado` <> 'D') 
  order by 
    `facturas`.`FhFac`;

#
# Definition for the `sql_if_pend_fac` view : 
#

DROP VIEW IF EXISTS `sql_if_pend_fac`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_if_pend_fac AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `guias`.`CR` AS `CR`,
    `guias`.`NmDestinatario` AS `NmDestinatario`,
    `guias`.`DocCliente` AS `DocCliente`,
    `ciudades`.`NmCiudad` AS `NmCiudad`,
    `guias`.`IdCiuDestino` AS `IdCiuDestino`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `guias`.`VrDeclarado` AS `VrDeclarado`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrManejo` AS `VrManejo`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosReales` AS `KilosReales`,
    `guias`.`KilosFacturados` AS `KilosFacturados`,
    `guias`.`KilosVolumen` AS `KilosVolumen`,
    `guias`.`Estado` AS `Estado`,
    `guias`.`IdFactura` AS `IdFactura`,
    `guias`.`COIng` AS `COIng`,
    `guias`.`Cuenta` AS `Cuenta`,
    `guias`.`Cliente` AS `Cliente`,
    `guias`.`Recaudo` AS `Recaudo`,
    `guias`.`TpServicio` AS `TpServicio`,
    `guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,
    `guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,
    `guias`.`Anulada` AS `Anulada`,
    `guias`.`GuiFac` AS `GuiFac`,
    `guias`.`IdCliente` AS `IdCliente`,
    `guias`.`IdPlanillaFactura` AS `IdPlanillaFactura`,
    `guias`.`RelCliente` AS `RelCliente` 
  from 
    (`guias` join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) 
  where 
    ((`guias`.`Anulada` = 0) and (`guias`.`GuiFac` = 0) and (`guias`.`Facturada` = 0) and (`guias`.`TipoCobro` = 3));

#
# Definition for the `sql_ilp_imprimir_lista` view : 
#

DROP VIEW IF EXISTS `sql_ilp_imprimir_lista`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_ilp_imprimir_lista AS 
  select 
    `listasprecios`.`NmListaPrecios` AS `NmListaPrecios`,
    `listasprecios`.`FhVencimiento` AS `FhVencimiento`,
    `listaspreciosciudades`.`IdListaPrecios` AS `IdListaPrecios`,
    `listaspreciosciudades`.`IdCiudad` AS `IdCiudad`,
    `listaspreciosciudades`.`IdProducto` AS `IdProducto`,
    `listaspreciosciudades`.`VrKilo` AS `VrKilo`,
    `listaspreciosciudades`.`VrUnidad` AS `VrUnidad`,
    `listaspreciosciudades`.`VrTonelada` AS `VrTonelada`,
    `listaspreciosciudades`.`KTope` AS `KTope`,
    `listaspreciosciudades`.`VrKTope` AS `VrKTope`,
    `listaspreciosciudades`.`VrKAdicional` AS `VrKAdicional`,
    `listaspreciosciudades`.`Minimos` AS `Minimos`,
    `ciudades`.`NmCiudad` AS `NmCiudad`,
    `departamentos`.`NmDepartamento` AS `NmDepartamento`,
    `ciudades`.`IdDepartamento` AS `IdDepartamento`,
    `ciudades`.`Reexpedicion` AS `Reexpedicion`,
    `productos`.`NmProducto` AS `NmProducto`,
    `informacionempresa`.`Nit` AS `Nit`,
    `informacionempresa`.`Nombre` AS `Nombre`,
    `informacionempresa`.`Direccion` AS `Direccion`,
    `informacionempresa`.`Telefono` AS `Telefono`,
    `informacionempresa`.`Logo` AS `Logo` 
  from 
    (((((`listaspreciosciudades` left join `listasprecios` on((`listaspreciosciudades`.`IdListaPrecios` = `listasprecios`.`IdListaPrecios`))) left join `productos` on((`listaspreciosciudades`.`IdProducto` = `productos`.`IdProducto`))) left join `ciudades` on((`listaspreciosciudades`.`IdCiudad` = `ciudades`.`IdCiudad`))) left join `departamentos` on((`ciudades`.`IdDepartamento` = `departamentos`.`IdDepartamento`))) join `informacionempresa`);

#
# Definition for the `sql_im_aseguradora` view : 
#

DROP VIEW IF EXISTS `sql_im_aseguradora`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_aseguradora AS 
  select 
    `despachos`.`IdVehiculo` AS `IdVehiculo`,
    count(`despachos`.`OrdDespacho`) AS `NroDespachos`,
    `vehiculos`.`Modelo` AS `Modelo`,
    `vehiculos`.`Serie` AS `Serie`,
    `despachos`.`FhExpedicion` AS `FhExpedicion`,
    concat(`propietario`.`Nombre`,_latin1' ',`propietario`.`Apellido1`,_latin1' ',`propietario`.`Apellido2`) AS `NmPropietario`,
    concat(`tenedor`.`Nombre`,_latin1' ',`tenedor`.`Apellido1`,_latin1' ',`tenedor`.`Apellido2`) AS `NmTenedor`,
    sum(`despachos`.`Unidades`) AS `TUnidades`,
    sum(`despachos`.`KilosReales`) AS `TKilosReales`,
    sum(`despachos`.`Remesas`) AS `TRemesas` 
  from 
    (((`despachos` left join `vehiculos` on((`despachos`.`IdVehiculo` = `vehiculos`.`IdPlaca`))) left join `terceros` `propietario` on((`vehiculos`.`IdPropietario` = `propietario`.`IDTercero`))) left join `terceros` `tenedor` on((`vehiculos`.`IdTenedor` = `tenedor`.`IDTercero`))) 
  where 
    (`despachos`.`FhExpedicion` >= _latin1'2010-02-01') 
  group by 
    `despachos`.`IdVehiculo`,`vehiculos`.`Modelo`,`vehiculos`.`Serie`;

#
# Definition for the `sql_im_contraentregas` view : 
#

DROP VIEW IF EXISTS `sql_im_contraentregas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_contraentregas AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `guias`.`IdCliente` AS `IdCliente`,
    `guias`.`DocCliente` AS `DocCliente`,
    `guias`.`NmDestinatario` AS `NmDestinatario`,
    `guias`.`IdCiuDestino` AS `IdCiuDestino`,
    `ciudades`.`NmCiudad` AS `NmCiudad`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `guias`.`VrDeclarado` AS `VrDeclarado`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrManejo` AS `VrManejo`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosReales` AS `KilosReales`,
    `guias`.`IdDespacho` AS `IdDespacho`,
    `guias`.`Cuenta` AS `Cuenta`,
    `guias`.`Cliente` AS `Cliente`,
    `guias`.`Recaudo` AS `Recaudo`,
    `guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,
    `guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,
    `guias`.`Anulada` AS `Anulada`,
    `guias`.`TipoCobro` AS `TipoCobro`,
    `informacionempresa`.`Id` AS `CodEmpresa`,
    `informacionempresa`.`Nit` AS `NitEmpresa`,
    `informacionempresa`.`Nombre` AS `NombreEmpresa`,
    `informacionempresa`.`Direccion` AS `DireccionEmpresa`,
    `informacionempresa`.`Telefono` AS `TelefonoEmpresa`,
    `informacionempresa`.`Logo` AS `Logo`,
    `informacionempresa`.`Email` AS `EmailEmpresa`,
    `guias`.`Abonos` AS `Abonos` 
  from 
    ((`guias` join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) join `informacionempresa`) 
  where 
    ((`guias`.`Anulada` = 0) and ((`guias`.`TipoCobro` = 2) or (`guias`.`Recaudo` <> 0)));

#
# Definition for the `sql_im_correcciones` view : 
#

DROP VIEW IF EXISTS `sql_im_correcciones`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_correcciones AS 
  select 
    `correcciones`.`IdCorreccion` AS `IdCorreccion`,
    `correcciones`.`GuiaCorregida` AS `GuiaCorregida`,
    `correcciones`.`FechaCorreccion` AS `FechaCorreccion`,
    `correcciones`.`CuentaC` AS `CuentaC`,
    `correcciones`.`IdUsuarioCorreccion` AS `IdUsuarioCorreccion`,
    `correcciones`.`IdTpServicio` AS `IdTpServicio`,
    `correcciones`.`VrDeclaradoC` AS `VrDeclaradoC`,
    `correcciones`.`VrFleteC` AS `VrFleteC`,
    `correcciones`.`VrManejoC` AS `VrManejoC`,
    `correcciones`.`GuiaFacC` AS `GuiaFacC`,
    `correcciones`.`KilosRealesC` AS `KilosRealesC`,
    `correcciones`.`KilosVolumenC` AS `KilosVolumenC`,
    `correcciones`.`KilosFacturadosC` AS `KilosFacturadosC`,
    `correcciones`.`UnidadesC` AS `UnidadesC`,
    `correcciones`.`IdTpCtaFleteC` AS `IdTpCtaFleteC`,
    `correcciones`.`IdTpCtaManejoC` AS `IdTpCtaManejoC`,
    `correcciones`.`Comentarios` AS `Comentarios`,
    `correcciones`.`IdCiuDestinoC` AS `IdCiuDestinoC`,
    `correcciones`.`DocClienteC` AS `DocClienteC`,
    `correcciones`.`RecaudoC` AS `RecaudoC`,
    `guias`.`Cuenta` AS `Cuenta`,
    `guias`.`Cliente` AS `Cliente` 
  from 
    (`correcciones` left join `guias` on((`correcciones`.`GuiaCorregida` = `guias`.`Guia`)));

#
# Definition for the `sql_im_despachospendientesabiertos` view : 
#

DROP VIEW IF EXISTS `sql_im_despachospendientesabiertos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_despachospendientesabiertos AS 
  select 
    `despachos`.`IdManifiesto` AS `IdManifiesto`,
    `despachos`.`OrdDespacho` AS `OrdDespacho`,
    `despachos`.`Tipo` AS `Tipo`,
    `despachos`.`FhExpedicion` AS `FhExpedicion`,
    `despachos`.`FhCumplidos` AS `FhCumplidos`,
    `despachos`.`IdVehiculo` AS `IdVehiculo`,
    `despachos`.`IdConductor` AS `IdConductor`,
    `despachos`.`IdRuta` AS `IdRuta`,
    `despachos`.`IdCiudadOrigen` AS `IdCiudadOrigen`,
    `despachos`.`IdCiudadDestino` AS `IdCiudadDestino`,
    `despachos`.`Estado` AS `Estado`,
    `despachos`.`Remesas` AS `Remesas`,
    `despachos`.`Unidades` AS `Unidades`,
    `despachos`.`KilosReales` AS `KilosReales`,
    `despachos`.`KilosVol` AS `KilosVol`,
    `despachos`.`FleteCobra` AS `FleteCobra`,
    `despachos`.`ManejoCobra` AS `ManejoCobra`,
    `despachos`.`FleteCE` AS `FleteCE`,
    `despachos`.`ManejoCE` AS `ManejoCE`,
    `despachos`.`VrFlete` AS `VrFlete`,
    `despachos`.`VrAnticipo` AS `VrAnticipo`,
    `despachos`.`VrDctoPapeleria` AS `VrDctoPapeleria`,
    `despachos`.`VrDctoSeguridad` AS `VrDctoSeguridad`,
    `despachos`.`VrDctoCargue` AS `VrDctoCargue`,
    `despachos`.`VrDctoEstampilla` AS `VrDctoEstampilla`,
    `despachos`.`VrFleteAdicional` AS `VrFleteAdicional`,
    `despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,
    `despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,
    `despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,
    `despachos`.`SaldoDesp` AS `SaldoDesp`,
    `despachos`.`TotalViaje` AS `TotalViaje`,
    `despachos`.`CO` AS `CO`,
    `despachos`.`Observaciones` AS `Observaciones`,
    `despachos`.`TRecaudo` AS `TRecaudo`,
    `despachos`.`Cerrado` AS `Cerrado` 
  from 
    `despachos` 
  where 
    ((`despachos`.`Estado` = _latin1'D') and (`despachos`.`Tipo` = 1));

#
# Definition for the `sql_im_despachosporcerrar` view : 
#

DROP VIEW IF EXISTS `sql_im_despachosporcerrar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_despachosporcerrar AS 
  select 
    `despachos`.`IdManifiesto` AS `IdManifiesto`,
    `despachos`.`OrdDespacho` AS `OrdDespacho`,
    `despachos`.`Tipo` AS `Tipo`,
    `despachos`.`FhExpedicion` AS `FhExpedicion`,
    `despachos`.`FhCumplidos` AS `FhCumplidos`,
    `despachos`.`IdVehiculo` AS `IdVehiculo`,
    `despachos`.`IdConductor` AS `IdConductor`,
    `despachos`.`IdRuta` AS `IdRuta`,
    `despachos`.`IdCiudadOrigen` AS `IdCiudadOrigen`,
    `despachos`.`IdCiudadDestino` AS `IdCiudadDestino`,
    `despachos`.`Estado` AS `Estado`,
    `despachos`.`Remesas` AS `Remesas`,
    `despachos`.`Unidades` AS `Unidades`,
    `despachos`.`KilosReales` AS `KilosReales`,
    `despachos`.`KilosVol` AS `KilosVol`,
    `despachos`.`FleteCobra` AS `FleteCobra`,
    `despachos`.`ManejoCobra` AS `ManejoCobra`,
    `despachos`.`FleteCE` AS `FleteCE`,
    `despachos`.`ManejoCE` AS `ManejoCE`,
    `despachos`.`VrFlete` AS `VrFlete`,
    `despachos`.`VrAnticipo` AS `VrAnticipo`,
    `despachos`.`VrDctoPapeleria` AS `VrDctoPapeleria`,
    `despachos`.`VrDctoSeguridad` AS `VrDctoSeguridad`,
    `despachos`.`VrDctoCargue` AS `VrDctoCargue`,
    `despachos`.`VrDctoEstampilla` AS `VrDctoEstampilla`,
    `despachos`.`VrFleteAdicional` AS `VrFleteAdicional`,
    `despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,
    `despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,
    `despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,
    `despachos`.`SaldoDesp` AS `SaldoDesp`,
    `despachos`.`TotalViaje` AS `TotalViaje`,
    `despachos`.`CO` AS `CO`,
    `despachos`.`Observaciones` AS `Observaciones`,
    `despachos`.`TRecaudo` AS `TRecaudo`,
    `despachos`.`VrDeclaradoTotal` AS `VrDeclaradoTotal`,
    `despachos`.`ManElectronico` AS `ManElectronico`,
    `despachos`.`NmConductor` AS `NmConductor`,
    `despachos`.`Cerrado` AS `Cerrado`,
    `despachos`.`Liquidado` AS `Liquidado`,
    `despachos`.`IdUsuario` AS `IdUsuario`,
    `despachos`.`IdEmpresa` AS `IdEmpresa`,
    `despachos`.`Exportado` AS `Exportado`,
    `despachos`.`LugarPago` AS `LugarPago`,
    `despachos`.`FhPagoSaldo` AS `FhPagoSaldo`,
    `despachos`.`PagoCargue` AS `PagoCargue`,
    `despachos`.`PagoDescargue` AS `PagoDescargue`,
    `despachos`.`Estado1` AS `Estado1`,
    `despachos`.`AbonosCE` AS `AbonosCE`,
    `despachos`.`FletesNoCancelados` AS `FletesNoCancelados`,
    `rutas`.`NmRuta` AS `NmRuta` 
  from 
    (`despachos` left join `rutas` on((`despachos`.`IdRuta` = `rutas`.`IdRuta`))) 
  where 
    (`despachos`.`Cerrado` = 0);

#
# Definition for the `sql_im_digitacion` view : 
#

DROP VIEW IF EXISTS `sql_im_digitacion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_im_digitacion AS 
  select 
    count(`guias`.`Guia`) AS `NroGuias`,
    `usuarios`.`NmUsuario` AS `Usuario`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega` 
  from 
    (`guias` left join `usuarios` on((`guias`.`IdUsuario` = `usuarios`.`IDUsuario`))) 
  where 
    (`guias`.`FhEntradaBodega` >= _latin1'2012/10/01') 
  group by 
    `usuarios`.`NmUsuario`,`guias`.`FhEntradaBodega`;

#
# Definition for the `sql_im_flec_vs_flep` view : 
#

DROP VIEW IF EXISTS `sql_im_flec_vs_flep`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_im_flec_vs_flep AS 
  select 
    `despachos`.`IdManifiesto` AS `IdManifiesto`,
    `despachos`.`OrdDespacho` AS `OrdDespacho`,
    `despachos`.`Tipo` AS `Tipo`,
    `despachos`.`FhExpedicion` AS `FhExpedicion`,
    `despachos`.`FhCumplidos` AS `FhCumplidos`,
    `despachos`.`IdVehiculo` AS `IdVehiculo`,
    `despachos`.`IdConductor` AS `IdConductor`,
    `despachos`.`IdRuta` AS `IdRuta`,
    `despachos`.`IdCiudadOrigen` AS `IdCiudadOrigen`,
    `despachos`.`IdCiudadDestino` AS `IdCiudadDestino`,
    `despachos`.`Estado` AS `Estado`,
    `despachos`.`Remesas` AS `Remesas`,
    `despachos`.`Unidades` AS `Unidades`,
    `despachos`.`KilosReales` AS `KilosReales`,
    `despachos`.`KilosVol` AS `KilosVol`,
    `despachos`.`FleteCobra` AS `FleteCobra`,
    `despachos`.`ManejoCobra` AS `ManejoCobra`,
    `despachos`.`FleteCE` AS `FleteCE`,
    `despachos`.`ManejoCE` AS `ManejoCE`,
    `despachos`.`VrFlete` AS `VrFlete`,
    `despachos`.`VrAnticipo` AS `VrAnticipo`,
    `despachos`.`VrDctoPapeleria` AS `VrDctoPapeleria`,
    `despachos`.`VrDctoSeguridad` AS `VrDctoSeguridad`,
    `despachos`.`VrDctoCargue` AS `VrDctoCargue`,
    `despachos`.`VrDctoEstampilla` AS `VrDctoEstampilla`,
    `despachos`.`VrFleteAdicional` AS `VrFleteAdicional`,
    `despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,
    `despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,
    `despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,
    `despachos`.`SaldoDesp` AS `SaldoDesp`,
    `despachos`.`TotalViaje` AS `TotalViaje`,
    `despachos`.`CO` AS `CO`,
    `despachos`.`Observaciones` AS `Observaciones`,
    `despachos`.`TRecaudo` AS `TRecaudo`,
    `despachos`.`VrDeclaradoTotal` AS `VrDeclaradoTotal`,
    `despachos`.`NmConductor` AS `NmConductor`,
    `despachos`.`Cerrado` AS `Cerrado`,
    `despachos`.`Liquidado` AS `Liquidado`,
    `despachos`.`IdUsuario` AS `IdUsuario`,
    `despachos`.`IdEmpresa` AS `IdEmpresa`,
    `despachos`.`Exportado` AS `Exportado`,
    `ciudades`.`NmCiudad` AS `NmCiudad`,
    `rutas`.`NmRuta` AS `NmRuta` 
  from 
    ((`despachos` left join `ciudades` on((`despachos`.`IdCiudadDestino` = `ciudades`.`IdCiudad`))) left join `rutas` on((`despachos`.`IdRuta` = `rutas`.`IdRuta`))) 
  where 
    (`despachos`.`Estado` <> _latin1'A');

#
# Definition for the `sql_im_formato_guia_factura` view : 
#

DROP VIEW IF EXISTS `sql_im_formato_guia_factura`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_im_formato_guia_factura AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `informacionempresa`.`Nit` AS `NitEmpresa`,
    `informacionempresa`.`Nombre` AS `NombreEmpresa`,
    `informacionempresa`.`Direccion` AS `DireccionEmpresa`,
    `informacionempresa`.`Telefono` AS `TelefonoEmpresa`,
    `informacionempresa`.`Logo` AS `Logo`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    `guias`.`Cuenta` AS `Cuenta`,
    `terceros`.`Direccion` AS `Direccion`,
    `terceros`.`Telefono` AS `Telefono`,
    `terceros`.`IdCiudad` AS `IdCiudad`,
    `ciudadcliente`.`NmCiudad` AS `CiudadCliente`,
    `terceros`.`Email` AS `Email`,
    `terceros`.`Plazo` AS `Plazo`,
    `formas_pago`.`NmFormaPago` AS `NmFormaPago`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrManejo` AS `VrManejo`,
    `guias`.`VrDeclarado` AS `VrDeclarado`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosFacturados` AS `KilosFacturados`,
    `ciudaddestino`.`NmCiudad` AS `CiudadDestino`,
    `guias`.`DocCliente` AS `DocCliente`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    (`guias`.`VrFlete` + `guias`.`VrManejo`) AS `Total`,
    `guias`.`NmDestinatario` AS `NmDestinatario`,
    `guias`.`DirDestinatario` AS `DirDestinatario`,
    `guias`.`TelDestinatario` AS `TelDestinatario` 
  from 
    (((((`guias` left join `terceros` on((`guias`.`Cuenta` = `terceros`.`IDTercero`))) left join `ciudades` `ciudadcliente` on((`terceros`.`IdCiudad` = `ciudadcliente`.`IdCiudad`))) left join `formas_pago` on((`terceros`.`IdFormaPago` = `formas_pago`.`IdFormaPago`))) left join `ciudades` `ciudaddestino` on((`guias`.`IdCiuDestino` = `ciudaddestino`.`IdCiudad`))) join `informacionempresa`);

#
# Definition for the `sql_im_formato_liquidar_despacho2` view : 
#

DROP VIEW IF EXISTS `sql_im_formato_liquidar_despacho2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_im_formato_liquidar_despacho2 AS 
  select 
    `despachos`.`IdManifiesto` AS `IdManifiesto`,
    `despachos`.`OrdDespacho` AS `OrdDespacho`,
    `despachos`.`Tipo` AS `Tipo`,
    `despachos`.`FhExpedicion` AS `FhExpedicion`,
    `despachos`.`FhCumplidos` AS `FhCumplidos`,
    `despachos`.`IdVehiculo` AS `IdVehiculo`,
    `despachos`.`IdConductor` AS `IdConductor`,
    `despachos`.`IdRuta` AS `IdRuta`,
    `despachos`.`IdCiudadOrigen` AS `IdCiudadOrigen`,
    `despachos`.`IdCiudadDestino` AS `IdCiudadDestino`,
    `despachos`.`Estado` AS `Estado`,
    `despachos`.`Remesas` AS `Remesas`,
    `despachos`.`Unidades` AS `Unidades`,
    `despachos`.`KilosReales` AS `KilosReales`,
    `despachos`.`KilosVol` AS `KilosVol`,
    `despachos`.`FleteCobra` AS `FleteCobra`,
    `despachos`.`ManejoCobra` AS `ManejoCobra`,
    `despachos`.`FleteCE` AS `FleteCE`,
    `despachos`.`ManejoCE` AS `ManejoCE`,
    `despachos`.`VrFlete` AS `VrFlete`,
    `despachos`.`VrAnticipo` AS `VrAnticipo`,
    `despachos`.`VrDctoPapeleria` AS `VrDctoPapeleria`,
    `despachos`.`VrDctoSeguridad` AS `VrDctoSeguridad`,
    `despachos`.`VrDctoCargue` AS `VrDctoCargue`,
    `despachos`.`VrDctoEstampilla` AS `VrDctoEstampilla`,
    `despachos`.`VrFleteAdicional` AS `VrFleteAdicional`,
    `despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,
    `despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,
    `despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,
    `despachos`.`SaldoDesp` AS `SaldoDesp`,
    `despachos`.`TotalViaje` AS `TotalViaje`,
    `despachos`.`CO` AS `CO`,
    `despachos`.`Observaciones` AS `Observaciones`,
    `despachos`.`TRecaudo` AS `TRecaudo`,
    `despachos`.`VrDeclaradoTotal` AS `VrDeclaradoTotal`,
    `despachos`.`ManElectronico` AS `ManElectronico`,
    `despachos`.`NmConductor` AS `NmConductor`,
    `despachos`.`Cerrado` AS `Cerrado`,
    `despachos`.`Liquidado` AS `Liquidado`,
    `despachos`.`IdUsuario` AS `IdUsuario`,
    `despachos`.`IdEmpresa` AS `IdEmpresa`,
    `despachos`.`Exportado` AS `Exportado`,
    `despachos`.`LugarPago` AS `LugarPago`,
    `despachos`.`FhPagoSaldo` AS `FhPagoSaldo`,
    `despachos`.`PagoCargue` AS `PagoCargue`,
    `despachos`.`PagoDescargue` AS `PagoDescargue`,
    `despachos`.`Estado1` AS `Estado1`,
    `despachos`.`AbonosCE` AS `AbonosCE`,
    `despachos`.`FletesNoCancelados` AS `FletesNoCancelados`,
    `despachos`.`EnviadoMT` AS `EnviadoMT`,
    `despachos`.`EnviadoGuia` AS `EnviadoGuia`,
    `origen`.`NmCiudad` AS `OrigenViaje`,
    `destino`.`NmCiudad` AS `DestinoViaje`,
    `despachos`.`TotalCE` AS `TotalCE`,
    `despachos`.`FleteContado` AS `FleteContado`,
    `despachos`.`ManejoContado` AS `ManejoContado`,
    `despachos`.`ManejoCorriente` AS `ManejoCorriente`,
    `despachos`.`FleteCorriente` AS `FleteCorriente`,
    `despachos`.`FleteCETotal` AS `FleteCETotal`,
    `despachos`.`ManejoCETotal` AS `ManejoCETotal` 
  from 
    ((`despachos` left join `ciudades` `origen` on((`despachos`.`IdCiudadOrigen` = `origen`.`IdCiudad`))) left join `ciudades` `destino` on((`despachos`.`IdCiudadDestino` = `destino`.`IdCiudad`)));

#
# Definition for the `sql_im_guias` view : 
#

DROP VIEW IF EXISTS `sql_im_guias`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_guias AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `ciudad_destino`.`NmCiudad` AS `NmCiudad`,
    `guias`.`IdCiuDestino` AS `IdCiuDestino`,
    `ruta_guia`.`NmRuta` AS `NmRuta`,
    `guias`.`IdRuta` AS `IdRuta`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `guias`.`VrDeclarado` AS `VrDeclarado`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrManejo` AS `VrManejo`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosReales` AS `KilosReales`,
    `guias`.`KilosVolumen` AS `KilosVolumen`,
    `guias`.`KilosFacturados` AS `KilosFacturados`,
    `guias`.`Cuenta` AS `Cuenta`,
    `guias`.`Recaudo` AS `Recaudo`,
    `guias`.`Despachada` AS `Despachada`,
    `guias`.`Entregada` AS `Entregada`,
    `guias`.`Descargada` AS `Descargada`,
    `guias`.`Anulada` AS `Anulada`,
    `guias`.`TpServicio` AS `TpServicio`,
    `guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,
    `guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,
    `guias`.`Cliente` AS `Cliente`,
    `guias`.`Abonos` AS `Abonos` 
  from 
    ((`guias` left join `rutas` `ruta_guia` on((`guias`.`IdRuta` = `ruta_guia`.`IdRuta`))) left join `ciudades` `ciudad_destino` on((`guias`.`IdCiuDestino` = `ciudad_destino`.`IdCiudad`))) 
  where 
    (`guias`.`Anulada` = 0);

#
# Definition for the `sql_im_guias_factura` view : 
#

DROP VIEW IF EXISTS `sql_im_guias_factura`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_im_guias_factura AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `guias`.`Cuenta` AS `Cuenta`,
    `guias`.`Cliente` AS `Cliente`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosFacturados` AS `KilosFacturados`,
    `guias`.`VrDeclarado` AS `VrDeclarado`,
    `guias`.`Recaudo` AS `Recaudo`,
    `guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,
    `guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrManejo` AS `VrManejo`,
    `guias`.`Abonos` AS `Abonos`,
    `guias`.`COIng` AS `COIng`,
    `centrosoperaciones`.`NmPuntoOperaciones` AS `NmPuntoOperaciones`,
    `guias`.`TipoCobro` AS `TipoCobro`,
    `tipos_cobro`.`NmTipoCobro` AS `NmTipoCobro` 
  from 
    ((`guias` left join `centrosoperaciones` on((`guias`.`COIng` = `centrosoperaciones`.`IDPO`))) left join `tipos_cobro` on((`guias`.`TipoCobro` = `tipos_cobro`.`IdTipoCobro`))) 
  where 
    ((`guias`.`TipoCobro` = 1) or (`guias`.`TipoCobro` = 2)) 
  order by 
    `guias`.`FhEntradaBodega`;

#
# Definition for the `sql_im_impanuncio` view : 
#

DROP VIEW IF EXISTS `sql_im_impanuncio`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_impanuncio AS 
  select 
    `anuncios`.`IdAnuncio` AS `IdAnuncio`,
    `anuncios`.`FhAnuncio` AS `FhAnuncio`,
    `anuncios`.`IdCliente` AS `IdCliente`,
    `anuncios`.`Anunciante` AS `Anunciante`,
    `anuncios`.`DirAnunciante` AS `DirAnunciante`,
    `anuncios`.`TelAnunciante` AS `TelAnunciante`,
    `anuncios`.`IdRuta` AS `IdRuta`,
    `anuncios`.`Asignacion` AS `Asignacion`,
    `anuncios`.`FhRecogida` AS `FhRecogida`,
    `anuncios`.`Unidades` AS `Unidades`,
    `anuncios`.`KilosReales` AS `KilosReales`,
    `anuncios`.`KilosVol` AS `KilosVol`,
    `anuncios`.`Comentarios` AS `Comentarios`,
    `anuncios`.`Programada` AS `Programada`,
    `anuncios`.`Estado` AS `Estado`,
    `anuncios`.`Efectiva` AS `Efectiva`,
    `anuncios`.`TiempoEfectiva` AS `TiempoEfectiva`,
    `anuncios`.`Coperaciones` AS `Coperaciones`,
    `anuncios`.`Orden` AS `Orden`,
    `anuncios`.`IdConductor` AS `IdConductor`,
    `anuncios`.`IdVehiculo` AS `IdVehiculo`,
    `conductores`.`Nombre` AS `NmConductor`,
    `conductores`.`Apellido1` AS `Apellido1Conductor`,
    `conductores`.`Apellido2` AS `Apellido2Conductor`,
    `rutasurbanas`.`NmRuta` AS `NmRuta`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    `colores`.`NmColor` AS `NmColor`,
    `marcas`.`NmMarca` AS `NmMarca`,
    `vehiculos`.`Modelo` AS `Modelo`,
    `conductores`.`LicenciaConductor` AS `LicenciaConductor`,
    `anuncios`.`IdEmpresa` AS `IdEmpresa`,
    `informacionempresa`.`Logo` AS `Logo`,
    `informacionempresa`.`Nombre` AS `Nombre`,
    `informacionempresa`.`Direccion` AS `Direccion`,
    `informacionempresa`.`Telefono` AS `Telefono`,
    `informacionempresa`.`Nit` AS `Nit` 
  from 
    (((((((`anuncios` left join `conductores` on((`anuncios`.`IdConductor` = `conductores`.`IdConductor`))) left join `rutasurbanas` on((`anuncios`.`IdRuta` = `rutasurbanas`.`IdRutaRec`))) left join `terceros` on((`anuncios`.`IdCliente` = `terceros`.`IDTercero`))) left join `vehiculos` on((`anuncios`.`IdVehiculo` = `vehiculos`.`IdPlaca`))) left join `colores` on((`vehiculos`.`IdColor` = `colores`.`IdColor`))) left join `marcas` on((`vehiculos`.`IdMarca` = `marcas`.`IdMarca`))) left join `informacionempresa` on((`anuncios`.`IdEmpresa` = `informacionempresa`.`Id`)));

#
# Definition for the `sql_im_impguia` view : 
#

DROP VIEW IF EXISTS `sql_im_impguia`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_im_impguia AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `guias`.`CR` AS `CR`,
    `guias`.`DocCliente` AS `DocCliente`,
    `guias`.`NmDestinatario` AS `NmDestinatario`,
    `guias`.`DirDestinatario` AS `DirDestinatario`,
    `guias`.`TelDestinatario` AS `TelDestinatario`,
    `guias`.`IdCiuDestino` AS `IdCiuDestino`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrManejo` AS `VrManejo`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosReales` AS `KilosReales`,
    `guias`.`Observaciones` AS `Observaciones`,
    `guias`.`Cuenta` AS `Cuenta`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    `terceros`.`Direccion` AS `Direccion`,
    `terceros`.`Telefono` AS `Telefono`,
    `guias`.`TpServicio` AS `TpServicio`,
    `guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,
    `guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,
    `guias`.`IdUsuario` AS `IdUsuario`,
    `origen`.`NmCiudad` AS `NmCiuOrigen`,
    `destino`.`NmCiudad` AS `NmCiuDestino`,
    `informacionempresa`.`Nit` AS `NitEmpresa`,
    `informacionempresa`.`Nombre` AS `NmEmpresa`,
    `informacionempresa`.`Direccion` AS `DirEmpresa`,
    `informacionempresa`.`Telefono` AS `TelEmpresa`,
    `informacionempresa`.`Logo` AS `Logo`,
    `guias`.`IdEmpresa` AS `IdEmpresa`,
    `guias`.`Abonos` AS `Abonos`,
    `tipos_cobro`.`NmTipoCobro` AS `NmTipoCobro`,
    `guias`.`CodigoBarras` AS `CodigoBarras`,
    `guias`.`TipoCobro` AS `TipoCobro`,
    `guias`.`GuiaTipo` AS `GuiaTipo`,
    `guias`.`Recaudo` AS `Recaudo`,
    `guias`.`GuiFac` AS `GuiFac`,
    `guias`.`EmpaqueRef` AS `EmpaqueRef`,
    `terceros`.`Celular` AS `Celular`,
    `guias`.`VrDeclarado` AS `VrDeclarado` 
  from 
    (((((`guias` left join `terceros` on((`guias`.`Cuenta` = `terceros`.`IDTercero`))) left join `ciudades` `destino` on((`guias`.`IdCiuDestino` = `destino`.`IdCiudad`))) left join `ciudades` `origen` on((`guias`.`IdCiuOrigen` = `origen`.`IdCiudad`))) left join `informacionempresa` on((`guias`.`IdEmpresa` = `informacionempresa`.`Id`))) left join `tipos_cobro` on((`guias`.`TipoCobro` = `tipos_cobro`.`IdTipoCobro`)));

#
# Definition for the `sql_im_impguia_clientes` view : 
#

DROP VIEW IF EXISTS `sql_im_impguia_clientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_im_impguia_clientes AS 
  select 
    `guias_cliente`.`Guia` AS `Guia`,
    `guias_cliente`.`IdTercero` AS `IdTercero`,
    `guias_cliente`.`CodigoBarras` AS `CodigoBarras`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    `terceros`.`Direccion` AS `Direccion`,
    `terceros`.`Telefono` AS `Telefono`,
    `informacionempresa`.`Id` AS `Id`,
    `informacionempresa`.`Nit` AS `Nit`,
    `informacionempresa`.`Nombre` AS `Nombre`,
    `informacionempresa`.`Direccion` AS `DireccionEmpresa`,
    `informacionempresa`.`Telefono` AS `TelefonoEmpresa`,
    `informacionempresa`.`Logo` AS `Logo`,
    `informacionempresa`.`NroPoliza` AS `NroPoliza`,
    `informacionempresa`.`NitAseguradora` AS `NitAseguradora`,
    `informacionempresa`.`VencePoliza` AS `VencePoliza`,
    `informacionempresa`.`DireccionTerritorial` AS `DireccionTerritorial`,
    `informacionempresa`.`Email` AS `Email`,
    `informacionempresa`.`Aseguradora` AS `Aseguradora`,
    `informacionempresa`.`CodRegionalMin` AS `CodRegionalMin`,
    `informacionempresa`.`CodEmpresaMin` AS `CodEmpresaMin`,
    `informacionempresa`.`ResolucionMinTransporte` AS `ResolucionMinTransporte` 
  from 
    ((`guias_cliente` join `terceros` on((`terceros`.`IDTercero` = `guias_cliente`.`IdTercero`))) join `informacionempresa`);

#
# Definition for the `sql_im_impmanifiesto` view : 
#

DROP VIEW IF EXISTS `sql_im_impmanifiesto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_im_impmanifiesto AS 
  select 
    `despachos`.`IdManifiesto` AS `IdManifiesto`,
    `despachos`.`OrdDespacho` AS `OrdDespacho`,
    `despachos`.`FhExpedicion` AS `FhExpedicion`,
    `ciudadorigen`.`NmCiudad` AS `NmCiudadOrigen`,
    `ciudaddestino`.`NmCiudad` AS `NmCiudadDestino`,
    `vehiculos`.`IdPlaca` AS `IdPlaca`,
    `vehiculos`.`Modelo` AS `Modelo`,
    `vehiculos`.`ModeloRep` AS `ModeloRep`,
    `vehiculos`.`Serie` AS `Serie`,
    `vehiculos`.`RegNalCarga` AS `RegNalCarga`,
    `vehiculos`.`VehConfiguracion` AS `VehConfiguracion`,
    `vehiculos`.`PesoVacio` AS `PesoVacio`,
    `vehiculos`.`Soat` AS `Soat`,
    `aseguradora`.`RazonSocial` AS `NmAseguradora`,
    `vehiculos`.`VenceSoat` AS `VenceSoat`,
    `vehiculos`.`PlacaRemolque` AS `PlacaRemolque`,
    `propietario`.`RazonSocial` AS `NmPropietario`,
    `tenedor`.`RazonSocial` AS `NmTenedor`,
    `propietario`.`IDTercero` AS `IdPropietario`,
    `tenedor`.`IDTercero` AS `IdTenedor`,
    `propietario`.`Direccion` AS `DirPropietario`,
    `tenedor`.`Direccion` AS `DirTenedor`,
    `tenedor`.`Telefono` AS `TelTenedor`,
    `propietario`.`Telefono` AS `TelPropietario`,
    `ciudadtenedor`.`NmCiudad` AS `CiudadTenedor`,
    `ciudadpropietario`.`NmCiudad` AS `CiudadPropietario`,
    `conductores`.`Nombre` AS `Nombre`,
    `conductores`.`Apellido1` AS `Apellido1`,
    `conductores`.`Apellido2` AS `Apellido2`,
    `conductores`.`IdConductor` AS `IdConductor`,
    `conductores`.`Direccion` AS `Direccion`,
    `conductores`.`Categoria` AS `Categoria`,
    `despachos`.`VrFlete` AS `VrFlete`,
    `despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,
    `despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,
    `despachos`.`VrAnticipo` AS `VrAnticipo`,
    `despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,
    `informacionempresa`.`Logo` AS `Logo`,
    `informacionempresa`.`NroPoliza` AS `NroPoliza`,
    `informacionempresa`.`VencePoliza` AS `VencePoliza`,
    `despachos`.`NmConductor` AS `NmConductor`,
    `despachos`.`Observaciones` AS `Observaciones`,
    `despachos`.`TotalViaje` AS `TotalViaje`,
    `carrocerias`.`NmCarroceria` AS `NmCarroceria`,
    `departamentoorigen`.`NmDepartamento` AS `DepartamentoOrigen`,
    `departamentosdestino`.`NmDepartamento` AS `DepartamentoDestino`,
    `despachos`.`PagoCargue` AS `PagoCargue`,
    `despachos`.`PagoDescargue` AS `PagoDescargue`,
    `despachos`.`FhPagoSaldo` AS `FhPagoSaldo`,
    `despachos`.`LugarPago` AS `LugarPago`,
    `informacionempresa`.`Aseguradora` AS `Aseguradora`,
    `despachos`.`ManElectronico` AS `ManElectronico`,
    `marcas`.`NmMarca` AS `NmMarca`,
    `colores`.`NmColor` AS `NmColor`,
    `lineas`.`NmLinea` AS `NmLinea`,
    `informacionempresa`.`Nit` AS `NitEmpresa`,
    `informacionempresa`.`Nombre` AS `NombreEmpresa`,
    `informacionempresa`.`Direccion` AS `DireccionEmpresa`,
    `informacionempresa`.`Telefono` AS `TelefonoEmpresa`,
    `informacionempresa`.`DireccionTerritorial` AS `DireccionTerritorial`,
    `informacionempresa`.`CodRegionalMin` AS `CodRegionalMin`,
    `informacionempresa`.`CodEmpresaMin` AS `CodEmpresaMin`,
    `informacionempresa`.`ResolucionMinTransporte` AS `ResolucionMinTransporte`,
    (`despachos`.`TotalCE` + `despachos`.`TRecaudo`) AS `TotalContraEntregas`,
    `despachos`.`Unidades` AS `TotalUnidades`,
    `despachos`.`KilosReales` AS `TotalKilosReales`,
    `despachos`.`Remesas` AS `Remesas`,
    `despachos`.`Unidades` AS `Unidades`,
    `despachos`.`TotalCE` AS `TotalCE` 
  from 
    ((((((((((((((((`despachos` left join `vehiculos` on((`despachos`.`IdVehiculo` = `vehiculos`.`IdPlaca`))) left join `ciudades` `ciudadorigen` on((`despachos`.`IdCiudadOrigen` = `ciudadorigen`.`IdCiudad`))) left join `ciudades` `ciudaddestino` on((`despachos`.`IdCiudadDestino` = `ciudaddestino`.`IdCiudad`))) left join `terceros` `aseguradora` on((`vehiculos`.`IdAseguradora` = `aseguradora`.`IDTercero`))) left join `terceros` `propietario` on((`vehiculos`.`IdPropietario` = `propietario`.`IDTercero`))) left join `terceros` `tenedor` on((`vehiculos`.`IdTenedor` = `tenedor`.`IDTercero`))) left join `ciudades` `ciudadtenedor` on((`tenedor`.`IdCiudad` = `ciudadtenedor`.`IdCiudad`))) left join `ciudades` `ciudadpropietario` on((`propietario`.`IdCiudad` = `ciudadpropietario`.`IdCiudad`))) left join `conductores` on((`despachos`.`IdConductor` = `conductores`.`IdConductor`))) left join `informacionempresa` on((`despachos`.`IdEmpresa` = `informacionempresa`.`Id`))) left join `carrocerias` on((`vehiculos`.`IdCarroceria` = `carrocerias`.`IdCarroceria`))) left join `departamentos` `departamentosdestino` on((`ciudaddestino`.`IdDepartamento` = `departamentosdestino`.`IdDepartamento`))) left join `departamentos` `departamentoorigen` on((`ciudadorigen`.`IdDepartamento` = `departamentoorigen`.`IdDepartamento`))) left join `marcas` on((`vehiculos`.`IdMarca` = `marcas`.`IdMarca`))) left join `colores` on((`vehiculos`.`IdColor` = `colores`.`IdColor`))) left join `lineas` on((`vehiculos`.`IdLinea` = `lineas`.`IdLinea`)));

#
# Definition for the `sql_im_impnovedadsolucionada` view : 
#

DROP VIEW IF EXISTS `sql_im_impnovedadsolucionada`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_impnovedadsolucionada AS 
  select 
    `novedades`.`ID` AS `ID`,
    `novedades`.`Guia` AS `Guia`,
    `novedades`.`IdNovedad` AS `IdNovedad`,
    `novedades`.`Comentarios` AS `Comentarios`,
    `novedades`.`UsuIng` AS `UsuIng`,
    `novedades`.`FHIngreso` AS `FHIngreso`,
    `novedades`.`FhNovedad` AS `FhNovedad`,
    `novedades`.`Solucion` AS `Solucion`,
    `novedades`.`UsuSol` AS `UsuSol`,
    `novedades`.`FhSolucion` AS `FhSolucion`,
    `novedades`.`Solucionada` AS `Solucionada`,
    `causalesnovedad`.`NmNovedad` AS `NmNovedad`,
    `usuarios`.`NmUsuario` AS `NmUsuario` 
  from 
    ((`novedades` join `causalesnovedad` on((`novedades`.`IdNovedad` = `causalesnovedad`.`IdNovedad`))) join `usuarios` on((`novedades`.`UsuSol` = `usuarios`.`IDUsuario`)));

#
# Definition for the `sql_im_imprimirmanifiesto` view : 
#

DROP VIEW IF EXISTS `sql_im_imprimirmanifiesto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_imprimirmanifiesto AS 
  select 
    `despachos`.`IdManifiesto` AS `IdManifiesto`,
    `despachos`.`OrdDespacho` AS `OrdDespacho`,
    `despachos`.`FhExpedicion` AS `FhExpedicion`,
    `ciudadorigen`.`NmCiudad` AS `NmCiudadOrigen`,
    `ciudaddestino`.`NmCiudad` AS `NmCiudadDestino`,
    `vehiculos`.`IdPlaca` AS `IdPlaca`,
    `vehiculos`.`Modelo` AS `Modelo`,
    `vehiculos`.`ModeloRep` AS `ModeloRep`,
    `vehiculos`.`Serie` AS `Serie`,
    `vehiculos`.`RegNalCarga` AS `RegNalCarga`,
    `vehiculos`.`VehConfiguracion` AS `VehConfiguracion`,
    `vehiculos`.`PesoVacio` AS `PesoVacio`,
    `vehiculos`.`Soat` AS `Soat`,
    `aseguradora`.`RazonSocial` AS `NmAseguradora`,
    `vehiculos`.`VenceSoat` AS `VenceSoat`,
    `vehiculos`.`PlacaRemolque` AS `PlacaRemolque`,
    `propietario`.`RazonSocial` AS `NmPropietario`,
    `tenedor`.`RazonSocial` AS `NmTenedor`,
    `propietario`.`IDTercero` AS `IdPropietario`,
    `tenedor`.`IDTercero` AS `IdTenedor`,
    `propietario`.`Direccion` AS `DirPropietario`,
    `tenedor`.`Direccion` AS `DirTenedor`,
    `tenedor`.`Telefono` AS `TelTenedor`,
    `propietario`.`Telefono` AS `TelPropietario`,
    `ciudadtenedor`.`NmCiudad` AS `CiudadTenedor`,
    `ciudadpropietario`.`NmCiudad` AS `CiudadPropietario`,
    `conductores`.`Nombre` AS `Nombre`,
    `conductores`.`Apellido1` AS `Apellido1`,
    `conductores`.`Apellido2` AS `Apellido2`,
    `conductores`.`IdConductor` AS `IdConductor`,
    `conductores`.`Direccion` AS `Direccion`,
    `conductores`.`Categoria` AS `Categoria`,
    `despachos`.`VrFlete` AS `VrFlete`,
    `despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,
    `despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,
    `despachos`.`VrAnticipo` AS `VrAnticipo`,
    `despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,
    `informacionempresa`.`Logo` AS `Logo`,
    `informacionempresa`.`NroPoliza` AS `NroPoliza`,
    `informacionempresa`.`VencePoliza` AS `VencePoliza`,
    `despachos`.`NmConductor` AS `NmConductor`,
    `despachos`.`Observaciones` AS `Observaciones`,
    `despachos`.`TotalViaje` AS `TotalViaje`,
    `carrocerias`.`NmCarroceria` AS `NmCarroceria`,
    `departamentoorigen`.`NmDepartamento` AS `DepartamentoOrigen`,
    `departamentosdestino`.`NmDepartamento` AS `DepartamentoDestino`,
    `despachos`.`PagoCargue` AS `PagoCargue`,
    `despachos`.`PagoDescargue` AS `PagoDescargue`,
    `despachos`.`FhPagoSaldo` AS `FhPagoSaldo`,
    `despachos`.`LugarPago` AS `LugarPago`,
    `informacionempresa`.`Aseguradora` AS `Aseguradora`,
    `despachos`.`ManElectronico` AS `ManElectronico`,
    `marcas`.`NmMarca` AS `NmMarca`,
    `colores`.`NmColor` AS `NmColor`,
    `lineas`.`NmLinea` AS `NmLinea`,
    `informacionempresa`.`Nit` AS `NitEmpresa`,
    `informacionempresa`.`Nombre` AS `NombreEmpresa`,
    `informacionempresa`.`Direccion` AS `DireccionEmpresa`,
    `informacionempresa`.`Telefono` AS `TelefonoEmpresa`,
    `informacionempresa`.`DireccionTerritorial` AS `DireccionTerritorial`,
    `informacionempresa`.`CodRegionalMin` AS `CodRegionalMin`,
    `informacionempresa`.`CodEmpresaMin` AS `CodEmpresaMin`,
    `informacionempresa`.`ResolucionMinTransporte` AS `ResolucionMinTransporte`,
    (`despachos`.`FleteCE` + `despachos`.`TRecaudo`) AS `TotalContraEntregas`,
    `despachos`.`Unidades` AS `Unidades1`,
    `despachos`.`KilosReales` AS `TotalKilosReales`,
    `despachos`.`Remesas` AS `Remesas`,
    `despachos`.`Unidades` AS `Unidades`,
    `conductores_imagen`.`imagen` AS `imagen` 
  from 
    (((((((((((((((((`despachos` left join `vehiculos` on((`despachos`.`IdVehiculo` = `vehiculos`.`IdPlaca`))) left join `ciudades` `ciudadorigen` on((`despachos`.`IdCiudadOrigen` = `ciudadorigen`.`IdCiudad`))) left join `ciudades` `ciudaddestino` on((`despachos`.`IdCiudadDestino` = `ciudaddestino`.`IdCiudad`))) left join `terceros` `aseguradora` on((`vehiculos`.`IdAseguradora` = `aseguradora`.`IDTercero`))) left join `terceros` `propietario` on((`vehiculos`.`IdPropietario` = `propietario`.`IDTercero`))) left join `terceros` `tenedor` on((`vehiculos`.`IdTenedor` = `tenedor`.`IDTercero`))) left join `ciudades` `ciudadtenedor` on((`tenedor`.`IdCiudad` = `ciudadtenedor`.`IdCiudad`))) left join `ciudades` `ciudadpropietario` on((`propietario`.`IdCiudad` = `ciudadpropietario`.`IdCiudad`))) left join `conductores` on((`despachos`.`IdConductor` = `conductores`.`IdConductor`))) left join `informacionempresa` on((`despachos`.`IdEmpresa` = `informacionempresa`.`Id`))) left join `carrocerias` on((`vehiculos`.`IdCarroceria` = `carrocerias`.`IdCarroceria`))) left join `departamentos` `departamentosdestino` on((`ciudaddestino`.`IdDepartamento` = `departamentosdestino`.`IdDepartamento`))) left join `departamentos` `departamentoorigen` on((`ciudadorigen`.`IdDepartamento` = `departamentoorigen`.`IdDepartamento`))) left join `marcas` on((`vehiculos`.`IdMarca` = `marcas`.`IdMarca`))) left join `colores` on((`vehiculos`.`IdColor` = `colores`.`IdColor`))) left join `lineas` on((`vehiculos`.`IdLinea` = `lineas`.`IdLinea`))) left join `conductores_imagen` on((convert(`despachos`.`IdConductor` using utf8) = `conductores_imagen`.`IdConductorImagen`)));

#
# Definition for the `sql_im_imprimirmanifiestodetalle` view : 
#

DROP VIEW IF EXISTS `sql_im_imprimirmanifiestodetalle`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_imprimirmanifiestodetalle AS 
  select 
    `guias`.`Guia` AS `Guia`,
    _latin1'KIL' AS `UnidadMedida`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosReales` AS `KilosReales`,
    _latin1'1' AS `CodNaturaleza`,
    _latin1'1' AS `CodEmpaque`,
    _latin1'9880' AS `CodProducto`,
    _latin1'VARIO' AS `ProductoTransportado`,
    `guias`.`Remitente` AS `Remitente`,
    `guias`.`NmDestinatario` AS `NmDestinatario`,
    `ciudades`.`NmCiudad` AS `NmCiudad`,
    `despachos`.`FhExpedicion` AS `FhExpedicion`,
    `despachos`.`IdManifiesto` AS `IdManifiesto`,
    `despachos`.`OrdDespacho` AS `OrdDespacho`,
    `despachos`.`ManElectronico` AS `ManElectronico`,
    `origenviaje`.`NmCiudad` AS `CiudadOrigenViaje`,
    `destinoviaje`.`NmCiudad` AS `CiudadDestinoViaje`,
    `informacionempresa`.`Logo` AS `Logo` 
  from 
    (((((`guias` left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) left join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`))) left join `ciudades` `origenviaje` on((`despachos`.`IdCiudadOrigen` = `origenviaje`.`IdCiudad`))) left join `ciudades` `destinoviaje` on((`despachos`.`IdCiudadDestino` = `destinoviaje`.`IdCiudad`))) left join `informacionempresa` on((`despachos`.`IdEmpresa` = `informacionempresa`.`Id`)));

#
# Definition for the `sql_im_lista_despachos` view : 
#

DROP VIEW IF EXISTS `sql_im_lista_despachos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_im_lista_despachos AS 
  select 
    `despachos`.`OrdDespacho` AS `OrdDespacho`,
    `despachos`.`IdManifiesto` AS `IdManifiesto`,
    `despachos`.`Tipo` AS `Tipo`,
    `despachos`.`FhExpedicion` AS `FhExpedicion`,
    `despachos`.`FhCumplidos` AS `FhCumplidos`,
    `despachos`.`IdVehiculo` AS `IdVehiculo`,
    `despachos`.`IdConductor` AS `IdConductor`,
    `despachos`.`IdRuta` AS `IdRuta`,
    `despachos`.`IdCiudadOrigen` AS `IdCiudadOrigen`,
    `despachos`.`IdCiudadDestino` AS `IdCiudadDestino`,
    `despachos`.`Estado` AS `Estado`,
    `despachos`.`Remesas` AS `Remesas`,
    `despachos`.`Unidades` AS `Unidades`,
    `despachos`.`KilosReales` AS `KilosReales`,
    `despachos`.`KilosVol` AS `KilosVol`,
    `despachos`.`FleteCobra` AS `FleteCobra`,
    `despachos`.`ManejoCobra` AS `ManejoCobra`,
    `despachos`.`FleteCE` AS `FleteCE`,
    `despachos`.`ManejoCE` AS `ManejoCE`,
    `despachos`.`VrFlete` AS `VrFlete`,
    `despachos`.`VrAnticipo` AS `VrAnticipo`,
    `despachos`.`VrDctoPapeleria` AS `VrDctoPapeleria`,
    `despachos`.`VrDctoSeguridad` AS `VrDctoSeguridad`,
    `despachos`.`VrDctoCargue` AS `VrDctoCargue`,
    `despachos`.`VrDctoEstampilla` AS `VrDctoEstampilla`,
    `despachos`.`VrFleteAdicional` AS `VrFleteAdicional`,
    `despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,
    `despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,
    `despachos`.`VrOtrosDctos` AS `VrOtrosDctos`,
    `despachos`.`SaldoDesp` AS `SaldoDesp`,
    `despachos`.`TotalViaje` AS `TotalViaje`,
    `despachos`.`CO` AS `CO`,
    `despachos`.`Observaciones` AS `Observaciones`,
    `despachos`.`TRecaudo` AS `TRecaudo`,
    `despachos`.`VrDeclaradoTotal` AS `VrDeclaradoTotal`,
    `despachos`.`ManElectronico` AS `ManElectronico`,
    `despachos`.`NmConductor` AS `NmConductor`,
    `despachos`.`Cerrado` AS `Cerrado`,
    `despachos`.`Liquidado` AS `Liquidado`,
    `despachos`.`IdUsuario` AS `IdUsuario`,
    `despachos`.`IdEmpresa` AS `IdEmpresa`,
    `despachos`.`Exportado` AS `Exportado`,
    `despachos`.`LugarPago` AS `LugarPago`,
    `despachos`.`FhPagoSaldo` AS `FhPagoSaldo`,
    `despachos`.`PagoCargue` AS `PagoCargue`,
    `despachos`.`PagoDescargue` AS `PagoDescargue`,
    `despachos`.`Estado1` AS `Estado1`,
    `despachos`.`AbonosCE` AS `AbonosCE`,
    `despachos`.`FletesNoCancelados` AS `FletesNoCancelados`,
    `despachos`.`EnviadoMT` AS `EnviadoMT`,
    `despachos`.`EnviadoGuia` AS `EnviadoGuia`,
    `despachos`.`TotalCE` AS `TotalCE`,
    `despachos`.`FleteContado` AS `FleteContado`,
    `despachos`.`ManejoContado` AS `ManejoContado`,
    `despachos`.`FleteCorriente` AS `FleteCorriente`,
    `despachos`.`ManejoCorriente` AS `ManejoCorriente`,
    `despachos`.`FleteCETotal` AS `FleteCETotal`,
    `despachos`.`ManejoCETotal` AS `ManejoCETotal`,
    `ciudad_origen`.`NmCiudad` AS `Origen`,
    `ciudad_destino`.`NmCiudad` AS `Destino` 
  from 
    ((`despachos` left join `ciudades` `ciudad_origen` on((`despachos`.`IdCiudadOrigen` = `ciudad_origen`.`IdCiudad`))) left join `ciudades` `ciudad_destino` on((`despachos`.`IdCiudadDestino` = `ciudad_destino`.`IdCiudad`)));

#
# Definition for the `sql_im_novedades` view : 
#

DROP VIEW IF EXISTS `sql_im_novedades`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_im_novedades AS 
  select 
    `novedades`.`ID` AS `ID`,
    `novedades`.`Guia` AS `Guia`,
    `novedades`.`IdNovedad` AS `IdNovedad`,
    `novedades`.`Comentarios` AS `Comentarios`,
    `novedades`.`UsuIng` AS `UsuIng`,
    `novedades`.`FHIngreso` AS `FHIngreso`,
    `novedades`.`FhNovedad` AS `FhNovedad`,
    `novedades`.`Solucion` AS `Solucion`,
    `novedades`.`UsuSol` AS `UsuSol`,
    `novedades`.`FhSolucion` AS `FhSolucion`,
    `novedades`.`Solucionada` AS `Solucionada`,
    `novedades`.`IdCentroOperaciones` AS `IdCentroOperaciones`,
    `centrosoperaciones`.`NmPuntoOperaciones` AS `NmPuntoOperaciones`,
    `causalesnovedad`.`NmNovedad` AS `NmNovedad` 
  from 
    ((`novedades` join `centrosoperaciones` on((`novedades`.`IdCentroOperaciones` = `centrosoperaciones`.`IDPO`))) join `causalesnovedad` on((`novedades`.`IdNovedad` = `causalesnovedad`.`IdNovedad`)));

#
# Definition for the `sql_im_novedades_cliente` view : 
#

DROP VIEW IF EXISTS `sql_im_novedades_cliente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_im_novedades_cliente AS 
  select 
    `novedades`.`ID` AS `ID`,
    `novedades`.`Guia` AS `Guia`,
    `novedades`.`IdNovedad` AS `IdNovedad`,
    `novedades`.`Comentarios` AS `Comentarios`,
    `novedades`.`UsuIng` AS `UsuIng`,
    `novedades`.`FHIngreso` AS `FHIngreso`,
    `novedades`.`FhNovedad` AS `FhNovedad`,
    `novedades`.`Solucion` AS `Solucion`,
    `novedades`.`UsuSol` AS `UsuSol`,
    `novedades`.`FhSolucion` AS `FhSolucion`,
    `novedades`.`Solucionada` AS `Solucionada`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    `guias`.`Cuenta` AS `Cuenta`,
    `causalesnovedad`.`NmNovedad` AS `NmNovedad`,
    `informacionempresa`.`Nombre` AS `NombreEmpresa`,
    `informacionempresa`.`Direccion` AS `DireccionEmpresa`,
    `informacionempresa`.`Telefono` AS `TelefonoEmpresa`,
    `informacionempresa`.`Nit` AS `NitEmpresa`,
    `informacionempresa`.`Logo` AS `Logo`,
    `guias`.`DocCliente` AS `DocCliente`,
    `guias`.`Despachada` AS `Despachada`,
    `guias`.`Entregada` AS `Entregada`,
    `guias`.`Descargada` AS `Descargada`,
    `guias`.`EnNovedad` AS `EnNovedad`,
    `ciudades`.`NmCiudad` AS `NmCiuDestino` 
  from 
    (((((`novedades` left join `guias` on((`novedades`.`Guia` = `guias`.`Guia`))) left join `terceros` on((`guias`.`Cuenta` = `terceros`.`IDTercero`))) left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) left join `causalesnovedad` on((`novedades`.`IdNovedad` = `causalesnovedad`.`IdNovedad`))) join `informacionempresa`) 
  where 
    (`guias`.`Anulada` = 0);

#
# Definition for the `sql_im_novedadespendientes` view : 
#

DROP VIEW IF EXISTS `sql_im_novedadespendientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_novedadespendientes AS 
  select 
    `novedades`.`ID` AS `ID`,
    `novedades`.`Guia` AS `Guia`,
    `novedades`.`IdNovedad` AS `IdNovedad`,
    `novedades`.`Comentarios` AS `Comentarios`,
    `novedades`.`UsuIng` AS `UsuIng`,
    `novedades`.`FHIngreso` AS `FHIngreso`,
    `novedades`.`FhNovedad` AS `FhNovedad`,
    `novedades`.`Solucion` AS `Solucion`,
    `novedades`.`UsuSol` AS `UsuSol`,
    `novedades`.`FhSolucion` AS `FhSolucion`,
    `novedades`.`Solucionada` AS `Solucionada`,
    `guias`.`Cuenta` AS `Cuenta`,
    `guias`.`Cliente` AS `Cliente`,
    `causalesnovedad`.`NmNovedad` AS `NmNovedad`,
    `guias`.`DocCliente` AS `DocCliente`,
    `ciudades`.`NmCiudad` AS `NmCiudad`,
    `guias`.`NmDestinatario` AS `NmDestinatario` 
  from 
    (((`novedades` join `guias` on((`novedades`.`Guia` = `guias`.`Guia`))) join `causalesnovedad` on((`novedades`.`IdNovedad` = `causalesnovedad`.`IdNovedad`))) join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) 
  where 
    (`novedades`.`Solucionada` = 0);

#
# Definition for the `sql_im_novedadespendientesco` view : 
#

DROP VIEW IF EXISTS `sql_im_novedadespendientesco`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_novedadespendientesco AS 
  select 
    `novedades`.`ID` AS `ID`,
    `novedades`.`Guia` AS `Guia`,
    `novedades`.`IdNovedad` AS `IdNovedad`,
    `novedades`.`Comentarios` AS `Comentarios`,
    `novedades`.`UsuIng` AS `UsuIng`,
    `novedades`.`FHIngreso` AS `FHIngreso`,
    `novedades`.`FhNovedad` AS `FhNovedad`,
    `novedades`.`Solucion` AS `Solucion`,
    `novedades`.`UsuSol` AS `UsuSol`,
    `novedades`.`FhSolucion` AS `FhSolucion`,
    `novedades`.`Solucionada` AS `Solucionada`,
    `guias`.`Cuenta` AS `Cuenta`,
    `guias`.`Cliente` AS `Cliente`,
    `causalesnovedad`.`NmNovedad` AS `NmNovedad`,
    `guias`.`DocCliente` AS `DocCliente`,
    `ciudades`.`NmCiudad` AS `NmCiudad`,
    `guias`.`NmDestinatario` AS `NmDestinatario`,
    `centrosoperaciones`.`NmPuntoOperaciones` AS `NmPuntoOperaciones`,
    `novedades`.`IdCentroOperaciones` AS `IdCentroOperaciones` 
  from 
    ((((`novedades` join `guias` on((`novedades`.`Guia` = `guias`.`Guia`))) join `causalesnovedad` on((`novedades`.`IdNovedad` = `causalesnovedad`.`IdNovedad`))) join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) left join `centrosoperaciones` on((`novedades`.`IdCentroOperaciones` = `centrosoperaciones`.`IDPO`))) 
  where 
    (`novedades`.`Solucionada` = 0);

#
# Definition for the `sql_im_novedadessolucionadas` view : 
#

DROP VIEW IF EXISTS `sql_im_novedadessolucionadas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_novedadessolucionadas AS 
  select 
    `novedades`.`ID` AS `ID`,
    `novedades`.`Guia` AS `Guia`,
    `novedades`.`IdNovedad` AS `IdNovedad`,
    `novedades`.`Comentarios` AS `Comentarios`,
    `novedades`.`UsuIng` AS `UsuIng`,
    `novedades`.`FHIngreso` AS `FHIngreso`,
    `novedades`.`FhNovedad` AS `FhNovedad`,
    `novedades`.`Solucion` AS `Solucion`,
    `novedades`.`UsuSol` AS `UsuSol`,
    `novedades`.`FhSolucion` AS `FhSolucion`,
    `novedades`.`Solucionada` AS `Solucionada`,
    `guias`.`Cuenta` AS `Cuenta`,
    `guias`.`Cliente` AS `Cliente`,
    `causalesnovedad`.`NmNovedad` AS `NmNovedad`,
    `guias`.`DocCliente` AS `DocCliente`,
    `ciudades`.`NmCiudad` AS `NmCiudad`,
    `guias`.`NmDestinatario` AS `NmDestinatario` 
  from 
    (((`novedades` left join `guias` on((`novedades`.`Guia` = `guias`.`Guia`))) join `causalesnovedad` on((`novedades`.`IdNovedad` = `causalesnovedad`.`IdNovedad`))) join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) 
  where 
    (`novedades`.`Solucionada` = 1);

#
# Definition for the `sql_im_ordendespacho` view : 
#

DROP VIEW IF EXISTS `sql_im_ordendespacho`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_ordendespacho AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `guias`.`CR` AS `CR`,
    `guias`.`Remitente` AS `Remitente`,
    `guias`.`IdCliente` AS `IdCliente`,
    `guias`.`DocCliente` AS `DocCliente`,
    `guias`.`NmDestinatario` AS `NmDestinatario`,
    `guias`.`DirDestinatario` AS `DirDestinatario`,
    `guias`.`TelDestinatario` AS `TelDestinatario`,
    `guias`.`IdCiuDestino` AS `IdCiuDestino`,
    `guias`.`IdRuta` AS `IdRuta`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `guias`.`FhEntregaMercancia` AS `FhEntregaMercancia`,
    `guias`.`VrDeclarado` AS `VrDeclarado`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrManejo` AS `VrManejo`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosReales` AS `KilosReales`,
    `guias`.`KilosFacturados` AS `KilosFacturados`,
    `guias`.`KilosVolumen` AS `KilosVolumen`,
    `guias`.`Estado` AS `Estado`,
    `guias`.`IdFactura` AS `IdFactura`,
    `guias`.`IdDespacho` AS `IdDespacho`,
    `guias`.`Observaciones` AS `Observaciones`,
    `guias`.`COIng` AS `COIng`,
    `guias`.`Cuenta` AS `Cuenta`,
    `guias`.`Cliente` AS `Cliente`,
    `guias`.`Recaudo` AS `Recaudo`,
    `guias`.`Orden` AS `Orden`,
    `guias`.`EmpaqueRef` AS `EmpaqueRef`,
    `guias`.`TpServicio` AS `TpServicio`,
    `guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,
    `guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,
    `guias`.`CPorte` AS `CPorte`,
    `guias`.`Entregada` AS `Entregada`,
    `guias`.`Descargada` AS `Descargada`,
    `guias`.`FhDescargada` AS `FhDescargada`,
    `guias`.`Despachada` AS `Despachada`,
    `guias`.`Anulada` AS `Anulada`,
    `ciudades`.`NmCiudad` AS `NmCiudad` 
  from 
    (`guias` join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`)));

#
# Definition for the `sql_im_pen_ent_cli` view : 
#

DROP VIEW IF EXISTS `sql_im_pen_ent_cli`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_pen_ent_cli AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `guias`.`CR` AS `CR`,
    `guias`.`Remitente` AS `Remitente`,
    `guias`.`IdCliente` AS `IdCliente`,
    `guias`.`DocCliente` AS `DocCliente`,
    `guias`.`NmDestinatario` AS `NmDestinatario`,
    `guias`.`DirDestinatario` AS `DirDestinatario`,
    `guias`.`TelDestinatario` AS `TelDestinatario`,
    `guias`.`IdCiuDestino` AS `IdCiuDestino`,
    `guias`.`IdRuta` AS `IdRuta`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `guias`.`FhEntregaMercancia` AS `FhEntregaMercancia`,
    `guias`.`VrDeclarado` AS `VrDeclarado`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrManejo` AS `VrManejo`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosReales` AS `KilosReales`,
    `guias`.`KilosFacturados` AS `KilosFacturados`,
    `guias`.`KilosVolumen` AS `KilosVolumen`,
    `guias`.`Estado` AS `Estado`,
    `guias`.`IdFactura` AS `IdFactura`,
    `guias`.`IdDespacho` AS `IdDespacho`,
    `guias`.`Observaciones` AS `Observaciones`,
    `guias`.`COIng` AS `COIng`,
    `guias`.`Cuenta` AS `Cuenta`,
    `guias`.`Cliente` AS `Cliente`,
    `guias`.`Recaudo` AS `Recaudo`,
    `guias`.`Orden` AS `Orden`,
    `guias`.`EmpaqueRef` AS `EmpaqueRef`,
    `guias`.`TpServicio` AS `TpServicio`,
    `guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,
    `guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,
    `guias`.`CPorte` AS `CPorte`,
    `guias`.`Entregada` AS `Entregada`,
    `guias`.`Descargada` AS `Descargada`,
    `guias`.`FhDescargada` AS `FhDescargada`,
    `guias`.`Despachada` AS `Despachada`,
    `guias`.`Anulada` AS `Anulada`,
    `ciudades`.`NmCiudad` AS `NmCiudad` 
  from 
    (`guias` join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) 
  where 
    ((`guias`.`Entregada` = 0) and (`guias`.`Anulada` = 0) and (`guias`.`Despachada` = 1));

#
# Definition for the `sql_im_pend_desp` view : 
#

DROP VIEW IF EXISTS `sql_im_pend_desp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_pend_desp AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `guias`.`CR` AS `CR`,
    `guias`.`Remitente` AS `Remitente`,
    `guias`.`IdCliente` AS `IdCliente`,
    `guias`.`DocCliente` AS `DocCliente`,
    `guias`.`NmDestinatario` AS `NmDestinatario`,
    `guias`.`IdCiuDestino` AS `IdCiuDestino`,
    `guias`.`TelDestinatario` AS `TelDestinatario`,
    `guias`.`DirDestinatario` AS `DirDestinatario`,
    `guias`.`IdRuta` AS `IdRuta`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `guias`.`FhEntregaMercancia` AS `FhEntregaMercancia`,
    `guias`.`VrDeclarado` AS `VrDeclarado`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrManejo` AS `VrManejo`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosReales` AS `KilosReales`,
    `guias`.`KilosFacturados` AS `KilosFacturados`,
    `guias`.`KilosVolumen` AS `KilosVolumen`,
    `guias`.`Estado` AS `Estado`,
    `guias`.`IdFactura` AS `IdFactura`,
    `guias`.`IdDespacho` AS `IdDespacho`,
    `guias`.`Observaciones` AS `Observaciones`,
    `guias`.`COIng` AS `COIng`,
    `guias`.`Cuenta` AS `Cuenta`,
    `guias`.`Cliente` AS `Cliente`,
    `guias`.`Recaudo` AS `Recaudo`,
    `guias`.`Orden` AS `Orden`,
    `guias`.`TpServicio` AS `TpServicio`,
    `guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,
    `guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,
    `guias`.`CPorte` AS `CPorte`,
    `guias`.`Entregada` AS `Entregada`,
    `guias`.`Descargada` AS `Descargada`,
    `guias`.`FhDescargada` AS `FhDescargada`,
    `rutas`.`NmRuta` AS `NmRuta`,
    `ciudades`.`NmCiudad` AS `NmCiudad` 
  from 
    ((`guias` left join `rutas` on((`guias`.`IdRuta` = `rutas`.`IdRuta`))) left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) 
  where 
    ((`guias`.`Despachada` = 0) and (`guias`.`Anulada` = 0));

#
# Definition for the `sql_im_pendescargar` view : 
#

DROP VIEW IF EXISTS `sql_im_pendescargar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_pendescargar AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `guias`.`CR` AS `CR`,
    `guias`.`Remitente` AS `Remitente`,
    `guias`.`IdCliente` AS `IdCliente`,
    `guias`.`DocCliente` AS `DocCliente`,
    `guias`.`NmDestinatario` AS `NmDestinatario`,
    `guias`.`DirDestinatario` AS `DirDestinatario`,
    `guias`.`TelDestinatario` AS `TelDestinatario`,
    `guias`.`IdCiuDestino` AS `IdCiuDestino`,
    `guias`.`IdRuta` AS `IdRuta`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `guias`.`FhEntregaMercancia` AS `FhEntregaMercancia`,
    `guias`.`VrDeclarado` AS `VrDeclarado`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrManejo` AS `VrManejo`,
    `guias`.`KilosVolumen` AS `KilosVolumen`,
    `guias`.`KilosFacturados` AS `KilosFacturados`,
    `guias`.`KilosReales` AS `KilosReales`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`Estado` AS `Estado`,
    `guias`.`IdDespacho` AS `IdDespacho`,
    `guias`.`Observaciones` AS `Observaciones`,
    `guias`.`IdFactura` AS `IdFactura`,
    `guias`.`COIng` AS `COIng`,
    `guias`.`Cuenta` AS `Cuenta`,
    `guias`.`Cliente` AS `Cliente`,
    `guias`.`Recaudo` AS `Recaudo`,
    `guias`.`Orden` AS `Orden`,
    `guias`.`EmpaqueRef` AS `EmpaqueRef`,
    `guias`.`RelCliente` AS `RelCliente`,
    `guias`.`IdCiuOrigen` AS `IdCiuOrigen`,
    `guias`.`IdRelEntrega` AS `IdRelEntrega`,
    `guias`.`FhDescargada` AS `FhDescargada`,
    `guias`.`Despachada` AS `Despachada`,
    `guias`.`TpServicio` AS `TpServicio`,
    `guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,
    `guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,
    `guias`.`CPorte` AS `CPorte`,
    `guias`.`Entregada` AS `Entregada`,
    `guias`.`Descargada` AS `Descargada`,
    `guias`.`Anulada` AS `Anulada`,
    `guias`.`GuiFac` AS `GuiFac`,
    `guias`.`Facturada` AS `Facturada`,
    `guias`.`IdUsuario` AS `IdUsuario`,
    `guias`.`IdPlanillaFactura` AS `IdPlanillaFactura`,
    `guias`.`IdEmpresa` AS `IdEmpresa`,
    `guias`.`Relacionada` AS `Relacionada`,
    `guias`.`EnNovedad` AS `EnNovedad`,
    `ciudades`.`NmCiudad` AS `NmCiudad`,
    `despachos`.`IdVehiculo` AS `IdVehiculo`,
    `despachos`.`IdConductor` AS `IdConductor`,
    `despachos`.`NmConductor` AS `NmConductor` 
  from 
    ((`guias` left join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`))) left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) 
  where 
    ((`guias`.`Anulada` = 0) and (`guias`.`Descargada` = 0) and (`guias`.`Despachada` = 1));

#
# Definition for the `sql_im_produccionasesor` view : 
#

DROP VIEW IF EXISTS `sql_im_produccionasesor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_produccionasesor AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `guias`.`IdCliente` AS `IdCliente`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `guias`.`VrDeclarado` AS `VrDeclarado`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrManejo` AS `VrManejo`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosReales` AS `KilosReales`,
    `guias`.`Estado` AS `Estado`,
    `guias`.`COIng` AS `COIng`,
    `guias`.`Cuenta` AS `Cuenta`,
    `guias`.`Cliente` AS `Cliente`,
    `guias`.`TpServicio` AS `TpServicio`,
    `guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,
    `guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,
    `guias`.`Anulada` AS `Anulada`,
    `guias`.`KilosFacturados` AS `KilosFacturados`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    `asesores`.`NmAsesor` AS `NmAsesor`,
    `asesores`.`IdAsesor` AS `IdAsesor` 
  from 
    ((`guias` left join `terceros` on((`guias`.`Cuenta` = `terceros`.`IDTercero`))) left join `asesores` on((`terceros`.`IdAsesor` = `asesores`.`IdAsesor`))) 
  where 
    (`guias`.`Anulada` = 0) 
  order by 
    `guias`.`Cuenta`;

#
# Definition for the `sql_im_produccionruta` view : 
#

DROP VIEW IF EXISTS `sql_im_produccionruta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_produccionruta AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `guias`.`VrDeclarado` AS `VrDeclarado`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrManejo` AS `VrManejo`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosReales` AS `KilosReales`,
    `rutas`.`NmRuta` AS `NmRuta`,
    `despachos`.`IdRuta` AS `IdRuta`,
    `guias`.`KilosFacturados` AS `KilosFacturados`,
    `guias`.`COIng` AS `COIng`,
    `guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,
    `guias`.`IdTpCtaManejo` AS `IdTpCtaManejo` 
  from 
    ((`guias` left join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`))) left join `rutas` on((`despachos`.`IdRuta` = `rutas`.`IdRuta`))) 
  where 
    (`guias`.`Anulada` = 0);

#
# Definition for the `sql_im_recibos_caja` view : 
#

DROP VIEW IF EXISTS `sql_im_recibos_caja`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_im_recibos_caja AS 
  select 
    `recibos_caja_soporte`.`IdRecibo` AS `IdRecibo`,
    `recibos_caja_soporte`.`FechaRecibo` AS `FechaRecibo`,
    `recibos_caja_soporte`.`VrFlete` AS `VrFlete`,
    `recibos_caja_soporte`.`VrManejo` AS `VrManejo`,
    `recibos_caja_soporte`.`ValorTotal` AS `ValorTotal`,
    `recibos_caja_soporte`.`Guia` AS `Guia` 
  from 
    `recibos_caja_soporte`;

#
# Definition for the `sql_im_redespachos` view : 
#

DROP VIEW IF EXISTS `sql_im_redespachos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_im_redespachos AS 
  select 
    `redespachos`.`Guia` AS `Guia`,
    `redespachos`.`Fecha` AS `Fecha`,
    `despachos`.`FhExpedicion` AS `FechaViaje`,
    `terceros`.`IDTercero` AS `IDTercero`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    `ciudades`.`NmCiudad` AS `NmCiuDestino`,
    `informacionempresa`.`Nit` AS `Nit`,
    `informacionempresa`.`Nombre` AS `Nombre`,
    `informacionempresa`.`Direccion` AS `Direccion`,
    `informacionempresa`.`Telefono` AS `Telefono`,
    `informacionempresa`.`Logo` AS `Logo`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosReales` AS `KilosReales`,
    `despachos`.`NmConductor` AS `NmConductor` 
  from 
    (((((`redespachos` left join `despachos` on((`redespachos`.`IdDespacho` = `despachos`.`OrdDespacho`))) left join `guias` on((`guias`.`Guia` = `redespachos`.`Guia`))) left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) left join `terceros` on((`guias`.`Cuenta` = `terceros`.`IDTercero`))) join `informacionempresa`);

#
# Definition for the `sql_im_reexpediciones` view : 
#

DROP VIEW IF EXISTS `sql_im_reexpediciones`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_reexpediciones AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `despachos`.`Tipo` AS `Tipo`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `guias`.`IdDespacho` AS `IdDespacho` 
  from 
    (`guias` left join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`))) 
  where 
    (`despachos`.`Tipo` = 1);

#
# Definition for the `sql_im_rel_guias_cumplidos` view : 
#

DROP VIEW IF EXISTS `sql_im_rel_guias_cumplidos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_im_rel_guias_cumplidos AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `guias`.`DocCliente` AS `DocCliente`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `ciudestino`.`NmCiudad` AS `NmCiudadDestino`,
    `guias`.`VrDeclarado` AS `VrDeclarado`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrManejo` AS `VrManejo`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosReales` AS `KilosReales`,
    `guias`.`KilosFacturados` AS `KilosFacturados`,
    `guias`.`Cuenta` AS `Cuenta`,
    `guias`.`Cliente` AS `Cliente`,
    `informacionempresa`.`Nit` AS `Nit`,
    `informacionempresa`.`Nombre` AS `Nombre`,
    `informacionempresa`.`Direccion` AS `Direccion`,
    `informacionempresa`.`Telefono` AS `Telefono`,
    `informacionempresa`.`Logo` AS `Logo`,
    `guias`.`RelCliente` AS `RelCliente`,
    `guias`.`IdRelEntrega` AS `IdRelEntrega`,
    `relentregadoc`.`Fecha` AS `FechaRelacion`,
    `relentregadoc`.`Comentarios` AS `ComentariosRelacion`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    `relentregadoc`.`IdTercero` AS `IdTercero` 
  from 
    ((((`guias` left join `ciudades` `ciudestino` on((`guias`.`IdCiuDestino` = `ciudestino`.`IdCiudad`))) left join `relentregadoc` on((`guias`.`IdRelEntrega` = `relentregadoc`.`IDRel`))) left join `terceros` on((`relentregadoc`.`IdTercero` = `terceros`.`IDTercero`))) join `informacionempresa`);

#
# Definition for the `sql_im_rel_guias_desp` view : 
#

DROP VIEW IF EXISTS `sql_im_rel_guias_desp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_rel_guias_desp AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `guias`.`DocCliente` AS `DocCliente`,
    `guias`.`NmDestinatario` AS `NmDestinatario`,
    `guias`.`IdCiuDestino` AS `IdCiuDestino`,
    `ciudades`.`NmCiudad` AS `NmCiudad`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `guias`.`VrDeclarado` AS `VrDeclarado`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrManejo` AS `VrManejo`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosReales` AS `KilosReales`,
    `guias`.`KilosFacturados` AS `KilosFacturados`,
    `guias`.`KilosVolumen` AS `KilosVolumen`,
    `guias`.`Estado` AS `Estado`,
    `guias`.`IdDespacho` AS `IdDespacho`,
    `guias`.`COIng` AS `COIng`,
    `guias`.`Cuenta` AS `Cuenta`,
    `guias`.`Cliente` AS `Cliente`,
    `guias`.`Recaudo` AS `Recaudo`,
    `guias`.`Orden` AS `Orden`,
    `guias`.`TpServicio` AS `TpServicio`,
    `guias`.`Anulada` AS `Anulada`,
    `despachos`.`FhExpedicion` AS `FhExpedicion`,
    `despachos`.`IdVehiculo` AS `IdVehiculo`,
    `despachos`.`IdConductor` AS `IdConductor`,
    `despachos`.`Remesas` AS `Remesas`,
    `despachos`.`Unidades` AS `UnidadesDespacho`,
    `despachos`.`KilosReales` AS `KRDespacho`,
    `despachos`.`VrFlete` AS `VrFleteDespacho`,
    `despachos`.`VrAnticipo` AS `VrAnticipo`,
    `despachos`.`Observaciones` AS `Observaciones`,
    `despachos`.`TRecaudo` AS `TRecaudo`,
    `despachos`.`TotalViaje` AS `TotalViaje`,
    `despachos`.`VrDctoIndCom` AS `VrDctoIndCom`,
    `despachos`.`VrDctoRteFte` AS `VrDctoRteFte`,
    `despachos`.`NmConductor` AS `NmConductor` 
  from 
    ((`guias` left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) left join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`)));

#
# Definition for the `sql_im_relguiasplanilla` view : 
#

DROP VIEW IF EXISTS `sql_im_relguiasplanilla`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_relguiasplanilla AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `guias`.`DocCliente` AS `DocCliente`,
    `guias`.`NmDestinatario` AS `NmDestinatario`,
    `ciudades`.`NmCiudad` AS `NmCiudad`,
    `guias`.`VrDeclarado` AS `VrDeclarado`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrManejo` AS `VrManejo`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosFacturados` AS `KilosFacturados`,
    `guias`.`IdFactura` AS `IdFactura`,
    `guias`.`Cliente` AS `Cliente`,
    `guias`.`Anulada` AS `Anulada`,
    `guias`.`Recaudo` AS `Recaudo`,
    `guias`.`IdPlanillaFactura` AS `IdPlanillaFactura`,
    `facturasplanillas`.`RelCliente` AS `RelCliente` 
  from 
    ((`guias` left join `ciudades` on((`guias`.`IdCiuDestino` = `ciudades`.`IdCiudad`))) left join `facturasplanillas` on((`guias`.`IdPlanillaFactura` = `facturasplanillas`.`IdPlanilla`)));

#
# Definition for the `sql_im_resumendespacho` view : 
#

DROP VIEW IF EXISTS `sql_im_resumendespacho`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_resumendespacho AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `guias`.`NmDestinatario` AS `NmDestinatario`,
    `guiadestino`.`NmCiudad` AS `NmCiudad`,
    `guias`.`IdCiuDestino` AS `IdCiuDestino`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrDeclarado` AS `VrDeclarado`,
    `guias`.`VrManejo` AS `VrManejo`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosReales` AS `KilosReales`,
    `guias`.`Cliente` AS `Cliente`,
    `guias`.`Cuenta` AS `Cuenta`,
    `despachos`.`IdManifiesto` AS `IdManifiesto`,
    `despachos`.`FhExpedicion` AS `FhExpedicion`,
    `despachos`.`IdVehiculo` AS `IdVehiculo`,
    `despachos`.`IdConductor` AS `IdConductor`,
    `despachos`.`IdRuta` AS `IdRuta`,
    `despachos`.`Remesas` AS `Remesas`,
    `despachos`.`Unidades` AS `UnidadesDespacho`,
    `despachos`.`KilosReales` AS `KilosRealesDespacho`,
    `despachos`.`FleteCobra` AS `FleteCobra`,
    `despachos`.`ManejoCobra` AS `ManejoCobra`,
    `despachos`.`FleteCE` AS `FleteCE`,
    `despachos`.`ManejoCE` AS `ManejoCE`,
    `despachos`.`VrFlete` AS `VrFleteDespacho`,
    `despachos`.`VrAnticipo` AS `VrAnticipo`,
    `despachos`.`TRecaudo` AS `TRecaudo`,
    `despachos`.`NmConductor` AS `NmConductor`,
    `guias`.`IdDespacho` AS `IdDespacho` 
  from 
    ((`guias` left join `despachos` on((`guias`.`IdDespacho` = `despachos`.`OrdDespacho`))) left join `ciudades` `guiadestino` on((`guias`.`IdCiuDestino` = `guiadestino`.`IdCiudad`)));

#
# Definition for the `sql_im_ventascontado` view : 
#

DROP VIEW IF EXISTS `sql_im_ventascontado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_im_ventascontado AS 
  select 
    `guias`.`Guia` AS `Guia`,
    `guias`.`DocCliente` AS `DocCliente`,
    `guias`.`FhEntradaBodega` AS `FhEntradaBodega`,
    `guias`.`VrDeclarado` AS `VrDeclarado`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`KilosReales` AS `KilosReales`,
    `guias`.`KilosFacturados` AS `KilosFacturados`,
    `guias`.`KilosVolumen` AS `KilosVolumen`,
    `guias`.`COIng` AS `COIng`,
    `guias`.`Cuenta` AS `Cuenta`,
    `guias`.`Cliente` AS `Cliente`,
    `guias`.`Recaudo` AS `Recaudo`,
    `guias`.`TpServicio` AS `TpServicio`,
    `guias`.`IdTpCtaFlete` AS `IdTpCtaFlete`,
    `guias`.`IdTpCtaManejo` AS `IdTpCtaManejo`,
    `guias`.`GuiFac` AS `GuiFac`,
    `guias`.`Anulada` AS `Anulada`,
    `guias`.`NmDestinatario` AS `NmDestinatario`,
    `guias`.`Estado` AS `Estado`,
    `guias`.`VrFlete` AS `VrFlete`,
    `guias`.`VrManejo` AS `VrManejo`,
    (`guias`.`VrFlete` + `guias`.`VrManejo`) AS `Total`,
    `informacionempresa`.`Nit` AS `Nit`,
    `informacionempresa`.`Nombre` AS `NombreEmpresa`,
    `informacionempresa`.`Direccion` AS `DireccionEmpresa`,
    `informacionempresa`.`Telefono` AS `TelefonoEmpresa`,
    `informacionempresa`.`Logo` AS `Logo` 
  from 
    (`guias` join `informacionempresa`) 
  where 
    (`guias`.`TipoCobro` = 1);

#
# Definition for the `sql_ir_formato_recogidas` view : 
#

DROP VIEW IF EXISTS `sql_ir_formato_recogidas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_ir_formato_recogidas AS 
  select 
    `anuncios`.`IdAnuncio` AS `IdAnuncio`,
    `anuncios`.`FhAnuncio` AS `FhAnuncio`,
    `anuncios`.`IdCliente` AS `IdCliente`,
    `anuncios`.`Anunciante` AS `Anunciante`,
    `anuncios`.`DirAnunciante` AS `DirAnunciante`,
    `anuncios`.`TelAnunciante` AS `TelAnunciante`,
    `anuncios`.`Asignacion` AS `Asignacion`,
    `anuncios`.`FhRecogida` AS `FhRecogida`,
    `anuncios`.`Unidades` AS `Unidades`,
    `anuncios`.`KilosReales` AS `KilosReales`,
    `anuncios`.`KilosVol` AS `KilosVol`,
    `anuncios`.`Comentarios` AS `Comentarios`,
    `anuncios`.`MotivoCancelacion` AS `MotivoCancelacion`,
    `anuncios`.`Programada` AS `Programada`,
    `anuncios`.`Estado` AS `Estado`,
    `anuncios`.`Efectiva` AS `Efectiva`,
    `anuncios`.`TiempoEfectiva` AS `TiempoEfectiva`,
    `anuncios`.`Orden` AS `Orden`,
    `anuncios`.`IdConductor` AS `IdConductor`,
    `anuncios`.`IdVehiculo` AS `IdVehiculo`,
    `anuncios`.`IdEmpresa` AS `IdEmpresa`,
    `anuncios`.`IdAsignacion` AS `IdAsignacion`,
    `anuncios`.`Cerrada` AS `Cerrada`,
    `vehiculosrecogida`.`Fecha` AS `Fecha`,
    `vehiculosrecogida`.`Placa` AS `Placa`,
    `vehiculosrecogida`.`Flete` AS `Flete`,
    `vehiculosrecogida`.`Rec` AS `Rec`,
    `vehiculosrecogida`.`Pend` AS `Pend`,
    `vehiculosrecogida`.`Unidades` AS `TotalUnidades`,
    `vehiculosrecogida`.`KilosReales` AS `TotalKilosRelaes`,
    `vehiculosrecogida`.`KilosVol` AS `TotalKilosVol`,
    `vehiculosrecogida`.`IdRuta` AS `IdRuta`,
    `vehiculosrecogida`.`Notas` AS `Notas`,
    `vehiculosrecogida`.`Coperaciones` AS `Coperaciones`,
    `vehiculosrecogida`.`UltOrden` AS `UltOrden`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    `informacionempresa`.`Id` AS `Id`,
    `informacionempresa`.`Nombre` AS `Nombre`,
    `informacionempresa`.`Nit` AS `Nit`,
    `informacionempresa`.`Direccion` AS `Direccion`,
    `informacionempresa`.`Telefono` AS `Telefono`,
    `informacionempresa`.`Logo` AS `Logo`,
    `rutasurbanas`.`NmRuta` AS `NmRuta` 
  from 
    ((((`anuncios` left join `vehiculosrecogida` on((`anuncios`.`IdAsignacion` = `vehiculosrecogida`.`IdAsignacion`))) left join `terceros` on((`anuncios`.`IdCliente` = `terceros`.`IDTercero`))) left join `rutasurbanas` on((`vehiculosrecogida`.`IdRuta` = `rutasurbanas`.`IdRutaRec`))) join `informacionempresa`);

#
# Definition for the `sql_ir_listadorecogidas` view : 
#

DROP VIEW IF EXISTS `sql_ir_listadorecogidas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_ir_listadorecogidas AS 
  select 
    `anuncios`.`IdAnuncio` AS `IdAnuncio`,
    `anuncios`.`FhAnuncio` AS `FhAnuncio`,
    `anuncios`.`IdCliente` AS `IdCliente`,
    `anuncios`.`Anunciante` AS `Anunciante`,
    `anuncios`.`DirAnunciante` AS `DirAnunciante`,
    `anuncios`.`TelAnunciante` AS `TelAnunciante`,
    `anuncios`.`IdRuta` AS `IdRuta`,
    `anuncios`.`Asignacion` AS `Asignacion`,
    `anuncios`.`FhRecogida` AS `FhRecogida`,
    `anuncios`.`Unidades` AS `Unidades`,
    `anuncios`.`KilosReales` AS `KilosReales`,
    `anuncios`.`KilosVol` AS `KilosVol`,
    `anuncios`.`Comentarios` AS `Comentarios`,
    `anuncios`.`Programada` AS `Programada`,
    `anuncios`.`Estado` AS `Estado`,
    `anuncios`.`Efectiva` AS `Efectiva`,
    `anuncios`.`TiempoEfectiva` AS `TiempoEfectiva`,
    `anuncios`.`Coperaciones` AS `Coperaciones`,
    `anuncios`.`Orden` AS `Orden`,
    `anuncios`.`IdConductor` AS `IdConductor`,
    `anuncios`.`IdVehiculo` AS `IdVehiculo`,
    `anuncios`.`IdEmpresa` AS `IdEmpresa`,
    `anuncios`.`IdAsignacion` AS `IdAsignacion`,
    `terceros`.`RazonSocial` AS `RazonSocial` 
  from 
    (`anuncios` left join `terceros` on((`anuncios`.`IdCliente` = `terceros`.`IDTercero`)));

#
# Definition for the `sql_ir_listadorecogidasvehiculo` view : 
#

DROP VIEW IF EXISTS `sql_ir_listadorecogidasvehiculo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_ir_listadorecogidasvehiculo AS 
  select 
    `anuncios`.`IdAnuncio` AS `IdAnuncio`,
    `anuncios`.`FhAnuncio` AS `FhAnuncio`,
    `anuncios`.`IdCliente` AS `IdCliente`,
    `anuncios`.`Anunciante` AS `Anunciante`,
    `anuncios`.`DirAnunciante` AS `DirAnunciante`,
    `anuncios`.`TelAnunciante` AS `TelAnunciante`,
    `anuncios`.`IdRuta` AS `IdRuta`,
    `anuncios`.`Asignacion` AS `Asignacion`,
    `anuncios`.`FhRecogida` AS `FhRecogida`,
    `anuncios`.`Unidades` AS `Unidades`,
    `anuncios`.`KilosReales` AS `KilosReales`,
    `anuncios`.`KilosVol` AS `KilosVol`,
    `anuncios`.`Comentarios` AS `Comentarios`,
    `anuncios`.`Programada` AS `Programada`,
    `anuncios`.`Estado` AS `Estado`,
    `anuncios`.`Efectiva` AS `Efectiva`,
    `anuncios`.`TiempoEfectiva` AS `TiempoEfectiva`,
    `anuncios`.`Coperaciones` AS `Coperaciones`,
    `anuncios`.`Orden` AS `Orden`,
    `anuncios`.`IdConductor` AS `IdConductor`,
    `anuncios`.`IdVehiculo` AS `IdVehiculo`,
    `anuncios`.`IdEmpresa` AS `IdEmpresa`,
    `anuncios`.`IdAsignacion` AS `IdAsignacion`,
    `vehiculosrecogida`.`Fecha` AS `Fecha`,
    `vehiculosrecogida`.`Placa` AS `Placa`,
    `vehiculosrecogida`.`Flete` AS `Flete`,
    `terceros`.`RazonSocial` AS `RazonSocial` 
  from 
    ((`anuncios` left join `vehiculosrecogida` on((`anuncios`.`IdAsignacion` = `vehiculosrecogida`.`IdAsignacion`))) left join `terceros` on((`anuncios`.`IdCliente` = `terceros`.`IDTercero`)));

#
# Definition for the `sql_ir_resumenrecogidas` view : 
#

DROP VIEW IF EXISTS `sql_ir_resumenrecogidas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_ir_resumenrecogidas AS 
  select 
    `anuncios`.`IdAnuncio` AS `IdAnuncio`,
    `anuncios`.`FhAnuncio` AS `FhAnuncio`,
    `anuncios`.`IdCliente` AS `IdCliente`,
    `anuncios`.`Anunciante` AS `Anunciante`,
    `anuncios`.`DirAnunciante` AS `DirAnunciante`,
    `anuncios`.`TelAnunciante` AS `TelAnunciante`,
    `anuncios`.`IdRuta` AS `IdRuta`,
    `anuncios`.`Asignacion` AS `Asignacion`,
    `anuncios`.`FhRecogida` AS `FhRecogida`,
    `anuncios`.`Unidades` AS `Unidades`,
    `anuncios`.`KilosReales` AS `KilosReales`,
    `anuncios`.`KilosVol` AS `KilosVol`,
    `anuncios`.`Comentarios` AS `Comentarios`,
    `anuncios`.`Programada` AS `Programada`,
    `anuncios`.`Estado` AS `Estado`,
    `anuncios`.`Efectiva` AS `Efectiva`,
    `anuncios`.`TiempoEfectiva` AS `TiempoEfectiva`,
    `anuncios`.`Coperaciones` AS `Coperaciones`,
    `anuncios`.`Orden` AS `Orden`,
    `anuncios`.`IdConductor` AS `IdConductor`,
    `anuncios`.`IdVehiculo` AS `IdVehiculo`,
    `anuncios`.`IdEmpresa` AS `IdEmpresa`,
    `anuncios`.`IdAsignacion` AS `IdAsignacion`,
    `vehiculosrecogida`.`Placa` AS `Placa`,
    `vehiculosrecogida`.`Flete` AS `Flete`,
    `vehiculosrecogida`.`Rec` AS `Rec`,
    `vehiculosrecogida`.`Pend` AS `Pend`,
    `vehiculosrecogida`.`Fecha` AS `FechaRecogida`,
    `terceros`.`RazonSocial` AS `RazonSocial` 
  from 
    ((`anuncios` left join `vehiculosrecogida` on((`anuncios`.`IdAsignacion` = `vehiculosrecogida`.`IdAsignacion`))) left join `terceros` on((`anuncios`.`IdCliente` = `terceros`.`IDTercero`))) 
  where 
    (`anuncios`.`FhAnuncio` >= _latin1'2011/01/01');

#
# Definition for the `sql_ism_monitoreos` view : 
#

DROP VIEW IF EXISTS `sql_ism_monitoreos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW sql_ism_monitoreos AS 
  select 
    `monitoreocontrolpost`.`ID` AS `ID`,
    `monitoreocontrolpost`.`IDMonitoreo` AS `IDMonitoreo`,
    `monitoreocontrolpost`.`IDControlPost` AS `IDControlPost`,
    `monitoreocontrolpost`.`FhHrReporte` AS `FhHrReporte`,
    `monitoreocontrolpost`.`Notas` AS `Notas`,
    `controlpost`.`NmControlPost` AS `NmControlPost`,
    `monitoreovehiculos`.`Orden` AS `Orden`,
    `monitoreovehiculos`.`Tipo` AS `Tipo`,
    `monitoreovehiculos`.`Estado` AS `Estado`,
    `monitoreovehiculos`.`Ok` AS `Ok`,
    `monitoreovehiculos`.`FhHrSalida` AS `FhHrSalida`,
    `monitoreovehiculos`.`Vehiculo` AS `Vehiculo`,
    `monitoreovehiculos`.`Destino` AS `Destino`,
    `monitoreovehiculos`.`UltReporte` AS `UltReporte`,
    `monitoreovehiculos`.`Frecuencia` AS `Frecuencia`,
    `monitoreovehiculos`.`EnNovedad` AS `EnNovedad`,
    `monitoreovehiculos`.`SinMonitoreo` AS `SinMonitoreo`,
    `origen`.`NmCiudad` AS `NmCiudadOrigen`,
    `destinodesp`.`NmCiudad` AS `NmCiudadDestino`,
    `despachos`.`FhExpedicion` AS `FhExpedicion`,
    `despachos`.`IdConductor` AS `IdConductor`,
    `despachos`.`NmConductor` AS `NmConductor`,
    `despachos`.`IdManifiesto` AS `IdManifiesto`,
    `conductores`.`Celular` AS `CelularConductor` 
  from 
    ((((((`monitoreocontrolpost` left join `monitoreovehiculos` on((`monitoreocontrolpost`.`IDMonitoreo` = `monitoreovehiculos`.`ID`))) left join `controlpost` on((`monitoreocontrolpost`.`IDControlPost` = `controlpost`.`IdControlPost`))) left join `despachos` on((`monitoreovehiculos`.`Orden` = `despachos`.`OrdDespacho`))) left join `ciudades` `origen` on((`despachos`.`IdCiudadOrigen` = `origen`.`IdCiudad`))) left join `ciudades` `destinodesp` on((`despachos`.`IdCiudadDestino` = `destinodesp`.`IdCiudad`))) left join `conductores` on((`despachos`.`IdConductor` = `conductores`.`IdConductor`)));

#
# Definition for the `sql_manconductor` view : 
#

DROP VIEW IF EXISTS `sql_manconductor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_manconductor AS 
  select 
    `conductores`.`TpIdConductor` AS `Pertipid`,
    `conductores`.`IdConductor` AS `Periden`,
    `conductores`.`Apellido1` AS `perapell1`,
    `conductores`.`Apellido2` AS `perapell2`,
    `conductores`.`Nombre` AS `pernombre`,
    `conductores`.`TelConductor` AS `pertelefono`,
    `conductores`.`Direccion` AS `perdireccion`,
    `ciudades`.`CodMinTrans` AS `perciudad`,
    `conductores`.`Categoria` AS `percateglice` 
  from 
    (`ciudades` join `conductores` on((`ciudades`.`IdCiudad` = `conductores`.`IdCiudad`)));

#
# Definition for the `sql_manmanifiesto` view : 
#

DROP VIEW IF EXISTS `sql_manmanifiesto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_manmanifiesto AS 
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
    `despachos`.`FhCumplidos` AS `fechentrega` 
  from 
    (((((((`despachos` left join `informacionempresa` on((`despachos`.`IdEmpresa` = `informacionempresa`.`Id`))) join `ciudades` `ciuorigen` on((`despachos`.`IdCiudadOrigen` = `ciuorigen`.`IdCiudad`))) join `ciudades` `ciudestino` on((`despachos`.`IdCiudadDestino` = `ciudestino`.`IdCiudad`))) join `conductores` on((`despachos`.`IdConductor` = `conductores`.`IdConductor`))) join `vehiculos` on((`despachos`.`IdVehiculo` = `vehiculos`.`IdPlaca`))) join `carrocerias` on((`vehiculos`.`IdCarroceria` = `carrocerias`.`IdCarroceria`))) join `terceros` `titular` on((`vehiculos`.`IdPropietario` = `titular`.`IDTercero`))) 
  where 
    (`despachos`.`OrdDespacho` = 15148);

#
# Definition for the `sql_manremesas` view : 
#

DROP VIEW IF EXISTS `sql_manremesas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_manremesas AS 
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
    (`guias`.`IdDespacho` = 14018);

#
# Definition for the `sql_manterceros` view : 
#

DROP VIEW IF EXISTS `sql_manterceros`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_manterceros AS 
  select 
    `terceros`.`TpDoc` AS `emptipid`,
    `terceros`.`IDTercero` AS `empident`,
    `terceros`.`RazonSocial` AS `empnombr`,
    `terceros`.`Telefono` AS `emptelefono`,
    `terceros`.`Direccion` AS `empdireccion` 
  from 
    `terceros`;

#
# Definition for the `sql_manvehiculo` view : 
#

DROP VIEW IF EXISTS `sql_manvehiculo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_manvehiculo AS 
  select 
    `vehiculos`.`IdPlaca` AS `vehplaca`,
    `marcas`.`CodMinTrans` AS `vehmarca`,
    `lineas`.`NmLinea` AS `vehlinea`,
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
    `tenedor`.`IDTercero` AS `Vehidentenenc` 
  from 
    (((((((`vehiculos` left join `marcas` on((`vehiculos`.`IdMarca` = `marcas`.`IdMarca`))) left join `lineas` on((`vehiculos`.`IdLinea` = `lineas`.`IdLinea`))) left join `colores` on((`vehiculos`.`IdColor` = `colores`.`IdColor`))) left join `carrocerias` on((`vehiculos`.`IdCarroceria` = `carrocerias`.`IdCarroceria`))) left join `terceros` `aseguradora` on((`vehiculos`.`IdAseguradora` = `aseguradora`.`IDTercero`))) left join `terceros` `propietario` on((`vehiculos`.`IdPropietario` = `propietario`.`IDTercero`))) left join `terceros` `tenedor` on((`vehiculos`.`IdTenedor` = `tenedor`.`IDTercero`)));

#
# Definition for the `sql_movimiento_formato_recibo_soporte` view : 
#

DROP VIEW IF EXISTS `sql_movimiento_formato_recibo_soporte`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW sql_movimiento_formato_recibo_soporte AS 
  select 
    `recibos_caja_soporte`.`IdRecibo` AS `IdRecibo`,
    `recibos_caja_soporte`.`FechaRecibo` AS `FechaRecibo`,
    `recibos_caja_soporte`.`VrFlete` AS `VrFlete`,
    `recibos_caja_soporte`.`VrManejo` AS `VrManejo`,
    `recibos_caja_soporte`.`ValorTotal` AS `ValorTotal`,
    `recibos_caja_soporte`.`Guia` AS `Guia`,
    `terceros`.`RazonSocial` AS `RazonSocial`,
    `terceros`.`Direccion` AS `Direccion`,
    `terceros`.`Telefono` AS `Telefono`,
    `ciudadcliente`.`NmCiudad` AS `CiudadCliente`,
    `guias`.`DocCliente` AS `DocCliente`,
    `guias`.`NmDestinatario` AS `NmDestinatario`,
    `guias`.`DirDestinatario` AS `DirDestinatario`,
    `guias`.`TelDestinatario` AS `TelDestinatario`,
    `ciudaddestino`.`NmCiudad` AS `CiudadDestino`,
    `guias`.`Unidades` AS `Unidades`,
    `guias`.`Cuenta` AS `Cuenta`,
    `informacionempresa`.`Nit` AS `NitEmpresa`,
    `informacionempresa`.`Nombre` AS `NombreEmpresa`,
    `informacionempresa`.`Direccion` AS `DireccionEmpresa`,
    `informacionempresa`.`Telefono` AS `TelefonoEmpresa`,
    `informacionempresa`.`Logo` AS `Logo`,
    `tipos_cobro`.`NmTipoCobro` AS `NmTipoCobro` 
  from 
    ((((((`recibos_caja_soporte` left join `guias` on((`recibos_caja_soporte`.`Guia` = `guias`.`Guia`))) left join `terceros` on((`guias`.`Cuenta` = `terceros`.`IDTercero`))) left join `ciudades` `ciudadcliente` on((`terceros`.`IdCiudad` = `ciudadcliente`.`IdCiudad`))) left join `ciudades` `ciudaddestino` on((`guias`.`IdCiuDestino` = `ciudaddestino`.`IdCiudad`))) left join `tipos_cobro` on((`guias`.`TipoCobro` = `tipos_cobro`.`IdTipoCobro`))) join `informacionempresa`);



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;