use escuela_musica2;
CREATE TABLE Estudiantes (
  id_estudiantes int PRIMARY KEY,
  nombre varchar(100),
  direccion text,
  edad int
);

CREATE TABLE Profesores (
  id_profesores int PRIMARY KEY,
  id_aulas int,
  id_clases int,
  nombre varchar(150),
  especialidad varchar(100)
);

CREATE TABLE Aulas (
  id_aulas int PRIMARY KEY,
  nombre varchar(150),
  ubicacion varchar(150)
);

CREATE TABLE Clases (
  id_clases int PRIMARY KEY,
  id_estudiantes int,
  id_profesores int,
  fecha date
);

ALTER TABLE Clases ADD FOREIGN KEY (id_estudiantes) REFERENCES Estudiantes (id_estudiantes);
ALTER TABLE Profesores ADD FOREIGN KEY (id_aulas) REFERENCES Aulas (id_aulas);
ALTER TABLE Clases ADD FOREIGN KEY (id_profesores) REFERENCES Profesores (id_profesores);
ALTER TABLE Profesores ADD FOREIGN KEY (id_clases) REFERENCES Clases (id_clases);