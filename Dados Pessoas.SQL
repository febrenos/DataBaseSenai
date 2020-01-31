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
	IdCNHs			INT FOREIGN KEY REFERENCES(IdCNHs)
);

SELECT * FROM Pessoas;
SELECT * FROM CNHs;
SELECT * FROM Emails;

INSERT INTO Emails(Email) 
VALUES	('Kátia da Silva'), 
		('Alexa Texas'), 
		('Tales Mileto'), 
		('Jeffersson Danoninho'), 
		('Matheus Nascimento'), 
		('Roger Natan');


INSERT INTO CNHs(CNH) 
VALUES	('Kátia da Silva'), 
		('Alexa Texas'), 
		('Tales Mileto'), 
		('Jeffersson Danoninho'), 
		('Matheus Nascimento'), 
		('Roger Natan');





