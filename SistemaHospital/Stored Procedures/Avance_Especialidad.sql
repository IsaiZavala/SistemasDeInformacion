CREATE DEFINER=`root`@`%` PROCEDURE `Avance_Especialidad`(in idEspecialidad int(11), in ano int(11), in tipoFecha varchar(1))
BEGIN
	if tipoFecha = 'M' then 
		Select especialidad, month(fecha) as idFecha, Month(fecha)as mes, count(folio) as cantidad
		from (select * from Consulta where year(fecha)=ano) as T
		group by especialidad, mes,idFecha
		having  especialidad = idEspecialidad
		order by idFecha;
	elseif tipoFecha = 'W' then 
		Select especialidad, Week(fecha,1) as idFecha, Week(fecha,1)as mes, count(folio) as cantidad
		from (select * from Consulta where month(fecha)=ano) as T
		group by especialidad, mes,idFecha
		having  especialidad = idEspecialidad
		order by idFecha;
    else
		Select especialidad, Year(fecha) as idFecha, Year(fecha)as mes, count(folio) as cantidad
		from Consulta
		group by especialidad, mes,idFecha
		having  especialidad = idEspecialidad
		order by idFecha;
    end if;
END