drop database if exists data_ds;
create database data_ds;
use data_ds;

create table users (
  id_user int auto_increment primary key,
  usuario varchar(15),
  contra varchar(10),
  nombre varchar(30),
  rol varchar(10)
);
INSERT INTO users (usuario, contra, nombre, rol) VALUES
('Cham', '1234', 'Samuel Gutierrez', 'Chef'),
('Cesarin', 'cesar1', 'Cesar Gonzalez', 'Cocinero');

select * from users;

create table archivos_pdf (
  id int auto_increment primary key,
  nombre varchar(255) not null,
  ruta varchar(255) not null,
  id_user int,
  foreign key (id_user) references users(id_user) on update cascade on delete cascade
);
