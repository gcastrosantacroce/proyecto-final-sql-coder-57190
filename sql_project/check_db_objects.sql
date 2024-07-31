-- Usar la base de datos cm_vanguardia
USE cm_vanguardia;

-- Verificación de importacion
SELECT 
    table_name AS `Tabla`, 
    table_rows AS `Cantidad de Registros`
FROM 
    information_schema.tables
WHERE 
    table_schema = 'cm_vanguardia'
ORDER BY 
    table_name;

-- Verificación de vistas
SELECT 
    TABLE_NAME AS `Nombre de la Vista`,
    VIEW_DEFINITION AS `Definición`
FROM 
    INFORMATION_SCHEMA.VIEWS
WHERE 
    TABLE_SCHEMA = 'cm_vanguardia'
ORDER BY 
    TABLE_NAME;

-- Verificación de funciones
SELECT 
    ROUTINE_NAME AS `Nombre de la Función`,
    ROUTINE_DEFINITION AS `Definición`,
    ROUTINE_TYPE AS `Tipo`
FROM 
    INFORMATION_SCHEMA.ROUTINES
WHERE 
    ROUTINE_SCHEMA = 'cm_vanguardia'
    AND ROUTINE_TYPE = 'FUNCTION'
ORDER BY 
    ROUTINE_NAME;

-- Verificación de procedimientos
SELECT 
    ROUTINE_NAME AS `Nombre del Procedimiento`,
    ROUTINE_DEFINITION AS `Definición`,
    ROUTINE_TYPE AS `Tipo`
FROM 
    INFORMATION_SCHEMA.ROUTINES
WHERE 
    ROUTINE_SCHEMA = 'cm_vanguardia'
    AND ROUTINE_TYPE = 'PROCEDURE'
ORDER BY 
    ROUTINE_NAME;

-- Verificación de triggers
SELECT 
    TRIGGER_NAME AS `Nombre del Trigger`,
    EVENT_MANIPULATION AS `Evento`,
    EVENT_OBJECT_TABLE AS `Tabla`,
    ACTION_TIMING AS `Momento`
FROM 
    INFORMATION_SCHEMA.TRIGGERS
WHERE 
    TRIGGER_SCHEMA = 'cm_vanguardia'
ORDER BY 
    EVENT_OBJECT_TABLE, 
    ACTION_TIMING, 
    EVENT_MANIPULATION;

-- Verificación de datos en la tabla Paciente
SELECT * FROM Paciente LIMIT 10;

-- Verificación de datos en la tabla Medico
SELECT * FROM Medico LIMIT 10;

-- Verificación de datos en la tabla Turnos
SELECT * FROM Turnos LIMIT 10;

-- Verificación de datos en la tabla Receta
SELECT * FROM Receta LIMIT 10;

-- Verificación de datos en la tabla Tratamiento
SELECT * FROM Tratamiento LIMIT 10;

