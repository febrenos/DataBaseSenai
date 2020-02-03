USE LLocadora_DDL;
SELECT Aluguel.IdCliente, 
		Aluguel.IdVeiculo, 
		Aluguel.DataInicio, 
		Aluguel.DataFim, 
		Cliente.Nome as Cliente, Veiculo.Placa as Veiculo
FROM Aluguel
INNER JOIN Cliente	ON	Cliente.IdCliente = Aluguel.IdCliente
INNER JOIN Veiculo	ON	Veiculo.IdVeiculo = Aluguel.IdVeiculo