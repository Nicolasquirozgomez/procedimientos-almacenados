DELIMITER $$

CREATE PROCEDURE obtenerEmpleadosConSalarioMayorA(salario_minimo DECIMAL(10,2))
BEGIN
    SELECT id, nombre, numero_de_sueldo
    FROM empleados
    WHERE numero_de_sueldo > salario_minimo;
END $$

DELIMITER ;
