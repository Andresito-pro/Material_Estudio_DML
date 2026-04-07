
/*CREACIÓN DE BASE DE DATOS*/
CREATE DATABASE Trazabilidad_SGVA;
USE Trazabilidad_SGVA;


/*CREACIÓN DE TABLAS*/
CREATE TABLE Trazabilidad (
    id_trazabilidad INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre_empresa VARCHAR(60) NOT NULL,
    fecha_ini DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    correo VARCHAR(60) NOT NULL,
    estado VARCHAR(60) NOT NULL,
    fecha_cierre DATE NOT NULL
);

CREATE TABLE Empresa (
    id_empresa INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    codigo_empresa VARCHAR(50) NOT NULL,
    nombre_empresa VARCHAR(60) NOT NULL
);

/*MODIFICACIONES DDL*/
ALTER TABLE Empresa
DROP PRIMARY KEY;

ALTER TABLE Empresa
DROP COLUMN id_empresa;

ALTER TABLE Empresa
ADD PRIMARY KEY (codigo_empresa);

DESCRIBE Empresa;

ALTER TABLE Trazabilidad
CHANGE nombre_empresa cod_empresa VARCHAR(100) NOT NULL;

/*DML - INSERTS*/

/*Sin especificar columnas*/
INSERT INTO Empresa 
VALUES ('COD2', 'SENA');
INSERT INTO Empresa 
VALUES ('COD3', 'SIMIL TECH SAS');
INSERT INTO Empresa 
VALUES ('COD4', 'AMWELL COLOMBIA SAS');
INSERT INTO Empresa 
VALUES ('COD5', 'SATELCO INTERACTIVO S.A.S.');
INSERT INTO Empresa 
VALUES ('COD6', 'EKOOMEDIA S.A.S');

/*Especificando columnas*/

INSERT INTO Empresa (codigo_empresa, nombre_empresa) 
VALUES ('COD7',  'SENA');
INSERT INTO Empresa (codigo_empresa, nombre_empresa) 
VALUES ('COD8',  'SIMIL TECH SAS');
INSERT INTO Empresa (codigo_empresa, nombre_empresa) 
VALUES ('COD9',  'AMWELL COLOMBIA SAS');
INSERT INTO Empresa (codigo_empresa, nombre_empresa) 
VALUES ('COD10', 'SATELCO INTERACTIVO S.A.S.');
INSERT INTO Empresa (codigo_empresa, nombre_empresa) 
VALUES ('COD11', 'EKOOMEDIA S.A.S');

ALTER TABLE Trazabilidad
MODIFY COLUMN estado VARCHAR(60) NULL DEFAULT NULL;