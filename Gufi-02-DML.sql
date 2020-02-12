--Procure sempre comentar o codigo
--Criar Banco De Dados
CREATE DATABASE Gufi_Tardee;

--Definir qual banco de dados está sendo usado
USE Gufi_Tardee;

--Criar as tabelas do banco de dados
--IDENTITY usado para sempre ir contando o id fazer contagem e ter uma identidade
--UNIQUE para nao repetir o valor
CREATE TABLE TipoUsuario (
	IdTipoUsuario INT PRIMARY KEY IDENTITY,
	TituloTipoUsuario VARCHAR (255) NOT NULL UNIQUE
);

CREATE TABLE TipoEvento (
	IdTipoEvento INT PRIMARY KEY IDENTITY,
	TituloTipoEvento VARCHAR (255) NOT NULL UNIQUE
);

CREATE TABLE Instituicao (
	IdInstituicao INT PRIMARY KEY IDENTITY,
	CNPJ CHAR (14) NOT NULL UNIQUE,
	NomeFantasia VARCHAR (255) NOT NULL UNIQUE,
	Endereco VARCHAR (255) NOT NULL UNIQUE,
);

CREATE TABLE Usuario (
	IdUsuario INT PRIMARY KEY IDENTITY,
	NomeUsuario VARCHAR (255) NOT NULL,
	Email VARCHAR (255) NOT NULL UNIQUE,
	Senha VARCHAR (255) NOT NULL,
	Genero VARCHAR (255) NOT NULL,
	DataNascimento DATETIME2 NOT NULL,
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario(IdTipoUsuario)
);

CREATE TABLE Evento (
	IdEvento INT PRIMARY KEY IDENTITY,
	NomeEvento VARCHAR (255) NOT NULL,
	DataEvento DATETIME2 NOT NULL,
	Descricao VARCHAR (255) NOT NULL,
	AcessoLivre BIT DEFAULT (1) NOT NULL, --BIT so pode 0 ou 1
	IdTipoEvento INT FOREIGN KEY REFERENCES TipoEvento (IdTipoEvento),
	IdInstituicao INT FOREIGN KEY REFERENCES Instituicao (IdInstituicao
);

CREATE TABLE Presenca (
	IdPresenca	INT PRIMARY KEY IDENTITY,
	Situacao	VARCHAR(200),
	IdUsuario	INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
	IdEvento	INT FOREIGN KEY REFERENCES Evento(IdEvento)
);
