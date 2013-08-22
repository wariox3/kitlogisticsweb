CREATE TABLE `despachos_control_mt` (
  `OrdDespacho` INTEGER(11) NOT NULL,
  `ManifiestoInterno` INTEGER(11) DEFAULT NULL,
  `EnvioPersona` TINYINT(4) DEFAULT '0',
  `EnvioVehiculo` TINYINT(4) DEFAULT '0',
  `Enviado` TINYINT(4) DEFAULT '0',
  `EnvioGuias` TINYINT(4) DEFAULT '0',
  `EnvioManifiesto` TINYINT(4) DEFAULT '0',
  `ExpedirRemesas` TINYINT(4) DEFAULT '0',
  `ExpedirManifiesto` TINYINT(4) DEFAULT '0',
  PRIMARY KEY (`OrdDespacho`)
)ENGINE=MyISAM
AVG_ROW_LENGTH=17 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';
COMMIT;



/* Data for the `despachos_control_mt` table  (Records 1 - 2) */

INSERT INTO `despachos_control_mt` (`OrdDespacho`, `ManifiestoInterno`, `EnvioPersona`, `EnvioVehiculo`, `Enviado`, `EnvioGuias`, `EnvioManifiesto`, `ExpedirRemesas`, `ExpedirManifiesto`) VALUES 
  (3, 50, 0, 0, 0, 0, 0, 0, 0),
  (4, 51, 1, 1, 0, 1, 1, 0, 0);


