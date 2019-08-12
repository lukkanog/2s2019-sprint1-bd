USE M_SSolve;

INSERT INTO Funcionarios (Nome,Salario)
	VALUES	('Fulano',820)
			,('Ciclano',982.70)
			,('Beltrano',849000.99)

INSERT INTO Clientes (NomeFantasia,CNPJ,RazaoSocial,Endereco)
	VALUES	('Levi caminhoes','12.504.400/0001-13','Levi e Sérgio Transportes ME','Rua Caravelas,480')
			,('Duas irmas','01.694.932/0001-44','Eloá e Malu Lavanderia ME','Rua dos bobos, 0')
			,('DoceMonstro','14.724.679/0001-76','Ruan e Lorena Doces & Salgados ME','Rua Rui da Costa Maia, 02');

SELECT * FROM Servicos;
SELECT * FROM Funcionarios;

INSERT INTO Servicos (Descricao,Comodo,DataInicio,DataTermino,Valor,IdCliente)
	VALUES ('Troca de pneu','Garagem',GETDATE(),'2019-08-19T11:00:00',7900,1);

INSERT INTO FuncionariosServicos (IdServico,IdFuncionario)
	VALUES (4,1);

SELECT * FROM FuncionariosServicos;

UPDATE Servicos
	SET DataTermino = '2019-09-20T11:30:00'
	WHERE IdServico = 4

INSERT INTO Funcionarios (Nome,Salario)
	VALUES ('Toninho',2);
