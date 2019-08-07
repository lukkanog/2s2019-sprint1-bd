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


SELECT IdEstiloMusical, Nome
	FROM EstilosMusicais
	WHERE IdEstiloMusical = 1;

SELECT IdEstiloMusical, Nome
	FROM EstilosMusicais
	WHERE Nome LIKE 'po%';


SELECT IdEstiloMusical, Nome
	FROM EstilosMusicais
	WHERE Nome LIKE '%o';


SELECT IdEstiloMusical, Nome
	FROM EstilosMusicais
	WHERE Nome LIKE '%ago%';


SELECT IdEstiloMusical, Nome
	FROM EstilosMusicais
	WHERE Nome LIKE 'p%e';



	/* ~~~~ INNER JOIN~~~~~*/

SELECT Artistas.*, EstilosMusicais.Nome
	FROM			Artistas
	INNER JOIN		EstilosMusicais
	ON Artistas.IdEstiloMusical = EstilosMusicais.IdEstiloMusical;

INSERT INTO Artistas (Nome)
	VALUES ('Aviões do Forró')



	/* ~~~~ LEFT JOIN~~~~~*/
SELECT Artistas.*, EstilosMusicais.*
	FROM			Artistas
	LEFT JOIN		EstilosMusicais
	ON				Artistas.IdEstiloMusical = EstilosMusicais.IdEstiloMusical;


INSERT INTO EstilosMusicais(Nome)
	VALUES('K-Pop');


	/* ~~~~ RIGHT JOIN~~~~~*/
SELECT Artistas.*, EstilosMusicais.*
	FROM			Artistas
	RIGHT JOIN		EstilosMusicais
	ON				Artistas.IdEstiloMusical = EstilosMusicais.IdEstiloMusical;



	/* ~~~~ FULL JOIN~~~~~*/
SELECT Artistas.*, EstilosMusicais.*
	FROM			Artistas
	FULL JOIN		EstilosMusicais
	ON				Artistas.IdEstiloMusical = EstilosMusicais.IdEstiloMusical;

	/* ~~~~ INNER JOIN SIMPLIFICADO~~~~~*/
SELECT A.*, EM.*
	FROM			Artistas AS A
	JOIN			EstilosMusicais AS EM
	ON				A.IdEstiloMusical = EM.IdEstiloMusical;


	/* ~~~~ INNER JOIN MAIS SIMPLIFICADO~~~~~*/
SELECT A.*, EM.*
	FROM			Artistas A
	JOIN			EstilosMusicais EM
	ON				A.IdEstiloMusical = EM.IdEstiloMusical;