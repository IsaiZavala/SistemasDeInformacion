DELIMITER //
CREATE PROCEDURE `EspecialidadReport`(IN NombreEspecialidad varchar(100))
BEGIN
	SELECT 
	E.IdEspecialidad
    , E.Nombre_Especialidad
	FROM mydb.Especialidad AS E
    WHERE (NombreEspecialidad IS NULL OR E.nombre_especialidad like NombreEspecialidad)
    ;
END