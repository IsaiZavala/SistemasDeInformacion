CREATE DEFINER=`root`@`%` PROCEDURE `ConsultasXEspecialidad`(IN cant_registros INT(11),IN fechaMin date,IN fechaMax date)
BEGIN
	select nombre_especialidad, T.folio as Consultas
	from Especialidad inner join 
	(select * 
	from Consulta
    where fecha between fechaMin and fechaMax) as T
	on idEspecialidad=especialidad;
END
