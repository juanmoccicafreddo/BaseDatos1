use veterinaria;
CREATE TABLE Mascotas (
  id_mascotas int PRIMARY KEY,
  nombre varchar(150),
  especie varchar(100),
  edad int
);

CREATE TABLE Clientes (
  id_clientes int PRIMARY KEY,
  id_veterinarios int,
  nombre varchar(200),
  direccion varchar(200),
  telefono int
);

CREATE TABLE Veterinarios (
  id_veterinarios int PRIMARY KEY,
  id_mascotas int,
  id_consulta int,
  nombre varchar(200),
  especialidad varchar(200),
  matricula int
);

CREATE TABLE Consultas (
  id_consulta int PRIMARY KEY,
  id_veterinarios int,
  id_clientes int
);

ALTER TABLE Veterinarios ADD FOREIGN KEY (id_mascotas) REFERENCES Mascotas (id_mascotas);
ALTER TABLE Consultas ADD FOREIGN KEY (id_clientes) REFERENCES Clientes (id_clientes);
ALTER TABLE Veterinarios ADD FOREIGN KEY (id_consulta) REFERENCES Consultas (id_consulta);
ALTER TABLE Clientes ADD FOREIGN KEY (id_veterinarios) REFERENCES Veterinarios (id_veterinarios);