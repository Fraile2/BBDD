CREATE DATABASE IF NOT EXISTS aeropuertodb;
USE aeropuertodb;


-- DROP

DROP TABLE IF EXISTS ;
DROP TABLE IF EXISTS ;
DROP TABLE IF EXISTS ;
DROP TABLE IF EXISTS ;
DROP TABLE IF EXISTS ;
DROP TABLE IF EXISTS ;
DROP TABLE IF EXISTS piloto;
DROP TABLE IF EXISTS viajero;
DROP TABLE IF EXISTS cliente;
DROP TABLE IF EXISTS ;
DROP TABLE IF EXISTS persona;
-- CREATE
CREATE TABLE IF NOT EXISTS persona(
    dni VARCHAR(9) CHECK(length(dni)>8) primary key,
    n_pasaporte VARCHAR(9) UNIQUE,
    nombre VARCHAR(26) NOT NULL,
    apellido VARCHAR(60) NOT NULL,
    fecha_nacimiento DATE NOT NULL
);
CREATE TABLE IF NOT EXISTS aerolinea(
    id_aerolínea INT auto_increment,
    nombre
);
CREATE TABLE IF NOT EXISTS piloto(
    id_piloto INT auto_increment,
    nombre VARCHAR(26) NOT NULL,
    apellido VARCHAR(60) NOT NULL,
    antiguedad DATE NOT NULL,
    numero_galones NUMERIC(1) CHECK(numero_galones BETWEEN 1 AND 4) NOT NULL,
    id_copiloto INT NOT NULL,
    primary key(id_piloto),
    FOREIGN KEY(id_copiloto) REFERENCES piloto(id_piloto)
);
CREATE TABLE IF NOT EXISTS cliente(
    dni VARCHAR(9) CHECK(length(dni)>8) primary key,
    FOREIGN KEY(dni) REFERENCES persona(dni)
);
CREATE TABLE IF NOT EXISTS viajero(
    dni VARCHAR(9) CHECK(length(dni)>8) primary key,
    FOREIGN KEY(dni) REFERENCES persona(dni)
);

CREATE TABLE IF NOT EXISTS (

);
CREATE TABLE IF NOT EXISTS (

);
CREATE TABLE IF NOT EXISTS (

);
CREATE TABLE IF NOT EXISTS (

);
CREATE TABLE IF NOT EXISTS (

);






