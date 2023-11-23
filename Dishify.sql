drop database if exists Dishify;
create database Dishify;
use Dishify;

create table users (
  usuario varchar(15) primary key,
  contra varchar(10),
  nombre varchar(30)
);
INSERT INTO users (usuario, contra, nombre) VALUES
('Cham', '1234', 'Samuel Gutierrez'),
('Cesarin', 'cesar1', 'Cesar Gonzalez');
select * from users;

