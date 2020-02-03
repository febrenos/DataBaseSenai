CREATE DATABASE LLocadora_DML;
USE LLocadora_DDL;

INSERT INTO Marcas(Nome)
VALUES	('ford'),('fiat'),('bmw'),('chevrolet');

INSERT INTO Modelos(Nome)
VALUES	('polo'),('gol'),('x1'),('Esportivo');

INSERT INTO Empresa(Nome)
VALUES	('DIGUINHO'),('CARGO');

INSERT INTO Veiculo(Placa)
VALUES	('FGJ-7261'), ('FGJ-7262'), ('FGJ-7262'), ('FGJ-7263');

INSERT INTO Cliente(Nome, CPF)
VALUES	('Jorge', '22222222221'),
		('Claudia','22222222222'),
		('Julia','22222222223');

INSERT INTO Aluguel(DataInicio, DataFim)
VALUES	('01/01/2020' , '03/01/2020'),
		('02/01/2020' , '03/01/2020'),
		('03/01/2020' ,'03/01/2020');
