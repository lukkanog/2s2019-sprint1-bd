USE M_PSales;

INSERT INTO Cursos(Nome) 
	VALUES('Tecnico em Desenvolvimento de Sistemas');

INSERT INTO Cursos(Nome) 
	VALUES('Tecnico em Redes de Computadores');

INSERT INTO Cursos(Nome)
	VALUES	('Curso A')
			,('Curso B')
			,('Curso C');

SELECT IdCurso, Nome
	FROM Cursos

SELECT *
	FROM Cursos;

SELECT Nome, IdCurso
	FROM Cursos

SELECT Nome
	FROM Cursos;

SELECT IdCurso, Nome
	FROM Cursos 
	WHERE IdCurso = 1;

UPDATE Cursos
	SET Nome = 'Técnico em fazer site'
	WHERE IdCurso = 1;

UPDATE Cursos
	SET Nome = 'Técnico em puxar cabo'
	WHERE IdCurso = 3;

SELECT IdCurso, Nome
	FROM Cursos
	WHERE IdCurso = 6;

DELETE FROM Cursos
	WHERE IdCurso = 6;

INSERT INTO Disciplinas (Nome, IdCurso)
	VALUES ('Cabeamento estruturado',3);

SELECT D.*, C.*
	FROM Disciplinas D
	INNER JOIN Cursos C
	ON D.IdCurso = C.IdCurso

SELECT C.*,D.* 
	FROM Cursos C
	LEFT JOIN Disciplinas D
	ON C.IdCurso = D.IdCurso

DELETE FROM Disciplinas
	WHERE IdDisciplina = 8

INSERT INTO Disciplinas (Nome)
	VALUES ('Matemática');