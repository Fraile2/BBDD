CREATE DATABASE IF NOT EXISTS aeropuertodb;
USE aeropuertodb;


-- DROP

DROP TABLE IF EXISTS ;
DROP TABLE IF EXISTS ;
DROP TABLE IF EXISTS ;
DROP TABLE IF EXISTS ;
DROP TABLE IF EXISTS ;
DROP TABLE IF EXISTS billete;
DROP TABLE IF EXISTS piloto;
DROP TABLE IF EXISTS viajero;
DROP TABLE IF EXISTS cliente;
DROP TABLE IF EXISTS aerolinea;
DROP TABLE IF EXISTS persona;
-- CREATE
CREATE TABLE IF NOT EXISTS persona(
    dni VARCHAR(9) CHECK(length(dni)>8) primary key,
    n_pasaporte VARCHAR(9) UNIQUE,
    nombre VARCHAR(26) NOT NULL,
    apellido VARCHAR(60) NOT NULL,
    fecha_nacimiento DATE NOT NULL
);
CREATE TABLE IF NOT EXISTS aerolinea ( -- Jessica 
    id_aeroline INT AUTO_INCREMENT primary key,
    nombre VARCHAR(30),
    id_piloto INT auto_increment,
    FOREIGN KEY(id_piloto) REFERENCES piloto(id_piloto)
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

CREATE TABLE IF NOT EXISTS billete (
    id_billete int auto_increment PRIMARY KEY,
    fecha DATE NOT NULL, 
    num_asiento VARCHAR(4) NOT NULL,
    coste numeric(5,2) NOT NULL,
    tipo ENUM('ida', 'ida_vuelta') NOT NULL,
    dni_persona VARCHAR(9) CHECK()
    FOREIGN KEY(dni_persona) references persona(DNI)
);
CREATE TABLE IF NOT EXISTS (

);
CREATE TABLE IF NOT EXISTS (

);
CREATE TABLE IF NOT EXISTS (

);
CREATE TABLE IF NOT EXISTS (

);






