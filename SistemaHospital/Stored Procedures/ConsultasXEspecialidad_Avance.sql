CREATE PROCEDURE `ConsultasXEspecialidad_Avance` (in idEspecialidad int(11), in ano int(11))
BEGIN
	Select especialidad, month(fecha), count(folio) as cantidad
	from (select * from Consulta where year(fecha)=ano) as T
	group by especialidad, month(fecha)
	having  especialidad = idEspecialidad;
END