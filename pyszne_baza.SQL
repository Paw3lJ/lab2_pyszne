/*
Created: 19.11.2021
Modified: 19.11.2021
Model: pyszne
Database: MySQL 8.0
*/

-- Create tables section -------------------------------------------------

-- Table Restauracje

CREATE TABLE `Restauracje`
(
  `Id_res` Int NOT NULL AUTO_INCREMENT,
  `Nazwa` Char(30),
  `Opis` Varchar(200),
  `Miasto` Char(30),
  `Ulica` Char(50),
  PRIMARY KEY (`Id_res`)
)
;

-- Table Zamowienie

CREATE TABLE `Zamowienie`
(
  `Imie_klienta` Varchar(40),
  `Id_zamow` Int NOT NULL AUTO_INCREMENT,
  `Cena` Varchar(200),
  `Danie` Varchar(200),
  `Data_zamowienia` Datetime,
  `Adres_klienta` Varchar(200),
  `Email_klienta` Varchar(100),
  `Tel_klienta` Varchar(9),
  PRIMARY KEY (`Id_zamow`)
)
;

-- Table Dania

CREATE TABLE `Dania`
(
  `Id_dan` Int NOT NULL AUTO_INCREMENT,
  `Nazwa` Varchar(200),
  `Opis` Varbinary(200),
  `Cena` Varchar(200),
  `Kategoria` Varchar(200),
  `Id_res` Int,
  PRIMARY KEY (`Id_dan`)
)
;

CREATE INDEX `IX_Relationship1` ON `Dania` (`Id_res`)
;

-- Create foreign keys (relationships) section -------------------------------------------------

ALTER TABLE `Dania` ADD CONSTRAINT `dania_restauracje` FOREIGN KEY (`Id_res`) REFERENCES `Restauracje` (`Id_res`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

