-- TP1 Biblioteca - Procedimiento almacenado para registrar préstamos
USE biblioteca;

DROP PROCEDURE IF EXISTS SP_REGISTRAR_PRESTAMO;

DELIMITER $$

CREATE PROCEDURE SP_REGISTRAR_PRESTAMO(
    IN p_RUT_EST VARCHAR(15),
    IN p_COD_LIBRO INT,
    IN p_RUT_FUNC VARCHAR(15),
    IN p_FECHA_P DATE
)
BEGIN
    -- Validar que el libro no tenga ya un préstamo abierto.
    IF EXISTS (
        SELECT 1
        FROM PRESTAMO
        WHERE COD_LIBRO = p_COD_LIBRO
          AND FECHA_E IS NULL
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El libro ya tiene un préstamo activo';
    ELSE
        INSERT INTO PRESTAMO (RUT_EST, RUT_FUNC, COD_LIBRO, FECHA_P, FECHA_E)
        VALUES (p_RUT_EST, p_RUT_FUNC, p_COD_LIBRO, p_FECHA_P, NULL);

        SELECT 'Préstamo registrado correctamente' AS MENSAJE;
    END IF;
END$$

DELIMITER ;

-- Ejemplo de ejecución (usar valores existentes y un libro sin préstamo activo):
-- CALL SP_REGISTRAR_PRESTAMO('E105', 1005, 'F202', CURDATE());
