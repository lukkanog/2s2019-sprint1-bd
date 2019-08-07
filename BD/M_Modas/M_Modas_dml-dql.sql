USE M_Modas;

	INSERT INTO Cores (Nome)
		VALUES ('Preto'),('Branco'),('Roxo'),('Rosa'),('Amarelo');

	INSERT INTO Tamanhos (Tamanho)
		VALUES ('PP'),('P'),('M'),('G'),('GG');

	INSERT INTO Marcas (Nome)
		VALUES ('Adidas'),('Nike'),('Puma');

	INSERT INTO Camisetas (Modelo,IdMarca)
		VALUES ('Camiseta do batman dahora',3),('Camiseta basica',2),('Camiseta xlr89dwq',1),('Camista diferenciada',1),('Camiseta invisivel',3)

	SELECT * FROM Camisetas

	INSERT INTO CamisetasCores (IdCamiseta,IdCor)
		VALUES (1,3),(1,2),(2,4),(3,5),(4,1),(3,2),(4,2);

	INSERT INTO CamisetasTamanhos (IdCamiseta,IdTamanho)
		VALUES (1,1),(1,2),(3,4),(4,4),(4,5),(2,3);

	UPDATE Camisetas
		SET IdMarca = 3
		WHERE IdCamiseta = 4;

	UPDATE Camisetas
		SET IdMarca = 1
		WHERE IdCamiseta = 5;

	DELETE Camisetas
		WHERE IdCamiseta = 5


		
	SELECT * FROM Camisetas;

	SELECT * FROM Marcas;
	
	SELECT * FROM Cores;

	SELECT * FROM Tamanhos;


	SELECT Camisetas.*,Marcas.Nome
		FROM Camisetas
		INNER JOIN Marcas
		ON Camisetas.IdMarca = Marcas.IdMarca;


	SELECT Camisetas.*,CamisetasCores.IdCor
		FROM Camisetas
		INNER JOIN CamisetasCores
		ON Camisetas.IdCamiseta = CamisetasCores.IdCamiseta;


	SELECT Camisetas.*,CamisetasTamanhos.IdTamanho
		FROM Camisetas
		INNER JOIN CamisetasTamanhos
		ON Camisetas.IdCamiseta = CamisetasTamanhos.IdCamiseta;


		/* ===================  E X T R A S ============== */
		

	UPDATE Marcas
		SET QuantidadeLoja = 78
		WHERE IdMarca = 1

	UPDATE Marcas
		SET DataCriacao = '1980-12-30'
		WHERE IdMarca = 3;


	UPDATE Tamanhos
		SET Medida = '40x30'
		WHERE IdTamanho = 2;

	INSERT INTO Lavagens (Lavagem)
		VALUES ('Na máquina'),('Nao pode ser na maquina'),('Nem lava'),('So no tanque');

	UPDATE Camisetas
		SET IdLavagem = 2
		WHERE IdCamiseta >= 3

	SELECT Camisetas.*,Lavagens.Lavagem
		FROM Camisetas
		INNER JOIN Lavagens
		ON Camisetas.IdLavagem = Lavagens.IdLavagem

	SELECT Camisetas.*,Marcas.Nome,Lavagens.Lavagem,CamisetasTamanhos.IdTamanho,CamisetasCores.IdCor
		FROM Camisetas
		INNER JOIN Marcas
		ON Camisetas.IdMarca = Marcas.IdMarca
		INNER JOIN Lavagens
		ON Camisetas.IdLavagem = Lavagens.IdLavagem
		INNER JOIN CamisetasTamanhos
		ON Camisetas.IdCamiseta = CamisetasTamanhos.IdCamiseta
		INNER JOIN CamisetasCores
		ON Camisetas.IdCamiseta = CamisetasCores.IdCamiseta;