CREATE PROCEDURE `Avance_Item_cantidad` (in id int(11), in fecha_ini DATE, in fecha_fin DATE, in tipoFecha varchar(1))
BEGIN
	if tipoFecha = 'M' then 
		select idItem as especialidad, month(fecha) as idFecha, month(fecha) as mes, sum(cantidad) as cantidad
		from (select * 
			  from detalles_item
			  where fecha between '2011-01-01' and '2015-01-01' and idItem=1) as T
		group by idItem, month(fecha)
		order by fecha;
	else
		select idItem as especialidad, year(fecha) as idFecha, year(fecha) as mes, sum(cantidad) as cantidad
		from (select * 
			  from detalles_item
			  where fecha between '2011-01-01' and '2015-01-01' and idItem=1) as T
		group by idItem, year(fecha)
		order by fecha;
	end if;
END
