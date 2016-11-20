DELIMITER //
CREATE PROCEDURE `PacienteReport`(IN Nombre varchar(100)
, IN Telefono varchar(10))
BEGIN
	SELECT 
	P.IdPaciente AS IdPaciente
	, P.Nombre
	, P.Telefono
	, P.Fecha_Nacimiento
	FROM mydb.Paciente AS P
	WHERE (Nombre IS NULL OR P.nombre = Nombre)
    AND (Telefono IS NULL OR P.telefono = Telefono)
    ;
END