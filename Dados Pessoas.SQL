CREATE DATABASE DadosPessoas_Tarde;
USE DadosPessoas_Tarde;

CREATE TABLE Telefones(
	IdTelefone		INT PRIMARY KEY IDENTITY,
	Email			VARCHAR(200) NOT NULL
);

CREATE TABLE Emails(
	IdEmail		INT PRIMARY KEY IDENTITY,
	Email			VARCHAR(200) NOT NULL
);

CREATE TABLE CNHs(
	IdCNHs		INT PRIMARY KEY IDENTITY,
	CNH			VARCHAR(200) NOT NULL
);

CREATE TABLE Pessoas(
	IdPessoas		INT PRIMARY KEY IDENTITY,
	Pessoa			VARCHAR(200) NOT NULL,
	IdEmail			INT FOREIGN KEY REFERENCES(IdEmail),
	IdCNH			INT FOREIGN KEY REFERENCES(IdCNHs)
);

SELECT * FROM Pessoas;
SELECT * FROM CNHs;
SELECT * FROM Emails;

INSERT INTO Emails(Email) 
VALUES	('KátiadaSilva@gmail.com'), 
		('AlexaSilva@gmail.com'), 
		('TalesMileto@hotmail.com'), 
		('JefferssonDanoninho@gmail.com'), 
		('MatheusNascimento@yahoo.com.br'), 
		('RogerNatan@gmail.com');

INSERT INTO Pessoas(Pessoa,IdEmail,IdCNH) 
VALUES	('Kátia da Silva'), 
		('Alexa Silva'), 
		('Tales Mileto'), 
		('Jeffersson Danoninho'), 
		('Matheus Nascimento'), 
		('Roger Natan');


INSERT INTO CNHs(CNH) 
VALUES	('111-111-111-11'), 
		('111-111-111-12'), 
		('111-111-111-13'), 
		('111-111-111-14'), 
		('111-111-111-15'), 
		('111-111-111-16');





