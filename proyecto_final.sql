-- Creacion de base de datos
DROP DATABASE IF EXISTS cm_vanguardia;
CREATE DATABASE cm_vanguardia;
USE cm_vanguardia;

-- Creacion de la tabla Pacientes
CREATE TABLE Paciente (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    fechanacimiento DATE,
    direccion VARCHAR(100),
    telefono VARCHAR(20),
    historialmedico TEXT
);

-- Creacio de la tabla de Médicos
CREATE TABLE Medico (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    especialidad VARCHAR(50),
    telefono VARCHAR(20)
);

-- Creacion de la tabla de Turnos
CREATE TABLE Turnos (
    id_turno INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT,
    id_medico INT,
    fecha DATE,
    hora TIME, 
    motivo TEXT,
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES Medico(id_medico)
);

-- Creacion de la tabla Recetas
CREATE TABLE Receta (
    id_receta INT AUTO_INCREMENT PRIMARY KEY,
    id_turno INT,
    medicamento VARCHAR(50),
    dosis VARCHAR(50),
    vencimiento DATE,
    FOREIGN KEY (id_turno) REFERENCES Turnos(id_turno)
);


-- Creacion de la tabla Tratamientos
CREATE TABLE Tratamiento (
    id_tratamiento INT AUTO_INCREMENT PRIMARY KEY,
    id_receta INT,
    descripcion TEXT,
    FOREIGN KEY (id_receta) REFERENCES Receta (id_receta)
);