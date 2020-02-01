--DDL Linguagem de definição de dados

--Criar o Banco de Dados
CREATE DATABASE Optus_Tarde;

USE Optus_Tarde;

CREATE TABLE Estilos (
	IdEstilo INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(250) NOT NULL 
	);

CREATE TABLE Artistas (
	IdArtista INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (250)
	);

CREATE TABLE Albuns (
	IdAlbum INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (250) NOT NULL UNIQUE,
	DataLancamento DATE,
	Localizacao VARCHAR(200),
	QtdMinutos BIGINT,
	IdArtista INT FOREIGN KEY REFERENCES Artistas (IdArtista),
	IdEstilo INT FOREIGN KEY REFERENCES Estilos (IdEstilo)
	);

SELECT * FROM Albuns;
SELECT * FROM Artistas;
SELECT * FROM Estilos;

CREATE TABLE TipoUsuario(
	IdTipoUsuario	INT PRIMARY KEY IDENTITY,
	Titulo			VARCHAR(250) NOT NULL
	);

CREATE TABLE Usuario (
	IdUsuario	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR (250),
	Email		VARCHAR (250),
	Senha		VARCHAR (250),
	Permissao	VARCHAR (250),
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
	);

SELECT * FROM Usuario;

--ALTERAÇÃO DE TABELA EXCLUIR COLUNA 
ALTER TABLE Usuario
DROP COLUMN Permissao;

--DROP APAGAR TABELA 
DROP TABLE Albuns;	


--DML LINGUAGEM DE MANIPULACAO DE DADOS
SELECT * FROM Estilos;
SELECT * FROM Albuns;
SELECT * FROM Artistas;
SELECT * FROM TipoUsuario;
SELECT * FROM Usuario;

-- COMANDO PARA INSERIR(INSERT) DADOS
INSERT INTO Estilos (Nome)
VALUES ('Pagode'),('Samba'),('Rock');

INSERT INTO Artistas (Nome)
VALUES ('Anita'),('ZecaPagodinho'),('Pitty');

INSERT INTO Albuns (Nome, DataLancamento, Localizacao, QtdMinutos, IdArtista, IdEstilo)
VALUES ('Equalize','29/01/2020','Disney',120, 3, 3);

--Update Alterar Dados
UPDATE Artistas 
SET Nome = 'Pericles'
WHERE IdArtista = 2;

--DELETE APAGAR DADOS 
DELETE FROM Artistas 
WHERE IdArtista = 5;

--Limpar todos os dados da tabela 
TRUNCATE TABLE Albuns;
TRUNCATE TABLE Artistas;
TRUNCATE TABLE Estilos;

--INSERINDO NOMES DE ARTISTAS
INSERT INTO Artistas (Nome)
VALUES ('Zé Ramalho'),('Pink Floyd'),('Scorpions');

--INSERINDO MAIS ALBUNS
INSERT INTO Albuns (Nome, DataLancamento, Localizacao, QtdMinutos, IdArtista, IdEstilo)
VALUES ('The best of Scorpion','28/01/2020','SP',130, 3, 3),
 ('Scorpions Greatest Hits','27/01/2020','RJ',125, 3, 3),
 ('The Wall','26/01/2020','SP',135, 3, 3);

 --ALTERANDO ALBUNS
 UPDATE Albuns
SET IdArtista = 5
WHERE IdAlbum = 4;

UPDATE Albuns
SET IdArtista = 6
WHERE IdAlbum = 2;

UPDATE Albuns
SET IdArtista = 6
WHERE IdAlbum = 3;

--ALTERANDO NOME DE UM ARTISTA
UPDATE Artistas 
SET Nome = 'Marcos'
WHERE IdArtista = 1;

--INSERINDO ESTILOS MUSICAIS
INSERT INTO Estilos (Nome)
VALUES ('Pop'),('Metal'),('Black');

--CRIANDO UM TIPOUSUARIO
INSERT INTO TipoUsuario (Titulo)
VALUES ('Comum')

INSERT INTO TipoUsuario (Titulo)
VALUES ('Cliente')

--ALTERANDO UM USUARIO
UPDATE Usuario 
SET Nome = 'Lucas'
WHERE IdTipoUsuario = 2;

UPDATE Usuario 
SET IdTipoUsuario = 1
WHERE IdTipoUsuario = 1;

UPDATE Usuario 
SET IdTipoUsuario = 2
WHERE IdTipoUsuario = 1;

--CRIANDO USUARIOS
INSERT INTO Usuario(Nome, Email, Senha, IdTipoUsuario)
VALUES ('Lucas','lucas@gmail.com', 123456 ,1),
('Takedi','takedi@gmail.com', 123456 ,2);

--ADICIONANDO VISUALIZAÇÃO AO ALBUM
ALTER TABLE Albuns
ADD Visualizacoes BIGINT;

--ALTERANDO E ADICIONANDO VISUALIZAÇOES NOS ALBUNS/ OBS: BIGINT NÃO ACEITA PONTO, VIRGULA, ETC...
UPDATE Albuns 
SET Visualizacoes = 150.000
WHERE IdAlbum = 2;

UPDATE Albuns 
SET Visualizacoes = 150000
WHERE IdAlbum = 3;

UPDATE Albuns 
SET Visualizacoes = 200000
WHERE IdAlbum = 4;

UPDATE Albuns 
SET Visualizacoes = 100000
WHERE IdAlbum = 1;

--DELETANDO UM ALBUM
DELETE FROM Albuns
WHERE IdAlbum = 1;

--DQL LINGUAGEM DE CONSULTA DE DADOS

SELECT * FROM Artistas;

--O ÚNICO COMANDO QUE EXISTE NO DQL É O SELECT, PORÉM EXISTEM DIVERSAS VARIAÇÕES DE COMO USAR USAR O SELECT UM EXEMPLO ESTÁ ABAIXO, ONDE, EU SELECIONEI UMA INFORMAÇÃO ESPECIFICA DO CÓDIGO E NÃO TUDO QUE ESTA NELE, DIFERENTE DA TABELA DE CIMA QUE EU SELECIONEI TUDO COM O SINAL DE *
SELECT Nome FROM Artistas;

SELECT Nome, DataLancamento FROM Albuns;

-- OPERADORES < > =
SELECT * FROM Albuns WHERE IdAlbum = 2;

SELECT * FROM Albuns WHERE IdAlbum > 1;

--INGLES = OR PORTUGUES = OU
SELECT Nome, QtdMinutos FROM Albuns
WHERE (DataLancamento IS NULL) OR (Localizacao IS NULL);

-- LIKE = COMPARAÇÃO DE TEXTO
SELECT IdAlbum, Nome FROM Albuns
WHERE Nome LIKE 'Scorpions%' -- COMECO DA FRASE

SELECT IdAlbum, Nome FROM Albuns
WHERE Nome LIKE '%Scorpions' -- NO FINAL DA FRASE (ATENÇÃO NA PORCENTAGEM)

SELECT IdAlbum, Nome FROM Albuns
WHERE Nome LIKE '%Scorpions%' --NO MEIO DA FRASE 

SELECT IdAlbum, Nome FROM Albuns
WHERE Nome LIKE 'Scorpions' --NÃO POSSUI UM PARAMETRO, IRÁ APENAS PROCURAR O NOME E IRÁ ME MOSTRAR O RESULTADO SEM SABER DE ONDE ELE VEIO (COMEÇO DA FRASE, MEIO OU FIM)

--ORDENAÇÃO
SELECT Nome FROM Artistas
ORDER BY Nome;

SELECT IdAlbum, Nome, QtdMinutos FROM Albuns
ORDER BY QtdMinutos;

--ORDENAÇÃO INVERTIDA (DO MAIOR PARA O MENOR)
SELECT IdAlbum, Nome, QtdMinutos FROM Albuns
ORDER BY QtdMinutos DESC;

--ORDENAÇÃO INVERTIDA (DO MENOR PARA O MAIOR)
SELECT IdAlbum, Nome, DataLancamento FROM Albuns
ORDER BY DataLancamento ASC;

-- COUNT (O COUNT CONTA TODAS AS LINHAS DA COLUNA/TABELA E NOS MOSTRA O RESULTADO)
SELECT COUNT (IdAlbum) FROM Albuns;

SELECT * FROM Albuns WHERE IdArtista = 6;

-- SELECIONANDO OS ALBUNS LANÇADOS NA MESMA DATA
SELECT IdAlbum, Nome, DataLancamento FROM Albuns WHERE DataLancamento = '28/01/2020';

UPDATE Albuns
SET DataLancamento = '28/01/2020' 
WHERE IdAlbum = 3;

-- SELECIONANDO OS ARTISTAS DO MESMO ESTILO MUSICAL
SELECT IdArtista, Nome, IdEstilo FROM Albuns WHERE IdEstilo = 3;

-- SELECIONANDO OS ALBUNS E ARTISTAS E ORDENANDO POR DATA DE LANÇAMENTO
SELECT IdAlbum, Nome, IdArtista, DataLancamento FROM Albuns
ORDER BY DataLancamento DESC;
