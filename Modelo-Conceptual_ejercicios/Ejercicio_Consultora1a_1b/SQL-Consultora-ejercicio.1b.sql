CREATE TABLE Proyectos (
  id_proyectos int PRIMARY KEY,
  id_etapas int,
  id_empleados int,
  descripcion varchar(255),
  fecha_inicio date,
  fecha_fin date
);

CREATE TABLE Empleados (
  id_empleados int PRIMARY KEY,
  id_categorias int,
  num_legajo int,
  nombre varchar(200),
  apellido varchar(200),
  direccion varchar(200),
  telefono int,
  correo_electronico varchar(200),
  edad int,
  fecha_nacimiento date
);

CREATE TABLE Detalles (
  id_detalles int PRIMARY KEY,
  id_gestion int,
  id_etapas int,
  detalle text,
  fecha_inicio date,
  fecha_fin date
);

CREATE TABLE Etapas (
  id_etapas int PRIMARY KEY,
  id_detalles int,
  id_proyectos int,
  inicio varchar(100),
  planificacion varchar(100),
  operacion varchar(200),
  transicion varchar(200),
  cierre varchar(200)
);

CREATE TABLE Categorias (
  id_categorias int PRIMARY KEY,
  no_asignado varchar(100),
  en_ejecucion varchar(100),
  descripcion varchar(200),
  codigo_alfanumerico int
);

CREATE TABLE Gestion (
  id_gestion int PRIMARY KEY,
  observacion varchar(255),
  finalizacion varchar(200)
);

ALTER TABLE Etapas ADD FOREIGN KEY (id_proyectos) REFERENCES Proyectos (id_proyectos);
ALTER TABLE Empleados ADD FOREIGN KEY (id_categorias) REFERENCES Categorias (id_categorias);
ALTER TABLE Detalles ADD FOREIGN KEY (id_gestion) REFERENCES Gestion (id_gestion);
ALTER TABLE proyectos ADD FOREIGN KEY (id_empleados) REFERENCES Empleados (id_empleados);
ALTER TABLE Etapas ADD FOREIGN KEY (id_detalles) REFERENCES Detalles (id_detalles);
