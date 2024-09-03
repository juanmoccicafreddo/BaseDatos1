use tienda;
CREATE TABLE Productos (
  id_productos integer PRIMARY KEY,
  nombre varchar(200),
  talla integer,
  color varchar(255),
  precio double
);

CREATE TABLE Clientes (
  id_clientes integer PRIMARY KEY,
  nombre varchar(255),
  apellido varchar(255),
  correo varchar(100),
  telefono integer
);

CREATE TABLE Ventas (
  id_ventas integer PRIMARY KEY,
  id_clientes integer,
  id_productos integer,
  fecha_venta date,
  cantidad integer,
  forma_pago varchar(200)
);

ALTER TABLE Ventas ADD FOREIGN KEY (id_clientes) REFERENCES Clientes (id_clientes);
ALTER TABLE Ventas ADD FOREIGN KEY (id_productos) REFERENCES Productos (id_productos);
