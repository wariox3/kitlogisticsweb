CREATE TABLE `errores_ws` (
  `codigo` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `fecha` DATETIME DEFAULT NULL,
  `tipo` TINYINT(4) DEFAULT NULL,
  `modulo` VARCHAR(100) COLLATE utf8_general_ci DEFAULT NULL,
  `referencia` VARCHAR(50) COLLATE utf8_general_ci DEFAULT NULL,
  `error` TEXT COLLATE utf8_general_ci,
  PRIMARY KEY (`codigo`)
)ENGINE=InnoDB
AUTO_INCREMENT=72 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';
COMMIT;

