DELIMITER $$
CREATE DEFINER=`root`@`%` PROCEDURE `MedicosXEspecialidad`(in cantidadMaxima int, in top int)
BEGIN
	select Especialidad.nombre_especialidad as 'Especialidad', count(id_personal) as 'Cant Medicos'
	from Medico inner join Especialidad
	on Especialidad.idEspecialidad= Medico.id_especialidad
	group by id_especialidad
	having 
	count(id_personal) > cantidadMaxima
    order by count(id_personal) DESC
	limit top;
END$$
DELIMITER ;
