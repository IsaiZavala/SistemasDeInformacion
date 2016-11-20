DELIMITER //
CREATE PROCEDURE `InventoryReport`(IN IdItem int
, IN Descripcion varchar(100)
, IN Precio_Venta decimal
, IN Costo decimal 
, IN Cantidad int)
BEGIN
  SELECT 
  I.IdItem
  , I.Descripcion
  , I.Cantidad
  , I.Costo
  , I.Precio_Venta
  FROM inventario AS I
  WHERE (idItem is null OR I.idItem = idItem)
  AND (I.Descripcion like Descripcion)
  AND (Precio_Venta IS NULL OR I.precio_venta = Precio_Venta)
  AND (Costo IS NULL OR I.costo = Costo)
  AND (Cantidad IS NULL OR I.cantidad = Cantidad)
  ;
END