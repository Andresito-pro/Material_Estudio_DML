CREATE DATABASE Trazabilidad_SGVA;
USE Trazabilidad_SGVA;
CREATE TABLE Trazabilidad(
	id_trazabilidad INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre_empresa VARCHAR(60) NOT NULL,
    fecha_ini DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    telefono INT NOT NULL,
	correo VARCHAR(60) NOT NULL,
    estado VARCHAR(60) NOT NULL,
    fecha_cierre DATE NOT NULL
    );
CREATE TABLE Empresa(
	id_empresa INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    codigo_empresa VARCHAR(50) NOT NULL,
    nombre_empresa VARCHAR(60) NOT NULL    
);

DESCRIBE Empresa;

INSERT INTO Empresa (codigo_empresa, nombre_empresa)
VALUES ('COD1','VC@SOFT S A S');

INSERT INTO Empresa (codigo_empresa, nombre_empresa)
VALUES ('COD2','ENERGITEL S.A.S');

INSERT INTO Empresa (nombre_empresa, codigo_empresa)
VALUES ('GENSER POWER COLOMBIA', 'COD3');

INSERT INTO Empresa (nombre_empresa, codigo_empresa)
VALUES ('JAZZPLAT COLOMBIA S A S', 'COD4');

INSERT INTO Empresa (codigo_empresa, nombre_empresa)
VALUES ('COD5', 'ADO TECHNOLOGIES COLOMBIA SAS');

INSERT INTO Empresa
VALUES ('COD6', 'CONTINENTAL ASSIST COLOMBIA S A S - CONTINENTAL ASSIST');

INSERT INTO Empresa
VALUES ('COD7', 'IDENTIDAD TELECOM SAS');

INSERT INTO Empresa
VALUES ('COD8', 'UNIVERSIDAD ANTONIO NARIÑO');

INSERT INTO Empresa
VALUES ('COD9', 'SQDM S A S');

INSERT INTO Empresa
VALUES ('COD10', 'SIMIL TECH SAS');

INSERT INTO Empresa (codigo_empresa, nombre_empresa)
VALUES ('COD11','SATELCO INTERACTIVO S.A.S.'),
('COD12','YES CONTACT & BPO S.A.S. - YES BPO S.A.S.'),
('COD13', 'HIKVISION COLOMBIA S.A.S.'),
('COD14', 'MULLEN LOWE SSP3 S.A.S'),
('COD15', 'WORLD VISION INTERNATIONAL VISION MUNDIAL INTERNACIONAL');

ALTER TABLE Empresa
DROP COLUMN idempresa;

ALTER TABLE Empresa
DROP id_empresa;

ALTER TABLE Empresa
ADD PRIMARY KEY(codigo_empresa);
DESCRIBE Empresa;

ALTER TABLE trazabilidad
CHANGE nombre_empresa COD_EMPRESA VARCHAR (100) NOT NULL;

/*ALTER TABLE Empresa
DROP PRIMARY KEY;

ALTER TABLE Empresa
DROP COLUMN id_empresa;

ALTER TABLE Empresa
ADD PRIMARY KEY (codigo_empresa);

DESCRIBE Empresa;

ALTER TABLE Trazabilidad
change nombre_empresa cod_empresa VARCHAR(100) NOT NULL;

DELETE FROM Empresa
WHERE codigo_empresa =0;

INSERT INTO Empresa
VALUES ('COD2','SENA');
INSERT INTO Empresa
VALUES ('COD3','SIMIL TECH SAS');
INSERT INTO Empresa
VALUES ('COD4','AMWELL COLOMBIA SAS');
INSERT INTO Empresa
VALUES ('COD5','SATELCO INTERACTIVO S.A.S.');
INSERT INTO Empresa
VALUES ('COD6','EKOOMEDIA S.A.S');

INSERT INTO Empresa (nombre_empresa, codigo_empresa)
VALUES ('SENA','COD7');
INSERT INTO Empresa(nombre_empresa, codigo_empresa)
VALUES ('SIMIL TECH SAS','COD8');
INSERT INTO Empresa(codigo_empresa,nombre_empresa)
VALUES('COD9','AMWELL COLOMBIA SAS');
INSERT INTO Empresa(codigo_empresa,nombre_empresa)
VALUES('COD10','SATELCO INTERACTIVO S.A.S.');
INSERT INTO Empresa(codigo_empresa,nombre_empresa)
VALUES('COD11','EKOOMEDIA S.A.S');*/
