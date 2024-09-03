use Biblioteca;
CREATE TABLE Libros (
  id_libros integer PRIMARY KEY,
  año_publicacion varchar(100),
  titulo varchar(255),
  autor varchar(255)
);

CREATE TABLE Usuario (
  id_usuario integer PRIMARY KEY,
  nombre varchar(255),
  apellido varchar(255),
  direccion varchar(255),
  telefono varchar(255)
);

CREATE TABLE Prestamos (
  id_prestamos integer PRIMARY KEY,
  id_libros integer,
  id_usuario integer,
  fecha_prestamo varchar(255),
  fecha_devolucion varchar(255),
  estado varchar(255)
);

ALTER TABLE Prestamos ADD FOREIGN KEY (id_libros) REFERENCES Libros (id_libros);
ALTER TABLE Prestamos ADD FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario);
