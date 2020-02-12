--DDL
CREATE DATABASE SpMedGroup;
USE SpMedGroup;
CREATE TABLE TipoUsuario(
	IdTipoUsuario		INT PRIMARY KEY IDENTITY,
	TituloTipoUsuario	VARCHAR(250) NOT NULL
);

CREATE TABLE Usuario(
	IdUsuario		INT PRIMARY KEY IDENTITY,
	IdTipoUsuario	INT FOREIGN KEY REFERENCES TipoUsuario(IdTipoUsuario),
	NomeUsuario		VARCHAR(250) NOT NULL
);

CREATE TABLE Especialidades(
	IdEspecialidades	INT PRIMARY KEY IDENTITY,
	TipoEspecialidade	VARCHAR(250) NOT NULL
);

CREATE TABLE Situacao(
	IdSituacao	INT PRIMARY KEY IDENTITY,
	SituacaoConsulta	VARCHAR(250) NOT NULL
);

CREATE TABLE Situacao(
	IdSituacao	INT PRIMARY KEY IDENTITY,
	SituacaoConsulta	VARCHAR(250) NOT NULL
);

CREATE TABLE Medicos(
	IdMedicos		INT PRIMARY KEY IDENTITY,
	IdEspecialidade	INT FOREIGN KEY REFERENCES Especialidades(IdEspecialidade),
	Nome			VARCHAR(250) NOT NULL,
	Crm				VARCHAR(250) NOT NULL,
	Email			VARCHAR(250) NOT NULL,
	SenhaMedico		VARCHAR(250) NOT NULL
);

CREATE TABLE Endereco(
	IdEndereco		INT PRIMARY KEY IDENTITY,
	NomeEndereco	VARCHAR (250) NOT NULL
):

CREATE TABLE Paciente(
	IdPaciente		INT PRIMARY KEY IDENTITY,
	IdEspecialidade	INT FOREIGN KEY REFERENCES Especialidades(IdEspecialidade),
	IdEndereco		INT FOREIGN KEY REFERENCES Endereco(IdEndereco),
	IdTipoUsuario	INT FOREIGN KEY REFERENCES TipoUsuario(IdTipoUsuario),
	Nome			VARCHAR(250) NOT NULL,
	Crm				VARCHAR(250) NOT NULL,
	Email			VARCHAR(250) NOT NULL,
	Senha			VARCHAR(250) NOT NULL,
	DataNascimento	VARCHAR(250) NOT NULL,
	RG				VARCHAR(250) NOT NULL,
);

CREATE TABLE Medicos(
	IdMedico		INT PRIMARY KEY IDENTITY,
	IdEspecialidade	INT FOREIGN KEY REFERENCES Especialidades(IdEspecialidade),
	IdTipoUsuario	INT FOREIGN KEY REFERENCES TipoUsuario(IdTipoUsuario),
	Nome			VARCHAR(250) NOT NULL,
	Crm				VARCHAR(250) NOT NULL,
	Email			VARCHAR(250) NOT NULL,
	Senha			VARCHAR(250) NOT NULL,
);

CREATE TABLE Consultas(
	IdConsulta		INT PRIMARY KEY IDENTITY,
	IdMedico		INT FOREIGN KEY REFERENCES Medico(IdMedico),
	IdSituacao		INT FOREIGN KEY REFERENCES Situacao(IdSituacao),
	IdPaciente		INT FOREIGN KEY REFERENCES Paciente(IdPaciente),
	NomeConsulta	VARCHAR(250) NOT NULL,
	DataConsulta	VARCHAR(250) NOT NULL,
);

CREATE TABLE Clinica(
	IdClinica		INT PRIMARY KEY IDENTITY,
	IdConsulta		INT FOREIGN KEY REFERENCES Medico(IdMedico),
	IdSituacao		INT FOREIGN KEY REFERENCES Situacao(IdSituacao),
	IdEndereco		INT FOREIGN KEY REFERENCES Endereco(IdEndereco),
	NomeClinica		VARCHAR(250) NOT NULL,
	CNPJ			VARCHAR(250) NOT NULL,
);