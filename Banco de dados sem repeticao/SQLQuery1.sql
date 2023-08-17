--DDL

CREATE DATABASE Healthy_Clinic_Manha

USE Healthy_Clinic_Manha

CREATE TABLE Clinica
(
	IdClinica INT PRIMARY KEY IDENTITY,
	Endereco VARCHAR(100),
	HorarioFuncionamento VARCHAR(100),
	CNPJ VARCHAR(100) NOT NULL,
	NomeFantasia VARCHAR(100) NOT NULL,
	RazaoSocial VARCHAR(100) NOT NULL
)

CREATE TABLE TipoUsuario
(
	IdTipoUsuario INT PRIMARY KEY IDENTITY,
	TipoUsuario VARCHAR(50)
)

CREATE TABLE Prontuario
(
	IdProntuario INT PRIMARY KEY IDENTITY,
	DescricaoConsulta VARCHAR(50) NOT NULL
)

CREATE TABLE Especialidades
(
	IdEspecialidades INT PRIMARY KEY IDENTITY,
	Especialidade VARCHAR(100) NOT NULL
)

CREATE TABLE Comentario
(
	IdComentario INT PRIMARY KEY IDENTITY,
	Comentario TEXT
)

CREATE TABLE Medico
(
	IdMedico INT PRIMARY KEY IDENTITY ,
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario(IdTipoUsuario) NOT NULL,
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica) NOT NULL,
	IdEspecialidades INT FOREIGN KEY REFERENCES Especialidades(IdEspecialidades) NOT NULL,
	Nome VARCHAR(50),
	Email VARCHAR(100),
	Senha VARCHAR(50),
	CRM VARCHAR(50)
)



CREATE TABLE Administrador
(
	IdAdministrador INT PRIMARY KEY IDENTITY,
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario(IdTipoUsuario) NOT NULL,
	AgendarConsulta VARCHAR(50),
	ExcluirConsulta VARCHAR(50)
)

CREATE TABLE Paciente
(
	IdPaciente INT PRIMARY KEY IDENTITY,
	IdComentario INT FOREIGN KEY REFERENCES Comentario(IdComentario),
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario(IdTipoUsuario) NOT NULL,
	Nome VARCHAR(100),
	Email VARCHAR(100),
	Senha VARCHAR(100)
)

CREATE TABLE Agendamento
(
	IdAgendamento INT PRIMARY KEY IDENTITY,
	IdMedico INT FOREIGN KEY REFERENCES Medico(IdMedico) NOT NULL,
	IdAdministrador INT FOREIGN KEY REFERENCES Administrador(IdAdministrador) NOT NULL,
	IdPaciente INT FOREIGN KEY REFERENCES Paciente(IdPaciente) NOT NULL,
	DataConsulta VARCHAR(30),
	HoraConsulta VARCHAR(30)
)

CREATE TABLE Consulta
(
	IdConsulta INT PRIMARY KEY IDENTITY,
	IdComentario INT FOREIGN KEY REFERENCES Comentario(IdComentario),
	IdMedico INT FOREIGN KEY REFERENCES Medico(IdMedico) NOT NULL,
	IdProntuario INT FOREIGN KEY REFERENCES Prontuario(IdProntuario) NOT NULL,
	IdAgendamento INT FOREIGN KEY REFERENCES Agendamento(IdAgendamento) NOT NULL,
	IdPaciente INT FOREIGN KEY REFERENCES Paciente(IdPaciente) NOT NULL,
	HoraConsulta VARCHAR(30),
	DataConsulta VARCHAR(50)
)