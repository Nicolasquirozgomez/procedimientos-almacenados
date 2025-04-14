DELIMITER $$

CREATE PROCEDURE MostrarNota(nota REAL)
BEGIN
    IF nota >= 0 AND nota < 5 THEN
        SELECT 'Insuficiente' AS mensaje;
    ELSEIF nota >= 5 AND nota < 6 THEN
        SELECT 'Aprobado' AS mensaje;
    ELSEIF nota >= 6 AND nota < 7 THEN
        SELECT 'Bien' AS mensaje;
    ELSEIF nota >= 7 AND nota < 9 THEN
        SELECT 'Notable' AS mensaje;
    ELSEIF nota >= 9 AND nota <= 10 THEN
        SELECT 'Sobresaliente' AS mensaje;
    ELSE
        SELECT 'Nota no válida' AS mensaje;
    END IF;
END $$

DELIMITER ;
