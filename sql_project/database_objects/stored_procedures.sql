-- Usar la base de datos cm_vanguardia
USE cm_vanguardia;

DROP PROCEDURE IF EXISTS crear_paciente;
DROP PROCEDURE IF EXISTS asignar_turno;
DROP PROCEDURE IF EXISTS actualizar_paciente;


-- Procedimiento para crear un nuevo paciente
DELIMITER //

CREATE PROCEDURE crear_paciente(
    IN nombre VARCHAR(50),
    IN apellido VARCHAR(50),
    IN fechanacimiento DATE,
    IN direccion VARCHAR(100),
    IN telefono VARCHAR(20),
    IN email VARCHAR(50),
    IN historialmedico TEXT
)
BEGIN
    INSERT INTO Paciente (nombre, apellido, fechanacimiento, direccion, telefono, email, historialmedico)
    VALUES (nombre, apellido, fechanacimiento, direccion, telefono, email, historialmedico);
END //
DELIMITER ;

-- Ejemplo de procedimiento
CALL crear_paciente('Sofía', 'López', '1990-05-15', 'Calle Falsa 123', '555-1234', 'sofia@example.com', 'Ninguno');


-- Procedimiento para asignar un turno a un paciente
DELIMITER //

CREATE PROCEDURE asignar_turno(
    IN paciente_id INT,
    IN medico_id INT,
    IN turno_fecha DATE,
    IN turno_hora TIME,
    IN motivo TEXT
)
BEGIN
    DECLARE turno_existente INT;
    
    -- Verificar si el paciente ya tiene un turno asignado con el mismo médico en la fecha específica
    SELECT COUNT(*) INTO turno_existente
    FROM Turnos
    WHERE id_paciente = paciente_id
      AND id_medico = medico_id
      AND fecha = turno_fecha;
    
    IF turno_existente > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El paciente ya tiene un turno asignado con este médico en la fecha seleccionada.';
    ELSE
        -- Asignar un nuevo turno si no existe un turno previo con el mismo médico en la fecha
        INSERT INTO Turnos (id_paciente, id_medico, fecha, hora, motivo)
        VALUES (paciente_id, medico_id, turno_fecha, turno_hora, motivo);
    END IF;
END //

DELIMITER ;

-- Ejemplo de procedimiento
CALL asignar_turno(1, 2, '2024-09-15', '10:00:00', 'Consulta general');


-- Procedimiento para actualizar la información del paciente
DELIMITER //

CREATE PROCEDURE actualizar_paciente(
    IN paciente_id INT,
    IN nuevo_nombre VARCHAR(50),
    IN nuevo_apellido VARCHAR(50),
    IN nueva_fechanacimiento DATE,
    IN nueva_direccion VARCHAR(100),
    IN nuevo_telefono VARCHAR(20),
    IN nuevo_email VARCHAR(50),
    IN nuevo_historialmedico TEXT
)
BEGIN
    DECLARE email_existente INT;
    
    -- Verificar si el nuevo email ya está en uso por otro paciente
    SELECT COUNT(*) INTO email_existente
    FROM Paciente
    WHERE email = nuevo_email
      AND id_paciente <> paciente_id;
    
    IF email_existente > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El correo electrónico proporcionado ya está en uso por otro paciente.';
    ELSE
        -- Actualizar la información del paciente si el nuevo email no está en uso
        UPDATE Paciente
        SET nombre = nuevo_nombre,
            apellido = nuevo_apellido,
            fechanacimiento = nueva_fechanacimiento,
            direccion = nueva_direccion,
            telefono = nuevo_telefono,
            email = nuevo_email,
            historialmedico = nuevo_historialmedico
        WHERE id_paciente = paciente_id;
    END IF;
END //

DELIMITER ;

-- Ejemplo de procedimiento
CALL actualizar_paciente(1, 'Juan', 'Pérez', '1990-05-15', 'Avenida Siempre Viva 742', '123-456-7890', 'juan.perez@example.com', 'Historial médico actualizado');
