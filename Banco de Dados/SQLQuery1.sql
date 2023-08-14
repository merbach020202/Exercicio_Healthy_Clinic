CREATE DATABASE Healthy_Clinic_Manha

USE Healthy_Clinic_Manha

CREATE TABLE Clinica
(
	IdClinica INT PRIMARY KEY IDENTITY,
	Endereco VARCHAR(100),
	HorarioFuncionamento VARCHAR(100),
	CNPJ VARCHAR(100),
	NomeFantasia VARCHAR(100),
	RazaoSocial VARCHAR(100)
)

CREATE TABLE TiposUsuarios
(
	IdTiposUsuarios INT PRIMARY KEY IDENTITY,
	TipoUsuario VARCHAR(50)
)

CREATE TABLE Prontuario
(
	IdProntuario INT PRIMARY KEY IDENTITY,
	DescricaoConsulta VARCHAR(50)
)

