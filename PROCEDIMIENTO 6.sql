DELIMITER $$

CREATE PROCEDURE obtenerSucursalesPorPais(pais VARCHAR(255))
BEGIN
    SELECT * FROM sucursal
    WHERE pais = pais;
END $$

DELIMITER ;
