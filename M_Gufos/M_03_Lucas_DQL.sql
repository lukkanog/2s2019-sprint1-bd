USE M_Gufos;

SELECT * FROM Categorias ORDER BY IdCategoria ASC;

SELECT * FROM Eventos ORDER BY DataEvento DESC;

SELECT * FROM Usuarios;

SELECT * FROM Presencas;

SELECT E.*,C.*
	FROM Eventos E
	INNER JOIN Categorias C
	ON E.IdCategoria = C.IdCategoria;

SELECT P.*, U.*, E.*
	FROM Presencas P
	INNER JOIN Usuarios U
	ON P.IdUsuario = U.IdUsuario
	INNER JOIN Eventos E
	ON P.IdEvento = E.IdEvento

SELECT P.*, U.*, E.*,C.*
	FROM Presencas P
	INNER JOIN Usuarios U
	ON P.IdUsuario = U.IdUsuario
	INNER JOIN Eventos E
	ON P.IdEvento = E.IdEvento
	INNER JOIN Categorias C
	ON E.IdCategoria = C.IdCategoria


