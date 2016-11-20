DELIMITER //
CREATE PROCEDURE `DoctorReport`(IN Nombre VARCHAR(100) )
BEGIN
	SELECT 
	M.Id_Personal
    , M.Nombre
    , M.telefono
    , M.fecha_nacimiento
    , M.cedulaprof
    , M.Pago
    , E.nombre_especialidad
    FROM mydb.Medico AS M
	LEFT JOIN mydb.especialidad AS E ON E.IdEspecialidad = M.id_especialidad
    WHERE M.nombre like Nombre
    ;
    
    
END