### Importación de datos con archivos extensión .csv

**1. Selección de la Base de Datos**

```sql
-- Usar la base de datos cm_vanguardia
USE cm_vanguardia;
```


**2. Habilitación de la Carga Local de Archivos**

```sql
SET GLOBAL local_infile = true;
```

**Descripción:** Esta instrucción habilita la opción de carga de archivos locales en MySQL. Permite que MySQL lea archivos locales (en este caso, archivos CSV) durante la operación 'LOAD DATA LOCAL INFILE'. Esta opción debe estar habilitada en el servidor MySQL y en el cliente.


**3. Importación de Datos a la Tabla Paciente**

```sql
-- Insertar datos en la tabla Paciente
LOAD DATA LOCAL INFILE '/proyecto-final-sql/data_csv/pacientes.csv'
INTO TABLE Paciente
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nombre, apellido, fechanacimiento, direccion, telefono, email, historialmedico);
```

**Descripción:** Este comando importa datos desde el archivo pacientes.csv a la tabla Paciente.

* LOAD DATA LOCAL INFILE '/proyecto-final-sql/data_csv/pacientes.csv': Especifica el archivo CSV local que contiene los datos a importar.
* INTO TABLE Paciente: Indica que los datos deben insertarse en la tabla Paciente.
* FIELDS TERMINATED BY ',': Define que los campos en el archivo CSV están separados por comas.
* ENCLOSED BY '"': Especifica que los valores de los campos están entre comillas dobles.
* LINES TERMINATED BY '\n': Define que cada línea en el archivo CSV representa una fila en la tabla, y las  líneas están separadas por saltos de línea.
* IGNORE 1 ROWS: Omite la primera fila del archivo CSV, que generalmente contiene los encabezados de las columnas.
* (nombre, apellido, fechanacimiento, direccion, telefono, email, historialmedico): Especifica los nombres de las columnas en la tabla Paciente a las que se deben mapear los datos del archivo CSV.


**4. Importación de Datos a la Tabla Medico**

```sql
-- Insertar datos en la tabla Medico
LOAD DATA LOCAL INFILE '/proyecto-final-sql/data_csv/medicos.csv'
INTO TABLE Medico
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nombre, apellido, especialidad, telefono, email);
```

**Descripción:** Similar al paso anterior, este comando importa datos desde el archivo medicos.csv a la tabla Medico.


**5. Importación de Datos a la Tabla Turnos**

```sql
-- Insertar datos en la tabla Turnos
LOAD DATA LOCAL INFILE '/proyecto-final-sql/data_csv/turnos.csv'
INTO TABLE Turnos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_paciente, id_medico, fecha, hora, motivo);
```

**Descripción:** Este comando importa datos desde el archivo turnos.csv a la tabla Turnos.


**6. Importación de Datos a la Tabla Receta**

```sql
-- Insertar datos en la tabla Receta
LOAD DATA LOCAL INFILE '/proyecto-final-sql/data_csv/recetas.csv'
INTO TABLE Receta
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_turno, medicamento, dosis, vencimiento);
```

**Descripción:** Este comando importa datos desde el archivo recetas.csv a la tabla Receta.


**7. Importación de Datos a la Tabla Tratamiento**

```sql
-- Insertar datos en la tabla Tratamiento
LOAD DATA LOCAL INFILE '/proyecto-final-sql/data_csv/tratamientos.csv'
INTO TABLE Tratamiento
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_receta, descripcion);
```

**Descripción:** Este comando importa datos desde el archivo tratamientos.csv a la tabla Tratamiento.


**Consideraciones Adicionales** 

* Archivos CSV: Asegúrate de que los archivos CSV (pacientes.csv, medicos.csv, turnos.csv, recetas.csv, tratamientos.csv) existan en las rutas especificadas y tengan el formato correcto.

* Permisos y Configuración: La opción local_infile debe estar habilitada tanto en el servidor MySQL como en el cliente para usar LOAD DATA LOCAL INFILE. Puede ser necesario configurar permisos adecuados para permitir la carga de archivos locales.

* Estructura de los Archivos: Verifica que las columnas en los archivos CSV coincidan con las columnas especificadas en las instrucciones LOAD DATA y que los tipos de datos sean compatibles.

