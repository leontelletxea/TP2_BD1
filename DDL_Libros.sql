/* DDL de Creacion de Tablas */

-- Ejecutar primero el create solo  y luego todo lo demas
CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE LIBRO (
  NRO_LIBRO int not null,
  TITULO char(40),
  AUTOR char(30),
  TIPO char(2),
  PRECIO_ORI smallmoney,
  PRECIO_ACT smallmoney,
  EDICION smallint,
  ESTADO char(1),
  PRIMARY KEY (NRO_LIBRO)
);

CREATE TABLE TIPOLIBRO (
  TIPO char(2) not null,
  DESCTIPO char(40),
  PRIMARY KEY (TIPO)
);

CREATE TABLE LECTOR (
  NRO_LECTOR int,
  NOMBRE char(22),
  DIRECCION char(30),
  TRABAJO char(10),
  SALARIO smallmoney,
  ESTADO char(1),
  PRIMARY KEY (NRO_LECTOR)
);

CREATE TABLE COPIAS (
  NRO_LIBRO int,
  NRO_COPIA smallint,
  ESTADO char(1),
  PRIMARY KEY (NRO_LIBRO, NRO_COPIA)
);

CREATE TABLE PRESTAMO (
  NRO_LECTOR int,
  NRO_LIBRO int,
  NRO_COPIA smallint,
  F_PREST datetime,
  F_DEVOL datetime,
  PRIMARY KEY (NRO_LECTOR, NRO_LIBRO, NRO_COPIA)
);

