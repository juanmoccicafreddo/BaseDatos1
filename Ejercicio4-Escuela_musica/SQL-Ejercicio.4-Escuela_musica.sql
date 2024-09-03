
use escuela_musica;
CREATE TABLE escuela_musica.Profesor (
  id_profesor integer PRIMARY KEY,
  nombre varchar(100),
  apellido varchar(100),
  especialidad varchar(100)
);

CREATE TABLE escuela_musica.Estudiantes (
  id_estudiantes integer PRIMARY KEY,
  nombre varchar(150),
  apellido varchar(150),
  fecha_nac date,
  telefono integer
);

CREATE TABLE escuela_musica.Curso (
  id_curso integer PRIMARY KEY,
  id_estudiantes integer,
  id_profesor integer,
  nombre_curso varchar(255),
  id_nivel integer
);

ALTER TABLE escuela_musica.Curso ADD FOREIGN KEY (id_profesor) REFERENCES escuela_musica.Profesor (id_profesor);
ALTER TABLE escuela_musica.Curso ADD FOREIGN KEY (id_estudiantes) REFERENCES escuela_musica.Estudiantes (id_estudiantes);
