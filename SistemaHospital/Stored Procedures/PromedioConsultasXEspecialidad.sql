CREATE PROCEDURE `PromedioConsultasXEspecialidad` (in fechaMin DATE, IN fechaMax DATE)
BEGIN
	select especialidad, avg(cantidad) as Promedio
	from 
		(Select especialidad, fecha, count(folio) as cantidad
		from Consulta
		group by especialidad, fecha
        having fecha between fechaMin and fechaMax) as T
	group by especialidad;
END
