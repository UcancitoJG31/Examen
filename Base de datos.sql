DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda;
USE tienda;
CREATE TABLE fabricante (
    codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);
CREATE TABLE producto (
    codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DOUBLE NOT NULL,
    codigo_fabricante INT UNSIGNED NOT NULL,
    FOREIGN KEY (codigo_fabricante)
        REFERENCES fabricante (codigo)
);
INSERT INTO fabricante VALUES(1, 'Asus');
INSERT INTO fabricante VALUES(2, 'Lenovo');
INSERT INTO fabricante VALUES(3, 'Hewlett-Packard');
INSERT INTO fabricante VALUES(4, 'Samsung');
INSERT INTO fabricante VALUES(5, 'Seagate');
INSERT INTO fabricante VALUES(6, 'Crucial');
INSERT INTO fabricante VALUES(7, 'Gigabyte');
INSERT INTO fabricante VALUES(8, 'Huawei');
INSERT INTO fabricante VALUES(9, 'Xiaomi');
INSERT INTO producto VALUES(1, 'Disco duro SATA3 1TB', 86.99, 5);
INSERT INTO producto VALUES(2, 'Memoria RAM DDR4 8GB', 120, 6);
INSERT INTO producto VALUES(3, 'Disco SSD 1 TB', 150.99, 4);
INSERT INTO producto VALUES(4, 'GeForce GTX 1050Ti', 185, 7);
INSERT INTO producto VALUES(5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO producto VALUES(6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO producto VALUES(7, 'Monitor 27 LED Full HD', 245.99, 1);
INSERT INTO producto VALUES(8, 'Portátil Yoga 520', 559, 2);
/*1. Listar el nombre de todos los productos que estan en la tabla producto*/
SELECT 
    nombre
FROM
    producto;
/*2. Listar el nombre y precio de todos los productos que estan en la tabla producto*/
SELECT 
    nombre, precio
FROM
    producto;
/*3. Lista todas las columnas de la tabla productos*/
SELECT 
    *
FROM
    producto;
/*4. Listar el nombre de todos los productos y el precio de dolares y euros*/
SELECT 
    nombre, precio, precio * 1.06 AS EUROS
FROM
    producto;
/*5. Listar el nombre de todos los productos y el precio de dolares y euros con los alias*/
SELECT 
    nombre AS Nombre_de_productos,
    precio AS Euros,
    precio * 1.06 AS Dolar
FROM
    producto;
/*6. Listar el nombre de todos los productos y el precio pero con todos los nombre en mayúscula*/
SELECT 
    UPPER(nombre), precio
FROM
    producto;
/*7. Listar el nombre de todos los productos y el precio pero con todos los nombre en minúscula*/
SELECT LOWER (nombre), precio FROM producto;
/*8. Listar el nombre de todos los fabricantes en una columna y en otra columna en mayuscula los dos primeros caracteres del nombre del fabricante*/
SELECT nombre, UPPER (substring(nombre,1,2)) AS INICIALES FROM fabricante;
/* Poner el nombre del fabricante donde esta el codigo de fabricante*/
SELECT  producto.codigo, producto.nombre, producto.precio, fabricante.nombre AS Fabricante FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo;
/*Agregar precio de euros y dolares a la tabla*/
SELECT  producto.codigo, producto.nombre, producto.precio AS DOLAR ,producto.precio*1.06 AS EUROS, fabricante.nombre AS Fabricante FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo;
/*Mostar solamente ASUS este*/
SELECT  producto.codigo, producto.nombre, producto.precio AS DOLAR ,producto.precio*1.06 AS EUROS, fabricante.nombre AS Fabricante FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo WHERE fabricante.nombre = "ASUS";
/*Odenar de manera de mayor a menor los productos que sean superiores a 185*/
SELECT 
    producto.codigo,
    producto.nombre,
    producto.precio AS DOLAR,
    producto.precio * 1.06 AS EUROS,
    fabricante.nombre AS Fabricante
FROM
    producto
        INNER JOIN
    fabricante ON producto.codigo_fabricante = fabricante.codigo
WHERE
    producto.precio >= 185
ORDER BY producto.precio ASC;
SELECT nombre FROM fabricante;



use tienda;


CREATE TABLE perfil(
	nombre VARCHAR (100) NOT NULL,
    apellido_paterno VARCHAR (100) NOT NULL,
    apellido_materno VARCHAR (100) NOT NULL,
    telefono VARCHAR (100) NOT NULL,
    correo VARCHAR (100) NOT NULL,
    usuario VARCHAR (100) NOT NULL,
    contraseña VARCHAR (100) NOT NULL
    );
    
    INSERT INTO perfil VALUES('Antonio', 'Sanchez', 'Coh', 9982385611, 'Anscoh@gmail.com', 'Antony', 'F12345');
    INSERT INTO perfil VALUES('Jesus', 'Hernandez', 'Gonzalez', 9984374651, 'Chucho37@gmail.com', 'Chucho37', 'J8G831');
    
    