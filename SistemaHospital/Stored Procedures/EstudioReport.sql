DELIMITER //
CREATE PROCEDURE `EstudioReport`()
BEGIN
	SELECT 
	E.IdEstudio
    , E.Nombre_Estudio
    , E.Costo
	FROM mydb.Estudio AS E;
END