DROP DATABASE prueba;

CREATE DATABASE prueba;

USE prueba;

--  create table materias with next columns (id_materia,materia,carrera)
CREATE TABLE materias (
  id_materia INT AUTO_INCREMENT PRIMARY KEY,
  materia VARCHAR(255) NOT NULL,
  carrera VARCHAR(255) NOT NULL
);

LOAD DATA LOCAL INFILE "materias.csv"
INTO TABLE materias
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM materias;

