USE M_SStop;

INSERT INTO EstilosMusicais(Nome)
	VALUES ('Rock');

INSERT INTO EstilosMusicais(Nome)
	VALUES ('Pop');

INSERT INTO EstilosMusicais(Nome)
	VALUES ('Pagode');

SELECT *
	FROM EstilosMusicais;

INSERT INTO Artistas(IdEstiloMusical, Nome)
	VALUES (1,'Calipso');

INSERT INTO Artistas(IdEstiloMusical, Nome)
	VALUES (2,'Lady Gaga');

INSERT INTO Artistas(IdEstiloMusical, Nome)
	VALUES (1,'Metallica');

INSERT INTO Artistas(IdEstiloMusical, Nome)
	VALUES (3,'Exaltassamba');

SELECT *
	FROM Artistas;

UPDATE Artistas
	SET IdEstiloMusical = 1
	WHERE IdArtista = 1;

SELECT IdArtista, Nome, IdEstiloMusical
FROM Artistas;

DELETE FROM Artistas
	WHERE IdArtista = 4;

INSERT INTO Artistas (IdEstiloMusical, Nome)
	VALUES (3,'Calcinha Preta');