-- MySQL Script generated by MySQL Workbench
-- Tue Aug 28 03:43:49 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema test
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema test
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 ;
USE `test` ;

-- -----------------------------------------------------
-- Table `test`.`PROJECT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test`.`PROJECT` (
  `PROJECT_ID` INT(10) ZEROFILL UNSIGNED NOT NULL AUTO_INCREMENT,
  `PROJECT_NM` VARCHAR(256) NOT NULL,
  `DEPT_ID` INT(10) UNSIGNED NOT NULL,
  `DIFFICULTY` VARCHAR(50) NULL,
  `INS_TM` DATETIME NOT NULL,
  `UPD_TM` DATETIME NOT NULL,
  `VERSION` INT(10) ZEROFILL UNSIGNED NOT NULL,
  PRIMARY KEY (`PROJECT_ID`),
  UNIQUE INDEX `PROJECTID_UNIQUE` (`PROJECT_ID` ASC),
  INDEX `PROJECT_NM` (`PROJECT_NM` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`DEPT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test`.`DEPT` (
  `DEPT_ID` INT(10) ZEROFILL UNSIGNED NOT NULL AUTO_INCREMENT,
  `DEPT_NM` VARCHAR(256) NOT NULL,
  PRIMARY KEY (`DEPT_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test`.`user` (
  `userId` INT(10) ZEROFILL UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(256) NOT NULL,
  `password` VARCHAR(256) NOT NULL,
  `create_time` DATETIME NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC))
ENGINE = InnoDB;

CREATE USER 'dbUser' IDENTIFIED BY 'hot2018!';

GRANT ALL ON `test`.* TO 'dbUser';

-- -----------------------------------------------------
-- Data for table `test`.`PROJECT`
-- -----------------------------------------------------
START TRANSACTION;
USE `test`;
INSERT INTO `test`.`PROJECT` (`PROJECT_ID`, `PROJECT_NM`, `DEPT_ID`, `DIFFICULTY`, `INS_TM`, `UPD_TM`, `VERSION`) VALUES (DEFAULT, 'TEST PRJ', 1, 'EASY', '2018/08/26', '2018/08/26', 0);

COMMIT;


-- -----------------------------------------------------
-- Data for table `test`.`DEPT`
-- -----------------------------------------------------
START TRANSACTION;
USE `test`;
INSERT INTO `test`.`DEPT` (`DEPT_ID`, `DEPT_NM`) VALUES (DEFAULT, 'DEPT A');
INSERT INTO `test`.`DEPT` (`DEPT_ID`, `DEPT_NM`) VALUES (DEFAULT, 'DEPT B');
INSERT INTO `test`.`DEPT` (`DEPT_ID`, `DEPT_NM`) VALUES (DEFAULT, 'DEPT C');
INSERT INTO `test`.`DEPT` (`DEPT_ID`, `DEPT_NM`) VALUES (DEFAULT, 'DEPT D');

COMMIT;


-- -----------------------------------------------------
-- Data for table `test`.`user`
-- -----------------------------------------------------
START TRANSACTION;
USE `test`;
INSERT INTO `test`.`user` (`userId`, `username`, `password`, `create_time`) VALUES (0000000001, 'testUser', '$2a$10$IhXMs/LAkhj9zeI4rCkaOOmUZEmt9OZyGQlDxggAlgVoKcAMZc0G2', '2018-08-07 02:58:50');

COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
