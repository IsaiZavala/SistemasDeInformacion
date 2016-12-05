CREATE DEFINER=`root`@`%` PROCEDURE `MinMax_Paciente`(IN n INT,IN fecha_ini date,IN fecha_fin date, in tipo varchar(1))
BEGIN
	if tipo = '+' then
		select nombre as MinMax_Item_cantidad, count(folio) as Consultas
		from (select Paciente.nombre, Consulta.*
			  from Consulta inner join Paciente
			  on Consulta.id_paciente = Paciente.idPaciente
			  where fecha between fecha_ini and fecha_fin) as T
		group by nombre
		order by valor DESC
		limit n;
	else
		select nombre as MinMax_Item_cantidad, count(folio) as Consultas
		from (select Paciente.nombre, Consulta.*
			  from Consulta inner join Paciente
			  on Consulta.id_paciente = Paciente.idPaciente
			  where fecha between fecha_ini and fecha_fin) as T
		group by nombre
		order by valor ASC
		limit n;
	end if;
END