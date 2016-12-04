DELIMITER $$
CREATE DEFINER=`root`@`%` PROCEDURE `Avance_Tratamientos`(in id_Tratamiento int(11), in fecha_ini DATE, in fecha_fin DATE, in tipoFecha varchar(1))
BEGIN
	if tipoFecha = 'Y' then 
		Select idTratamiento as especialidad, year(fecha) as idFecha, year(fecha) as mes,count(folio) as cantidad
		from (select *
			  from mydb.Paciente_X_Tratamiento
			  where fecha between fecha_ini and fecha_fin and idTratamiento=id_Tratamiento) as T
		group by idTratamiento, year(fecha);
	elseif tipoFecha = 'M' then
		Select idTratamiento as especialidad, month(fecha) as idFecha, month(fecha) as mes,count(folio) as cantidad
		from (select *
			  from mydb.Paciente_X_Tratamiento
			  where fecha between fecha_ini and fecha_fin and idTratamiento=id_Tratamiento) as T
		group by idTratamiento, month(fecha);
	else
		Select idTratamiento as especialidad, week(fecha,1) as idFecha, week(fecha,1) as mes,count(folio) as cantidad
		from (select *
			  from mydb.Paciente_X_Tratamiento
			  where fecha between fecha_ini and fecha_fin and idTratamiento=id_Tratamiento) as T
		group by idTratamiento, week(fecha,1);
	end if;
END$$
DELIMITER ;