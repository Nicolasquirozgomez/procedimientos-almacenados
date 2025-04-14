DELIMITER $$

CREATE PROCEDURE actualizarColumnaEdad()
BEGIN
    DECLARE id_usuario INT;
    DECLARE fecha_nacimiento_usuario DATE;
    DECLARE edad_usuario INT;
    
    -- Cursor para recorrer todos los usuarios
    DECLARE usuario_cursor CURSOR FOR
    SELECT id, fecha_nacimiento FROM empleados;
    
    -- Abrir el cursor
    OPEN usuario_cursor;
    
    -- Ciclo para recorrer los registros
    read_loop: LOOP
        FETCH usuario_cursor INTO id_usuario, fecha_nacimiento_usuario;
        
        -- Si no hay más registros, salir del ciclo
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        -- Calcular la edad
        SET edad_usuario = calcularEdad(fecha_nacimiento_usuario);
        
        -- Actualizar la edad en la tabla
        UPDATE empleados
        SET edad = edad_usuario
        WHERE id = id_usuario;
    END LOOP;
    
    -- Cerrar el cursor
    CLOSE usuario_cursor;
END $$

DELIMITER ;
