CREATE DATABASE  IF NOT EXISTS `cm_vanguardia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cm_vanguardia`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: cm_vanguardia
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `cantidad_turnos_por_medico`
--

DROP TABLE IF EXISTS `cantidad_turnos_por_medico`;
/*!50001 DROP VIEW IF EXISTS `cantidad_turnos_por_medico`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cantidad_turnos_por_medico` AS SELECT 
 1 AS `id_medico`,
 1 AS `medico_nombre`,
 1 AS `cantidad_turnos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cantidad_turnos_por_paciente`
--

DROP TABLE IF EXISTS `cantidad_turnos_por_paciente`;
/*!50001 DROP VIEW IF EXISTS `cantidad_turnos_por_paciente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cantidad_turnos_por_paciente` AS SELECT 
 1 AS `id_paciente`,
 1 AS `paciente_nombre`,
 1 AS `cantidad_turnos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `detalles_turnos`
--

DROP TABLE IF EXISTS `detalles_turnos`;
/*!50001 DROP VIEW IF EXISTS `detalles_turnos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `detalles_turnos` AS SELECT 
 1 AS `id_turno`,
 1 AS `paciente_nombre`,
 1 AS `paciente_telefono`,
 1 AS `paciente_email`,
 1 AS `medico_nombre`,
 1 AS `medico_especialidad`,
 1 AS `medico_telefono`,
 1 AS `medico_email`,
 1 AS `fecha`,
 1 AS `hora`,
 1 AS `motivo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
  `id_medico` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `especialidad` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_medico`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (1,'Ana','Martínez','Pediatra','555-1234','ana.martinez@example.com'),(2,'Carlos','Gómez','Cardiólogo','555-2345','carlos.gomez@example.com'),(3,'Laura','Reyes','Traumatólogo','555-3456','laura.reyes@example.com'),(4,'Jorge','Suárez','Endocrinólogo','555-4567','jorge.suarez@example.com'),(5,'Mónica','Fernández','Nefróloga','555-5678','monica.fernandez@example.com'),(6,'Ricardo','Alonso','Neurólogo','555-6789','ricardo.alonso@example.com'),(7,'Patricia','Ramírez','Oncólogo','555-7890','patricia.ramirez@example.com'),(8,'David','Castro','Otorrinolaringólogo','555-8901','david.castro@example.com'),(9,'Isabel','Morales','Ginecólogo','555-9012','isabel.morales@example.com'),(10,'Héctor','Ortiz','Infectólogo','555-0123','hector.ortiz@example.com'),(11,'María','Guerrero','Cardiólogo','555-1235','maria.guerrero@example.com'),(12,'Fernando','Martínez','Psicólogo','555-2346','fernando.martinez@example.com'),(13,'Natalia','Salazar','Traumatólogo','555-3457','natalia.salazar@example.com'),(14,'Alejandro','Herrera','Endocrinólogo','555-4568','alejandro.herrera@example.com'),(15,'Juliana','Reyes','Nefróloga','555-5679','juliana.reyes@example.com'),(16,'Esteban','Gómez','Neurólogo','555-6780','esteban.gomez@example.com'),(17,'Carmen','Suárez','Oncólogo','555-7891','carmen.suarez@example.com'),(18,'Luis','Castillo','Otorrinolaringólogo','555-8902','luis.castillo@example.com'),(19,'Elena','Montoya','Ginecólogo','555-9013','elena.montoya@example.com'),(20,'Oscar','Martínez','Infectólogo','555-0124','oscar.martinez@example.com'),(21,'Sofía','Ramírez','Cardiólogo','555-1236','sofia.ramirez@example.com'),(22,'Andrés','Alarcón','Psicólogo','555-2347','andres.alarcon@example.com'),(23,'Beatriz','Herrera','Traumatólogo','555-3458','beatriz.herrera@example.com'),(24,'Mauricio','Reyes','Endocrinólogo','555-4569','mauricio.reyes@example.com'),(25,'Catalina','Suárez','Nefróloga','555-5670','catalina.suarez@example.com'),(26,'Tomás','Castro','Neurólogo','555-6781','tomas.castro@example.com'),(27,'Gabriela','Montoya','Oncólogo','555-7892','gabriela.montoya@example.com'),(28,'Rafael','Alonso','Otorrinolaringólogo','555-8903','rafael.alonso@example.com'),(29,'Margarita','Guerrero','Ginecólogo','555-9014','margarita.guerrero@example.com'),(30,'Javier','Martínez','Infectólogo','555-0125','javier.martinez@example.com');
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `id_paciente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `historialmedico` text,
  PRIMARY KEY (`id_paciente`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'Juan','Pérez','1980-05-15','Calle Falsa 123','555-1234','juan.perez@example.com','Sin antecedentes médicos'),(2,'Ana','Gómez','1992-11-23','Avenida Siempre Viva 742','555-5678','ana.gomez@example.com','Alergia a la penicilina'),(3,'Pedro','Martínez','1975-03-30','Calle Real 456','555-8765','pedro.martinez@example.com','Diabetes tipo 2'),(4,'Marta','Suárez','1988-07-22','Calle Mayor 789','555-4321','marta.suarez@example.com','Sin antecedentes médicos'),(5,'Lucía','Ortega','1995-09-15','Plaza del Sol 1','555-1357','lucia.ortega@example.com','Asma'),(6,'Antonio','Muñoz','1982-01-10','Calle del Mar 234','555-2468','antonio.munoz@example.com','Hipertensión'),(7,'Claudia','Fernández','1990-04-25','Avenida del Norte 876','555-3579','claudia.fernandez@example.com','Sin antecedentes médicos'),(8,'José','López','1985-06-17','Calle del Prado 345','555-4680','jose.lopez@example.com','Alergia a mariscos'),(9,'Elena','Martínez','1978-08-30','Calle del Viento 678','555-5791','elena.martinez@example.com','Sin antecedentes médicos'),(10,'Manuel','Jiménez','1993-12-05','Calle del Campo 123','555-6802','manuel.jimenez@example.com','Colesterol alto'),(11,'Laura','Alonso','1987-10-10','Calle del Sol 234','555-7913','laura.alonso@example.com','Sin antecedentes médicos'),(12,'Francisco','Castro','1981-02-20','Calle del Río 456','555-8024','francisco.castro@example.com','Diabetes tipo 1'),(13,'Patricia','Ramos','1994-05-18','Calle de la Luna 789','555-9135','patricia.ramos@example.com','Sin antecedentes médicos'),(14,'Jorge','Reyes','1976-11-07','Calle de la Paz 987','555-0246','jorge.reyes@example.com','Artritis'),(15,'Carmen','Valencia','1989-09-12','Avenida del Mar 654','555-1358','carmen.valencia@example.com','Sin antecedentes médicos'),(16,'Ricardo','Herrera','1984-07-05','Calle del Bosque 321','555-2469','ricardo.herrera@example.com','Alergia a polvo'),(17,'Natalia','Romero','1991-03-23','Avenida Central 111','555-3570','natalia.romero@example.com','Sin antecedentes médicos'),(18,'Oscar','Peralta','1983-08-15','Calle de la Estrella 567','555-4681','oscar.peralta@example.com','Colitis'),(19,'Julia','Bermúdez','1996-12-01','Calle de los Jardines 234','555-5792','julia.bermudez@example.com','Sin antecedentes médicos'),(20,'David','Salazar','1980-10-30','Calle de los Rosales 456','555-6803','david.salazar@example.com','Sin antecedentes médicos'),(21,'María','Torres','1986-01-25','Avenida de la Libertad 789','555-7914','maria.torres@example.com','Hipertensión'),(22,'Esteban','Guerrero','1990-04-10','Calle del Puente 345','555-8025','esteban.guerrero@example.com','Sin antecedentes médicos'),(23,'Verónica','Martínez','1984-06-15','Calle de los Cedros 678','555-9136','veronica.martinez@example.com','Asma'),(24,'Miguel','Castillo','1992-11-12','Calle del Parque 123','555-0247','miguel.castillo@example.com','Diabetes tipo 2'),(25,'Silvia','Ortiz','1985-07-05','Avenida de las Flores 234','555-1359','silvia.ortiz@example.com','Sin antecedentes médicos'),(26,'Guillermo','Montoya','1979-09-22','Calle de los Pinos 456','555-2460','guillermo.montoya@example.com','Colesterol alto'),(27,'Andrea','Suárez','1993-02-18','Calle del Lago 789','555-3571','andrea.suarez@example.com','Sin antecedentes médicos'),(28,'Julio','Rivera','1987-12-01','Calle de la Iglesia 987','555-4682','julio.rivera@example.com','Alergia a mariscos'),(29,'Liliana','Valencia','1986-06-25','Avenida de la Ciudad 654','555-5793','liliana.valencia@example.com','Sin antecedentes médicos'),(30,'Álvaro','García','1988-03-14','Calle de los Olivos 321','555-6804','alvaro.garcia@example.com','Artritis'),(31,'Carolina','Acosta','1995-01-18','Calle del Viento 456','555-7915','carolina.acosta@example.com','Sin antecedentes médicos'),(32,'Adrián','Muñoz','1984-11-30','Avenida del Mar 789','555-8026','adrian.munoz@example.com','Diabetes tipo 1'),(33,'Gloria','Herrera','1990-05-22','Calle del Río 678','555-9137','gloria.herrera@example.com','Sin antecedentes médicos'),(34,'Raúl','Ramírez','1982-10-17','Calle del Sol 345','555-0248','raul.ramirez@example.com','Colitis'),(35,'Vanessa','Jiménez','1994-07-25','Calle de los Jardines 123','555-1350','vanessa.jimenez@example.com','Sin antecedentes médicos'),(36,'Nicolás','Salazar','1993-03-18','Avenida Central 654','555-2461','nicolas.salazar@example.com','Asma'),(37,'Melissa','Ramírez','1991-08-05','Calle del Prado 789','555-3572','melissa.ramirez@example.com','Diabetes tipo 2'),(38,'Eduardo','Romero','1986-11-22','Calle de la Luna 456','555-4683','eduardo.romero@example.com','Sin antecedentes médicos'),(39,'Isabel','Mendoza','1983-05-10','Calle del Campo 123','555-5794','isabel.mendoza@example.com','Colesterol alto'),(40,'Marcelo','Ortega','1980-02-15','Calle del Bosque 678','555-6805','marcelo.ortega@example.com','Sin antecedentes médicos'),(41,'Daniela','Gómez','1990-09-10','Avenida del Norte 987','555-7916','daniela.gomez@example.com','Artritis'),(42,'Víctor','Castro','1987-06-01','Calle del Viento 234','555-8027','victor.castro@example.com','Sin antecedentes médicos'),(43,'Lina','Martínez','1994-12-15','Calle del Mar 567','555-9138','lina.martinez@example.com','Diabetes tipo 1'),(44,'Antonio','Bermúdez','1982-04-07','Calle del Sol 345','555-0249','antonio.bermudez@example.com','Sin antecedentes médicos'),(45,'Carla','Fernández','1995-07-20','Avenida del Mar 123','555-1351','carla.fernandez@example.com','Asma'),(46,'Héctor','Guerrero','1986-01-10','Calle de los Cedros 456','555-2462','hector.guerrero@example.com','Sin antecedentes médicos'),(47,'Paola','García','1988-09-25','Calle del Parque 789','555-3573','paola.garcia@example.com','Colitis'),(48,'Jorge','Pérez','1991-12-05','Calle del Río 678','555-4684','jorge.perez@example.com','Diabetes tipo 2'),(49,'Alejandra','Rojas','1992-06-22','Avenida de la Ciudad 345','555-5795','alejandra.rojas@example.com','Sin antecedentes médicos'),(50,'Santiago','Ramírez','1984-08-10','Calle de los Jardines 123','555-6806','santiago.ramirez@example.com','Artritis'),(51,'Laura','Suárez','1995-03-05','Calle del Sol 456','555-7917','laura.suarez@example.com','Sin antecedentes médicos'),(52,'Juliana','Montoya','1987-02-18','Calle del Río 789','555-8028','juliana.montoya@example.com','Diabetes tipo 2'),(53,'Néstor','Alarcón','1983-11-25','Calle de la Paz 234','555-9139','nestor.alarcon@example.com','Sin antecedentes médicos'),(54,'Gabriela','Herrera','1992-07-20','Calle del Campo 567','555-0249','gabriela.herrera@example.com','Asma'),(55,'Rodrigo','Castro','1981-09-10','Calle del Bosque 678','555-1352','rodrigo.castro@example.com','Colitis'),(56,'Sofía','Marín','1990-02-15','Avenida del Mar 123','555-2463','sofia.marin@example.com','Sin antecedentes médicos'),(57,'Fabián','Castillo','1994-10-05','Calle del Prado 456','555-3574','fabian.castillo@example.com','Diabetes tipo 1'),(58,'Mónica','Bermúdez','1985-04-20','Calle del Parque 789','555-4685','monica.bermudez@example.com','Sin antecedentes médicos'),(59,'Ricardo','Reyes','1988-01-10','Calle del Sol 234','555-5796','ricardo.reyes@example.com','Artritis'),(60,'Jessica','Mendoza','1991-08-25','Avenida de la Ciudad 567','555-6807','jessica.mendoza@example.com','Sin antecedentes médicos'),(61,'Héctor','Gómez','1986-03-10','Calle de los Olivos 678','555-7918','hector.gomez@example.com','Colesterol alto'),(62,'Daniela','Ramírez','1993-12-15','Calle del Mar 345','555-8029','daniela.ramirez@example.com','Asma'),(63,'Esteban','Bermúdez','1987-09-20','Calle de los Cedros 123','555-9130','esteban.bermudez@example.com','Sin antecedentes médicos'),(64,'Sandra','Castro','1992-06-05','Calle del Río 456','555-0240','sandra.castro@example.com','Diabetes tipo 2'),(65,'Antonio','Rodríguez','1990-11-18','Calle de la Luna 789','555-1353','antonio.rodriguez@example.com','Sin antecedentes médicos'),(66,'Beatriz','Fernández','1984-05-25','Calle del Campo 234','555-2464','beatriz.fernandez@example.com','Artritis'),(67,'David','Suárez','1989-12-10','Avenida del Norte 567','555-3575','david.suarez@example.com','Sin antecedentes médicos'),(68,'Carolina','Montoya','1996-04-20','Calle del Prado 678','555-4686','carolina.montoya@example.com','Colitis'),(69,'Gustavo','Reyes','1982-07-15','Calle del Sol 789','555-5797','gustavo.reyes@example.com','Sin antecedentes médicos'),(70,'Natalia','Polanski','1991-03-05','Calle de los Pinos 456','555-6808','natalia.polanski@example.com','Asma'),(71,'Mario','Alonso','1988-09-30','Calle del Bosque 123','555-7919','mario.alonso@example.com','Diabetes tipo 1'),(72,'Silvia','Gómez','1994-06-12','Avenida Central 789','555-8020','silvia.gomez@example.com','Sin antecedentes médicos'),(73,'Jorge','Bermúdez','1985-11-22','Calle de la Paz 234','555-9131','jorge.bermudez@example.com','Colesterol alto'),(74,'Catalina','Martínez','1992-08-15','Calle de los Cedros 567','555-0241','catalina.martinez@example.com','Artritis'),(75,'Alejandro','Castillo','1989-01-10','Calle del Prado 678','555-1354','alejandro.castillo@example.com','Sin antecedentes médicos'),(76,'Marina','Ramírez','1984-10-20','Calle del Río 789','555-2465','marina.ramirez@example.com','Diabetes tipo 2'),(77,'Mauricio','Rodríguez','1991-03-15','Calle del Mar 123','555-3576','mauricio.rodriguez@example.com','Sin antecedentes médicos'),(78,'Adriana','Fernández','1986-07-30','Calle del Sol 456','555-4687','adriana.fernandez@example.com','Asma'),(79,'Carlos','Gómez','1990-12-05','Calle del Bosque 789','555-5798','carlos.gomez@example.com','Colitis'),(80,'María','Castillo','1987-05-20','Avenida de la Ciudad 567','555-6809','maria.castillo@example.com','Diabetes tipo 1'),(81,'José','Reyes','1985-11-15','Calle del Parque 678','555-7910','jose.reyes@example.com','Sin antecedentes médicos'),(82,'Nicolás','Ramírez','1993-01-10','Calle de la Luna 345','555-8021','nicolas.ramirez@example.com','Artritis'),(83,'Lucía','Alonso','1990-06-20','Calle del Río 456','555-9132','lucia.alonso@example.com','Sin antecedentes médicos'),(84,'Emilio','Suárez','1984-02-15','Calle de los Olivos 123','555-0242','emilio.suarez@example.com','Colesterol alto'),(85,'Patricia','Valencia','1989-10-20','Avenida del Mar 234','555-1355','patricia.valencia@example.com','Diabetes tipo 2'),(86,'Luis','Rodríguez','1992-11-15','Calle del Prado 456','555-2466','luis.rodriguez@example.com','Asma'),(87,'Marcela','Martínez','1986-09-30','Calle del Bosque 789','555-3577','marcela.martinez@example.com','Sin antecedentes médicos'),(88,'Óscar','Castro','1990-12-05','Calle del Campo 678','555-4688','oscar.castro@example.com','Colitis'),(89,'Viviana','Reyes','1983-07-15','Avenida Central 123','555-5799','viviana.reyes@example.com','Diabetes tipo 1'),(90,'Sergio','Gómez','1988-03-20','Calle de los Cedros 789','555-6800','sergio.gomez@example.com','Sin antecedentes médicos'),(91,'Valentina','Ortega','1995-11-25','Calle del Mar 456','555-7911','valentina.ortega@example.com','Artritis'),(92,'Andrés','Martínez','1986-02-10','Calle del Prado 567','555-8022','andres.martinez@example.com','Colesterol alto'),(93,'Margarita','Fernández','1991-08-05','Calle del Río 678','555-9133','margarita.fernandez@example.com','Diabetes tipo 2'),(94,'Alejandra','Alarcón','1985-04-25','Avenida de la Ciudad 345','555-0243','alejandra.alarcon@example.com','Asma'),(95,'Felipe','Reyes','1987-09-10','Calle del Sol 456','555-1356','felipe.reyes@example.com','Sin antecedentes médicos'),(96,'Natalia','Castro','1994-12-15','Calle de la Luna 789','555-2467','natalia.castro@example.com','Colitis'),(97,'Fernando','Suárez','1982-07-05','Calle de los Olivos 123','555-3578','fernando.suarez@example.com','Diabetes tipo 1'),(98,'Sandra','Bermúdez','1989-03-10','Calle del Campo 234','555-4689','sandra.bermudez@example.com','Sin antecedentes médicos'),(99,'Martín','Gómez','1993-12-20','Calle del Prado 567','555-5790','martin.gomez@example.com','Artritis'),(100,'Alejandra','Suárez','1987-06-15','Avenida del Mar 678','555-6801','alejandra.suarez@example.com','Sin antecedentes médicos'),(101,'Javier','Alonso','1995-11-20','Calle del Mar 123','555-7912','javier.alonso@example.com','Colesterol alto'),(102,'Mónica','Castillo','1990-01-30','Calle del Río 456','555-8023','monica.castillo@example.com','Diabetes tipo 2'),(103,'Luis','Reyes','1986-07-15','Avenida Central 789','555-9134','luis.reyes@example.com','Sin antecedentes médicos'),(104,'Isabella','Rodríguez','1994-04-10','Calle del Sol 678','555-0244','isabella.rodriguez@example.com','Asma'),(107,'Sofía','López','1990-05-15','Calle Falsa 123','555-1234','sofia@example.com','Ninguno');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `prevenir_eliminacion_paciente` BEFORE DELETE ON `paciente` FOR EACH ROW BEGIN
    DECLARE turnos_asociados INT;
    
    -- Verificar si el paciente tiene turnos asociados
    SELECT COUNT(*) INTO turnos_asociados
    FROM Turnos
    WHERE id_paciente = OLD.id_paciente;
    
    IF turnos_asociados > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se puede eliminar el paciente porque tiene turnos asociados.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `receta`
--

DROP TABLE IF EXISTS `receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receta` (
  `id_receta` int NOT NULL AUTO_INCREMENT,
  `id_turno` int DEFAULT NULL,
  `medicamento` varchar(50) DEFAULT NULL,
  `dosis` varchar(50) DEFAULT NULL,
  `vencimiento` date DEFAULT NULL,
  PRIMARY KEY (`id_receta`),
  KEY `id_turno` (`id_turno`),
  CONSTRAINT `receta_ibfk_1` FOREIGN KEY (`id_turno`) REFERENCES `turnos` (`id_turno`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta`
--

LOCK TABLES `receta` WRITE;
/*!40000 ALTER TABLE `receta` DISABLE KEYS */;
INSERT INTO `receta` VALUES (1,1,'Paracetamol','500mg','2025-04-01'),(2,2,'Ibuprofeno','400mg','2025-04-02'),(3,3,'Amoxicilina','250mg','2025-04-03'),(4,4,'Metformina','850mg','2025-04-04'),(5,5,'Omeprazol','20mg','2025-04-05'),(6,6,'Losartán','50mg','2025-04-06'),(7,7,'Azitromicina','500mg','2025-04-07'),(8,8,'Salbutamol','100mcg','2025-04-08'),(9,9,'Atorvastatina','20mg','2025-04-09'),(10,10,'Simvastatina','10mg','2025-04-10'),(11,11,'Clopidogrel','75mg','2025-04-11'),(12,12,'Enalapril','10mg','2025-04-12'),(13,13,'Prednisona','5mg','2025-04-13'),(14,14,'Amoxicilina','500mg','2025-04-14'),(15,15,'Acetaminofén','500mg','2025-04-15'),(16,16,'Metformina','500mg','2025-04-16'),(17,17,'Omeprazol','20mg','2025-04-17'),(18,18,'Ibuprofeno','600mg','2025-04-18'),(19,19,'Losartán','50mg','2025-04-19'),(20,20,'Azitromicina','250mg','2025-04-20'),(21,21,'Salbutamol','200mcg','2025-04-21'),(22,22,'Atorvastatina','40mg','2025-04-22'),(23,23,'Simvastatina','20mg','2025-04-23'),(24,24,'Clopidogrel','75mg','2025-04-24'),(25,25,'Enalapril','20mg','2025-04-25'),(26,26,'Prednisona','10mg','2025-04-26'),(27,27,'Amoxicilina','500mg','2025-04-27'),(28,28,'Acetaminofén','650mg','2025-04-28'),(29,29,'Metformina','850mg','2025-04-29'),(30,30,'Omeprazol','20mg','2025-04-30'),(31,31,'Ibuprofeno','400mg','2025-05-01'),(32,32,'Losartán','50mg','2025-05-02'),(33,33,'Azitromicina','500mg','2025-05-03'),(34,34,'Salbutamol','100mcg','2025-05-04'),(35,35,'Atorvastatina','20mg','2025-05-05'),(36,36,'Simvastatina','10mg','2025-05-06'),(37,37,'Clopidogrel','75mg','2025-05-07'),(38,38,'Enalapril','10mg','2025-05-08'),(39,39,'Prednisona','5mg','2025-05-09'),(40,40,'Amoxicilina','250mg','2025-05-10'),(41,41,'Acetaminofén','500mg','2025-05-11'),(42,42,'Metformina','500mg','2025-05-12'),(43,43,'Omeprazol','20mg','2025-05-13'),(44,44,'Ibuprofeno','600mg','2025-05-14'),(45,45,'Losartán','50mg','2025-05-15'),(46,46,'Azitromicina','250mg','2025-05-16'),(47,47,'Salbutamol','200mcg','2025-05-17'),(48,48,'Atorvastatina','40mg','2025-05-18'),(49,49,'Simvastatina','20mg','2025-05-19'),(50,50,'Clopidogrel','75mg','2025-05-20');
/*!40000 ALTER TABLE `receta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_historial_medico` AFTER INSERT ON `receta` FOR EACH ROW BEGIN
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
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tratamiento`
--

DROP TABLE IF EXISTS `tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tratamiento` (
  `id_tratamiento` int NOT NULL AUTO_INCREMENT,
  `id_receta` int DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_tratamiento`),
  KEY `id_receta` (`id_receta`),
  CONSTRAINT `tratamiento_ibfk_1` FOREIGN KEY (`id_receta`) REFERENCES `receta` (`id_receta`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamiento`
--

LOCK TABLES `tratamiento` WRITE;
/*!40000 ALTER TABLE `tratamiento` DISABLE KEYS */;
INSERT INTO `tratamiento` VALUES (1,1,'Tratamiento para fiebre alta'),(2,2,'Tratamiento para dolor muscular'),(3,3,'Tratamiento para infecciones respiratorias'),(4,4,'Tratamiento para diabetes tipo 2'),(5,5,'Tratamiento para úlcera gástrica'),(6,6,'Tratamiento para hipertensión arterial'),(7,7,'Tratamiento para infecciones bacterianas'),(8,8,'Tratamiento para asma bronquial'),(9,9,'Tratamiento para dislipidemia'),(10,10,'Tratamiento para dislipidemia'),(11,11,'Tratamiento para prevención de infarto'),(12,12,'Tratamiento para hipertensión arterial'),(13,13,'Tratamiento para inflamación'),(14,14,'Tratamiento para infecciones bacterianas'),(15,15,'Tratamiento para dolor general'),(16,16,'Tratamiento para diabetes tipo 2'),(17,17,'Tratamiento para úlcera gástrica'),(18,18,'Tratamiento para dolor severo'),(19,19,'Tratamiento para hipertensión arterial'),(20,20,'Tratamiento para infecciones respiratorias'),(21,21,'Tratamiento para asma bronquial'),(22,22,'Tratamiento para colesterol alto'),(23,23,'Tratamiento para colesterol alto'),(24,24,'Tratamiento para prevención de infarto'),(25,25,'Tratamiento para hipertensión arterial'),(26,26,'Tratamiento para inflamación'),(27,27,'Tratamiento para infecciones bacterianas'),(28,28,'Tratamiento para fiebre alta'),(29,29,'Tratamiento para dolor general'),(30,30,'Tratamiento para diabetes tipo 2'),(31,31,'Tratamiento para úlcera gástrica'),(32,32,'Tratamiento para dolor muscular'),(33,33,'Tratamiento para hipertensión arterial'),(34,34,'Tratamiento para infecciones respiratorias'),(35,35,'Tratamiento para asma bronquial'),(36,36,'Tratamiento para dislipidemia'),(37,37,'Tratamiento para dislipidemia'),(38,38,'Tratamiento para prevención de infarto'),(39,39,'Tratamiento para inflamación'),(40,40,'Tratamiento para fiebre alta'),(41,41,'Tratamiento para dolor general'),(42,42,'Tratamiento para diabetes tipo 2'),(43,43,'Tratamiento para úlcera gástrica'),(44,44,'Tratamiento para dolor severo'),(45,45,'Tratamiento para hipertensión arterial'),(46,46,'Tratamiento para infecciones respiratorias'),(47,47,'Tratamiento para asma bronquial'),(48,48,'Tratamiento para colesterol alto'),(49,49,'Tratamiento para colesterol alto'),(50,50,'Tratamiento para prevención de infarto');
/*!40000 ALTER TABLE `tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turnos`
--

DROP TABLE IF EXISTS `turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turnos` (
  `id_turno` int NOT NULL AUTO_INCREMENT,
  `id_paciente` int DEFAULT NULL,
  `id_medico` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `motivo` text,
  PRIMARY KEY (`id_turno`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_medico` (`id_medico`),
  CONSTRAINT `turnos_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`),
  CONSTRAINT `turnos_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_medico`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
INSERT INTO `turnos` VALUES (1,1,1,'2024-10-01','09:00:00','Consulta general'),(2,1,2,'2024-10-02','10:30:00','Chequeo cardiológico'),(3,2,3,'2024-10-03','11:00:00','Revisión de rutina'),(4,3,4,'2024-10-04','14:00:00','Consulta endocrinológica'),(5,4,5,'2024-10-05','15:30:00','Chequeo ortopédico'),(6,5,6,'2024-10-06','09:45:00','Consulta para diabetes'),(7,6,7,'2024-10-07','11:15:00','Revisión general'),(8,7,8,'2024-10-08','14:30:00','Chequeo de alergias'),(9,8,9,'2024-10-09','10:00:00','Consulta para colesterol alto'),(10,9,10,'2024-10-10','16:00:00','Revisión para hipertensión'),(11,10,11,'2024-10-11','08:30:00','Consulta de rutina'),(12,11,12,'2024-10-12','13:00:00','Chequeo endocrinológico'),(13,12,13,'2024-10-13','09:30:00','Consulta para diabetes tipo 1'),(14,13,14,'2024-10-14','10:45:00','Revisión general'),(15,14,15,'2024-10-15','11:30:00','Consulta reumatológica'),(16,15,16,'2024-10-16','12:00:00','Consulta de alergias'),(17,16,17,'2024-10-17','15:00:00','Chequeo general'),(18,17,18,'2024-10-18','16:30:00','Revisión para colitis'),(19,18,19,'2024-10-19','14:00:00','Consulta endocrinológica'),(20,19,20,'2024-10-20','11:15:00','Chequeo de hipertensión'),(21,20,21,'2024-10-21','09:00:00','Revisión de asma'),(22,21,22,'2024-10-22','10:30:00','Consulta general'),(23,22,23,'2024-10-23','13:45:00','Chequeo para diabetes tipo 2'),(24,23,24,'2024-10-24','15:00:00','Revisión ortopédica'),(25,24,25,'2024-10-25','11:00:00','Consulta de colitis'),(26,25,26,'2024-10-26','14:00:00','Chequeo general'),(27,26,27,'2024-10-27','09:30:00','Consulta endocrinológica'),(28,27,28,'2024-10-28','16:30:00','Revisión de colesterol alto'),(29,28,29,'2024-10-29','10:00:00','Consulta general'),(30,29,30,'2024-10-30','11:30:00','Chequeo para diabetes tipo 1'),(31,30,1,'2024-10-31','13:00:00','Revisión de hipertensión'),(32,31,2,'2024-11-01','14:30:00','Consulta de rutina'),(33,32,3,'2024-11-02','15:00:00','Chequeo ortopédico'),(34,33,4,'2024-11-03','09:00:00','Consulta para alergias'),(35,34,5,'2024-11-04','10:30:00','Revisión endocrinológica'),(36,35,6,'2024-11-05','11:00:00','Chequeo general'),(37,36,7,'2024-11-06','14:00:00','Consulta para diabetes tipo 2'),(38,37,8,'2024-11-07','15:30:00','Revisión para colitis'),(39,38,9,'2024-11-08','09:45:00','Chequeo de hipertensión'),(40,39,10,'2024-11-09','11:15:00','Consulta reumatológica'),(41,40,11,'2024-11-10','13:00:00','Consulta general'),(42,41,12,'2024-11-11','14:30:00','Chequeo de colesterol alto'),(43,42,13,'2024-11-12','16:00:00','Revisión de diabetes tipo 1'),(44,43,14,'2024-11-13','09:00:00','Consulta de rutina'),(45,44,15,'2024-11-14','10:30:00','Chequeo ortopédico'),(46,45,16,'2024-11-15','11:30:00','Revisión de alergias'),(47,46,17,'2024-11-16','12:00:00','Consulta endocrinológica'),(48,47,18,'2024-11-17','15:00:00','Chequeo general'),(49,48,19,'2024-11-18','16:30:00','Revisión de hipertensión'),(50,49,20,'2024-11-19','14:00:00','Consulta para diabetes tipo 2'),(51,50,21,'2024-11-20','09:30:00','Chequeo general'),(52,51,22,'2024-11-21','10:00:00','Consulta reumatológica'),(53,52,23,'2024-11-22','11:15:00','Revisión de colitis'),(54,53,24,'2024-11-23','13:00:00','Chequeo endocrinológico'),(55,54,25,'2024-11-24','14:30:00','Consulta de hipertensión'),(56,55,26,'2024-11-25','15:00:00','Chequeo general'),(57,56,27,'2024-11-26','16:30:00','Revisión de diabetes tipo 1'),(58,57,28,'2024-11-27','09:00:00','Consulta de rutina'),(59,58,29,'2024-11-28','10:30:00','Chequeo ortopédico'),(60,59,30,'2024-11-29','11:00:00','Consulta para alergias'),(61,60,1,'2024-11-30','13:00:00','Revisión de colesterol alto'),(62,61,2,'2024-12-01','14:00:00','Consulta general'),(63,62,3,'2024-12-02','15:30:00','Chequeo de hipertensión'),(64,63,4,'2024-12-03','09:00:00','Revisión endocrinológica'),(65,64,5,'2024-12-04','10:30:00','Consulta general'),(66,65,6,'2024-12-05','11:15:00','Chequeo para diabetes tipo 2'),(67,66,7,'2024-12-06','12:00:00','Revisión de colitis'),(68,67,8,'2024-12-07','15:00:00','Consulta de rutina'),(69,68,9,'2024-12-08','16:30:00','Chequeo general'),(70,69,10,'2024-12-09','09:00:00','Consulta para diabetes tipo 1'),(71,70,11,'2024-12-10','10:30:00','Revisión ortopédica'),(72,71,12,'2024-12-11','11:45:00','Consulta para alergias'),(73,72,13,'2024-12-12','13:00:00','Chequeo de colesterol alto'),(74,73,14,'2024-12-13','14:30:00','Revisión de hipertensión'),(75,74,15,'2024-12-14','15:00:00','Consulta general'),(76,75,16,'2024-12-15','09:30:00','Chequeo para diabetes tipo 1'),(77,76,17,'2024-12-16','10:00:00','Revisión general'),(78,77,18,'2024-12-17','11:30:00','Consulta de rutina'),(79,78,19,'2024-12-18','12:00:00','Chequeo de hipertensión'),(80,79,20,'2024-12-19','14:00:00','Revisión para diabetes tipo 2'),(81,80,21,'2024-12-20','15:30:00','Consulta general'),(82,81,22,'2024-12-21','09:00:00','Chequeo general'),(83,82,23,'2024-12-22','10:30:00','Consulta de colitis'),(84,83,24,'2024-12-23','11:15:00','Revisión endocrinológica'),(85,84,25,'2024-12-24','13:00:00','Consulta para diabetes tipo 1'),(86,85,26,'2024-12-25','14:30:00','Chequeo de colesterol alto'),(87,86,27,'2024-12-26','16:00:00','Consulta general'),(88,87,28,'2024-12-27','09:00:00','Revisión de hipertensión'),(89,88,29,'2024-12-28','10:30:00','Consulta de rutina'),(90,89,30,'2024-12-29','11:00:00','Chequeo ortopédico'),(91,90,1,'2024-12-30','13:30:00','Revisión general'),(92,91,2,'2024-12-31','14:00:00','Consulta para alergias'),(93,92,3,'2025-01-01','16:00:00','Chequeo general'),(94,93,4,'2025-01-02','09:30:00','Revisión de diabetes tipo 1'),(95,94,5,'2025-01-03','10:00:00','Consulta para hipertensión'),(96,95,6,'2025-01-04','11:00:00','Chequeo de colitis'),(97,96,7,'2025-01-05','13:00:00','Consulta general'),(98,97,8,'2025-01-06','14:30:00','Revisión de colesterol alto'),(99,98,9,'2025-01-07','15:00:00','Chequeo para diabetes tipo 2'),(100,99,10,'2025-01-08','09:00:00','Consulta de rutina'),(101,100,11,'2025-01-09','10:30:00','Chequeo ortopédico'),(102,101,12,'2025-01-10','11:30:00','Consulta general'),(103,102,13,'2025-01-11','14:00:00','Revisión de hipertensión'),(104,103,14,'2025-01-12','15:30:00','Chequeo endocrinológico'),(105,104,15,'2025-01-13','09:00:00','Consulta para alergias'),(106,1,5,'2025-01-14','09:00:00','Consulta general'),(107,2,12,'2025-01-15','10:30:00','Chequeo de hipertensión'),(108,3,25,'2025-01-16','11:00:00','Revisión endocrinológica'),(109,4,8,'2025-01-17','14:00:00','Consulta para diabetes tipo 1'),(110,5,20,'2025-01-18','15:30:00','Chequeo de colesterol alto'),(111,6,4,'2025-01-19','09:45:00','Consulta de rutina'),(112,7,30,'2025-01-20','11:15:00','Revisión de alergias'),(113,8,16,'2025-01-21','14:30:00','Chequeo general'),(114,9,22,'2025-01-22','10:00:00','Consulta reumatológica'),(115,10,10,'2025-01-23','16:00:00','Revisión de colitis'),(116,11,6,'2025-01-24','08:30:00','Consulta de rutina'),(117,12,14,'2025-01-25','13:00:00','Chequeo endocrinológico'),(118,13,27,'2025-01-26','09:30:00','Consulta para diabetes tipo 2'),(119,14,3,'2025-01-27','10:45:00','Revisión general'),(120,15,18,'2025-01-28','11:30:00','Consulta ortopédica'),(121,16,12,'2025-01-29','12:00:00','Consulta de alergias'),(122,17,21,'2025-01-30','15:00:00','Chequeo general'),(123,18,28,'2025-01-31','16:30:00','Revisión de hipertensión'),(124,19,4,'2025-02-01','14:00:00','Consulta endocrinológica'),(125,20,9,'2025-02-02','11:15:00','Chequeo de colesterol alto'),(126,21,13,'2025-02-03','09:00:00','Revisión de asma'),(127,22,29,'2025-02-04','10:30:00','Consulta general'),(128,23,17,'2025-02-05','13:45:00','Chequeo para diabetes tipo 2'),(129,24,30,'2025-02-06','15:00:00','Revisión ortopédica'),(130,25,2,'2025-02-07','11:00:00','Consulta de colitis'),(131,26,7,'2025-02-08','14:00:00','Chequeo general'),(132,27,19,'2025-02-09','09:30:00','Consulta endocrinológica'),(133,28,24,'2025-02-10','16:30:00','Revisión de colesterol alto'),(134,29,26,'2025-02-11','10:00:00','Consulta general'),(135,30,5,'2025-02-12','11:30:00','Chequeo para diabetes tipo 1'),(136,31,11,'2025-02-13','13:00:00','Revisión de hipertensión'),(137,32,23,'2025-02-14','14:30:00','Consulta de rutina'),(138,33,15,'2025-02-15','15:00:00','Chequeo ortopédico'),(139,34,20,'2025-02-16','09:00:00','Consulta para alergias'),(140,35,8,'2025-02-17','10:30:00','Revisión endocrinológica'),(141,36,6,'2025-02-18','11:00:00','Chequeo general'),(142,37,4,'2025-02-19','14:00:00','Consulta para diabetes tipo 2'),(143,38,22,'2025-02-20','15:30:00','Revisión de colitis'),(144,39,19,'2025-02-21','09:45:00','Consulta de rutina'),(145,40,13,'2025-02-22','11:15:00','Chequeo de hipertensión'),(146,41,27,'2025-02-23','12:00:00','Consulta de alergias'),(147,42,10,'2025-02-24','15:00:00','Chequeo general'),(148,43,3,'2025-02-25','16:30:00','Revisión para colesterol alto'),(149,44,26,'2025-02-26','09:00:00','Consulta general'),(150,45,30,'2025-02-27','10:30:00','Chequeo endocrinológico'),(151,46,8,'2025-02-28','11:45:00','Consulta para diabetes tipo 1'),(152,47,17,'2025-03-01','13:00:00','Revisión de hipertensión'),(153,48,21,'2025-03-02','14:30:00','Chequeo general'),(154,49,14,'2025-03-03','15:00:00','Consulta ortopédica'),(155,50,12,'2025-03-04','09:30:00','Revisión de colitis'),(156,51,5,'2025-03-05','10:00:00','Chequeo de colesterol alto'),(157,52,9,'2025-03-06','11:30:00','Consulta para diabetes tipo 2'),(158,53,18,'2025-03-07','12:00:00','Revisión general'),(159,54,26,'2025-03-08','14:00:00','Chequeo endocrinológico'),(160,55,23,'2025-03-09','15:30:00','Consulta para alergias'),(161,56,11,'2025-03-10','09:00:00','Revisión de hipertensión'),(162,57,27,'2025-03-11','10:30:00','Consulta de rutina'),(163,58,8,'2025-03-12','11:00:00','Chequeo ortopédico'),(164,59,22,'2025-03-13','14:30:00','Revisión de colitis'),(165,60,19,'2025-03-14','15:00:00','Consulta general'),(166,61,7,'2025-03-15','09:00:00','Chequeo de colesterol alto'),(167,62,2,'2025-03-16','10:30:00','Consulta general'),(168,63,15,'2025-03-17','11:45:00','Revisión endocrinológica'),(169,64,12,'2025-03-18','13:00:00','Consulta para diabetes tipo 1'),(170,65,30,'2025-03-19','14:30:00','Chequeo de hipertensión'),(171,66,20,'2025-03-20','16:00:00','Consulta de rutina'),(172,67,3,'2025-03-21','09:00:00','Revisión general'),(173,68,26,'2025-03-22','10:30:00','Chequeo ortopédico'),(174,69,24,'2025-03-23','11:15:00','Consulta de colitis'),(175,70,8,'2025-03-24','12:00:00','Chequeo de colesterol alto'),(176,71,5,'2025-03-25','14:00:00','Consulta para alergias'),(177,72,22,'2025-03-26','15:30:00','Revisión de diabetes tipo 2'),(178,73,11,'2025-03-27','09:30:00','Consulta de rutina'),(179,74,17,'2025-03-28','10:00:00','Chequeo endocrinológico'),(180,75,19,'2025-03-29','11:30:00','Consulta para diabetes tipo 1'),(181,76,6,'2025-03-30','12:00:00','Revisión de hipertensión'),(182,77,8,'2025-03-31','14:00:00','Chequeo de colesterol alto'),(183,78,21,'2025-04-01','15:30:00','Consulta general'),(184,79,13,'2025-04-02','09:00:00','Revisión de colitis'),(185,80,27,'2025-04-03','10:30:00','Chequeo general'),(186,81,10,'2025-04-04','11:15:00','Consulta de alergias'),(187,82,30,'2025-04-05','12:00:00','Chequeo de hipertensión'),(188,83,15,'2025-04-06','13:00:00','Consulta para diabetes tipo 2'),(189,84,18,'2025-04-07','14:30:00','Revisión general'),(190,85,9,'2025-04-08','15:00:00','Chequeo ortopédico'),(191,86,8,'2025-04-09','09:00:00','Consulta de rutina'),(192,87,24,'2025-04-10','10:30:00','Revisión endocrinológica'),(193,88,22,'2025-04-11','11:45:00','Consulta para diabetes tipo 1'),(194,89,27,'2025-04-12','13:00:00','Chequeo de colesterol alto'),(195,90,5,'2025-04-13','14:30:00','Revisión general'),(196,91,11,'2025-04-14','15:00:00','Consulta para hipertensión'),(197,92,30,'2025-04-15','09:00:00','Chequeo ortopédico'),(198,93,13,'2025-04-16','10:30:00','Consulta general'),(199,94,18,'2025-04-17','11:15:00','Chequeo para alergias'),(200,95,22,'2025-04-18','12:00:00','Revisión de colitis'),(201,96,19,'2025-04-19','14:00:00','Consulta de rutina'),(202,97,26,'2025-04-20','15:30:00','Chequeo de hipertensión'),(203,98,8,'2025-04-21','09:00:00','Consulta para diabetes tipo 2'),(204,99,17,'2025-04-22','10:30:00','Chequeo general'),(205,100,21,'2025-04-23','11:45:00','Revisión endocrinológica'),(206,101,15,'2025-04-24','13:00:00','Consulta de rutina'),(207,102,30,'2025-04-25','14:30:00','Chequeo general'),(208,103,8,'2025-04-26','16:00:00','Revisión de hipertensión'),(209,104,13,'2025-04-27','09:00:00','Consulta para alergias');
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `verificar_disponibilidad_medico` BEFORE INSERT ON `turnos` FOR EACH ROW BEGIN
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
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'cm_vanguardia'
--

--
-- Dumping routines for database 'cm_vanguardia'
--
/*!50003 DROP FUNCTION IF EXISTS `detalles_turnos_medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `detalles_turnos_medico`(medico_id INT) RETURNS text CHARSET utf8mb4
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `detalle_turnos_paciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `detalle_turnos_paciente`(paciente_id INT) RETURNS text CHARSET utf8mb4
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `historial_medico_paciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `historial_medico_paciente`(paciente_id INT) RETURNS text CHARSET utf8mb4
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_paciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_paciente`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `asignar_turno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `asignar_turno`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crear_paciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crear_paciente`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `cantidad_turnos_por_medico`
--

/*!50001 DROP VIEW IF EXISTS `cantidad_turnos_por_medico`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cantidad_turnos_por_medico` AS select `m`.`id_medico` AS `id_medico`,concat(`m`.`nombre`,' ',`m`.`apellido`) AS `medico_nombre`,count(`t`.`id_turno`) AS `cantidad_turnos` from (`medico` `m` left join `turnos` `t` on((`m`.`id_medico` = `t`.`id_medico`))) group by `m`.`id_medico`,`medico_nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cantidad_turnos_por_paciente`
--

/*!50001 DROP VIEW IF EXISTS `cantidad_turnos_por_paciente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cantidad_turnos_por_paciente` AS select `p`.`id_paciente` AS `id_paciente`,concat(`p`.`nombre`,' ',`p`.`apellido`) AS `paciente_nombre`,count(`t`.`id_turno`) AS `cantidad_turnos` from (`paciente` `p` left join `turnos` `t` on((`p`.`id_paciente` = `t`.`id_paciente`))) group by `p`.`id_paciente`,`paciente_nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `detalles_turnos`
--

/*!50001 DROP VIEW IF EXISTS `detalles_turnos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `detalles_turnos` AS select `t`.`id_turno` AS `id_turno`,concat(`p`.`nombre`,' ',`p`.`apellido`) AS `paciente_nombre`,`p`.`telefono` AS `paciente_telefono`,`p`.`email` AS `paciente_email`,concat(`m`.`nombre`,' ',`m`.`apellido`) AS `medico_nombre`,`m`.`especialidad` AS `medico_especialidad`,`m`.`telefono` AS `medico_telefono`,`m`.`email` AS `medico_email`,`t`.`fecha` AS `fecha`,`t`.`hora` AS `hora`,`t`.`motivo` AS `motivo` from ((`turnos` `t` join `paciente` `p` on((`t`.`id_paciente` = `p`.`id_paciente`))) join `medico` `m` on((`t`.`id_medico` = `m`.`id_medico`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-12  2:26:16
