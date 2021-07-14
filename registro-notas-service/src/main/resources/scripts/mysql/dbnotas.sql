CREATE TABLE `alumno` (
  `id_alumno` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(30) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `nivel` varchar(20) DEFAULT NULL,
  `grado` varchar(15) DEFAULT NULL,
  `seccion` char(1) DEFAULT NULL,
  `genero` char(1) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` char(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `estado` tinyint DEFAULT '1',
  PRIMARY KEY (`id_alumno`)
)

CREATE TABLE `profesor` (
  `id_profesor` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(30) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` char(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `estado` tinyint DEFAULT NULL,
  PRIMARY KEY (`id_profesor`)
)

INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('David','Sanchez','2018-03-01','INICIAL','3 AÑOS','A','Calle Enrique Encinas Franco 117, Dept 301','16218526','david.sanchez@gamil.com','2021-06-09 15:07:00','2021-06-16 23:54:49',1,NULL),
	 ('Salvador','Sanchez','2016-02-02','INICIAL','5 AÑOS','A','Urb. Santa Catalina
Calle Enrique Encinas Franco 117','016218526','salvador.sanchez@gmail.com','2021-06-18 00:05:31','2021-06-18 00:05:32',1,NULL),
	 ('Ana','Peres','2015-09-09','INICIAL','4 AÑOS','A','Av. Grau 123','12563548','ana.peres@gmail.com','2021-06-20 20:06:55','2021-06-20 20:06:55',1,NULL),
	 ('Ana','Morales','2016-05-28','INICIAL','5 AÑOS','A','Av. La Caleta 522','57563548','ana.morales@gmail.com','2021-06-20 20:14:59','2021-06-20 20:14:59',1,NULL),
	 ('Jose','Rios','2015-05-28','INICIAL','4 AÑOS','A','Jr. vidal 544','57563548','jose.rios@gmail.com','2021-06-20 20:16:28','2021-06-20 20:16:28',1,NULL),
	 ('Cesar','Borja','2017-05-28','INICIAL','4 AÑOS','A','Jr. Mercedes 222','62243523','jose.rios@gmail.com','2021-06-20 20:31:28','2021-06-20 20:31:28',1,NULL),
	 ('Angel','Leiva','2017-10-28','INICIAL','4 AÑOS','A','Jr. Naval 969','25143523','angel.leiva@gmail.com','2021-06-20 20:31:43','2021-06-20 20:31:43',1,NULL),
	 ('Fernanda','Sosa','2016-11-12','INICIAL','5 AÑOS','A','Jr. Manchurria 412','31141165','fer.sosa@gmail.com','2021-06-20 20:41:06','2021-06-20 20:41:06',1,NULL),
	 ('LeidY','Belen','2016-01-22','INICIAL','5 AÑOS','A','Jr. La Cruz 211','24455122','leidy.belen@gmail.com','2021-06-20 20:41:13','2021-06-20 20:41:13',1,NULL),
	 ('Victor','Montoya','2016-07-12','INICIAL','5 AÑOS','A','Jr. Bomberos 352','215425122','victor.montoya@gmail.com','2021-06-20 20:48:22','2021-06-20 20:48:22',1,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Mario','Villa','2016-01-22','INICIAL','5 AÑOS','A','Av. Ferrandes 211','25631425','mario.villa@gmail.com','2021-06-20 20:48:22','2021-06-20 20:48:22',1,NULL),
	 ('Daniela','Casas','2016-08-22','INICIAL','5 AÑOS','A','Av. Tarres 311','22156578','dani.casas@gmail.com','2021-06-20 21:11:26','2021-06-20 21:11:26',1,NULL),
	 ('Irvin','Muños','2016-12-21','INICIAL','5 AÑOS','A','Urb. Los girasoles','21453658','irvin.muños@gmail.com','2021-06-20 21:11:26','2021-06-20 21:11:26',1,NULL),
	 ('Alison','Guerra','2016-10-01','INICIAL','5 AÑOS','A','Av. Roca 777','20121102','alison.guerra@gmail.com','2021-06-20 21:11:26','2021-06-20 21:11:26',1,NULL),
	 ('Flavia','Duran','2016-02-18','INICIAL','5 AÑOS','A','Av. Villa 144','25631425','flavia.duran@gmail.com','2021-06-20 21:11:26','2021-06-20 21:11:26',1,NULL),
	 ('Flavio','Panana','2016-09-15','INICIAL','5 AÑOS','A','Av. Blanca 257','01472102','flavio.panana@gmail.com','2021-06-20 21:11:26','2021-06-20 21:11:26',1,NULL),
	 ('Martin','Roca','2016-06-07','INICIAL','5 AÑOS','A','Av. Naval 451','26651251','martin.roca@gmail.com','2021-06-20 21:11:26','2021-06-20 21:11:26',1,NULL),
	 ('Laura','Rivera','2016-04-04','INICIAL','5 AÑOS','A','Av. Aspero 012','02452631','laura.rivera@gmail.com','2021-06-20 21:11:26','2021-06-20 21:11:26',1,NULL),
	 ('Silvana','Loza','2016-08-21','INICIAL','5 AÑOS','A','Av. Palermo 520','07241291','silvana.loza@gmail.com','2021-06-20 21:11:26','2021-06-20 21:11:26',1,NULL),
	 ('Karina','Mendes','2017-04-23','INICIAL','4 AÑOS','A','Av. Sierra 332','09214526','karina.mendes@gmail.com','2021-06-20 21:11:26','2021-06-20 21:11:26',1,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Xiomara','Silva','2017-12-01','INICIAL','4 AÑOS','A','Jr. Mirador 652','31024521','xiomara.silva@gmail.com','2021-06-20 21:11:26','2021-06-20 21:11:26',1,NULL),
	 ('Thania','Jara','2017-11-23','INICIAL','4 AÑOS','A','Av. Kilometro 231','02365214','thania.jara@gmail.com','2021-06-20 21:11:26','2021-06-20 21:11:26',1,NULL),
	 ('Juan','Castillo','2017-05-21','INICIAL','4 AÑOS','A','Jr. kilometro 111','08253164','juan.castillo@gmail.com','2021-06-20 21:11:27','2021-06-20 21:11:27',1,NULL),
	 ('Tamara','Lopez','2017-07-28','INICIAL','4 AÑOS','A','Jr. La Paz 511','01532612','tamara.lopez@gmail.com','2021-06-20 21:18:52','2021-06-20 21:18:52',1,NULL),
	 ('Kiara','Zapata','2017-01-01','INICIAL','4 AÑOS','A','Jr. La Villa 251','02153698','kiara.zapata@gmail.com','2021-06-20 21:18:52','2021-06-20 21:18:52',1,NULL),
	 ('Angie','Saman','2017-09-05','INICIAL','4 AÑOS','A','Jr. Primavera 177','31526321','angie.saman@gmail.com','2021-06-20 21:18:52','2021-06-20 21:18:52',1,NULL),
	 ('Tamara','Lopez','2017-07-28','INICIAL','4 AÑOS','A','Jr. La Paz 511','01532612','tamara.lopez@gmail.com','2021-06-20 21:18:52','2021-06-20 21:18:52',1,NULL),
	 ('Julian','Gimenez','2017-07-15','INICIAL','4 AÑOS','A','Urb. Los Portales 888','01254635','julian.gimenez@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('flor','Ramirez','2017-08-11','INICIAL','4 AÑOS','A','Urb. Los Portales 012','03214520','flor.ramirez@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Mario','Casas','2017-01-01','INICIAL','4 AÑOS','A','Urb. Limatambo 147','02148542','mario.casas@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Natalie','Gomez','2015-01-01','PRIMARIA','PRIMERO','A','Urb. Las Mercedes 201','21450020','natalie.gomez@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Samuel','Torres','2015-07-01','PRIMARIA','PRIMERO','A','Av. Grau 147','02145120','samuel.torres@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Eva','Sandoval','2015-04-17','PRIMARIA','PRIMERO','A','Av. Miramar 147','01232012','eva.sandoval@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Antonela','Malqui','2015-06-29','PRIMARIA','PRIMERO','A','Av. Canada 117','09125412','antonela.malqui@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Fidel','Santos','2015-08-11','PRIMARIA','PRIMERO','A','Av. Amazonas 745','02153265','fidel.santos@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Julisa','Vaques','2015-09-09','PRIMARIA','PRIMERO','A','Av. Bandurria 145','02153256','julisa.vasques@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Sol','Rivarola','2015-07-17','PRIMARIA','PRIMERO','A','Urb. Universitaria 401','01782354','sol.rivarola@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Naysha','Correa','2015-10-15','PRIMARIA','PRIMERO','A','Urb. Casa Blanca 101','01423652','naysha.Correa@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Franco','Mandamiento','2015-10-13','PRIMARIA','PRIMERO','A','Jr. Galvez 202','01963582','franco.mandamiento@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Wendy','Tamasco','2015-01-27','PRIMARIA','PRIMERO','A','Av. Javier Prado 159','01432563','wendy.tamasco@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Rusbelt','Garcia','2015-07-22','PRIMARIA','PRIMERO','A','Urb. La Villa 111','01259632','rusbelt.garcia@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Pedro','Castillo','2015-07-09','PRIMARIA','PRIMERO','A','Urb. La Marina 999','02138578','pedro.castillo@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Fernando','Jimenez','2015-11-01','PRIMARIA','PRIMERO','A','Urb. La villa 195','02992012','fernando.jimenez@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Luis','Montaner','2015-12-15','PRIMARIA','PRIMERO','A','Av. Medio Mundo 150','01695847','luis.montaner@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Veronica','Luna','2015-08-17','PRIMARIA','PRIMERO','A','Jr. La Malvina 195','01653624','veronica.luna@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Jordan','Luarte','2015-06-20','PRIMARIA','PRIMERO','A','Urb. La Cantuta 119','01254632','jordan.luarte@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Katy','Leiva','2014-07-28','PRIMARIA','SEGUNDO','A','Av. Trinidad 215','01742315','katy.leiva@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Nilda','Ortiz','2014-08-07','PRIMARIA','SEGUNDO','A','Urb. Atahualpa 215','01962120','nilda.ortiz@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Alexandra','Colla','2014-10-01','PRIMARIA','SEGUNDO','A','Av. Santa Rosa 920','01524103','ale.colla@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Zarai','Marreros','2014-05-21','PRIMARIA','SEGUNDO','A','Urb. Señor de los Milagros','01291952','zarai.marreros@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Vanesa','Ramos','2014-12-09','PRIMARIA','SEGUNDO','A','Av. 28 de Julio','01332052','vanesa.ramos@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Jenifer','Gamboa','2014-05-28','PRIMARIA','SEGUNDO','A','Av. Sinchi Roca 001','01712356','jenifer.gamboa@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Luis','Pacheco','2014-09-26','PRIMARIA','SEGUNDO','A','Av. Trinidad 215','01621152','luis.pacheco@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Juan','Melendes','2014-02-18','PRIMARIA','SEGUNDO','A','Av. Trinidad 123','01254521','juan.melendes@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Rafaela','Gonzales','2014-07-23','PRIMARIA','SEGUNDO','A','Av. Sipreces 254','01412321','rafaela.gonzales@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Xionara','Llanos','2014-11-25','PRIMARIA','SEGUNDO','A','Av. Amansipacion 215','01356214','xiomara.llanos@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Michael','Flores','2014-04-15','PRIMARIA','SEGUNDO','A','Av. Luarte 007','03620214','mayki.flores@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Rosa','Peres','2014-12-14','PRIMARIA','SEGUNDO','A','Av. Manzanares 147','01452136','rosa.peres@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Manuel','Fuentes','2014-09-11','PRIMARIA','SEGUNDO','A','Av. Los Girasoles 107','08215426','manuel.fuentes@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Jhon','Tapia','2014-07-20','PRIMARIA','SEGUNDO','A','Av. San Juan 235','02486144','jhon.tapia@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Sonia','Figueroa','2014-03-11','PRIMARIA','SEGUNDO','A','Urb. Las Palmas 007','014525325','sonia.figueroa@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Isabel','Molina','2014-01-19','PRIMARIA','SEGUNDO','A','Av. La Perla 222','01751245','isabel.molina@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Alicia','Orellana','2014-05-05','PRIMARIA','SEGUNDO','A','Av. Atarraya 117','01365596','alicia.Orellana@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Camila','Vergara','2014-10-01','PRIMARIA','SEGUNDO','A','Av. La Marina 888','01662021','camila.vergara@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Nikol','pardo','2014-03-22','PRIMARIA','SEGUNDO','A','Av. Barrantes 110','01523261','nikol.pardo@gmail.com','2021-06-27 23:29:03','2021-06-27 23:29:03',1,NULL),
	 ('Ursula','Chumbes','2014-10-27','PRIMARIA','SEGUNDO','A','Av. Las Brisas 007','02152356','Ursula.chumbes@gmail.com','2021-06-27 23:29:04','2021-06-27 23:29:04',1,NULL),
	 ('Fabricio','Tejada','2013-01-01','PRIMARIA','TERCERO','A','Av. Las Brisas 387','02152356','fabricio.tejada@gmail.com','2021-06-27 23:29:04','2021-06-27 23:29:04',1,NULL),
	 ('Erick','Gallegos','2013-02-12','PRIMARIA','TERCERO','A','Av. Las Brisas 245','02152356','erick.gallegos@gmail.com','2021-06-27 23:29:04','2021-06-27 23:29:04',1,NULL),
	 ('Rossel','Mamani','2013-04-01','PRIMARIA','TERCERO','A','Av. Las Brisas 784','02152356','rossel.mamani@gmail.com','2021-06-27 23:29:04','2021-06-27 23:29:04',1,NULL),
	 ('Olenka','Herrera','2013-05-01','PRIMARIA','TERCERO','A','Av. Las Brisas 245','02152356','olenka.herrera@gmail.com','2021-06-27 23:29:04','2021-06-27 23:29:04',1,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Darwin','Lopez','2013-03-01','PRIMARIA','TERCERO','A','Av. Las Brisas 154','02152356','darwin.lopez@gmail.com','2021-06-27 23:29:04','2021-06-27 23:29:04',1,NULL),
	 ('Misael','Fermin','2013-06-01','PRIMARIA','TERCERO','A','Av. Las Brisas 222','02152356','misael.fermin@gmail.com','2021-06-27 23:29:04','2021-06-27 23:29:04',1,NULL),
	 ('Sarita','Marquina','2013-07-01','PRIMARIA','TERCERO','A','Av. Las Brisas 455','02152356','sarita.marquina@gmail.com','2021-06-27 23:29:04','2021-06-27 23:29:04',1,NULL),
	 ('Judith','Vallanueva','2013-08-01','PRIMARIA','TERCERO','A','Av. Las Brisas 452','02152356','judith.villanueva@gmail.com','2021-06-27 23:29:04','2021-06-27 23:29:04',1,NULL),
	 ('Graciela','Salinas','2013-09-01','PRIMARIA','TERCERO','A','Av. Las Brisas 752','02152356','graciela.salinas@gmail.com','2021-06-27 23:29:04','2021-06-27 23:29:04',1,NULL),
	 ('Jessica','Mattos','2013-10-01','PRIMARIA','TERCERO','A','Av. Las Brisas 365','02152356','jessica.mattos@gmail.com','2021-06-27 23:29:04','2021-06-27 23:29:04',1,NULL),
	 ('Lorenzo','Lazaro','2013-11-01','PRIMARIA','TERCERO','A','Av. Las Brisas 741','02152356','lorenzo.lazaro@gmail.com','2021-06-27 23:29:04','2021-06-27 23:29:04',1,NULL),
	 ('Bernardo','Roncal','2013-12-01','PRIMARIA','TERCERO','A','Av. Las Brisas 231','02152356','bernardo.roncal@gmail.com','2021-06-27 23:29:04','2021-06-27 23:29:04',1,NULL),
	 ('Danitza','Avalos','2013-01-11','PRIMARIA','TERCERO','A','Av. Las Brisas 587','02152356','danitza.avalos@gmail.com','2021-06-27 23:29:04','2021-06-27 23:29:04',1,NULL),
	 ('Irma','Tejada','2013-02-21','PRIMARIA','TERCERO','A','Av. Las Brisas 125','02152356','irma.tejada@gmail.com','2021-06-27 23:29:04','2021-06-27 23:29:04',1,NULL);