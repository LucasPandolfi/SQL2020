USE Locadora_Tarde;

INSERT INTO Empresa (NomeEmpresa)
VALUES ('Unidas'), ('Localiza');

SELECT * FROM Empresa;

INSERT INTO Cliente (NomeCliente, Cpf)
VALUES ('Fernando', '233.244.424-44'), ('Helena', '324.345.543-33');

SELECT * FROM Cliente; 

INSERT INTO Marca (NomeMarca)
VALUES ('Ford'), ('GM'), ('Fiat');

SELECT * FROM Marca;

INSERT INTO Modelo (NomeModelo, IdMarca)
VALUES ('Fiesta', 1), ('Onix', 2), ('Argo', 3);

SELECT * FROM Modelo;

INSERT INTO Veiculo (IdModelo, Placa, IdEmpresa)
VALUES (1, 'HEL1805', 1), (2, 'FER1010', 1), (3, 'POR1978', 2), (1, 'LEM9876', 2);

SELECT * FROM Veiculo;

INSERT INTO Aluguel (IdCliente, IdVeiculo, DataInicio, DataFim)
VALUES (1, 1, '19/01/2019', '20/01/2019'), (1, 2, '20/01/2019', '21/01/2019'), (2, 3, '21/01/2019', '21/01/2019'), (2, 2, '22/01/2019', '22/01/2019');

SELECT * FROM Aluguel;
