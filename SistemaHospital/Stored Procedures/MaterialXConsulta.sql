DELIMITER $$
CREATE DEFINER=`root`@`%` PROCEDURE `MaterialXConsulta`(in id int(11),in fechaMin DATE, in fechaMax DATE)
BEGIN
select idItem, anio, count(folio) as cantidad
from (select folio, week(fecha) as anio
	from Consulta where fecha between fechaMin and fechaMax) as T
inner join
material_consulta
on folio= idConsulta
group by idItem, anio
having idItem=id;
END$$
DELIMITER ;