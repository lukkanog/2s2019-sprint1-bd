CREATE DATABASE M_DPS;

USE M_DPS;

CREATE TABLE Departamentos(
	IdDepartamento INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(150) NOT NULL
);

CREATE TABLE Habilidades(
	IdHabilidade INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(100) NOT NULL
);

CREATE TABLE Funcionarios(
	IdFuncionario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200) NOT NULL
	,Salario SMALLMONEY NOT NULL
);

CREATE TABLE HabilidadesFuncionarios(
	IdFuncionario INT FOREIGN KEY REFERENCES Funcionarios(IdFuncionario)
	,IdHabilidade INT FOREIGN KEY REFERENCES Habilidades(IdHabilidade)
);

ALTER TABLE Funcionarios
	ADD IdDepartamento INT FOREIGN KEY REFERENCES Departamentos(IdDepartamento);


	/*=========================== E X T R A S ======================*/

ALTER TABLE Funcionarios
	ADD Funcao VARCHAR(120)

ALTER TABLE Habilidades
	ADD Descricao VARCHAR(300) 

CREATE TABLE Empresas(
	IdEmpresa INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200) NOT NULL
	,DataCriacao DATE 
);

ALTER TABLE Departamentos
	ADD IdEmpresa INT FOREIGN KEY REFERENCES Empresas(IdEmpresa)