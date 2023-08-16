--DQL

USE Healthy_Manha

SELECT
	
	Consulta.IdConsulta AS [Id Consulta],
	CONCAT (Consulta.DataConsulta, '-', Consulta.HoraConsulta) AS [Data/Hora consulta],
	Clinica.NomeFantasia AS [Nome cl�nica],
	Paciente.Nome AS [Nome paciente],
	Medico.Nome AS [Nome m�dico],
	Especialidades.Especialidade AS [Especialidade m�dico],
	Medico.CRM AS [CRM],
	Prontuario.DescricaoConsulta AS Prontu�rio,
	Comentario.Comentario AS [Coment�rio],
	TipoUsuario.IdTipoUsuario AS [TipoUsu�rio]

FROM Clinica
	INNER JOIN Consulta			ON	 Comentario.IdConsulta = Consulta.IdConsulta
	INNER JOIN Paciente			ON	 Consulta.IdPaciente = Paciente.IdPaciente
	INNER JOIN Medico			ON	 Consulta.IdMedico = Medico.IdMedico
	INNER JOIN Especialidades	ON	 Medico.IdEspecialidades = Especialidades.IdEspecialidades
	INNER JOIN Prontuario		ON	 Consulta.IdProntuario = Prontuario.IdProntuario
	INNER JOIN Comentario		ON	 						Comentario.IdComentario 
	INNER JOIN TipoUsuario		ON 
