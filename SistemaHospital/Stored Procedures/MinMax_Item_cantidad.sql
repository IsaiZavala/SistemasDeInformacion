CREATE PROCEDURE `MinMax_Item_cantidad` (IN n INT,IN fecha_ini date,IN fecha_fin date, in tipo varchar(1))
BEGIN
	if tipo = '+' then 
		select idItem as nombre_especialidad, sum(cantidad) as Consultas
		from (select * 
			  from detalles_item
			  where fecha between fecha_ini and fecha_fin) as T
		group by idItem
		order by cantTotal DESC
		limit n;
	else
		select idItem as nombre_especialidad, sum(cantidad) as Consultas
		from (select * 
			  from detalles_item
			  where fecha between fecha_ini and fecha_fin) as T
		group by idItem
		order by cantTotal ASC
		limit n;
	end if;
END;
