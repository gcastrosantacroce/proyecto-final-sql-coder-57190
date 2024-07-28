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

### Procedimiento: actualizar_reserva_cancelada_por_email

**Descripción:** Este procedimiento actualiza una reserva cancelada para un cliente a partir de su correo electrónico.

**Parámetros:**

* **p_email:** Correo electrónico del cliente

**Retorno:**

* Mensaje de éxito o error

**Ejemplo de uso:**

```sql
CALL actualizar_reserva_cancelada_por_email('ejemplo@correo.com');
```

### Procedimiento: actualizar_tipo_reserva_por_email

**Descripción:** Este procedimiento actualiza el tipo de reserva de la última reserva realizada por un cliente a partir de su correo electrónico.

**Parámetros:**

* **p_email:** Correo electrónico del cliente
* **p_nuevo_tipo:** Nuevo tipo de reserva

**Retorno:**

* Mensaje de éxito o error

**Ejemplo de uso:**

```sql
CALL actualizar_tipo_reserva_por_email('ejemplo@correo.com', 'Reserva de Grupo');
```

### Procedimiento: crear_empleado

**Descripción:** Este procedimiento crea un nuevo empleado en la base de datos.

**Parámetros:**

* **p_nombre:** Nombre del empleado
* **p_telefono:** Teléfono del empleado
* **p_correo:** Correo electrónico del empleado
* **p_id_restaurante:** Identificador del restaurante al que pertenece el empleado

**Retorno:**

* Mensaje de éxito o error

**Ejemplo de uso:**

```sql
CALL crear_empleado('Juan Pérez', '123456789', 'juan.perez@ejemplo.com', 1);
```
