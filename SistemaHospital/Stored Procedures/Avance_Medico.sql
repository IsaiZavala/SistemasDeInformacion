DELIMITER $$
CREATE DEFINER=`root`@`%` PROCEDURE `Avance_Medico`(in id int(11), in fecha_ini DATE, in fecha_fin DATE, in tipoFecha varchar(1))
BEGIN
	if tipo = 'Y' then
		select id_personal as especialidad, year(fecha) as idFecha,year(fecha) as mes, count(folio) as cantidad
		from (select * 
			  from Consulta
			  where fecha between fecha_ini and fecha_fin and id_personal=id) as T
		group by id_personal, year(fecha)
		having id_personal = id
		order by fecha;
	elseif tipo = 'M' then
		select id_personal as especialidad, month(fecha) as idFecha,month(fecha) as mes, count(folio) as cantidad
		from (select * 
			  from Consulta
			  where fecha between fecha_ini and fecha_fin and id_personal=id) as T
		group by id_personal, month(fecha)
		having id_personal = id
		order by fecha;
	else
		select id_personal as especialidad, week(fecha,1) as idFecha,week(fecha,1) as mes, count(folio) as cantidad
		from (select * 
			  from Consulta
			  where fecha between fecha_ini and fecha_fin and id_personal=id) as T
		group by id_personal, week(fecha,1)
		having id_personal = id
		order by fecha;
	end if;
END$$
DELIMITER ;