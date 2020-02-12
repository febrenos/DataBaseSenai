--COMENTARIO
--Criar Banco de Dados
CREATE DATABASE Biblioteca_Tarde;
​
-- Apontar para o banco que quero usar
USE Biblioteca_Tarde;
​
-- Criar Tabelas
​
CREATE TABLE Autores (
   IdAutor    INT PRIMARY KEY IDENTITY,
   NomeAutor  VARCHAR(200) NOT NULL
);
​
CREATE TABLE Generos (
	IdGenero	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(200)
);
​
CREATE TABLE Livros (
	IdLivros	INT PRIMARY KEY IDENTITY,
	Titulo		VARCHAR(255),
	IdAutor		INT FOREIGN KEY REFERENCES Autores (IdAutor),
	IdGenero	INT FOREIGN KEY REFERENCES Generos (IdGenero)
);
​
SELECT * FROM Generos;
SELECT * FROM Autores;
SELECT * FROM Livros;
​
INSERT INTO Generos (Nome)
VALUES ('Terror'),('Comedia'),('Drama'),('Aventura'),('Acao');
​
INSERT INTO Autores (NomeAutor)
VALUES ('George Matim'),('George Orwell'),('Rick Riordan'),('Paulo Coelho'),('Jk Roling');
​
INSERT INTO Livros (Titulo, IdAutor, IdGenero)
VALUES ('The Wither', 1, 1),('1984', 2, 2),('Percy Jackson', 3, 3),('O Alquimista', 4, 4),('Harry Potter', 5, 5);
​
UPDATE Generos
SET Nome = 'Ficcao'
WHERE IdGenero = 1;
​
​
​
-- ALTERAR ADICIONAR UMA NOVA COLUNA
ALTER TABLE Generos
ADD Descricao VARCHAR(255);
​
-- ALTERAR TIPO DE DADO
ALTER TABLE Generos
ALTER COLUMN Descricao CHAR(100);
​
--ALTERAR EXCLUIR COLUNA
ALTER TABLE Generos
DROP COLUMN Descricao;
​
DELETE FROM Autores
WHERE IdAutor = 1;
​
-- EXCLUIR Tabelas
--DROP TABLE Livros

​
​--SELECIONAR TODOS OS AUTORES
SELECT IdAutor FROM Livros;

--SELECIONAR TODOS OS GENEROS
SELECT IdGenero FROM Livros;

--SELECIONAR TODOS OS LIVROS
SELECT IdLivros FROM Livros;

--SELECIONAR TODOS OS LIVROS E SEUS RESPECTIVOS AUTORES
SELECT IdLivros, IdAutor FROM Livros;

--SELECIONAR TODOS OS LIVROS E SEUS RESPECTIVOS GENEROS
SELECT IdGenero FROM Livros;

--SELECIONAR TODOS OS LIVROS E SEUS RESPECTIVOS AUTORES E GENEROS
SELECT IdLivros, IdGenero FROM Livros;












