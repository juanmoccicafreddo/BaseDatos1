
use Clinica;
CREATE TABLE Medicos (
  id_medicos integer PRIMARY KEY,
  nombre varchar(255),
  especializacion varchar(255),
  telefono_medico integer
);

CREATE TABLE Pacientes (
  id_pacientes integer PRIMARY KEY,
  dni integer,
  nombre varchar(255),
  apellido varchar(255),
  fecha_nacimiento date,
  telefono integer
);

CREATE TABLE Citas (
  id_cita integer PRIMARY KEY,
  id_medicos integer,
  id_pacientes integer,
  motivo_consulta varchar(255),
  fecha_cita date,
  hora time
);

ALTER TABLE Citas ADD FOREIGN KEY (id_medicos) REFERENCES Medicos (id_medicos);
ALTER TABLE Citas ADD FOREIGN KEY (id_pacientes) REFERENCES Pacientes (id_pacientes);
