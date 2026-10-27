# Requisitos — TP1 Biblioteca

## 1. Base de datos y estructura

- Crear la base de datos `biblioteca`.
- Crear las tablas del modelo.
- Definir claves primarias y foráneas.
- Insertar datos de prueba.

## 2. Consultas SQL

- Preparar las 20 consultas SELECT solicitadas.
- Ejecutar y comprobar las consultas.

## 3. Operaciones DML

- Insertar un estudiante.
- Actualizar `SALUD` a 'Excelente' para los funcionarios mayores de 50 años.
- Eliminar un libro que no tenga préstamos asociados.
- Cambiar el `ID_EDIT` de un libro.

## 4. Vistas

- Crear `VW_PRESTAMOS_DETALLE`.
- Crear `VW_LIBROS_POR_BIBLIOTECA`.

## 5. Triggers

- Registrar auditoría al insertar un préstamo mediante `TR_AUDITAR_PRESTAMO`.
- Validar la edad mínima de 17 años al insertar estudiantes.
- Validar la edad mínima de 17 años al actualizar estudiantes.

## 6. Procedimiento almacenado

- Crear `SP_REGISTRAR_PRESTAMO` para registrar préstamos.

## 7. Usuarios y permisos

- Crear `bibliotecario_user`.
- Asignar permisos de consulta sobre `LIBROS`, `AUTORES` y `EDITORIALES`.
- Asignar permisos SELECT, INSERT y UPDATE sobre `PRESTAMO`.
- Revocar el permiso DELETE sobre `PRESTAMO`.
- Crear `admin_user` con todos los privilegios sobre `biblioteca`.

## 8. Preguntas teóricas

- Explicar la clave primaria compuesta de `PRESTAMO`.
- Explicar la eliminación de carreras con estudiantes asociados.
- Justificar la separación entre `AUTORES` y `LIBROS`.
- Explicar la relación entre `CAMPUS` y `CIUDAD`.

## 9. Documentación

- Incorporar el diagrama entidad-relación `der.png`.
- Completar `questions.md`.
- Completar `requirements.md`.
- Incluir el enunciado original `tp.pdf`.

## Observaciones

La existencia de las tablas, las vistas, los triggers, el procedimiento almacenado y los usuarios fue comprobada durante la ejecución del proyecto.

Las cuatro operaciones DML del punto 3 deben verificarse. El archivo `04_alterations.sql` contiene modificaciones de estructura, pero no esas cuatro operaciones.
