-- Usar la base de datos cm_vanguardia
USE cm_vanguardia;


-- Vista para obtener la cantidad de turnos por paciente
-- Esta vista mostrara la cantidad de turnos por paciente
CREATE VIEW cantidad_turnos_por_paciente AS
SELECT 
    p.id_paciente,
    CONCAT(p.nombre, ' ', p.apellido) AS paciente_nombre,
    COUNT(t.id_turno) AS cantidad_turnos
FROM 
    Paciente p
LEFT JOIN 
    Turnos t ON p.id_paciente = t.id_paciente
GROUP BY 
    p.id_paciente, paciente_nombre;
    
-- -------------------------------------------------------
    


-- Vista para obtener la cantidad de turnos por médico
-- Esta vista mostrara la cantidad de turnos por médico
CREATE VIEW cantidad_turnos_por_medico AS
SELECT 
    m.id_medico,
    CONCAT(m.nombre, ' ', m.apellido) AS medico_nombre,
    COUNT(t.id_turno) AS cantidad_turnos
FROM 
    Medico m
LEFT JOIN 
    Turnos t ON m.id_medico = t.id_medico
GROUP BY 
    m.id_medico, medico_nombre;

-- -------------------------------------------------------



-- Vista para obtener detalles de los turnos, incluyendo información del paciente y del médico
-- Esta vista mostrara el detalle de cada turno existente, asi como tambien informacion del paciente y del médico
CREATE VIEW detalles_turnos AS
SELECT 
    t.id_turno,
    CONCAT(p.nombre, ' ', p.apellido) AS paciente_nombre,
    p.telefono AS paciente_telefono,
    p.email AS paciente_email,
    CONCAT(m.nombre, ' ', m.apellido) AS medico_nombre,
    m.especialidad AS medico_especialidad,
    m.telefono AS medico_telefono,
    m.email AS medico_email,
    t.fecha,
    t.hora,
    t.motivo
FROM 
    Turnos t
JOIN 
    Paciente p ON t.id_paciente = p.id_paciente
JOIN 
    Medico m ON t.id_medico = m.id_medico;

-- ------------------------------------------------------    