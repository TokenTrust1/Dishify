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
select * from ingredientes;
INSERT INTO users (usuario, contra, nombre) VALUES
('Cham', '1234', 'Samuel Gutierrez'),
('Cesarin', 'cesar1', 'Cesar Gonzalez');
select * from users;
CREATE TABLE recetas (
    nombre VARCHAR(255) primary key,
    calorias INT,
    grasas DECIMAL(4,1),
    carbohidratos DECIMAL(4,1),
    proteinas DECIMAL(4,1),
    porcion VARCHAR(100),
    ingredientes TEXT,
    instrucciones TEXT
);	
INSERT INTO recetas (nombre, calorias, grasas, carbohidratos, proteinas, porcion, ingredientes, instrucciones)
VALUES (
    'Huevo Pochado con Tostada y Palta',359, 20.6,24.4,19.3,'1 porción (220 g)','Huevo - Entero 2 unidades (110 g), Vinagre 1 cucharada (10 g), Palta 1/4 unidad (60 g), Pan de Molde 1 rebanada (40 g)','1. Calentar en una olla pequeña, a fuego medio, un poco de agua con el vinagre, sin dejar que hierva. 2. Cuando esté bien caliente (no hirviendo), romper el huevo en un recipiente aparte y verterlo en el agua caliente. 3. No dejar que el agua hierva para que el huevo no se rompa. Cocinar por 4 minutos y retirar del agua. 4. Aparte, tostar o calentar la rebanada de pan, agregar la palta encima y servir sobre ello el huevo pochado.'
);
select * from recetas;

