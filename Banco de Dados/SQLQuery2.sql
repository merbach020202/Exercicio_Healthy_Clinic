--DML

USE Healthy_Manha

INSERT INTO Clinica (Endereco,HorarioFuncionamento,CNPJ,NomeFantasia,RazaoSocial)
VALUES 
	('Rua Niter�i 180','08:00hrs - 18:00hrs','12345678902143','Healthy Clinic','Buscamos sempre o melhor para o cliente')

INSERT INTO TipoUsuario (TipoUsuario)
VALUES 
	('Administrador'),('M�dico'),('Paciente')

INSERT INTO Prontuario (DescricaoConsulta)
VALUES 
	('Paciente realizaou um exame cardiol�gico'),
	('Paciente realizou um exame no ortopedista'),
	('Paciente realizaou um exame no pediatra')

INSERT INTO Especialidades (Especialidade)
VALUES 
	('Cardiologia'),
	('Ortopedista'),
	('Pediatra')

INSERT INTO Medico (IdTipoUsuario,IdClinica,IdEspecialidades,Nome,Email,Senha,CRM)
VALUES 
	(1,1,1,'Roberto','Roberto@gmail.com','1234567890','123456'),
	(2,1,2,'Eduardo','Eduardo@gmail.com','0987654321','098765')

INSERT INTO Administrador (IdTipoUsuario,AgendarConsulta,ExcluirConsulta)
VALUES 
	(1,'Data agendamento consulta','Id consulta'),
	(2,'Data agendamento consulta','Id consulta'),
	(3,'Data agendamento consulta','IdConsulta')

INSERT INTO Paciente (IdComentario, IdTipoUsuario, Nome, Email, Senha)
VALUES
	(1, 1,'Maria','Maria@gmail.com','123'),
	(2, 2,'Carlos','Carlos@gmail','1234'),
	(3, 3,'Guilherme','Guilherme','12345')

INSERT INTO Agendamento (IdMedico, IdAdministrador, IdPaciente, DataConsulta, HoraConsulta)
VALUES 
	(1,1,6,'20/05/2022','08:30hrs'),
	(2,2,7,'27/10,2021,','10:00hrs')

INSERT INTO Consulta (IdComentario, IdMedico, IdProntuario, IdAgendamento, IdPaciente, HoraConsulta, DataConsulta)
VALUES 
	(1,1,1,5,6,'14:00hrs','10/02/2023'),
	(2,2,2,6,7,'15:30hrs','30/04/2020')

INSERT INTO Comentario (Comentario)
VALUES
		('O m�dico me tratou muito bem'),
		('Fiquei muito tempo esperando pelo atendimento'),
		('N�o gostei do atendimento')

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
