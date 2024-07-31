-- Usar la base de datos cm_vanguardia
USE cm_vanguardia;

SET GLOBAL local_infile = true;

-- Insertar datos en la tabla Paciente
LOAD DATA LOCAL INFILE '/sql_project/data_csv/pacientes.csv'
INTO TABLE Paciente
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nombre, apellido, fechanacimiento, direccion, telefono, email, historialmedico);

-- Insertar datos en la tabla Medico
LOAD DATA LOCAL INFILE '/sql_project/data_csv/medicos.csv'
INTO TABLE Medico
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nombre, apellido, especialidad, telefono, email);

-- Insertar datos en la tabla Turnos
LOAD DATA LOCAL INFILE '/sql_project/data_csv/turnos.csv'
INTO TABLE Turnos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_paciente, id_medico, fecha, hora, motivo);

-- Insertar datos en la tabla Receta
LOAD DATA LOCAL INFILE '/sql_project/data_csv/recetas.csv'
INTO TABLE Receta
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_turno, medicamento, dosis, vencimiento);

-- Insertar datos en la tabla Tratamiento
LOAD DATA LOCAL INFILE '/sql_project/data_csv/tratamientos.csv'
INTO TABLE Tratamiento
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_receta, descripcion);
