CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `detalles_item` AS 
select `T`.`idItem` AS `idItem`,
	   `T`.`idProveedor` AS `idProveedor`,
       `T`.`fecha` AS `fecha`,
       `T`.`cantidad` AS `cantidad`,
       (`T`.`valor_en_tienda` - `T`.`costo_por_unidad`) AS `ganancia_por_unidad` 
from (select `mydb`.`Item_X_Proveedor`.`idItem` AS `idItem`,
			 `mydb`.`Item_X_Proveedor`.`idProveedor` AS `idProveedor`,
             `mydb`.`Item_X_Proveedor`.`fecha` AS `fecha`,
             `mydb`.`Item_X_Proveedor`.`cantidad` AS `cantidad`,
             `mydb`.`Item_X_Proveedor`.`costo` AS `costo`,
             (`mydb`.`Item_X_Proveedor`.`costo` / `mydb`.`Item_X_Proveedor`.`cantidad`) AS `costo_por_unidad`,
             `mydb`.`Inventario`.`precio_venta` AS `valor_en_tienda`
	   from (`mydb`.`Item_X_Proveedor` join `mydb`.`Inventario` 
			 on((`mydb`.`Item_X_Proveedor`.`idItem` = `mydb`.`Inventario`.`idItem`)))) `T`;
