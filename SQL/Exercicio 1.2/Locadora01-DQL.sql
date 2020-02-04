USE Locadora_Tarde;

SELECT IdAluguel, DataInicio, DataFim, Aluguel.NomeModelo, Cliente.NomeCliente
FROM Aluguel 
INNER JOIN Cliente ON Cliente.IdCliente = Aluguel.IdCliente
INNER JOIN Veiculo ON Veiculo.IdVeiculo = Aluguel.IdVeiculo
