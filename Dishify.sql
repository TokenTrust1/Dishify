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
('pechuga de pollo','30','20','10','5'),
('Tortilla de maíz', 218, 45, 6, 3),
('Frijoles negros cocidos', 132, 24, 9, 1),
('Aguacate', 160, 9, 2, 15),
('Chile jalapeño', 29, 7, 1, 0),
('Tomate (jitomate)', 18, 4, 1, 0),
('Cilantro fresco', 23, 4, 2, 1),
('Cebolla', 40, 9, 1, 0),
('Ajo', 149, 33, 6, 1),
('Lima', 30, 11, 1, 0),
('Queso Oaxaca', 300, 1, 18, 25),
('Carne de res (falda)', 192, 0, 27, 7),
('Chile poblano', 20, 5, 2, 0),
('Maíz', 86, 19, 3, 1),
('Papaya', 43, 11, 1, 0),
('Mango', 60, 15, 1, 0),
('Nopales', 16, 3, 1, 0),
('Pescado (tilapia)', 96, 0, 20, 2),
('Pollo (pechuga sin piel)', 165, 0, 31, 4),
('Arroz blanco', 130, 28, 3, 0),
('Camote', 86, 20, 2, 0),
('Chorizo', 455, 2, 24, 38),
('Crema', 291, 3, 3, 30),
('Miel', 304, 82, 0, 0),
('Chile ancho', 281, 51, 12, 8),
('Jícama', 38, 9, 1, 0),
('Chile chipotle', 40, 9, 2, 0),
('Chile de árbol', 324, 58, 12, 16),
('Guayaba', 68, 14, 3, 1),
('Plátano macho', 122, 32, 1, 0),
('Queso fresco', 299, 3, 18, 25),
('Espinaca', 23, 4, 3, 0),
('Zanahoria', 41, 10, 1, 0),
('Calabaza', 26, 7, 1, 0),
('Chile serrano', 32, 7, 2, 0),
('Piña', 50, 13, 1, 0),
('Lomo de cerdo', 242, 0, 27, 14),
('Pepino', 15, 4, 1, 0),
('Queso cotija', 376, 3, 25, 30),
('Tamarindo', 239, 63, 3, 1),
('Chile habanero', 40, 9, 2, 0),
('Pimiento morrón', 20, 5, 1, 0),
('Chile guajillo', 281, 51, 12, 8),
('Masa de maíz', 218, 45, 6, 3),
('Pulpo', 164, 0, 30, 2),
('Queso panela', 264, 1, 20, 20),
('Tomatillo', 32, 6, 1, 1),
('Chile pasilla', 281, 51, 12, 8),
('Pato', 337, 0, 19, 28),
('Camarón', 99, 0, 24, 0),
('Mole en polvo', 375, 50, 12, 10);
select * from ingredientes;
INSERT INTO users (usuario, contra, nombre) VALUES
('Cham123', 'Cham061205', 'Samuel Gutierrez'),
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
INSERT INTO recetas (nombre, calorias, grasas, carbohidratos, proteinas, porcion, ingredientes, instrucciones) VALUES 
	('Huevo Pochado con Tostada y Palta',359, 20.6,24.4,19.3,'1 porción (220 g)','Huevo - Entero 2 unidades (110 g), Vinagre 1 cucharada (10 g), Palta 1/4 unidad (60 g), Pan de Molde 1 rebanada (40 g)','1. Calentar en una olla pequeña, a fuego medio, un poco de agua con el vinagre, sin dejar que hierva. 2. Cuando esté bien caliente (no hirviendo), romper el huevo en un recipiente aparte y verterlo en el agua caliente. 3. No dejar que el agua hierva para que el huevo no se rompa. Cocinar por 4 minutos y retirar del agua. 4. Aparte, tostar o calentar la rebanada de pan, agregar la palta encima y servir sobre ello el huevo pochado.'),
    ('Ensalada César con Pollo', 450, 25.5, 22.3, 35.2, '1 plato (300 g)', 'Pechuga de pollo 1 unidad (150 g), Lechuga romana 2 tazas (100 g), Crutones 1/2 taza (30 g), Queso parmesano 2 cucharadas (20 g), Aderezo César 3 cucharadas (45 g)', 'Instrucciones para Ensalada César con Pollo...'),
	('Sopa de Tomate y Albahaca', 180, 6.2, 28.1, 4.5, '1 tazón (250 ml)', 'Ingredientes para Sopa de Tomate y Albahaca...', 'Instrucciones para Sopa de Tomate y Albahaca...'),
	('Tacos de Pescado', 380, 12.4, 44.8, 26.1, '2 tacos', 'Ingredientes para Tacos de Pescado...', 'Instrucciones para Tacos de Pescado...'),
	('Smoothie de Plátano y Fresa', 210, 1.5, 46.2, 4.8, '1 vaso (300 ml)', 'Ingredientes para Smoothie de Plátano y Fresa...', 'Instrucciones para Smoothie de Plátano y Fresa...'),
	('Pasta al Pesto', 610, 22.4, 82.3, 20.1, '1 plato (350 g)', 'Ingredientes para Pasta al Pesto...', 'Instrucciones para Pasta al Pesto...'),
	('Curry de Garbanzos', 435, 14.8, 65.4, 18.2, '1 plato (400 g)', 'Ingredientes para Curry de Garbanzos...', 'Instrucciones para Curry de Garbanzos...'),
    ('Ensalada Griega con Pollo',310 , 18 ,12 ,28 ,'1 plato (250 g)','Pechuga de pollo 150 g, Tomate 1 unidad (100 g), Pepino 1/2 unidad (50 g), Queso feta 50 g, Aceitunas negras 10 unidades (30 g), Aceite de oliva 1 cucharada (15 g)','1.Cocinar la pechuga de pollo a la plancha y cortar en tiras.2.Cortar el tomate y el pepino en cubos.3.Mezclar todos los ingredientes en un bol y agregar el queso feta y las aceitunas.4.Aliñar con aceite de oliva y servir.'),
	('Tacos de Pescado',380 , 18 ,12 ,28 ,'1 plato (250 g)','Pechuga de pollo 150 g, Tomate 1 unidad (100 g), Pepino 1/2 unidad (50 g), Queso feta 50 g, Aceitunas negras 10 unidades (30 g), Aceite de oliva 1 cucharada (15 g)','1.Cocinar la pechuga de pollo a la plancha y cortar en tiras.2.Cortar el tomate y el pepino en cubos.3.Mezclar todos los ingredientes en un bol y agregar el queso feta y las aceitunas.4.Aliñar con aceite de oliva y servir.'),
	('Ensalada Griega con Pollo', 310, 18, 12, 28, '1 plato (250 g)', 'Pechuga de pollo 150 g, Tomate 1 unidad (100 g), Pepino 1/2 unidad (50 g), Queso feta 50 g, Aceitunas negras 10 unidades (30 g), Aceite de oliva 1 cucharada (15 g)', '1. Cocinar la pechuga de pollo a la plancha y cortar en tiras. 2. Cortar el tomate y el pepino en cubos. 3. Mezclar todos los ingredientes en un bol y agregar el queso feta y las aceitunas. 4. Aliñar con aceite de oliva y servir.'),
	('Tacos de Pescado', 380, 15, 35, 25, '2 tacos (200 g)', 'Filete de pescado blanco 120 g, Tortillas de maíz 2 unidades (60 g), Repollo 1/4 taza (30 g), Yogur natural 2 cucharadas (30 g), Limón 1/2 unidad (20 g), Aceite de oliva 1 cucharadita (5 g)', '1. Condimentar y cocinar el pescado en una sartén con un poco de aceite de oliva. 2. Calentar las tortillas de maíz. 3. Rellenar las tortillas con el pescado, repollo rallado y un toque de yogur mezclado con jugo de limón.'),
	('Sopa de Lentejas', 320, 8, 40, 18, '1 tazón (300 g)', 'Lentejas 1/2 taza (100 g), Zanahoria 1 unidad (60 g), Cebolla 1/4 unidad (40 g), Ajo 1 diente (5 g), Caldo de verduras 2 tazas (500 ml), Aceite de oliva 1 cucharadita (5 g)', '1. Sofreír en una olla la cebolla y el ajo picados. 2. Agregar las lentejas, la zanahoria cortada y el caldo. 3. Cocinar a fuego lento hasta que las lentejas estén tiernas.'),
	('Stir Fry de Tofu y Vegetales', 260, 16, 20, 12, '1 plato (250 g)', 'Tofu 100 g, Brócoli 1/2 taza (50 g), Zanahoria 1/2 unidad (30 g), Pimiento rojo 1/4 unidad (30 g), Salsa de soja 2 cucharadas (30 ml), Aceite de sésamo 1 cucharadita (5 g)', '1. Cortar el tofu en cubos y dorar en una sartén con aceite de sésamo. 2. Añadir los vegetales troceados y saltear. 3. Agregar la salsa de soja y cocinar por unos minutos más.'),
	('Ensalada de Quinoa con Espinacas', 340, 12, 45, 14, '1 plato (250 g)', 'Quinoa 1/2 taza (90 g), Espinacas frescas 1 taza (30 g), Tomates cherry 1/2 taza (100 g), Almendras tostadas 1/4 taza (30 g), Queso feta 30 g, Vinagreta balsámica 2 cucharadas (30 ml)', '1. Cocinar la quinoa según las instrucciones del paquete. 2. Mezclar la quinoa cocida con espinacas, tomates cherry y almendras. 3. Agregar queso feta y aderezar con vinagreta balsámica.');
select * from recetas;
CREATE TABLE plan (
    idPlan int auto_increment primary key,
    tmetb INT,
    gent INT,
    caldiarias INT,
    proteinas INT,
    carbohidratos INT,
    grasas INT,
    imc DECIMAL(4,2),
    creatina DECIMAL(2,1),
    agua DECIMAL(2,1),
	usuario varchar(15),
    FOREIGN KEY (usuario) REFERENCES users(usuario)
);	
INSERT INTO plan (tmetb, gent, caldiarias, proteinas, carbohidratos, grasas, imc, creatina, agua, usuario)
VALUES
(1800, 150, 2000, 100, 300, 50, 25.5, 5.5, 2.5, 'Cham123');
select * from plan;

