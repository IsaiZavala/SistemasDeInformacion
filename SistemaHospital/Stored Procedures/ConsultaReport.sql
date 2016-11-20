DELIMITER //
CREATE PROCEDURE `ConsultaReport`()
BEGIN
	SELECT 
	P.Nombre
	, E.Nombre_Especialidad AS Especialidad
	, C.Fecha
	, C.Costo
	FROM 
	mydb.Consulta C
	INNER JOIN mydb.Paciente P ON P.IdPaciente = C.Id_Paciente
	INNER JOIN mydb.Especialidad E ON E.IdEspecialidad = C.Especialidad;
END