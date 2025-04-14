DELIMITER $$

CREATE FUNCTION calcularIVA(total DECIMAL(10,2), porcentaje_iva DECIMAL(5,2)) RETURNS DECIMAL(10,2)
BEGIN
    RETURN total * (1 + porcentaje_iva / 100);
END $$

CREATE PROCEDURE funcionIVA(total DECIMAL(10,2), porcentaje_iva DECIMAL(5,2))
BEGIN
    DECLARE total_con_iva DECIMAL(10,2);
    
    SET total_con_iva = calcularIVA(total, porcentaje_iva);
    
    SELECT total_con_iva AS total_con_iva;
END $$

DELIMITER ;
