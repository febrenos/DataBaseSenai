-- DDL

CREATE DATABASE Optus_Tardee;

USE Optus_Tardee;

CREATE TABLE Tipo_Usuario (
	Id_TipoUsuario INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR (100)
);

INSERT Tipo_Usuario (Titulo)
VALUES ('ADM'), ('Comum')



CREATE TABLE Usuarios (
	Id_Usuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200),
	Id_TipoUsuario INT FOREIGN KEY REFERENCES Tipo_Usuario (Id_TipoUsuario)
);

CREATE TABLE Artistas (
	Id_Artista INT PRIMARY KEY IDENTITY,
	Nome_Artista VARCHAR (200) 
);

CREATE TABLE Estilos (
	Id_Estilo INT PRIMARY KEY IDENTITY,
	Nome_Estilo VARCHAR (100)
);

CREATE TABLE Albuns (
	Id_Album			INT PRIMARY KEY IDENTITY,
	Nome_Album			VARCHAR (200),
	Data_Lancamento		DATE,
	Localizacao			VARCHAR(200),
	Quantidade_Minutos	BIGINT,
	Id_Estilo			INT FOREIGN KEY REFERENCES Estilos (Id_Estilo),
	Id_Artista			INT FOREIGN KEY REFERENCES Artistas (Id_Artista)
);

ALTER TABLE Usuarios ADD Idade INT;
ALTER TABLE Usuarios DROP COLUMN Idade;

DROP TABLE Albuns;

-- DML

SELECT * FROM Usuarios;
SELECT * FROM Albuns;
SELECT * FROM Tipo_Usuario;
SELECT * FROM Estilos;
SELECT * FROM Artistas;

INSERT INTO Estilos (Nome_Estilo) 
VALUES ('Pagode'), ('Samba'), ('Rock'),('Funk'),('Pop'),('MPB'),('Rap'),('Sertanejo');

INSERT INTO Artistas (Nome_Artista) 
VALUES ('Anita'), ('Zeca pagodinha'), ('pitty'), ('Jorginho'),('Pericles'), ('Estevao'), ('Demi Lovato'),('Mc Igu');

INSERT INTO Albuns(Nome_Album, Data_Lancamento, Localizacao, Quantidade_Minutos, Id_Estilo, Id_Artista)
VALUES	('ROGER','29/01/2020', 'SP', 300, 1, 1 ),
		('LOUCO','28/01/2020', 'BH', 200, 8, 2),
		('VC','26/01/2020', 'EUA', 100, 2, 3 ), 
		('AMEM','24/01/2020', 'PE', 400, 7, 4 ), 
		('REBOLA','21/01/2020', 'SP', 500, 4, 6 ),
		('PULA','21/01/2020', 'EUA', 600, 4, 8 );







		

--UPDATE ALTERARA DADOS

UPDATE Artistas
SET Nome_Artista = 'ZECA PAGODINHO'
WHERE Id_Artista = 2;

--delete dados
DELETE FROM Artistas
WHERE Id_Artista = 5;

-- LIPAR TDS OS DADOS DA TABELA so da em termos sem chave estrageira
TRUNCATE TABLE Albuns;
TRUNCATE TABLE Artistas;