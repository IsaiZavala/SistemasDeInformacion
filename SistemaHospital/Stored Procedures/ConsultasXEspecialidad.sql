/*Procedimiento que obtiene una cantidad de consultas echas por cada especialidad,
Esta pensado para que se muestre en graficas*/
CREATE DEFINER=`root`@`%` PROCEDURE `ConsultasXEspecialidad`(IN cant_registros INT(11),IN fechaMin date,IN fechaMax date)
BEGIN
	select nombre_especialidad, count(T.folio) as Consultas
	from Especialidad inner join 
	(select * 
	from Consulta
    where fecha between fechaMin and fechaMax) as T
	on idEspecialidad=especialidad
	group by idEspecialidad
	order by Consultas DESC
	limit cant_registros;
END