use Empresa_servicios;
CREATE TABLE Empresa_Clientes (
  id_clientes int PRIMARY KEY,
  id_tecnicos int,
  id_equipos int,
  id_sectores int,
  nombre varchar(100),
  direccion varchar(100),
  area varchar(100)
);

CREATE TABLE Sectores (
  id_sectores int PRIMARY KEY,
  descripcion text
);

CREATE TABLE Equipos (
  id_equipos int PRIMARY KEY,
  id_mantenimiento int,
  id_proveedores int,
  nombre varchar(100),
  tipo varchar(255)
);

CREATE TABLE Tecnicos (
  id_tecnicos int PRIMARY KEY,
  id_empresa int,
  nombre varchar(100),
  direccion double,
  telefono int
);

CREATE TABLE Mantenimiento (
  id_mantenimiento int PRIMARY KEY,
  id_registro int,
  fecha_nac date,
  revisado varchar(100),
  reparado varchar(100),
  descripcion text
);

CREATE TABLE Proveedores (
  id_proveedores int PRIMARY KEY,
  nombre varchar(100)
);

CREATE TABLE Empresa (
  id_empresa int PRIMARY KEY,
  id_clientes int
);

CREATE TABLE Registro (
  id_registro int PRIMARY KEY,
  retirado varchar(100),
  reemplazo varchar(100),
  cantidad int,
  descripcion text
);

ALTER TABLE Tecnicos ADD FOREIGN KEY (id_empresa) REFERENCES Empresa (id_empresa);
ALTER TABLE Empresa_Clientes ADD FOREIGN KEY (id_equipos) REFERENCES Equipos (id_equipos);
ALTER TABLE Equipos ADD FOREIGN KEY (id_proveedores) REFERENCES Proveedores (id_proveedores);
ALTER TABLE Empresa_Clientes ADD FOREIGN KEY (id_sectores) REFERENCES Sectores (id_sectores);
ALTER TABLE Mantenimiento ADD FOREIGN KEY (id_registro) REFERENCES Registro (id_registro);
ALTER TABLE Equipos ADD FOREIGN KEY (id_mantenimiento) REFERENCES Mantenimiento (id_mantenimiento);
ALTER TABLE Empresa ADD FOREIGN KEY (id_clientes) REFERENCES Empresa_Clientes (id_clientes);
ALTER TABLE Empresa_Clientes ADD FOREIGN KEY (id_tecnicos) REFERENCES Tecnicos (id_tecnicos);