USE cm_vanguardia;

-- -------------------------------------------------------------
-- Función para obtener la cantidad de turnos de un paciente
DROP FUNCTION IF EXISTS detalle_turnos_paciente;

DELIMITER //

CREATE FUNCTION detalle_turnos_paciente(paciente_id INT)
RETURNS TEXT
DETERMINISTIC
BEGIN
    DECLARE total_turnos INT;
	DECLARE paciente_nombre VARCHAR(100);
    DECLARE paciente_apellido VARCHAR(100);
    DECLARE resultado TEXT;
    
    SELECT COUNT(*) INTO total_turnos
    FROM Turnos
    WHERE id_paciente = paciente_id;
    
	SELECT CONCAT(nombre, ' ', apellido) INTO paciente_nombre
    FROM Paciente
    WHERE id_paciente = paciente_id;
    
	SET resultado = CONCAT(
		'Paciente: ', paciente_nombre, '\n',
		'Cantidad de Turnos: ', total_turnos
    );
    
    RETURN resultado;
END //

DELIMITER ;
-- Ejemplo de la función
SELECT detalle_turnos_paciente (29);
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- Función para obtener la cantidad de turnos de un médico
DROP FUNCTION IF EXISTS detalles_turnos_medico;

DELIMITER //

CREATE FUNCTION detalles_turnos_medico(medico_id INT)
RETURNS TEXT
DETERMINISTIC
BEGIN
    DECLARE total_turnos INT;
    DECLARE medico_nombre VARCHAR(100);
    DECLARE medico_apellido VARCHAR(100);
    DECLARE medico_especialidad VARCHAR(50);
    DECLARE resultado TEXT;
    
    SELECT COUNT(*) INTO total_turnos
    FROM Turnos
    WHERE id_medico = medico_id;
    
    SELECT CONCAT(nombre, ' ', apellido) INTO medico_nombre
    FROM Medico
    WHERE id_medico = medico_id;
    
    SELECT especialidad INTO medico_especialidad
    FROM Medico
    WHERE id_medico = medico_id;
    
    SET resultado = CONCAT(
        'Médico: ', medico_nombre, '\n',
        'Especialidad: ', medico_especialidad, '\n',
        'Cantidad de Turnos: ', total_turnos
    );
    
    RETURN resultado;
END //

DELIMITER ;
-- Ejemplo de la función
SELECT detalles_turnos_medico (6);
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- Función para obtener el historial médico de un paciente
DROP FUNCTION IF EXISTS historial_medico_paciente;

DELIMITER //

CREATE FUNCTION historial_medico_paciente(paciente_id INT)
RETURNS TEXT
DETERMINISTIC
BEGIN
    DECLARE paciente_nombre VARCHAR(100);
    DECLARE paciente_apellido VARCHAR(100);
    DECLARE paciente_historial TEXT;
    DECLARE resultado TEXT;
    
    SELECT CONCAT(nombre, ' ', apellido) INTO paciente_nombre
    FROM Paciente
    WHERE id_paciente = paciente_id;
    
    SELECT historialmedico INTO paciente_historial
    FROM Paciente
    WHERE id_paciente = paciente_id;
    
    SET resultado = CONCAT(
        'Paciente: ', paciente_nombre, '\n',
        'Historial Médico: ', paciente_historial
    );
    
    RETURN resultado;
END //

DELIMITER ;
-- Ejemplo de la función
SELECT historial_medico_paciente (25);
-- -------------------------------------------------------------