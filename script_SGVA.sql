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
    codigo_empresa INT NOT NULL,
    nombre_empresa VARCHAR(60) NOT NULL
    
    
);
