DELIMITER //
CREATE PROCEDURE `TratamientoReport`(
IN Enfermedad varchar(100) 
, IN Descripcion varchar(100)
, IN Costo decimal
)
BEGIN
	SELECT 
    T.IdTratamiento
    , T.Enfermedad
    , T.Descripcion
    , T.Costo
    FROM mydb.Tratamiento AS T
    WHERE (Enfermedad IS NULL OR T.enfermedad like Enfermedad)
    AND (Descripcion IS NULL OR T.descripcion like Descripcion)
    AND ( Costo IS NULL OR T.costo = Costo)
    ;
END