USE M_Livros;

INSERT INTO Generos (Nome)
	VALUES ('Drama'),('Romance'),('Ficcção'),('Utopia');

INSERT INTO Autores (Nome)
	VALUES ('J.K Rowling'),('Machado de Assis'),('John Green');

INSERT INTO Livros (IdGenero,IdAutor,Titulo)
	VALUES (1,1,'Harry Potter')
	,(1,3,'Cidade de Papel')
	,(2,2,'Dom Casmurro'),
	(2,2,'Memórias Póstumas de Brás Cubas')
	,(1,3,'A culpa é das estrelas');

UPDATE Livros
	SET Titulo = 'HARRY POTTER'
	WHERE IdLivro = 1;

SELECT  * FROM Livros

DELETE Livros
	WHERE IdLivro = 5;



	/* ====================================== DQL ============================ */


SELECT * FROM Autores;


SELECT * FROM Generos;


SELECT * FROM Livros;

SELECT L.IdLivro,L.Titulo,L.IdGenero,L.IdAutor,A.Nome
	FROM Livros L
	INNER JOIN Autores A
	ON L.IdAutor = A.IdAutor

SELECT L.IdLivro,L.Titulo,L.IdAutor,L.IdGenero,G.Nome
	FROM Livros L
	INNER JOIN Generos G
	ON L.IdGenero = G.IdGenero

SELECT L.*,G.*,A.*
	FROM Livros L
	INNER JOIN Generos G
	ON L.IdGenero = G.IdGenero
	INNER JOIN Autores A
	ON L.IdAutor = A.IdAutor


/* =========================== EXTRA ============== */

INSERT INTO Vinculo (Descricao)
	VALUES ('Vinculado'),('Não Vinculado');

SELECT * FROM Vinculo

UPDATE Livros
	SET DataLancamento = '2015-12-28'
	WHERE IdLivro = 3

UPDATE Livros
	SET SINOPSE = 'Era uma vez um cachorro foi atravessar a rua e morreu'
	WHERE IdLivro = 4

UPDATE LIVROS
	SET IdVinculo = 1

UPDATE LIVROS
	SET IdVinculo = 2
	WHERE IdLivro = 2


SELECT L.*,V.Descricao,G.*,A.*
	FROM LIVROS L
	INNER JOIN Vinculo V
	ON L.IdVinculo = V.IdVinculo
	INNER JOIN Autores A
	ON L.IdAutor = A.IdAutor
	INNER JOIN Generos G
	ON L.IdGenero = G.IdGenero

INSERT INTO Autores (Nome)
	VALUEs ('Suzanne Collins');

INSERT INTO Livros (IdGenero,IdAutor,Titulo)
	VALUES (4,4,'Jogos Vorazes')

UPDATE Livros
	SET Sinopse = 'Todo mundo tentando se matar'
	WHERE IdLivro = 6

UPDATE Livros
	SET IdVinculo = 1
	WHERE IdLivro = 6

SELECT L.*,V.Descricao,G.Nome,A.Nome
	FROM LIVROS L
	LEFT JOIN Vinculo V
	ON L.IdVinculo = V.IdVinculo
	INNER JOIN Autores A
	ON L.IdAutor = A.IdAutor
	INNER JOIN Generos G
	ON L.IdGenero = G.IdGenero