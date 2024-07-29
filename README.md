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


## Tablas 
Descripcion de los tipos de datos por tabla

---

| Tabla         | Columna           | Tipo de Datos                         |
| ------------- | ----------------- |-------------------------------------: |
| PACIENTE      | id_paciente       | INT                                   |
|               | nombre            | VARCHAR(50)                           |
|               | apellido          | VARCHAR(50)                           |
|               | fechanacimiento   | DATE                                  |
|               | direccion         | VARCHAR(100)                          |
|               | telefono          | VARCHAR(20)                           |
|               | email             | VARCHAR(50) UNIQUE                    |
|               | historialmedico   | TEXT                                  |
| MEDICO        | id_medico         | INT                                   |
|               | nombre            | VARCHAR(50)                           |
|               | apellido          | VARCHAR(50)                           |
|               | especialidad      | VARCHAR(50)                           |
|               | telefono          | VARCHAR(20)                           |
|               | email             | VARCHAR(50) UNIQUE                    |
| TURNOS        | id_turno          | INT                                   |
|               | id_paciente       | INT                                   |
|               | id_medico         | INT                                   |
|               | fecha             | DATE                                  |
|               | hora              | TIME                                  |
|               | motivo            | TEXT                                  |
| RECETA        | id_receta         | INT                                   |
|               | id_turno          | INT                                   |
|               | medicamento       | VARCHAR(50)                           |
|               | dosis             | VARCHAR(50)                           |
|               | vencimiento       | DATE                                  |
| TRATAMIENTO   | id_tratamiento    | INT                                   |
|               | id_receta         | INT                                   |
|               | descripcion       | TEXT                                  |


### SEGUNDA PRE-ENTREGA 

* Listado de Vistas más una descripción detallada, su objetivo, y qué tablas las componen. 
* Listado de Funciones que incluyan una descripción detallada, el objetivo para la cual fueron creadas y qué datos o tablas manipulan y/o son implementadas.
* Listado de Stored Procedures con una descripción detallada, qué objetivo o beneficio aportan al proyecto, y las tablas que lo componen y/o tablas con las que interactúa
* Listado de Triggers

---

### Documentacion de Vistas
### Vista: cantidad_turnos_por_paciente

**Descripción:** Esta vista proporciona la cantidad de turnos para cada paciente.

**Columnas:**

* **id_paciente:** ID del paciente.
* **paciente_nombre:** Nombre completo del paciente.
* **cantidad_turnos:** Número total de turnos asignados al paciente.

**Unión:** Une las tablas 'Paciente' y 'Turnos' para contar los turnos por paciente.

**Ejemplo de consulta:**

```sql
SELECT * 
FROM cantidad_turnos_por_paciente;
```


### Vista: cantidad_turnos_por_medico

**Descripción:** Esta vista muestra la cantidad de turnos para cada médico.

**Columnas:**

* **id_medico:** ID del médico.
* **medico_nombre:** Nombre completo del médico.
* **cantidad_turnos:** Número total de turnos asignados al médico.

**Unión:** Une las tablas 'Medico' y 'Turnos' para contar los turnos por médico.

**Ejemplo de consulta:**

```sql
SELECT * 
FROM cantidad_turnos_por_medico;
```


### Vista: detalles_turnos

**Descripción:** Esta vista muestra información detallada de los turnos, incluyendo datos del paciente y del médico.

**Columnas:**

* **id_turno:** ID del turno.
* **paciente_nombre:** Nombre completo del paciente.
* **paciente_telefono:** Teléfono del paciente.
* **paciente_email:** Email del paciente.
* **medico_nombre:** Nombre completo del médico.
* **medico_especialidad:** Especialidad del médico.
* **medico_telefono:** Teléfono del médico.
* **medico_email:** Email del médico.
* **fecha:** Fecha del turno.
* **hora:** Hora del turno.

**Unión:** Une las tablas 'Turnos', 'Paciente' y 'Medico' para obtener información completa sobre los turnos.

**Ejemplo de consulta:**

```sql
SELECT * 
FROM detalles_turnos
ORDER BY medico_especialidad ASC, fecha ASC;
```



## Documentación de Funciones 

### Función: detalle_turnos_paciente

**Descripción:** Esta función proporciona el nombre, teléfono, email y historial médico del paciente junto con la cantidad de turnos que tiene.

**Parámetros:**

* **paciente_id:** ID del paciente para el cual deseas contar los turnos.

**Retorno:** Devuelve un entero que indica el nombre del paciente y la cantidad de turnos que posee.

**Ejemplo de uso:**

```sql
SELECT detalle_turnos_paciente (29);
```


### Función: detalle_turnos_medico

**Descripción:** Proporciona el nombre, especialidad, teléfono y email del médico junto con la cantidad de turnos que tiene.

**Parámetros:**

* **medico_id :** ID del médico para el cual deseas contar los turnos.

**Retorno:** Devuelve un entero que indica el nombre del medico, la especialidad y la cantidad de turnos que posee.

**Ejemplo de uso:**

```sql
SELECT detalles_turnos_medico (6);
```


### Función: historial_medico_paciente

**Descripción:** Esta función devuelve el historial médico completo de un paciente específico.

**Parámetros:**

* **paciente_id :** ID del paciente para el cual deseas obtener el historial médico.

**Retorno:** Devuelve un texto con el nombre y el historial médico del paciente.

**Ejemplo de uso:**

```sql
SELECT historial_medico_paciente (25);
```



## Documentación de Triggers 

### Trigger: after_insert_trigger

**Descripción:** Este trigger registra la inserción de un nuevo cliente en la tabla LOG_CAMBIOS.

**Detalles:**

* **Tabla afectada:** CLIENTE
* **Acción:** INSERT
* **Información registrada:** Fecha, ID del cliente, Usuario

**Ejemplo:**

* Se inserta un nuevo cliente.
* El trigger registra la acción en la tabla LOG_CAMBIOS con los detalles correspondientes.

### Trigger: after_update_cancelacion_trigger

**Descripción:** Este trigger registra la cancelación de una reserva en la tabla LOG_CAMBIOS.

**Detalles:**

* **Tabla afectada:** RESERVA
* **Acción:** CANCELACION
* **Información registrada:** Fecha, ID del cliente (si se conoce), Usuario

**Ejemplo:**

* Se actualiza una reserva para indicar su cancelación.
* Si la cancelación no estaba presente antes, el trigger registra la acción en la tabla LOG_CAMBIOS.

### Trigger: before_insert_cliente_trigger

**Descripción:** Este trigger verifica si el correo electrónico de un nuevo cliente ya está en uso.

**Detalles:**

* **Tabla afectada:** CLIENTE
* **Acción:** INSERT
* **Validación:** Correo electrónico único

**Ejemplo:**

* Se intenta insertar un nuevo cliente con un correo electrónico ya registrado.
* El trigger genera un error y la inserción no se realiza.

### Trigger: before_insert_reserva_trigger

**Descripción:** Este trigger verifica si un cliente ya tiene una reserva en la misma hora y mesa.

**Detalles:**

* **Tabla afectada:** RESERVA
* **Acción:** INSERT
* **Validación:** No se permiten reservas duplicadas en la misma hora y mesa para un mismo cliente.

**Ejemplo:**

* Se intenta reservar una mesa para un cliente que ya tiene una reserva en la misma hora y mesa.
* El trigger genera un error y la reserva no se realiza.



## Documentación de Procedimientos Almacenados

### Procedimiento: crear_paciente

**Descripción:** Este procedimiento crea un nuevo paciente en la base de datos.

**Parámetros:**

* **nombre:** Nombre del paciente.
* **apellido:** Apellido del paciente.
* **fechanacimiento:** Fecha de nacimiento del paciente.
* **direccion:** Dirección del paciente.
* **telefono:** Teléfono del paciente.
* **email:** Email del paciente (debe ser único).
* **historialmedico:** Historial médico del paciente.

**Funcionalidad:** Inserta un nuevo registro en la tabla Paciente con los valores proporcionados.

**Ejemplo de uso:**

```sql
CALL crear_paciente('Sofía', 'López', '1990-05-15', 'Calle Falsa 123', '555-1234', 'sofia@example.com', 'Ninguno');
```



### Procedimiento: asignar_turno

**Descripción:** Asigna un nuevo turno a un paciente solo si no existe un turno previo para el mismo médico en la misma fecha.

**Parámetros:**

* **paciente_id:** ID del paciente.
* **medico_id:** ID del médico.
* **turno_fecha:** Fecha del turno.
* **turno_hora:** Hora del turno.
* **motivo:** Motivo del turno.

**Funcionalidad:** Verifica si el paciente ya tiene un turno con el mismo médico en la fecha especificada.

* Si ya existe un turno, genera un error.

* Si no existe un turno, inserta un nuevo registro en la tabla 'Turnos'.

**Ejemplo de uso:**

```sql
CALL asignar_turno(1, 2, '2024-08-15', '14:00:00', 'Consulta de seguimiento');
```



### Procedimiento: actualizar_paciente

**Descripción:** Actualiza la información de un paciente, asegurando que el nuevo correo electrónico no esté en uso por otro paciente.

**Parámetros:**

* **paciente_id:** ID del paciente que se actualizará.
* **nuevo_nombre:** Nuevo nombre del paciente.
* **nuevo_apellido:** Nuevo apellido del paciente.
* **nueva_fechanacimiento:** Nueva fecha de nacimiento.
* **nueva_direccion:** Nueva dirección.
* **nuevo_telefono:** Nuevo teléfono.
* **nuevo_email:** Nuevo correo electrónico.
* **nuevo_historialmedico:** Nuevo historial médico.

**Funcionalidad:** Verifica si el nuevo correo electrónico ya está en uso por otro paciente.

* Si el correo electrónico ya está en uso, genera un error.

* Si el correo electrónico es único, actualiza el registro del paciente con la nueva información.

**Ejemplo de uso:**

```sql
CALL actualizar_paciente(
    1, 
    'Carlos', 
    'García', 
    '1985-12-20', 
    'Avenida Central 456', 
    '555-6789', 
    'carlos.garcia@example.com', 
    'Historial actualizado.'
);
```