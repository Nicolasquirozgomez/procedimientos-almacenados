DELIMITER $$

CREATE PROCEDURE cantidadProductos(tipo_producto VARCHAR(255))
BEGIN
    DECLARE cantidad INT;
    
    SELECT COUNT(*) INTO cantidad
    FROM productos
    WHERE tipo = tipo_producto;
    
    SELECT cantidad AS cantidad_productos;
END $$

DELIMITER ;
