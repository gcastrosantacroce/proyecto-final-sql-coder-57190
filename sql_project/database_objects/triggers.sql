-- Usar la base de datos cm_vanguardia
USE cm_vanguardia;

-- Trigger para verificar la disponibilidad del médico al crear un nuevo turno
DELIMITER //

CREATE TRIGGER verificar_disponibilidad_medico
BEFORE INSERT ON Turnos
FOR EACH ROW
BEGIN
    DECLARE turnos_existentes INT;
    
    -- Verificar si el médico ya tiene un turno en la misma fecha y hora
    SELECT COUNT(*) INTO turnos_existentes
    FROM Turnos
    WHERE id_medico = NEW.id_medico
      AND fecha = NEW.fecha
      AND hora = NEW.hora;
    
    IF turnos_existentes > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El médico ya tiene un turno programado en esta fecha y hora.';
    END IF;
END //

DELIMITER ;


-- Trigger para actualizar el historial médico del paciente cuando se crea una nueva receta
DELIMITER //
CREATE TRIGGER actualizar_historial_medico
AFTER INSERT ON Receta
FOR EACH ROW
BEGIN
    DECLARE nuevo_historial TEXT;
    
    -- Obtener el historial médico actual del paciente
    SELECT historialmedico INTO nuevo_historial
    FROM Paciente
    WHERE id_paciente = (SELECT id_paciente FROM Turnos WHERE id_turno = NEW.id_turno);
    
    -- Agregar información sobre la nueva receta al historial médico
    SET nuevo_historial = CONCAT(nuevo_historial, '\nReceta: ', NEW.medicamento, ', Dosis: ', NEW.dosis, ', Vencimiento: ', NEW.vencimiento);
    
    -- Actualizar el historial médico del paciente
    UPDATE Paciente
    SET historialmedico = nuevo_historial
    WHERE id_paciente = (SELECT id_paciente FROM Turnos WHERE id_turno = NEW.id_turno);
END //

DELIMITER ;


-- Trigger para prevenir la eliminación de un paciente si tiene turnos asociados
DELIMITER //
CREATE TRIGGER prevenir_eliminacion_paciente
BEFORE DELETE ON Paciente
FOR EACH ROW
BEGIN
    DECLARE turnos_asociados INT;
    
    -- Verificar si el paciente tiene turnos asociados
    SELECT COUNT(*) INTO turnos_asociados
    FROM Turnos
    WHERE id_paciente = OLD.id_paciente;
    
    IF turnos_asociados > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se puede eliminar el paciente porque tiene turnos asociados.';
    END IF;
END //

DELIMITER ;
