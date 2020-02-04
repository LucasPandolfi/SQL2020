Use Pclinics;

INSERT INTO Clinica (RazaoSocial, Endereco)
VALUES ('Clinica Veterinaria', 'Alameda Barão de Limeira, 532');

SELECT * FROM Clinica

INSERT INTO Dono (NomeDono)
VALUES ('Carol'), ('Saulo');

SELECT * FROM Dono;

INSERT INTO TipoPet (TituloPet)
VALUES ('Cachorro'), ('Gato');

SELECT * FROM TipoPet;

INSERT INTO Raca (IdTipoPet, TituloRaca)
VALUES (2, 'Siamês'), (2, 'Persa');

SELECT * FROM Raca;

INSERT INTO Veterinario (IdClinica, NomeVeterinario, CRMV)
VALUES (1, 'Pablo', '123');

SELECT * FROM Veterinario;

INSERT INTO Pet (IdDono, IdRaca, NomePet, Telefone)
VALUES (1, 2, 'Lua', '9999-9999'), (2, 2, 'Jefferson', '9999-9999');

SELECT * FROM Pet;

INSERT INTO Atendimento (IdVeterinario, IdPet, DataAtendimento, Descricao)
VALUES (1, 2, '27/Jan', 'Tudo em ordem'), (1, 2, '28/Jan', 'Doença grave detectada');

SELECT * FROM Atendimento;