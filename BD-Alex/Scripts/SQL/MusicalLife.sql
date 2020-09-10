CREATE DATABASE MusicalLife;
USE MusicalLife;

CREATE TABLE usuario (
id_Usuario INT PRIMARY KEY AUTO_INCREMENT,
nomeCompleto varchar (100),
nickName VARCHAR (50),
email VARCHAR (100),
contato varchar (11),
senha VARCHAR (50) 
) AUTO_INCREMENT = 1;

INSERT INTO usuario (nomeCompleto, nickName, email, contato, senha) VALUES
('Gabriel Cardoso','Cardoso','cardoso@hotmail.com','11962754755','12345');

INSERT INTO usuario (nickName, email, senha) VALUES
('Maria','maria@hotmail.com','123');

SELECT * FROM usuario;
SELECT * FROM usuario WHERE nickName = 'Cardoso' AND senha = '123';
