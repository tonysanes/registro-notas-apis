--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `id_alumno` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(30) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `nivel` varchar(20) DEFAULT NULL,
  `grado` varchar(15) DEFAULT NULL,
  `seccion` char(1) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` char(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `estado` tinyint DEFAULT '1',
  PRIMARY KEY (`id_alumno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,'David','Sanchez','2018-03-01','INICIAL','TERCERO','A','Calle Enrique Encinas Franco 117','16218526','david.sanchez@gamil.com','2021-06-09 15:05:01','2021-06-09 15:05:01',1),(2,'Salvador','Sanchez','2016-02-02','INICIAL','QUINTO','A','Calle Enrique Encinas Franco 117','15236847','salvador.sanchez@hotmail.com','2021-06-09 15:07:00','2021-06-09 15:07:00',1);
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

