CREATE DATABASE Locadora_Tarde;

USE Locadora_Tarde;

CREATE TABLE Empresa (
	IdEmpresa INT PRIMARY KEY IDENTITY,
	NomeEmpresa VARCHAR(200) NOT NULL
);

CREATE TABLE Cliente (
	IdCliente INT PRIMARY KEY IDENTITY,
	NomeCliente VARCHAR(200) NOT NULL,
	Cpf VARCHAR(200) NOT NULL
);

CREATE TABLE Marca (
	IdMarca INT PRIMARY KEY IDENTITY,
	NomeMarca VARCHAR(200) NOT NULL
);

CREATE TABLE Modelo (
	IdModelo INT PRIMARY KEY IDENTITY,
	NomeModelo VARCHAR(200) NOT NULL,
	IdMarca INT FOREIGN KEY REFERENCES Marca (IdMarca)
);

CREATE TABLE Veiculo (
	IdVeiculo INT PRIMARY KEY IDENTITY,
	Placa VARCHAR(200) NOT NULL,
	IdEmpresa INT FOREIGN KEY REFERENCES Empresa (IdEmpresa),
	IdModelo INT FOREIGN KEY REFERENCES Modelo (IdModelo)
);

CREATE TABLE Aluguel (
	IdAluguel INT PRIMARY KEY IDENTITY,
	DataInicio VARCHAR(200) NOT NULL,
	DataFim VARCHAR(200) NOT NULL,
	IdCliente INT FOREIGN KEY REFERENCES Cliente (IdCliente),
	IdVeiculo INT FOREIGN KEY REFERENCES Veiculo (IdVeiculo)
);