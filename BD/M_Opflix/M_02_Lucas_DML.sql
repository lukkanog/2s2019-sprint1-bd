USE M_Opflix;

INSERT INTO Usuarios (IdTipoUsuario,Nome,Email,Senha,DataCadastro)
	VALUES	 (2,'Erik','erik@email.com','123456',GETDATE())
			,(2,'Cassiana','cassiana@email.com','123456',GETDATE())
			,(1,'Helena','helena@email.com','123456',GETDATE())
			,(1,'Roberto','rob@email.com','3110',GETDATE())


INSERT INTO Plataformas (Nome)
	VALUES   ('Cinema')
			,('Netflix')
			,('Amazon')
			

INSERT INTO TiposLancamentos (Nome)
	VALUEs	 ('Filme')
			,('Serie')
			,('Documentario')


INSERT INTO  Categorias (Nome)
	VALUES		 ('Aventura')
				,('Terror')
				,('Comédia')
				,('Ficção')
				,('Drama')

SELECT * FROM Categorias ORDER BY IdCategoria ASC
SELECT * FROM TiposLancamentos ORDER BY IdTipoLancamento ASC
SELECT * FROM Plataformas ORDER BY IdPlataforma ASC


INSERT INTO Lancamentos (IdCategoria,IdTipoLancamento,IdPlataforma,Titulo,Sinopse,Duracao,DataLancamento)
	VALUES	(5,1,1,'Shrek','Tem o ogro e o burro',95,'2003-11-22')
			,(3,2,2,'How I Met Your Mother','Varios amigo la e talz',22,'2004-04-22')
			,(4,2,3,'The boys','Sei la nunca vi',42,'2019-05-22')


INSERT INTO LancamentosFavoritos (IdUsuario,IdLancamento)
	VALUES		 (3,2)
				,(3,3)
				,(4,2)
				,(4,4)


INSERT INTO Lancamentos (IdCategoria,IdTipoLancamento,IdPlataforma,Titulo,Sinopse,Duracao,DataLancamento)
	VALUES	 (4,1,1,'Doutor Estranho 2','Ta mais estranho ainda agora',95,'2021-11-22')
			,(8,1,2,'A pequena suiça','era uma vez uma suiça baixinha',95,'2019-08-19')

