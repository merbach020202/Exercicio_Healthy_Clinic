--DQL

USE Healthy_Manha

SELECT
	
	Consulta.IdConsulta AS [Id Consulta],
	CONCAT (Consulta.DataConsulta, '-', Consulta.HoraConsulta) AS [Data/Hora consulta],
	Clinica.NomeFantasia AS [Nome clínica],
	Paciente.Nome AS [Nome paciente],
	Medico.Nome AS [Nome médico],
	Especialidades.Especialidade AS [Especialidade médico],
	Medico.CRM AS [CRM],
	Prontuario.DescricaoConsulta AS Prontuário,
	Comentario.Comentario AS [Comentário]

FROM Consulta
	INNER JOIN Clinica			ON	 Clinica.NomeFantasia = Clinica.NomeFantasia
	INNER JOIN Paciente			ON	 Paciente.Nome = Paciente.Nome
	INNER JOIN Medico			ON	 Medico.Nome = Medico.Nome
	INNER JOIN Especialidades	ON	 Medico.IdEspecialidades = Especialidades.IdEspecialidades
	INNER JOIN Prontuario		ON	 Consulta.IdProntuario = Prontuario.IdProntuario
	INNER JOIN Comentario		ON	 Paciente.IdComentario = Comentario.IdComentario 
	INNER JOIN TipoUsuario		ON	 Paciente.IdComentario = Comentario.IdComentario
