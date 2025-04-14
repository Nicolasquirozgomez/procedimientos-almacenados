DELIMITER $$

CREATE PROCEDURE preciosProductos(tipo_producto VARCHAR(255), OUT precio_maximo DECIMAL(10,2), OUT precio_minimo DECIMAL(10,2), OUT precio_media DECIMAL(10,2))
BEGIN
    SELECT MAX(precio), MIN(precio), AVG(precio) INTO precio_maximo, precio_minimo, precio_media
    FROM productos
    WHERE tipo = tipo_producto;
END $$

DELIMITER ;
