DELIMITER $$
CREATE DEFINER=`root`@`%` PROCEDURE `Avance_Paciente`(in id int(11), in fecha_ini date, in fecha_fin date, in tipoFecha varchar(1))
BEGIN
	if tipoFecha = 'Y' then 
        Select id_paciente as especialidad, year(fecha) as idFecha,year(fecha) as mes, count(folio) as cantidad
		from (select *
			  from Consulta 
			  where fecha between fecha_ini and fecha_fin and id_paciente=id) as T
		group by id_paciente, year(fecha);
	elseif tipoFecha = 'M' then
		Select id_paciente as especialidad, month(fecha) as idFecha,month(fecha) as mes, count(folio) as cantidad
		from (select *
			  from Consulta 
			  where fecha between fecha_ini and fecha_fin and id_paciente=id) as T
		group by id_paciente, month(fecha);
	else
		Select id_paciente as especialidad, week(fecha,1) as idFecha,week(fecha,1) as mes, count(folio) as cantidad
		from (select *
			  from Consulta 
			  where fecha between fecha_ini and fecha_fin and id_paciente=id) as T
		group by id_paciente, week(fecha,1);
	end if;
END$$
DELIMITER ;