SELECT * FROM Funcionarios;

SELECT * FROM Clientes;

SELECT * FROM Servicos;

SELECT * FROM FuncionariosServicos;

SELECT S.*,C.*
	FROM Servicos S
	INNER JOIN Clientes C
	ON S.IdCliente = C.IdCliente;

SELECT S.*,F.*
	FROM Servicos S
	INNER JOIN FuncionariosServicos FS
	ON S.IdServico = FS.IdServico
	INNER JOIN Funcionarios F
	ON FS.IdFuncionario = F.IdFuncionario;

/**/

SELECT S.*,C.RazaoSocial,F.IdFuncionario,F.Nome
	FROM Servicos S
	INNER JOIN Clientes C
	ON S.IdCliente = C.IdCliente
	INNER JOIN FuncionariosServicos FS
	ON FS.IdServico = S.IdServico
	INNER JOIN Funcionarios F
	ON FS.IdFuncionario = F.IdFuncionario;