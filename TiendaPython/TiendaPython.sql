CREATE DATABASE TiendaPython;

USE TiendaPython;

CREATE TABLE usuarios (
cedula_usuario BIGINT PRIMARY KEY,
email_usuario VARCHAR(255) NOT NULL,
nombre_usuario VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL,
usuario VARCHAR(255) NOT NULL
);

INSERT INTO usuarios VALUES(001, 'andreslr1989@gmail.com','Andres Lambrano','LetMeIn', 'admininicial');
INSERT INTO usuarios VALUES(002, 'ingenierocarlos88@gmail.com','Carlos Jaimes','admin123456','admin');
INSERT INTO usuarios VALUES(003, 'israeljimenez33@hotmail.com','Israel Jimenez','1234', 'user');
INSERT INTO usuarios VALUES(004, 'alfonsohortua@yahoo.com','Alfonso Hortua','qwerty', 'usuario');

CREATE UNIQUE INDEX usuario_unico
ON usuarios(usuario);

CREATE TABLE clientes(
cedula_cliente BIGINT PRIMARY KEY,
direccion_cliente VARCHAR(255) DEFAULT NULL,
email_cliente VARCHAR(255) DEFAULT NULL,
nombre_cliente VARCHAR(255) DEFAULT NULL,
telefono_cliente VARCHAR(255) DEFAULT NULL
);

INSERT INTO clientes VALUES(1234,'Calle 4 # 8 - 9', 'cliente1@correo.com','Juan Ramirez', '32675464');
INSERT INTO clientes VALUES(5678,'Carrera 76 # 68 - 78', 'cliente2@correo.com','Camilo Cepeda', '6534782');
INSERT INTO clientes VALUES(4321,'Av 189 # 45 - 12', 'cliente3@correo.com','Hector Obadia', '8712009');
INSERT INTO clientes VALUES(8765,'Tv 200 # 178 - 564', 'cliente4@correo.com','Hansel Acosta', '9087654');

CREATE UNIQUE INDEX cliente_unico
ON clientes(cedula_cliente);
