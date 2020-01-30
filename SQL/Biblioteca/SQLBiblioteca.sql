--CRIAR BANCO DE DADOS
CREATE DATABASE Biblioteca_Tarde;

--Apontar para o banco que quero usar
USE Biblioteca_Tarde;

--CRIAR TABELAS. TABELA É A MESMA COISA QUE ENTIDADE NA DOCUMENTAÇÃO
--IDENTITY, NESSE CONTEXTO SERVE PARA NÃO DEIXAR O NÚMERO DA CHAVE REPETIR
--NOT NULL OBRIGA AQUELE CAMPO SER PREENCHIDO, OU SEJA, É UM CAMPO OBRIGATÓRIO

CREATE TABLE Autores (
	IdAutor INT PRIMARY KEY IDENTITY,
	NomeAutor VARCHAR(200) NOT NULL
);

CREATE TABLE Generos (
	IdGenero INT PRIMARY KEY IDENTITY,
	NomeGenero VARCHAR(200) NOT NULL
);

CREATE TABLE Livros (
	IdLivros INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR(255) NOT NULL,
	IdAutor INT FOREIGN KEY REFERENCES Autores (IdAutor),
	IdGenero INT FOREIGN KEY REFERENCES Generos (IdGenero)
);

--O COMANDO SELECT * FROM (NOME DA TABELA) PEGA TODOS OS ATRIBUTOS DA TABELA QUE VOCE ESCREVEU
SELECT * FROM Generos;
SELECT * FROM Autores;
SELECT * FROM Livros;

--ALTERAR ADICIONAR UM NOVA COLUNA = ALTER TABLE
ALTER TABLE Generos
ADD Descricao VARCHAR (400);

--ALTERAR TIPO DE DADO (INT, DECIMAL, CHAR...) obs: após mudar o tipo, não à mudança na aparente, porém o tipo mudou.
ALTER TABLE Generos
ALTER COLUMN Descricao CHAR (100);

--ALTERAR EXCLUIR COLUNA
ALTER TABLE Generos 
DROP COLUMN Descricao;

--EXCLUIR UMA TABELA
DROP TABLE Livros;
DROP TABLE Generos;
DROP TABLE Autores;

USE EstilosMusicais
--EXCLUIR O BANCO DE DADOS
DROP DATABASE Biblioteca_Tarde

INSERT INTO Autores (NomeAutor)
VALUES ('Neil Gaiman'),('Dan Brown'),('Bram Stolker'),('Mary Shelley'),('Taylor CaldWell');

INSERT INTO Generos (NomeGenero)
VALUES ('Terror'),('Terror Psicológico'),('Mistério'),('Romance'),('Ação');

INSERT INTO Livros(Titulo, IdAutor, IdGenero)
VALUES ('Código da vinci', 2, 3),  ('frankenstein', 4, 2), ('Médico e o alguma coisa', 1, 5), ('Mitologia Nordica', 1, 5), ('Drácula', 3, 4)