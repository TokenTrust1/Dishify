drop database if exists Dishify;
create database Dishify;
use Dishify;

create table users (
  usuario varchar(15) primary key,
  contra varchar(10),
  nombre varchar(30)
);
create table ingredientes(
nombre varchar(30) primary key,
calorias int(10),
carbos int(10),
proteina int(10),
fat int(10)
);

INSERT INTO ingredientes(nombre, calorias, carbos, proteina, fat) VALUES
('pechuga de pollo','30','20','10','5');

INSERT INTO users (usuario, contra, nombre) VALUES
('Cham', '1234', 'Samuel Gutierrez'),
('Cesarin', 'cesar1', 'Cesar Gonzalez');
select * from users;

