DELIMITER $$
CREATE DEFINER=`root`@`%` PROCEDURE `Avance_Estudios`(in id int(11), in fecha_ini DATE, in fecha_fin DATE, in tipoFecha varchar(1))
BEGIN
	if tipoFecha = 'Y' then 
		Select idEstudios as especialidad, year(fecha) as idFecha,year(fecha) as mes, count(folio) as cantidad
		from (select *
			  from mydb.Paciente_X_Estudio
			  where fecha between fecha_ini and fecha_fin and idEstudios=id) as T
		group by idEstudios, year(fecha);
	elseif tipoFecha = 'M' then
		Select idEstudios as especialidad, month(fecha) as idFecha,month(fecha) as mes, count(folio) as cantidad
		from (select *
			  from mydb.Paciente_X_Estudio
			  where fecha between fecha_ini and fecha_fin and idEstudios=id) as T
		group by idEstudios, month(fecha);
	else
		Select idEstudios as especialidad, week(fecha,1) as idFecha,week(fecha,1) as mes, count(folio) as cantidad
		from (select *
			  from mydb.Paciente_X_Estudio
			  where fecha between fecha_ini and fecha_fin and idEstudios=id) as T
		group by idEstudios, week(fecha,1);
	end if;
END$$
DELIMITER ;