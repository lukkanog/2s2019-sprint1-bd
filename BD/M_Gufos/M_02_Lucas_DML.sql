USE M_Gufos;

INSERT INTO Usuarios (Nome,Email,Senha,Permissao)
	VALUES ('Administrador','admin@admin.com','123456','Administrador');

INSERT INTO Usuarios (Nome,Email,Senha,Permissao)
	VALUES ('josias cabele','jc@senai.com','123456','Aluno');

INSERT INTO Categorias (Nome)
	VALUES	('Jogos')
			,('Meetup')
			,('Futebol');

INSERT INTO Eventos (Titulo,Descricao,DataEvento,Ativo,Localizacao,IdCategoria)
	VALUES ('campeonato de fifa','Campeonato para professores','2019-08-17T05:00:00',1, 'Aqui',1);

	/*CURRENT_TIMESTAMP()*/

INSERT INTO Presencas (IdEvento,IdUsuario)
	VALUES (1,2)
			,(3,2);

SELECT * FROM Presencas

SELECT * FROM Eventos
	ORDER BY IdEvento ASC;

SELECT * FROM Usuarios;

SELECT * FROM Categorias
	ORDER BY Nome ASC;