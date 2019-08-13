USE M_Opflix;

SELECT * FROM TiposUsuarios;

SELECT * FROM Usuarios;

SELECT * FROM TiposLancamentos;

SELECT * FROM Lancamentos;

SELECT * FROM Categorias;

SELECT * FROM LancamentosFavoritos;

SELECT * FROM Plataformas;

SELECT U.*,T.Nome
	FROM Usuarios U
	INNER JOIN TiposUsuarios T
	ON U.IdTipoUsuario = T.IdTipoUsuario;

/*SELECIONA OS LANCAMENTOS COM OS NOMES DE SUA CATEGORIA, PLATAFORMA E O TIPO DO LANCAMENTO */
SELECT L.IdLancamento,C.Nome,P.Nome,TL.Nome,L.Titulo,L.Sinopse,L.DataLancamento,L.Duracao
	FROM Lancamentos L
	INNER JOIN Categorias C
	ON C.IdCategoria = L.IdCategoria
	INNER JOIN Plataformas P
	ON P.IdPlataforma = L.IdPlataforma
	INNER JOIN TiposLancamentos TL
	ON TL.IdTipoLancamento = L.IdTipoLancamento
	ORDER BY L.IdLancamento ASC

/*SELECIONA OS USUARIOS E SEUS LANCAMENTOS FAVORITOS (SÒ COM CORRESPONDENCIA)*/
SELECT U.Nome,L.Titulo
	FROM Usuarios U
	INNER JOIN LancamentosFavoritos LF
	ON U.IdUsuario = LF.IdUsuario
	INNER JOIN Lancamentos L
	ON LF.IdLancamento = L.IdLancamento

  /* SELECT TODAS AS  CATEGORIAS E SEUS LANÇAMENTOS (MESMO SE N TEM CORRESPONDENCIA) */
SELECT C.*,L.*
	FROM Categorias C
	LEFT JOIN Lancamentos L
	ON C.IdCategoria = L.IdCategoria


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

SELECT UPPER(Nome)
	FROM Usuarios

SELECT REVERSE(Nome)
	FROM Usuarios

SELECT REPLACE(Titulo,' ','_')
	FROM Lancamentos

SELECT LOWER(REPLACE(Titulo,' ','_'))
	FROM Lancamentos




/* VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW*/
CREATE VIEW vwUsuarios AS
	SELECT
		 U.IdUsuario
		,U.IdTipoUsuario
		,T.Nome AS TipoUsuario
		,U.Nome
		,U.Email
		,U.DataCadastro
		,U.DataNascimento
	FROM Usuarios U
	INNER JOIN TiposUsuarios T
	ON T.IdTipoUsuario = U.IdTipoUsuario

SELECT * FROM vwUsuarios;


/*PROCEDURE PROCEDURE PROCEDURE PROCEDURE PROCEDURE PROCEDURE*/

CREATE PROCEDURE ProcurarPorEmail @Email VARCHAR(255)
	AS 
	SELECT * FROM vwUsuarios U
	WHERE U.Email LIKE @Email

EXEC ProcurarPorEmail 'erik@email.com'


