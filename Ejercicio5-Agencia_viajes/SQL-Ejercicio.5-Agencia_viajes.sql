
use agencia_viajes;
CREATE TABLE agencia_viajes.Paquetes (
  id_cod_paquete integer PRIMARY KEY,
  destino varchar(255),
  duracion integer,
  precio double
);

CREATE TABLE agencia_viajes.Clientes (
  id_dni integer PRIMARY KEY,
  nombre varchar(255),
  apellido varchar(255),
  direccion varchar(100),
  telefono integer
);

CREATE TABLE agencia_viajes.Reservas (
  id_reservas integer PRIMARY KEY,
  id_cod_paquete integer,
  id_dni integer,
  fecha_reserva date,
  cant_personas integer,
  estado varchar(255)
);

ALTER TABLE agencia_viajes.Reservas ADD FOREIGN KEY (id_dni) REFERENCES agencia_viajes.Clientes (id_dni);
ALTER TABLE agencia_viajes.Reservas ADD FOREIGN KEY (id_cod_paquete) REFERENCES agencia_viajes.Paquetes (id_cod_paquete);
