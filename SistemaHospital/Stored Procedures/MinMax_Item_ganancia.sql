CREATE PROCEDURE `MinMax_Item_ganancia`(IN n INT,IN fecha_ini date,IN fecha_fin date, in tipo varchar(1))
BEGIN
	if tipo = '+' then 
		select idItem as nombre_especialidad, round(sum(ganancia_por_unidad*cantidad),2) as Consultas
		from (select * 
			  from detalles_item
			  where fecha between fecha_ini and fecha_fin) as T
		group by idItem
		order by gananciaTotal DESC
		limit n;
	else
		select idItem as nombre_especialidad, round(sum(ganancia_por_unidad*cantidad),2) as Consultas
		from (select * 
			  from detalles_item
			  where fecha between fecha_ini and fecha_fin) as T
		group by idItem
		order by gananciaTotal ASC
		limit n;
	end if;
END
