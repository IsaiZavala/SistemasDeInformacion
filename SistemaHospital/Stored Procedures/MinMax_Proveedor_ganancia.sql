CREATE PROCEDURE `MinMax_Proveedor_ganancia` (IN n INT,IN fecha_ini date,IN fecha_fin date, in tipo varchar(1), in item int(11))
BEGIN
	if tipo = '+' then 
		select idProveedor, round(AVG(ganancia_por_unidad),2) as gananciaTotal
		from (select * 
			  from detalles_item
			  where fecha between fecha_ini and fecha_fin and idItem=item) as T
		group by idProveedor
		order by gananciaTotal DESC
		limit n;
	else
		select idProveedor, round(AVG(ganancia_por_unidad),2) as gananciaTotal
		from (select * 
			  from detalles_item
			  where fecha between fecha_ini and fecha_fin and idItem=item) as T
		group by idProveedor
		order by gananciaTotal ASC
		limit n;
	end if;
END
