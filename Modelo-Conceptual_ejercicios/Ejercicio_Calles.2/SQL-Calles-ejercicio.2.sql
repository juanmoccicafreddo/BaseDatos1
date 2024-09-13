use Calles;
CREATE TABLE Calles (
  id_calle int PRIMARY KEY,
  id_legalidad int,
  id_historias int,
  id_orientacion int,
  id_datos int,
  nombre varchar(255),
  legalidad varchar(255),
  orientacion varchar(255),
  observacion varchar(255)
);

CREATE TABLE Legalidad (
  id_legalidad int PRIMARY KEY,
  descripcion varchar(255),
  abierta varchar(100),
  no_abierta varchar(100)
);

CREATE TABLE Orientacion (
  id_orientacion int PRIMARY KEY,
  ascendente varchar(100),
  descendente varchar(100),
  ambos varchar(100)
);

CREATE TABLE Datos (
  id_datos int PRIMARY KEY,
  id_calle int,
  cambio varchar(100),
  nueva_calle varchar(100),
  fecha_rem date
);

CREATE TABLE Historias (
  id_historias int PRIMARY KEY,
  id_escuela int,
  descripcion varchar(255)
);

CREATE TABLE Escuelas (
  id_escuela int PRIMARY KEY,
  id_datos int,
  nombre varchar(150),
  numero int,
  domicilio varchar(100),
  telefono int
);

ALTER TABLE Calles ADD FOREIGN KEY (id_legalidad) REFERENCES Legalidad (id_legalidad);
ALTER TABLE Calles ADD FOREIGN KEY (id_orientacion) REFERENCES Orientacion (id_orientacion);
ALTER TABLE Escuelas ADD FOREIGN KEY (id_datos) REFERENCES Datos (id_datos);
ALTER TABLE Calles ADD FOREIGN KEY (id_historias) REFERENCES Historias (id_historias);
ALTER TABLE Historias ADD FOREIGN KEY (id_escuela) REFERENCES Escuelas (id_escuela);
ALTER TABLE Datos ADD FOREIGN KEY (id_calle) REFERENCES Calles (id_calle);