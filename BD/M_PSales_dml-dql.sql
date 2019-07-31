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
	VALUES ('HTML',1);