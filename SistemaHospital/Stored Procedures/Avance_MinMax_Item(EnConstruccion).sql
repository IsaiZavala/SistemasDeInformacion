/*Avance_Item_cantidad*/
select idItem, year(fecha) as fecha, sum(cantidad) as cantTotal
from (select * 
      from detalles_item
	  where fecha between '2011-01-01' and '2015-01-01' and idItem=1) as T
group by idItem, year(fecha)
order by fecha;

/*Avance_Item_ganancia*/
select idItem, year(fecha) as fecha, round(sum(ganancia_por_unidad*cantidad),2) as gananciaTotal
from (select * 
      from detalles_item
	  where fecha between '2000-01-01' and '2017-01-01' and idItem=139) as T
group by idItem, year(fecha)
order by fecha;

/*MinMax Item_cantidad*/
select idItem, sum(cantidad) as cantTotal
from (select * 
      from detalles_item
	  where fecha between '2011-01-01' and '2015-01-01') as T
group by idItem
order by cantTotal DESC
limit 5;

/*MinMax Item_ganancia*/
select idItem, round(sum(ganancia_por_unidad*cantidad),2) as gananciaTotal
from (select * 
      from detalles_item
	  where fecha between '2011-01-01' and '2015-01-01') as T
group by idItem
order by gananciaTotal DESC
limit 5;

/*****************************************************************************************************/

/*Avance_Item_cantidad*/
select idProveedor, year(fecha) as fecha, sum(cantidad) as cantTotal
from (select * 
      from detalles_item
	  where fecha between '2011-01-01' and '2015-01-01' and idItem=1) as T
group by idProveedor, year(fecha)
order by fecha;

/*Avance_Item_ganancia*/
select idProveedor, year(fecha) as fecha, round(sum(ganancia_por_unidad*cantidad),2) as gananciaTotal
from (select * 
      from detalles_item
	  where fecha between '2000-01-01' and '2017-01-01' and idItem=139) as T
group by idProveedor, year(fecha)
order by fecha;

/*MinMax Item_cantidad*/
select idProveedor, sum(cantidad) as cantTotal
from (select * 
      from detalles_item
	  where fecha between '2011-01-01' and '2015-01-01') as T
group by idProveedor
order by cantTotal DESC
limit 5;

/*MinMax Item_ganancia*/
select idProveedor, round(sum(ganancia_por_unidad*cantidad),2) as gananciaTotal
from (select * 
      from detalles_item
	  where fecha between '2011-01-01' and '2015-01-01') as T
group by idProveedor
order by gananciaTotal DESC
limit 5;

