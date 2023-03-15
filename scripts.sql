
--Scripts
------------------------


CREATE TABLE productos (
    id_producto int ,
    NOMBRE varchar(255),
    id_categoria int,
    primary key (id_producto)
);

CREATE TABLE categorías (
    id_categoria int,
    NOMBRE varchar(255),
    primary key (id_categoria)
);

CREATE TABLE clientes (
    id_cliente int,
    NOMBRE varchar(255),
    id_orden int,
    primary key (id_cliente)
);
CREATE TABLE ordenes (
    id_orden int,
    NOMBRE varchar(255),
    id_producto int,
    primary key (id_orden)
);


 alter table productos
  add constraint id_categoria
  foreign key (id_categoria)
  references categorías (id_categoria);
 
 
  alter table clientes
  add constraint id_orden
  foreign key (id_orden)
  references ordenes (id_orden);
 
 
  alter table ordenes
  add constraint id_producto
  foreign key (id_producto)
  references productos (id_producto);
 
 
 
 INSERT INTO public.categorías
(id_categoria, nombre)
VALUES(1, 'categoria1'),
(2,'categoria2'),
(3,'categoria3');


 INSERT INTO public.productos
(id_producto, nombre, id_categoria)
VALUES(1, 'producto1', 1),
(2,'producto2',3);


INSERT INTO public.ordenes
(id_orden, nombre, id_producto)
VALUES(1, 'orden1', 1),
(2, 'orden1', 2);

INSERT INTO public.clientes
(id_cliente, nombre, id_orden)
VALUES(1, 'cliente1', 1);
 
 
 
 ---------- prueba 2 
 

 
 ---- para el ejercicio 2 se conecta con un bd postgres con la siguiente tabla
 
  CREATE TABLE USUARIOS (
    ID_USUARIO int ,
    NOMBRE varchar(255),
    APELLIDO varchar(50),
	 contrasena varchar(50),
     CORREO varchar(50),
    primary key (ID_USUARIO)
);
 
 
-- la bd se hizo una prueba con docker 
--1) Traer imagen  : docker pull postgres                        

--2) crear contenedor                                                                                                                                                                                                 2) crear contenedor                                                                                                                                                                                                                         
 --docker run -d --rm --name postgres -e POSTGRES_PASSWORD=test -p 5432:5432 postgres