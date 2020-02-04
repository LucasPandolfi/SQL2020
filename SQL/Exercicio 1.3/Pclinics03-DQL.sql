USE Pclinics;

SELECT IdAtendimento, DataAtendimento, Descricao, Veterinario.NomeVeterinario, Pet.NomePet
FROM Atendimento
INNER JOIN Pet ON Pet.IdPet = Atendimento.IdPet
INNER JOIN Veterinario ON Veterinario.IdVeterinario = Atendimento.IdVeterinario
