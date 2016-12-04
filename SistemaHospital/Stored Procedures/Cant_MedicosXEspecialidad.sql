DELIMITER $$
CREATE DEFINER=`root`@`%` PROCEDURE `Cant_MedicosXEspecialidad`(IN n INT, in tipo varchar(1))
BEGIN
	IF tipo = '+' then 
		select Especialidad.nombre_especialidad as 'Especialidad', count(id_personal) as 'Cant Medicos'
		from Medico inner join Especialidad
		on Especialidad.idEspecialidad= Medico.id_especialidad
		group by id_especialidad
		order by count(id_personal) DESC
		limit n;
	else
		select Especialidad.nombre_especialidad as 'Especialidad', count(id_personal) as 'Cant Medicos'
		from Medico inner join Especialidad
		on Especialidad.idEspecialidad= Medico.id_especialidad
		group by id_especialidad
		order by count(id_personal) ASC
		limit n;
	end if;
END$$
DELIMITER ;