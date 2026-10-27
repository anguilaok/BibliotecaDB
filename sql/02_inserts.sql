-- TP1 Biblioteca - Datos de prueba
USE biblioteca;

INSERT INTO CIUDAD (ID_CIUDAD, NOMBRE) VALUES
(1, 'San Juan'), (2, 'Mendoza'), (3, 'Cordoba');

INSERT INTO CAMPUS (ID_CAMPUS, NOMBRE, ID_CIUDAD) VALUES
(1, 'Campus Centro', 1), (2, 'Campus Norte', 1),
(3, 'Campus Mendoza', 2), (4, 'Campus Cordoba', 3);

INSERT INTO CARRERAS (ID_CARRERA, NOMBRE, ID_CAMPUS) VALUES
(1, 'Desarrollo de Software', 1),
(2, 'Ingenieria en Sistemas', 2),
(3, 'Administracion', 3),
(4, 'Contador Publico', 4);

INSERT INTO ESTUDIANTES
(RUT_EST, NOMBRES, APELLIDOS, EDAD, FONO, DIRECCION, ID_CARRERA) VALUES
('E101', 'Ana', 'Martinez', 22, '2644001001', 'Av. Libertador 100', 1),
('E102', 'Lucas', 'Perez', 27, '2644001002', 'San Martin 250', 2),
('E103', 'Sofía', 'Gomez', 19, '2644001003', 'Las Heras 320', 1),
('E104', 'Mateo', 'Rodriguez', 31, '2644001004', 'Mitre 410', 3),
('E105', 'Valentina', 'Lopez', 26, '2644001005', 'Rivadavia 520', 4),
('E106', 'Tomas', 'Fernandez', 24, '2644001006', 'Sarmiento 630', 2),
('E107', 'Camila', 'Morales', 29, '2644001007', 'Belgrano 740', 1),
('E108', 'Juan', 'Diaz', 20, '2644001008', 'Urquiza 850', 3);

INSERT INTO FUNCIONARIOS
(RUT_FUNC, NOMBRES, APELLIDOS, EDAD, DIRECCION, SALUD, ID_CAMPUS) VALUES
('F201', 'Pedro', 'Sanchez', 45, 'Mitre 100', 'Buena', 1),
('F202', 'Laura', 'Molina', 53, 'Rivadavia 200', 'Regular', 2),
('F203', 'Carlos', 'Ruiz', 61, 'Sarmiento 300', 'Buena', 3),
('F204', 'Elena', 'Castro', 38, 'Belgrano 400', 'Muy buena', 4);

INSERT INTO BIBLIOTECA (ID_BIBLIO, BIBLIOTECA) VALUES
(1, 'Biblioteca Central'), (2, 'Biblioteca Campus Norte'),
(3, 'Biblioteca Mendoza'), (4, 'Biblioteca Cordoba');

INSERT INTO TIPO (ID_TIPO, TIPO_P) VALUES
(1, 'Novela'), (2, 'Poesia'), (3, 'Ciencia'), (4, 'Historia');

INSERT INTO AUTORES (RUT_AUTOR, NOMBRES, APELLIDOS) VALUES
('A301', 'Gabriel', 'Garcia Marquez'),
('A302', 'Isabel', 'Allende'),
('A303', 'Pablo', 'Neruda'),
('A304', 'Julio', 'Cortazar'),
('A305', 'María', 'Montes');

INSERT INTO EDITORIALES (ID_EDIT, NOMBRE, PAIS) VALUES
(1, 'Editorial Sur', 'Argentina'),
(2, 'Letras del Mundo', 'Chile'),
(3, 'Planeta', 'Espania'),
(4, 'Alfaguara', 'Mexico');

INSERT INTO LIBROS
(COD_LIBRO, TITULO, AGNO, ID_BIBLIO, ID_TIPO, RUT_AUTOR, ID_EDIT) VALUES
(1001, 'Cien años de soledad', 1967, 1, 1, 'A301', 3),
(1002, 'La casa de los espiritus', 1982, 1, 1, 'A302', 4),
(1003, 'Veinte poemas de amor', 1924, 2, 2, 'A303', 2),
(1004, 'Rayuela', 1963, 1, 1, 'A304', 1),
(1005, 'Historia universal', 1998, 3, 4, 'A305', 1),
(1006, 'Ciencia para todos', 2015, 2, 3, 'A305', 2),
(1007, 'El amor en los tiempos del colera', 1985, 1, 1, 'A301', 3),
(1008, 'Versos del sur', 2001, 4, 2, 'A303', 4),
(1009, 'El jardin secreto', 1911, 3, 1, 'A302', 1),
(1010, 'Cuentos completos', 1974, 4, 1, 'A304', 2);

INSERT INTO PRESTAMO (RUT_EST, RUT_FUNC, COD_LIBRO, FECHA_P, FECHA_E) VALUES
('E101', 'F201', 1001, DATE_SUB(CURDATE(), INTERVAL 40 DAY), DATE_SUB(CURDATE(), INTERVAL 30 DAY)),
('E102', 'F202', 1002, DATE_SUB(CURDATE(), INTERVAL 25 DAY), NULL),
('E103', 'F201', 1003, DATE_SUB(CURDATE(), INTERVAL 18 DAY), DATE_SUB(CURDATE(), INTERVAL 10 DAY)),
('E101', 'F203', 1004, DATE_SUB(CURDATE(), INTERVAL 12 DAY), NULL),
('E104', 'F203', 1001, DATE_SUB(CURDATE(), INTERVAL 8 DAY), NULL),
('E106', 'F204', 1007, DATE_SUB(CURDATE(), INTERVAL 4 DAY), NULL),
('E107', 'F201', 1003, DATE_SUB(CURDATE(), INTERVAL 2 DAY), NULL);
