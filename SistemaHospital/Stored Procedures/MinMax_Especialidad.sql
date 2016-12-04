DELIMITER $$
CREATE DEFINER=`root`@`%` PROCEDURE `MinMax_Especialidad`(IN n INT,IN fecha_ini date,IN fecha_fin date, in tipo varchar(1))
BEGIN
	if tipo = '+' then
		select nombre_especialidad, count(T.folio) as Consultas
		from Especialidad inner join 
		(select * 
		from Consulta
		where fecha between fecha_ini and fecha_fin) as T
		on idEspecialidad=especialidad
		group by idEspecialidad
		order by Consultas DESC
		limit n;
	else
		select nombre_especialidad, count(T.folio) as Consultas
		from Especialidad inner join 
		(select * 
		from Consulta
		where fecha between fecha_ini and fecha_fin) as T
		on idEspecialidad=especialidad
		group by idEspecialidad
		order by Consultas ASC
		limit n;
	end if;
END$$
DELIMITER ;