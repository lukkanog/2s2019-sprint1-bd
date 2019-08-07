USE M_DPS;

INSERT INTO Departamentos (Nome)
	VALUES ('RH'),('Almoxarifado'),('Administracao'),('Producao');
	
INSERT INTO Habilidades (Nome)
	VALUES ('Praticidade')
			,('Bom ouvinte')
			,('Organização')
			,('Ensina bem')
			,('Proatividade');

INSERT INTO Funcionarios (Nome,Salario)
	VALUES	('Seu Inacio',982)
			,('Dona Lurdes',1000)
			,('Agostinho Carrara',900.000)
			,('Jose da silva',1234)
			,('Carla',2000);

SELECT * FROM Funcionarios

UPDATE Funcionarios
	SET IdDepartamento = 3
	WHERE IdFuncionario = 9;

UPDATE Funcionarios
	SET Salario = 200000.23
	WHERE IdFuncionario = 9;

INSERT INTO HabilidadesFuncionarios (IdFuncionario,IdHabilidade)
	VALUES (7,3)
			,(8,4)
			,(8,2)
			,(9,1)
			,(9,3)
			,(10,5)
			,(11,5);


SELECT * FROM Funcionarios;

SELECT * FROM Habilidades;

SELECT * FROM Departamentos;

SELECT Funcionarios.*,Departamentos.Nome
	FROM Funcionarios
	INNER JOIN Departamentos
	ON Funcionarios.IdDepartamento = Departamentos.IdDepartamento;



	/*=========================== E X T R A S ======================*/


UPDATE Funcionarios
	SET Funcao = 'Responsavel pelo almoxarifado'
	WHERE IdFuncionario = 7;

UPDATE Habilidades
	SET Descricao = 'Ouve e tenta sempre entender ozotro'
	WHERE IdHabilidade = 2;

SELECT Funcionarios.*,HabilidadesFuncionarios.IdHabilidade,Habilidades.Nome
	FROM Funcionarios
	INNER JOIN HabilidadesFuncionarios
	ON Funcionarios.IdFuncionario = HabilidadesFuncionarios.IdFuncionario
	INNER JOIN Habilidades
	ON HabilidadesFuncionarios.IdHabilidade = Habilidades.IdHabilidade

SELECT Funcionarios.*,Habilidades.Nome
	FROM Funcionarios
	INNER JOIN HabilidadesFuncionarios
	ON Funcionarios.IdFuncionario = HabilidadesFuncionarios.IdFuncionario
	INNER JOIN Habilidades
	ON HabilidadesFuncionarios.IdHabilidade = Habilidades.IdHabilidade



INSERT INTO Empresas (Nome,DataCriacao)
	VALUES	('SENAI','1950-06-12')
			,('UNILEVER','1923-06-03')
			,('FABER CASTEL','2000-01-23')
			,('CARRARA TAXI','2009-04-23')
			,('TAXI CARRARA','2009-04-23')

UPDATE Departamentos
	SET IdEmpresa = 4
	WHERE IdDepartamento = 3;

SELECT Funcionarios.*,Departamentos.Nome,Empresas.Nome
	FROM Funcionarios
	INNER JOIN Departamentos
	ON Funcionarios.IdDepartamento = Departamentos.IdDepartamento
	INNER JOIN Empresas
	ON Departamentos.IdEmpresa = Empresas.IdEmpresa

INSERT INTO Departamentos (Nome,IdEmpresa)
	VALUES ('Administracao',2)

SELECT Departamentos.*,Empresas.Nome
	FROM Departamentos
	INNER JOIN Empresas
	ON Departamentos.IdEmpresa = Empresas.IdEmpresa
	ORDER BY IdDepartamento DESC

UPDATE Funcionarios
	SET IdDepartamento = 5
	WHERE IdFuncionario = 8;


