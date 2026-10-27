-- TP1 Biblioteca - Usuarios y permisos
-- Ejecutar con una cuenta MySQL que tenga privilegios para crear usuarios y otorgar permisos.
USE biblioteca;

CREATE USER IF NOT EXISTS 'bibliotecario_user'@'localhost'
IDENTIFIED BY 'Biblioteca_2026!Cambiar';

GRANT SELECT ON biblioteca.LIBROS TO 'bibliotecario_user'@'localhost';
GRANT SELECT ON biblioteca.AUTORES TO 'bibliotecario_user'@'localhost';
GRANT SELECT ON biblioteca.EDITORIALES TO 'bibliotecario_user'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE
ON biblioteca.PRESTAMO TO 'bibliotecario_user'@'localhost';

CREATE USER IF NOT EXISTS 'admin_user'@'localhost'
IDENTIFIED BY 'Admin_Biblioteca_2026!Cambiar';

GRANT ALL PRIVILEGES ON biblioteca.* TO 'admin_user'@'localhost';

-- La consigna también pide revocar DELETE al bibliotecario.
REVOKE DELETE ON biblioteca.PRESTAMO FROM 'bibliotecario_user'@'localhost';

-- Revisar permisos:
SHOW GRANTS FOR 'bibliotecario_user'@'localhost';
SHOW GRANTS FOR 'admin_user'@'localhost';

-- Cambiar las contraseñas de ejemplo antes de usar estas cuentas fuera del TP.
