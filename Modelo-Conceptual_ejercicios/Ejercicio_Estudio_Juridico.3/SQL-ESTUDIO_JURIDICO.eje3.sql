use Estudio_juridico;
CREATE TABLE Clientes (
  id_clientes int PRIMARY KEY,
  cuil int,
  nombre varchar(255),
  apellido varchar(255),
  direccion varchar(255),
  email varchar(255)
);

CREATE TABLE Juzgado (
  id_juzgado int PRIMARY KEY,
  id_expedientes int,
  id_personal int,
  id_causas int,
  num_exp int,
  denominacion varchar(100)
);

CREATE TABLE Estados (
  id_estados int PRIMARY KEY,
  id_juzgado int,
  iniciado varchar(100),
  prueba varchar(200),
  descripcion varchar(100),
  alegato varchar(100),
  finalizado varchar(200)
);

CREATE TABLE Abogado (
  id_abogado int PRIMARY KEY,
  id_estudio int,
  toma_caso varchar(100),
  no_toma varchar(100)
);

CREATE TABLE Expedientes (
  id_expedientes int PRIMARY KEY,
  id_registro int,
  num_tramite int,
  jusgado varchar(200),
  estado varchar(255)
);

CREATE TABLE Causas (
  id_causas int PRIMARY KEY,
  j_sucesorio varchar(150),
  descripcion varchar(100)
);

CREATE TABLE Registro (
  id_registro int PRIMARY KEY,
  id_abogado int,
  id_exp_iniciado int,
  id_exp_no_iniciado int
);

CREATE TABLE Personal (
  id_personal int PRIMARY KEY,
  juez varchar(150),
  secretario varchar(150),
  telefono int
);

CREATE TABLE Observacion (
  id_observacion int PRIMARY KEY,
  id_estados int
);

CREATE TABLE Exp_iniciado (
  id_exp_iniciado int PRIMARY KEY,
  fecha_inicio date,
  num_exp int,
  caratula varchar(150),
  tipo_causa varchar(255),
  demandados varchar(255)
);

CREATE TABLE Exp_no_iniciado (
  id_exp_no_iniciado int PRIMARY KEY,
  num_exp int,
  caratula varchar(150),
  tipo_causa varchar(255),
  actores varchar(255)
);

CREATE TABLE Estudio (
  id_estudio int PRIMARY KEY,
  id_clientes int,
  id_estudio_clientes int
);

CREATE TABLE Estudio_clientes (
  id_estudio_clientes int PRIMARY KEY
);

ALTER TABLE Estudio ADD FOREIGN KEY (id_clientes) REFERENCES Clientes (id_clientes);
ALTER TABLE Abogado ADD FOREIGN KEY (id_estudio) REFERENCES Estudio (id_estudio);
ALTER TABLE Registro ADD FOREIGN KEY (id_abogado) REFERENCES Abogado (id_abogado);
ALTER TABLE Expedientes ADD FOREIGN KEY (id_registro) REFERENCES Registro (id_registro);
ALTER TABLE Juzgado ADD FOREIGN KEY (id_expedientes) REFERENCES Expedientes (id_expedientes);
ALTER TABLE Juzgado ADD FOREIGN KEY (id_personal) REFERENCES Personal (id_personal);
ALTER TABLE Estados ADD FOREIGN KEY (id_juzgado) REFERENCES Juzgado (id_juzgado);
ALTER TABLE Observacion ADD FOREIGN KEY (id_estados) REFERENCES Estados (id_estados);
ALTER TABLE Registro ADD FOREIGN KEY (id_exp_iniciado) REFERENCES Exp_iniciado (id_exp_iniciado);
ALTER TABLE Registro ADD FOREIGN KEY (id_exp_no_iniciado) REFERENCES Exp_no_iniciado (id_exp_no_iniciado);
ALTER TABLE Estudio ADD FOREIGN KEY (id_estudio_clientes) REFERENCES Estudio_clientes (id_estudio_clientes);
ALTER TABLE Juzgado ADD FOREIGN KEY (id_causas) REFERENCES Causas (id_causas);