DELIMITER $$
CREATE PROCEDURE `MaterialXConsulta`(IN id INT(11),IN fechaMin DATE, IN fechaMax DATE)
BEGIN
SELECT idItem, anio, COUNT(folio) AS cantidad
FROM (SELECT folio, WEEK(fecha) AS anio
	FROM Consulta WHERE fecha BETWEEN fechaMin AND fechaMax) AS T
INNER JOIN
material_consulta
ON folio= idConsulta
GROUP BY idItem, anio
HAVING idItem=id;
END$$
DELIMITER ;