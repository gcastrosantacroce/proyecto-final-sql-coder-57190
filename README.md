## PROYECTO FINAL CODER SQL


### PRIMERA PRE-ENTREGA 


#### Descripción de la temática de la base de datos: 


Esta es una base de datos diseñada para un centro médico. En la misma, se gestiona la informacion de turnos del centro, así como la información relacionada con pacientes, médicos, tratamientos  y recetas.


#### Diagrama de entidad relación de la base de datos simplificado:

```

+-----------------+         +---------------+
|    Paciente     |         |    Medico     |
|-----------------|         |---------------|
| id_paciente (PK)|<-------+| id_medico (PK)|
| nombre          |         | nombre        |
| apellido        |         | apellido      |
| fechanacimiento |         | especialidad  |
| direccion       |         | telefono      |
| telefono        |         | email         |
| email           |         +---------------+
| historialmedico |
+-----------------+
      |
      | 1:N
      |
+-----------------+
|     Turnos      |
|-----------------|
| id_turno (PK)   |
| fecha           |
| hora            |
| motivo          |
| id_paciente (FK)|
| id_medico (FK)  |
+-----------------+
      |
      | 1:N
      |
+---------------+
|     Receta    |
|---------------|
| id_receta (PK)|
| medicamento   |
| dosis         |
| vencimiento   |
| id_turno (FK) |
+---------------+
      |
      | 1:N
      |
+--------------------+
|     Tratamiento    |
|--------------------|
| id_tratamiento (PK)|
| descripcion        |
| id_receta (FK)     |    
+--------------------+

```

 #### Listado de las tablas que comprenden la base de datos

1. **Tabla Paciente**
      - Almacena información sobre los pacientes que se atienden en el centro.
      - Atributos: id_paciente (PK), nombre, apellido, fechanacimiento, direccion, telefono, email, historialmedico

2. **Tabla Medico**
      - Contiene información sobre los médicos y profesionales que atienden en el centro.
      - Atributos: id_medico (PK), nombre, apellido, especialidad, telefono, email

3. **Tabla Turnos**
      - Registra los turnos reservados por los pacientes.
      - Atributos: id_turno (PK), fecha, hora, motivo
      - Relaciones: id_paciente (FK), id_medico (FK)

4. **Tabla Receta**
      - Guarda la informacion sobre los medicamentos y el tratamiento suministrado al paciente en cada turno.
      - Atributos: id_receta (PK), medicamento, dosis, vencimiento
      - Relaciones: id_turno (FK)

5. **Tabla Tratamiento**
      - Contiene información sobre los tratamientos suministrados por los médicos en los turnos.
      - Atributos: id_tratamiento (PK), descripcion
      - Relaciones: id_receta (FK)
