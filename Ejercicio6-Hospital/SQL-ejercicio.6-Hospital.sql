use hospital;
CREATE TABLE Pacientes (
  id_pacientes integer PRIMARY KEY,
  id_citas integer,
  nombre varchar(100),
  domicilio varchar(255),
  edad integer,
  dni integer
);

CREATE TABLE Medicos (
  id_medicos integer PRIMARY KEY,
  id_citas integer,
  id_consultorios integer,
  nombre varchar(100),
  matricula integer,
  especialidad varchar(100)
);

CREATE TABLE Consultorios (
  id_consultorios integer PRIMARY KEY,
  id_medicos integer,
  nombre varchar(150),
  direccion varchar(150)
);

CREATE TABLE Citas (
  id_citas integer PRIMARY KEY,
  id_medico integer,
  id_pacientes integer,
  fecha_cita date
);

ALTER TABLE Citas ADD FOREIGN KEY (id_pacientes) REFERENCES Pacientes (id_pacientes);
ALTER TABLE Consultorios ADD FOREIGN KEY (id_medicos) REFERENCES Medicos (id_medicos);
ALTER TABLE Medicos ADD FOREIGN KEY (id_citas) REFERENCES Citas (id_citas);
ALTER TABLE Medicos ADD FOREIGN KEY (id_consultorios) REFERENCES Consultorios (id_consultorios);