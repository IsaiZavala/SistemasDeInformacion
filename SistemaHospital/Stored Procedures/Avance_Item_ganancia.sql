CREATE PROCEDURE `Avance_Item_ganancia` (in id int(11), in fecha_ini DATE, in fecha_fin DATE, in tipoFecha varchar(1))
BEGIN
	if tipoFecha = 'M' then 
		select idItem as especialidad, month(fecha) as idFecha, month(fecha) as mes, round(sum(ganancia_por_unidad*cantidad),2) as cantidad
		from (select * 
			  from detalles_item
			  where fecha between fecha_ini and fecha_fin and idItem=id) as T
		group by idItem, month(fecha)
		order by fecha;
	else
		select idItem as especialidad, year(fecha) as idFecha, year(fecha) as mes, round(sum(ganancia_por_unidad*cantidad),2) as cantidad
		from (select * 
			  from detalles_item
			  where fecha between fecha_ini and fecha_fin and idItem=id) as T
		group by idItem, year(fecha)
		order by fecha;
END
