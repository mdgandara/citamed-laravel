-- MySQL Workbench Synchronization
-- Generated: 2023-07-15 20:09
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Sena

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE database IF not exists `citameddb`;
CREATE SCHEMA IF NOT EXISTS `citameddb` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;


CREATE TABLE IF NOT EXISTS `citameddb`.`usuarios` (
  `id_usuarios` INT(11) NOT NULL,
  `cedula_usuario` INT(11) NOT NULL,
  `nombre_usuario` VARCHAR(100) NULL DEFAULT NULL,
  `apellidos_usuario` VARCHAR(100) NULL DEFAULT NULL,
  `celular_usuario` VARCHAR(45) NULL DEFAULT NULL,
  `direccion_usuario` VARCHAR(100) NULL DEFAULT NULL,
  `email_usuario` VARCHAR(100) NULL DEFAULT NULL,
  UNIQUE INDEX `cedula_usuario_UNIQUE` (`cedula_usuario` ASC) VISIBLE,
  PRIMARY KEY (`cedula_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE IF NOT EXISTS `citameddb`.`recepcion` (
  `rol_recepcion` VARCHAR(50) NOT NULL,
  `usuarios_cedula_usuario1` INT(11) NOT NULL,
  INDEX `fk_recepcion_usuarios1_idx` (`usuarios_cedula_usuario1` ASC) VISIBLE,
  CONSTRAINT `fk_recepcion_usuarios1`
    FOREIGN KEY (`usuarios_cedula_usuario1`)
    REFERENCES `citameddb`.`usuarios` (`cedula_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE IF NOT EXISTS `citameddb`.`medico` (
  `especialidad_medico` VARCHAR(50) NOT NULL,
  `registro_medico` VARCHAR(45) NOT NULL,
  `usuarios_cedula_usuario` INT(11) NOT NULL,
  `usuarios_cedula_usuario1` INT(11) NOT NULL,
  PRIMARY KEY (`usuarios_cedula_usuario`),
  UNIQUE INDEX `registro_medico_UNIQUE` (`registro_medico` ASC) VISIBLE,
  UNIQUE INDEX `usuarios_cedula_usuario_UNIQUE` (`usuarios_cedula_usuario` ASC) VISIBLE,
  INDEX `fk_medico_usuarios2_idx` (`usuarios_cedula_usuario1` ASC) VISIBLE,
  CONSTRAINT `fk_medico_usuarios2`
    FOREIGN KEY (`usuarios_cedula_usuario1`)
    REFERENCES `citameddb`.`usuarios` (`cedula_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE IF NOT EXISTS `citameddb`.`administrador` (
  `rol_administrador` VARCHAR(45) NOT NULL,
  `usuarios_cedula_usuario1` INT(11) NOT NULL,
  INDEX `fk_administrador_usuarios2_idx` (`usuarios_cedula_usuario1` ASC) VISIBLE,
  CONSTRAINT `fk_administrador_usuarios2`
    FOREIGN KEY (`usuarios_cedula_usuario1`)
    REFERENCES `citameddb`.`usuarios` (`cedula_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE IF NOT EXISTS `citameddb`.`paciente` (
  `eps_paciente` VARCHAR(50) NOT NULL,
  `usuarios_cedula_usuario` INT(11) NOT NULL,
  `usuarios_cedula_usuario1` INT(11) NOT NULL,
  PRIMARY KEY (`usuarios_cedula_usuario`),
  UNIQUE INDEX `usuarios_cedula_usuario_UNIQUE` (`usuarios_cedula_usuario` ASC) VISIBLE,
  INDEX `fk_paciente_usuarios2_idx` (`usuarios_cedula_usuario1` ASC) VISIBLE,
  CONSTRAINT `fk_paciente_usuarios2`
    FOREIGN KEY (`usuarios_cedula_usuario1`)
    REFERENCES `citameddb`.`usuarios` (`cedula_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE IF NOT EXISTS `citameddb`.`cita` (
  `id_cita` INT(11) NOT NULL,
  `fecha_hora_cita` DATETIME NULL DEFAULT NULL,
  `motivo_cita` VARCHAR(100) NULL DEFAULT NULL,
  `estado` VARCHAR(45) NULL DEFAULT NULL,
  `medico_usuarios_cedula_usuario` INT(11) NOT NULL,
  `paciente_usuarios_cedula_usuario` INT(11) NOT NULL,
  `epicrisis_id_epicrisis` INT(11) NOT NULL,
  INDEX `fk_cita_medico1_idx` (`medico_usuarios_cedula_usuario` ASC) VISIBLE,
  INDEX `fk_cita_paciente1_idx` (`paciente_usuarios_cedula_usuario` ASC) VISIBLE,
  PRIMARY KEY (`epicrisis_id_epicrisis`),
  CONSTRAINT `fk_cita_medico1`
    FOREIGN KEY (`medico_usuarios_cedula_usuario`)
    REFERENCES `citameddb`.`medico` (`usuarios_cedula_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cita_paciente1`
    FOREIGN KEY (`paciente_usuarios_cedula_usuario`)
    REFERENCES `citameddb`.`paciente` (`usuarios_cedula_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cita_epicrisis1`
    FOREIGN KEY (`epicrisis_id_epicrisis`)
    REFERENCES `citameddb`.`epicrisis` (`id_epicrisis`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE IF NOT EXISTS `citameddb`.`epicrisis` (
  `id_epicrisis` INT(11) NOT NULL,
  `fecha_nacimiento` DATE NOT NULL,
  `genero` VARCHAR(45) NULL DEFAULT NULL,
  `peso` VARCHAR(45) NULL DEFAULT NULL,
  `estatura` VARCHAR(45) NULL DEFAULT NULL,
  `imc` VARCHAR(45) NULL DEFAULT NULL,
  `antecedentes` VARCHAR(200) NULL DEFAULT NULL,
  `laboratorio` VARCHAR(45) NULL DEFAULT NULL,
  `medicamento` VARCHAR(45) NULL DEFAULT NULL,
  `diagnostico` VARCHAR(200) NULL DEFAULT NULL,
  PRIMARY KEY (`id_epicrisis`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
