CREATE DATABASE M_Opflix;

USE M_Opflix;

CREATE TABLE Categorias(
	IdCategoria INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE TiposLancamentos(
	IdTipoLancamento INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(255) NOT NULL UNIQUE
);


CREATE TABLE TiposUsuarios(
	IdTipoUsuario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Plataformas(
	IdPlataforma INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Usuarios(
	IdUsuario INT PRIMARY KEY IDENTITY
	,IdTipoUsuario INT FOREIGN KEY REFERENCES TiposUsuarios(IdTipoUsuario) NOT NULL
	,Nome VARCHAR(255) NOT NULL
	,Email VARCHAR(255) UNIQUE NOT NULL 
	,Senha VARCHAR(50) NOT NULL
	,DataCadastro DATETIME
);

CREATE TABLE Lancamentos(
	IdLancamento INT PRIMARY KEY IDENTITY
	,IdCategoria INT FOREIGN KEY REFERENCES Categorias(IdCategoria) NOT NULL
	,IdTipoLancamento INT FOREIGN KEY REFERENCES TiposLancamentos(IdTipoLancamento) NOT NULL
	,Titulo VARCHAR(255) NOT NULL
	,Sinopse TEXT
	,Duracao INT NOT NULL
);

CREATE TABLE LancamentosFavoritos(
	IdUsuario INT FOREIGN KEY REFERENCES Usuarios(IdUsuario) NOT NULL
	,IdLancamento INT FOREIGN KEY REFERENCES Lancamentos(IdLancamento) NOT NULL
);

ALTER TABLE Lancamentos
	ADD IdPlataforma INT FOREIGN KEY REFERENCES Plataformas(IdPlataforma);

ALTER TABLE Usuarios
	ADD DataNascimento DATE

ALTER TABLE Lancamentos
	ADD  DataLancamento DATE NOT NULL

ALTER TABLE Lancamentos
	ADD Duracao INT




