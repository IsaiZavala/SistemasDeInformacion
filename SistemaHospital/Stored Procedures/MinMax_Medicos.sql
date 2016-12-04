DELIMITER $$
CREATE DEFINER=`root`@`%` PROCEDURE `MinMax_Medicos`(IN n INT,IN fecha_ini date,IN fecha_fin date, in tipo varchar(1))
BEGIN
	if tipo = '+' then
		select nombre, count(folio) as valor
		from (select Medico.nombre, Consulta.*
			  from Consulta inner join Medico
			  on Consulta.id_personal = Medico.id_personal
			  where fecha between fecha_ini and fecha_fin) as T
		group by nombre
		order by valor DESC
		limit n;
	else
		select nombre, count(folio) as valor
		from (select Medico.nombre, Consulta.*
			  from Consulta inner join Medico
			  on Consulta.id_personal = Medico.id_personal
			  where fecha between fecha_ini and fecha_fin) as T
		group by nombre
		order by valor ASC
		limit n;
	end if;
END$$
DELIMITER ;