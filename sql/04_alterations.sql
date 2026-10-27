-- TP1 Biblioteca - Modificaciones posteriores al esquema
USE biblioteca;

-- Agrega una columna para indicar el correo de contacto del funcionario.
ALTER TABLE FUNCIONARIOS
  ADD COLUMN EMAIL VARCHAR(150) NULL;

-- Agrega una columna de observaciones opcional para los libros.
ALTER TABLE LIBROS
  ADD COLUMN OBSERVACIONES VARCHAR(255) NULL;

-- Para revertir una de estas modificaciones, se puede usar:
-- ALTER TABLE FUNCIONARIOS DROP COLUMN EMAIL;
-- ALTER TABLE LIBROS DROP COLUMN OBSERVACIONES;
