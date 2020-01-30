CREATE DATABASE EstilosMusicais_Tarde;

USE EstilosMusicais_Tarde;

CREATE TABLE EstilosMusicas (
	IdEstiloMusicais INT PRIMARY KEY IDENTITY,
	NomeMusica VARCHAR(200) NOT NULL
);

CREATE TABLE Artistas (
	IdArtista INT PRIMARY KEY IDENTITY,
	NomeArtista VARCHAR(200) NOT NULL,
	IdEstiloMusical INT FOREIGN KEY REFERENCES EstilosMusicas (IdEstiloMusicais)
);

SELECT * FROM EstilosMusicais
SELECT * FROM Artistas

ALTER TABLE Artistas
ADD Teste VARCHAR(200);

ALTER TABLE Artistas
DROP COLUMN Teste;

DROP TABLE Artistas;
DROP TABLE EstilosMusicais;

USE EstilosMusicais_Manha

DROP DATABASE EstilosMusicais_Tarde