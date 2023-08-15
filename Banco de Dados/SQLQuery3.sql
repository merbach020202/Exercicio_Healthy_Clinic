--DML

USE Healthy_Clinic_Manha

INSERT INTO Clinica (Endereco,HorarioFuncionamento,CNPJ,NomeFantasia,RazaoSocial)
VALUES 
	('Rua Niterói 180','08:00hrs - 18:00hrs','12345678902143','Healthy Clinic','Buscamos sempre o melhor para o cliente')

INSERT INTO TipoUsuario (TipoUsuario)
VALUES 
	('Administrador'),('Médico'),('Paciente')

INSERT INTO Prontuario (DescricaoConsulta)
VALUES 
	('Paciente realizaou um exame cardiológico'),
	('Paciente realizou um exame no ortopedista'),
	('Paciente realizaou um exame no pediatra')

INSERT INTO Especialidades (Especialidade)
VALUES 
	('Cardiologia'),
	('Ortopedista'),
	('Pediatra')

INSERT INTO Medico (IdTipoUsuario,IdClinica,IdEspecialidades,Nome,Email,Senha)
VALUES 
	(1,1,1,'Roberto','Roberto@gmail.com','1234567890'),
	(2,1,2,'Eduardo','Eduardo@gmail.com','0987654321')

INSERT INTO Administrador (IdTipoUsuario,AgendarConsulta,ExcluirConsulta)
VALUES 
	(1,'Data agendamento consulta','Id consulta'),
	(2,'Data agendamento consulta','Id consulta'),
	(3,'Data agendamento consulta','IdConsulta')

INSERT INTO Paciente (IdTipoUsuario, Nome, Email, Senha)
VALUES
	(1,'Maria','Maria@gmail.com','123'),
	(2,'Carlos','Carlos@gmail','1234'),
	(3,'Guilherme','Guilherme','12345')

INSERT INTO Agendamento (IdMedico, IdAdministrador, IdPaciente, DataConsulta, HoraConsulta)
VALUES 
	(1,1,1,'20/05/2022','08:30hrs'),
	(2,1,2,'27/10,2021,','10:00hrs')

INSERT INTO Consulta (IdMedico, IdProntuario, IdAgendamento, IdPaciente, HoraConsulta)
VALUES 
	(1,1,1,1,'14:00hrs'),
	(2,2,2,2,'15:30hrs')

INSERT INTO Comentario (IdConsulta, IdPaciente, Comentario)
VALUES
		('2','2','O médico me tratou muito bem'),
		('3','3','Fiquei muito tempo esperando pelo atendimento')

SELECT * FROM Clinica
SELECT * FROM TipoUsuario
SELECT * FROM Prontuario
SELECT * FROM Especialidades
SELECT * FROM Medico
SELECT * FROM Administrador
SELECT * FROM Paciente
SELECT * FROM Agendamento
SELECT * FROM Consulta
SELECT * FROM Comentario
