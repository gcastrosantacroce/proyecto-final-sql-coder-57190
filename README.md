## PROYECTO FINAL CODER SQL


### PRIMERA PRE-ENTREGA 


#### Descripción de la temática de la base de datos: 


Esta es una base de datos diseñada para un centro médico. En la misma, se gestiona la informacion de turnos del centro, así como la información relacionada con pacientes, medicos, tratamientos  y recetas.


#### Diagrama de entidad relación de la base de datos simplificado:


+--------------+         +--------------+
|   Paciente   |         |    Medico    |
|--------------|         |--------------|
| id_paciente  |<-------+| id_medico    |
| nombre       |         | nombre       |
| apellido     |         | apellido     |
| fechaNac     |         | especialidad |
| direccion    |         | telefono     |
| telefono     |         +--------------+
| historialmed |
+--------------+
      |
      | 1:N
      |
+--------------+
|   Turnos     |
|--------------|
| id_turno     |
| fecha        |
| hora         |
| motivo       |
| id_paciente  |
| id_medico    |
+--------------+
      |
      | 1:N
      |
+--------------+
|   Receta     |
|--------------|
| id_receta    |
| medicamento  |
| dosis        |
| vencimiento  |
| id_turno     |
+--------------+
      |
      | 1:N
      |
+----------------+
| Tratamiento    |
|----------------|
| id_tratamiento |
| descripcion    |
| id_receta      |    
+----------------+


 #### Listado de las tablas que comprenden la base de datos

1. **Tabla Paciente**
      - Almacena información sobre los pacientes que se atienden en el centro.
      - Atributos: ID_Paciente (PK), Nombre, Apellido, FechaNacimiento, Direccion, Telefono, HistorialMedico

2. **Tabla Medico**
      - Contiene información sobre los medicos y profesionales que atienden en el centro.
      - Atributos: ID_Medico (PK), Nombre, Apellido, Especialidad, Telefono

3. **Tabla Turnos**
      - Registra los turnos reservados por los pacientes.
      - Atributos: ID_Turno (PK), Fecha, Hora, Motivo
      - Relaciones: ID_Paciente (FK), ID_Medico (FK)

4. **Tabla Receta**
      - Guarda la informacion sobre los medicamentos y el tratamiento suministrado al paciente en cada turno.
      - Atributos: ID_Receta (PK), Medicamento, Dosis, Vencimiento
      - Relaciones: ID_Turno (FK)

5. **Tabla Tratamiento**
      - Contiene informacion sobre los tratamientos suministrados por los medicos en los turnos.
      - Atributos: ID_Tratamiento (PK), Descripcion, ID_Receta (FK)
