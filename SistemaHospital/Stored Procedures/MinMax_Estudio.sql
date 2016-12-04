DELIMITER $$
CREATE DEFINER=`root`@`%` PROCEDURE `MinMax_Estudio`(in n int(11),in tipo varchar(1),in fecha_ini DATE, in fecha_fin DATE)
BEGIN
	if tipo = '+' then 
		Select nombre_estudio, count(folio) as valor
		from (select Estudio.nombre_estudio, Paciente_X_Estudio.*
			  from mydb.Paciente_X_Estudio inner join mydb.Estudio
			  on Paciente_X_Estudio.idEstudios= Estudio.idEstudio
			  where fecha between fecha_ini and fecha_fin) as T
		group by nombre_estudio
		order by valor DESC
		limit n;
	else
		Select nombre_estudio, count(folio) as valor
		from (select Estudio.nombre_estudio, Paciente_X_Estudio.*
			  from mydb.Paciente_X_Estudio inner join mydb.Estudio
			  on Paciente_X_Estudio.idEstudios= Estudio.idEstudio
			  where fecha between fecha_ini and fecha_fin) as T
		group by nombre_estudio
		order by valor ASC
		limit n;
	end if;
END$$
DELIMITER ;