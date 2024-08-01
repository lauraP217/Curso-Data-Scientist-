DROP DATABASE IF EXISTS concesionario;
CREATE DATABASE concesionario; 

USE concesionario;

-- -----------------------------------------------------
-- Tabla coches
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionario`.`coches` (
  `coche_id` INT NOT NULL,
  `fabricante` VARCHAR(20) NOT NULL,
  `modelo` VARCHAR(20) NOT NULL,
  `anyo` INT NOT NULL,
  `color` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`coche_id`));


-- -----------------------------------------------------
-- Tabla clientes
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionario`.`clientes` (
  `cliente_id` INT NOT NULL,
  `nombre` VARCHAR(20) NOT NULL,
  `apellido` VARCHAR(20),
  `telefono` VARCHAR(20) NULL DEFAULT NULL,
  `email` VARCHAR(20) NULL DEFAULT NULL,
  `direccion` VARCHAR(40) NULL DEFAULT NULL,
  `ciudad` VARCHAR(20) NULL DEFAULT NULL,
  `provincia` VARCHAR(20) NULL DEFAULT NULL,
  `pais` VARCHAR(20) NULL DEFAULT NULL,
  `codigo_postal` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`cliente_id`));

  
  -- -----------------------------------------------------
-- Tabla vendedores
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionario`.`vendedores` (
  `vendedor_id` INT NOT NULL,
  `nombre` VARCHAR(20) NOT NULL,
  `apellido` VARCHAR(20),
  `nombre_tienda` VARCHAR(3) NOT NULL,
  PRIMARY KEY (`vendedor_id`));

- -----------------------------------------------------
-- Tabla Facturas
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionario`.`facturas` (
  `factura_id` INT NOT NULL,
  `fecha` DATE NULL DEFAULT NULL,
  `coche_id` INT NOT NULL,
  `cliente_id` INT NULL DEFAULT NULL,
  `vendedor_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`factura_id`),
  CONSTRAINT `fk_facturas_vendedor`
    FOREIGN KEY (`vendedor_id`)
    REFERENCES `concesionario`.`vendedores` (`vendedor_id`),
  CONSTRAINT `fk_facturas_coches`
    FOREIGN KEY (`coche_id`)
    REFERENCES `concesionario`.`coches` (`coche_id`),
  CONSTRAINT `fk_facturas_cliente`
    FOREIGN KEY (`cliente_id`)
    REFERENCES `concesionario`.`clientes` (`cliente_id`)
)



