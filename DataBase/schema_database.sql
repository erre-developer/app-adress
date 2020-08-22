-- MySQL Script generated by MySQL Workbench
-- Fri Dec 13 00:05:43 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema database_adress
-- -----------------------------------------------------
-- utf8-unicode
--
DROP SCHEMA IF EXISTS `database_adress` ;

-- -----------------------------------------------------
-- Schema database_adress
--
-- utf8-unicode
--
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `database_adress` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `database_adress` ;

-- -----------------------------------------------------
-- Table `database_adress`.`region`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `database_adress`.`region` ;

CREATE TABLE IF NOT EXISTS `database_adress`.`region` (
  `id_region` INT NOT NULL AUTO_INCREMENT,
  `nombre_region` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  PRIMARY KEY (`id_region`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `database_adress`.`comuna`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `database_adress`.`comuna` ;

CREATE TABLE IF NOT EXISTS `database_adress`.`comuna` (
  `id_comuna` INT NOT NULL AUTO_INCREMENT,
  `nombre_comuna` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `id_region_fk` INT NOT NULL,
  PRIMARY KEY (`id_comuna`),
  INDEX `fk_comuna_region1_idx` (`id_region_fk` ASC),
  CONSTRAINT `fk_comuna_region1`
    FOREIGN KEY (`id_region_fk`)
    REFERENCES `database_adress`.`region` (`id_region`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `database_adress`.`direccion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `database_adress`.`direccion` ;

CREATE TABLE IF NOT EXISTS `database_adress`.`direccion` (
  `id_direccion` INT NOT NULL AUTO_INCREMENT,
  `nombre_calle` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `numero` INT(8) NOT NULL,
  `depto` VARCHAR(5) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL,
  `id_comuna_fk` INT NOT NULL,
  PRIMARY KEY (`id_direccion`),
  INDEX `fk_direccion_comuna1_idx` (`id_comuna_fk` ASC),
  CONSTRAINT `fk_direccion_comuna1`
    FOREIGN KEY (`id_comuna_fk`)
    REFERENCES `database_adress`.`comuna` (`id_comuna`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

/* QUERY REGIONES */

INSERT INTO database_adress.region (NOMBRE_REGION) VALUES ("ARICA Y PARINACOTA");
INSERT INTO database_adress.region (NOMBRE_REGION) VALUES ("TARAPACÁ");
INSERT INTO database_adress.region (NOMBRE_REGION) VALUES ("ANTOFAGASTA");
INSERT INTO database_adress.region (NOMBRE_REGION) VALUES ("ATACAMA");
INSERT INTO database_adress.region (NOMBRE_REGION) VALUES ("COQUIMBO");
INSERT INTO database_adress.region (NOMBRE_REGION) VALUES ("VALPARAÍSO");
INSERT INTO database_adress.region (NOMBRE_REGION) VALUES ("LIBERTADOR B. O'HIGGINS");
INSERT INTO database_adress.region (NOMBRE_REGION) VALUES ("MAULE");
INSERT INTO database_adress.region (NOMBRE_REGION) VALUES ("BÍOBÍO");
INSERT INTO database_adress.region (NOMBRE_REGION) VALUES ("LA ARAUCANÍA");
INSERT INTO database_adress.region (NOMBRE_REGION) VALUES ("LOS RÍOS");
INSERT INTO database_adress.region (NOMBRE_REGION) VALUES ("LOS LAGOS");
INSERT INTO database_adress.region (NOMBRE_REGION) VALUES ("AISÉN DEL GRAL. C. IBÁÑEZ DEL CAMPO");
INSERT INTO database_adress.region (NOMBRE_REGION) VALUES ("MAGALLANES Y DE LA ANTÁRTICA CHILENA");
INSERT INTO database_adress.region (NOMBRE_REGION) VALUES ("REGIÓN METROPOLITANA");


/* QUERY COMUNAS */

INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ARICA","1");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CAMARONES","1");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PUTRE","1");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("GENERAL LAGOS","1");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("IQUIQUE","2");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CAMIÑA","2");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("COLCHANE","2");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("HUARA","2");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PICA","2");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("POZO ALMONTE","2");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ALTO HOSPICIO","2");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ANTOFAGASTA","3");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("MEJILLONES","3");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SIERRA GORDA","3");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TALTAL","3");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CALAMA","3");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("OLLAGÜE","3");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN PEDRO DE ATACAMA","3");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TOCOPILLA","3");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("MARÍA ELENA","3");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("COPIAPÓ","4");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CALDERA","4");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TIERRA AMARILLA","4");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CHAÑARAL","4");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("DIEGO DE ALMAGRO","4");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("VALLENAR","4");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ALTO DEL CARMEN","4");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("FREIRINA","4");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("HUASCO","4");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LA SERENA","5");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("COQUIMBO","5");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ANDACOLLO","5");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LA HIGUERA","5");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PAIGUANO","5");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("VICUÑA","5");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ILLAPEL","5");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CANELA","5");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LOS VILOS","5");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SALAMANCA","5");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("OVALLE","5");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("COMBARBALÁ","5");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("MONTE PATRIA","5");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PUNITAQUI","5");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("RÍO HURTADO","5");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("VALPARAÍSO","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CASABLANCA","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CONCÓN","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("JUAN FERNÁNDEZ","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PUCHUNCAVÍ","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("QUILPUÉ","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("QUINTERO","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("VILLA ALEMANA","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("VIÑA DEL MAR","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ISLA  DE PASCUA","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LOS ANDES","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CALLE LARGA","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("RINCONADA","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN ESTEBAN","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LA LIGUA","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CABILDO","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PAPUDO","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PETORCA","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ZAPALLAR","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("QUILLOTA","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CALERA","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("HIJUELAS","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LA CRUZ","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LIMACHE","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("NOGALES","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("OLMUÉ","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN ANTONIO","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ALGARROBO","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CARTAGENA","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("EL QUISCO","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("EL TABO","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SANTO DOMINGO","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN FELIPE","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CATEMU","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LLAILLAY","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PANQUEHUE","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PUTAENDO","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SANTA MARÍA","6");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("RANCAGUA","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CODEGUA","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("COINCO","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("COLTAUCO","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("DOÑIHUE","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("GRANEROS","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LAS CABRAS","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("MACHALÍ","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("MALLOA","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("MOSTAZAL","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("OLIVAR","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PEUMO","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PICHIDEGUA","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("QUINTA DE TILCOCO","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("RENGO","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("REQUÍNOA","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN VICENTE","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PICHILEMU","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LA ESTRELLA","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LITUECHE","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("MARCHIHUE","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("NAVIDAD","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PAREDONES","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN FERNANDO","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CHÉPICA","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CHIMBARONGO","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LOLOL","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("NANCAGUA","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PALMILLA","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PERALILLO","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PLACILLA","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PUMANQUE","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SANTA CRUZ","7");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TALCA","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CONSTITUCIÓN","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CUREPTO","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("EMPEDRADO","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("MAULE","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PELARCO","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PENCAHUE","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("RÍO CLARO","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN CLEMENTE","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN RAFAEL","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CAUQUENES","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CHANCO","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PELLUHUE","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CURICÓ","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("HUALAÑÉ","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LICANTÉN","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("MOLINA","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("RAUCO","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ROMERAL","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAGRADA FAMILIA","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TENO","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("VICHUQUÉN","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LINARES","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("COLBÚN","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LONGAVÍ","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PARRAL","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("RETIRO","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN JAVIER","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("VILLA ALEGRE","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("YERBAS BUENAS","8");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CONCEPCIÓN","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CORONEL","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CHIGUAYANTE","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("FLORIDA","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("HUALQUI","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LOTA","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PENCO","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN PEDRO DE LA PAZ","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SANTA JUANA","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TALCAHUANO","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TOMÉ","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("HUALPÉN","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LEBU","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ARAUCO","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CAÑETE","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CONTULMO","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CURANILAHUE","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LOS ÁLAMOS","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TIRÚA","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LOS ÁNGELES","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ANTUCO","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CABRERO","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LAJA","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("MULCHÉN","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("NACIMIENTO","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("NEGRETE","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("QUILACO","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("QUILLECO","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN ROSENDO","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SANTA BÁRBARA","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TUCAPEL","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("YUMBEL","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ALTO BIOBÍO","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CHILLÁN","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("BULNES","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("COBQUECURA","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("COELEMU","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("COIHUECO","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CHILLÁN VIEJO","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("EL CARMEN","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("NINHUE","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ÑIQUÉN","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PEMUCO","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PINTO","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PORTEZUELO","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("QUILLÓN","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("QUIRIHUE","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("RÁNQUIL","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN CARLOS","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN FABIÁN","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN IGNACIO","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN NICOLÁS","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TREGUACO","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("YUNGAY","9");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TEMUCO","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CARAHUE","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CUNCO","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CURARREHUE","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("FREIRE","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("GALVARINO","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("GORBEA","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LAUTARO","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LONCOCHE","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("MELIPEUCO","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("NUEVA IMPERIAL","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PADRE LAS CASAS","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PERQUENCO","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PITRUFQUÉN","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PUCÓN","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAAVEDRA","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TEODORO SCHMIDT","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TOLTÉN","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("VILCÚN","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("VILLARRICA","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CHOLCHOL","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ANGOL","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("COLLIPULLI","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CURACAUTÍN","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ERCILLA","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LONQUIMAY","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LOS SAUCES","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LUMACO","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PURÉN","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("RENAICO","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TRAIGUÉN","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("VICTORIA","10");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("VALDIVIA","11");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CORRAL","11");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("FUTRONO","11");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LA UNIÓN","11");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LAGO RANCO","11");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LANCO","11");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LOS LAGOS","11");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("MÁFIL","11");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("MARIQUINA","11");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PAILLACO","11");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PANGUIPULLI","11");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("RÍO BUENO","11");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PUERTO MONTT","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CALBUCO","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("COCHAMÓ","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("FRESIA","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("FRUTILLAR","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LOS MUERMOS","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LLANQUIHUE","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("MAULLÍN","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PUERTO VARAS","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CASTRO","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ANCUD","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CHONCHI","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CURACO DE VÉLEZ","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("DALCAHUE","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PUQUELDÓN","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("QUEILÉN","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("QUELLÓN","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("QUEMCHI","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("QUINCHAO","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("OSORNO","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PUERTO OCTAY","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PURRANQUE","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PUYEHUE","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("RÍO NEGRO","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN JUAN DE LA COSTA","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN PABLO","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CHAITÉN","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("FUTALEUFÚ","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("HUALAIHUÉ","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PALENA","12");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("COIHAIQUE","13");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LAGO VERDE","13");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("AISÉN","13");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CISNES","13");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("GUAITECAS","13");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("COCHRANE","13");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("O'HIGGINS","13");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TORTEL","13");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CHILE CHICO","13");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("RÍO IBÁÑEZ","13");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PUNTA ARENAS","14");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LAGUNA BLANCA","14");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("RÍO VERDE","14");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN GREGORIO","14");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CABO DE HORNOS","14");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ANTÁRTICA","14");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PORVENIR","14");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PRIMAVERA","14");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TIMAUKEL","14");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("NATALES","14");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TORRES DEL PAINE","14");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SANTIAGO","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CERRILLOS","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CERRO NAVIA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CONCHALÍ","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("EL BOSQUE","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ESTACIÓN CENTRAL","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("HUECHURABA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("INDEPENDENCIA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LA CISTERNA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LA FLORIDA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LA GRANJA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LA PINTANA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LA REINA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LAS CONDES","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LO BARNECHEA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LO ESPEJO","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LO PRADO","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("MACUL","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("MAIPÚ","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ÑUÑOA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PEDRO AGUIRRE CERDA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PEÑALOLÉN","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PROVIDENCIA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PUDAHUEL","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("QUILICURA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("QUINTA NORMAL","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("RECOLETA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("RENCA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN JOAQUÍN","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN MIGUEL","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN RAMÓN","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("VITACURA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PUENTE ALTO","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PIRQUE","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN JOSÉ DE MAIPO","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("COLINA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("LAMPA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TILTIL","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN BERNARDO","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("BUIN","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CALERA DE TANGO","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PAINE","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("MELIPILLA","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ALHUÉ","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("CURACAVÍ","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("MARÍA PINTO","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("SAN PEDRO","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("TALAGANTE","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("EL MONTE","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("ISLA DE MAIPO","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PADRE HURTADO","15");
INSERT INTO database_adress.comuna (NOMBRE_COMUNA,ID_REGION_FK) VALUES ("PEÑAFLOR","15");



/* INSERT DE DIRECCIONES*/

INSERT INTO database_adress.direccion (`NOMBRE_CALLE`, `NUMERO`, `DEPTO`, `ID_COMUNA_FK`) VALUES
('AV. MATTA', '450', '502', '295'),
('EL OBSERVADOR', '1200', NULL, '299'),
('PASAJE UNO', '100', NULL, '319'),
('AV. SAN MARTIN', '4100', NULL, '312'),
('AV. INDEPENDENCIA', '8500', NULL, 302),
('AV. MANUEL ANTONIO MATTA', '8520', NULL, 319),
('SAN JOAQUÍN', '2010', NULL, 307),
('SANTO DOMINGO', '300', '100', 320),
('EL MIRADOR', '5200', '', 315);

/* CREACION DE VISTA VER DIRECCIONES*/
CREATE VIEW fetch_direcciones AS
SELECT 
id_direccion,
nombre_calle,
numero,
CASE
    WHEN depto IS NULL THEN "--"
    WHEN depto = "" THEN "--"
    ELSE depto
END AS depto,
nombre_comuna,
nombre_region FROM direccion
JOIN comuna ON direccion.id_comuna_fk = comuna.id_comuna
JOIN region ON comuna.id_region_fk = region.id_region


/*PROCEDURE TRAE TODAS LAS DIRECCIONES QUE SE REQUIERAN BUSCAR */

DELIMITER //

CREATE PROCEDURE getAllSearch(IN strSearch VARCHAR(100))
BEGIN
  SELECT 
  direccion.id_direccion,
  direccion.nombre_calle,
  direccion.numero,
  CASE
      WHEN direccion.depto IS NULL THEN "--"
      WHEN direccion.depto = "" THEN "--"
      ELSE direccion.depto
  END AS depto,
  comuna.nombre_comuna,
  region.nombre_region FROM direccion
  JOIN comuna ON direccion.id_comuna_fk = comuna.id_comuna
  JOIN region ON comuna.id_region_fk = region.id_region
  WHERE direccion.nombre_calle LIKE CONCAT(strSearch,'%') ;

END//



/*PROCEDURE TRAE LA DIRECCION QUE SE REQUERE EDITAR */

DELIMITER //

CREATE PROCEDURE getAdressEdit(IN idAdress INT)
BEGIN
  SELECT 
  direccion.id_direccion,
  direccion.nombre_calle,
  direccion.numero,
  direccion.depto,
  comuna.id_comuna,
  region.id_region FROM direccion
  JOIN comuna ON direccion.id_comuna_fk = comuna.id_comuna
  JOIN region ON comuna.id_region_fk = region.id_region
  WHERE direccion.id_direccion = idAdress ;

END//
