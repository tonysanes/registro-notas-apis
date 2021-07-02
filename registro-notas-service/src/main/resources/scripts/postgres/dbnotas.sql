CREATE TABLE alumno (
  id_alumno serial NOT NULL,
  nombres varchar(30) NULL,
  apellidos varchar(50) NULL,
  fecha_nac date NULL,
  nivel varchar(20) NULL,
  grado varchar(15) NULL,
  seccion bpchar(1) NULL,
  direccion varchar(100) NULL,
  telefono bpchar(11) NULL,
  email varchar(30) NULL,
  fecha_registro timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  fecha_modificacion timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  estado bool NOT NULL DEFAULT true,
  PRIMARY KEY (id_alumno)
)

CREATE TABLE profesor (
  id_profesor serial NOT NULL,
  nombres varchar(30) NULL,
  apellidos varchar(50) NULL,
  dni bpchar(8) NULL,
  direccion varchar(100) NULL,
  telefono bpchar(11) NULL,
  email varchar(30) NULL,
  fecha_registro timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  fecha_modificacion timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  estado bool NOT NULL DEFAULT true,
  PRIMARY KEY (id_profesor)
)

INSERT INTO dbnotas.profesor (nombres,apellidos,dni,direccion,telefono,email,fecha_registro,fecha_modificacion,estado) VALUES
	 ('Laura','Calcinas','75268532','Av. Lasas','24586325   ','laura@gmail.com','2021-06-30 23:58:57.928672','2021-06-30 23:58:57.92',true),
	 ('Daniel','Cobillas','15487522','Av. Lasas','2265125    ','daniel@gmail.com','2021-07-01 00:01:21.22316','2021-07-01 00:01:21.222',true);


INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
 values ('David','Sanchez','2018-03-01','INICIAL','TERCERO','A','Calle Enrique Encinas Franco 117','16218526','david.sanchez@gamil.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
 values ('Salvador','Sanchez','2016-02-02','INICIAL','QUINTO','A','Calle Enrique Encinas Franco 117','15236847','salvador.sanchez@hotmail.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
 values ('Ariana','Sanchez','2006-01-30','SECUNDARIA','CUARTO','A','test','01323456','ariana.sanchez@gmail.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Ana', 'Peres', '2017-09-09', 'INICIAL', '4 AÑOS', 'A', 'Av. Grau 123',
 '12563548', 'ana.peres@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Ana', 'Morales', '2016-05-28', 'INICIAL', '5 AÑOS', 'A', 'Av. La Caleta 522',
 '57563548', 'ana.morales@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Jose', 'Rios', '2017-05-28', 'INICIAL', '4 AÑOS', 'A', 'Jr. vidal 544',
 '57563548', 'jose.rios@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Cesar', 'Borja', '2017-05-28', 'INICIAL', '4 AÑOS', 'A', 'Jr. Mercedes 222',
 '62243523', 'jose.rios@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Angel', 'Leiva', '2017-10-28', 'INICIAL', '4 AÑOS', 'A', 'Jr. Naval 969',
 '25143523', 'angel.leiva@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Fernanda', 'Sosa', '2016-11-12', 'INICIAL', '5 AÑOS', 'A', 'Jr. Manchurria 412',
 '31141165', 'fer.sosa@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Leidy', 'Belen', '2016-01-22', 'INICIAL', '5 AÑOS', 'A', 'Jr. La Cruz 211',
 '24455122', 'leidy.belen@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Victor', 'Montoya', '2016-07-12', 'INICIAL', '5 AÑOS', 'A', 'Jr. Bomberos 352',
 '215425122', 'victor.montoya@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Mario', 'Villa', '2016-01-22', 'INICIAL', '5 AÑOS', 'A', 'Av. Ferrandes 211',
 '25631425', 'mario.villa@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Daniela', 'Casas', '2016-08-22', 'INICIAL', '5 AÑOS', 'A', 'Av. Tarres 311',
 '22156578', 'dani.casas@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Irvin', 'Muños', '2016-12-21', 'INICIAL', '5 AÑOS', 'A', 'Urb. Los girasoles',
 '21453658', 'irvin.muños@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Alison', 'Guerra', '2016-10-01', 'INICIAL', '5 AÑOS', 'A', 'Av. Roca 777',
 '20121102', 'alison.guerra@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Flavia', 'Duran', '2016-02-18', 'INICIAL', '5 AÑOS', 'A', 'Av. Villa 144',
 '25631425', 'flavia.duran@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Flavio', 'Panana', '2016-09-15', 'INICIAL', '5 AÑOS', 'A', 'Av. Blanca 257',
 '01472102', 'flavio.panana@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Martin', 'Roca', '2016-06-07', 'INICIAL', '5 AÑOS', 'A', 'Av. Naval 451',
 '26651251', 'martin.roca@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Laura', 'Rivera', '2016-04-04', 'INICIAL', '5 AÑOS', 'A', 'Av. Aspero 012',
 '02452631', 'laura.rivera@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Silvana', 'Loza', '2016-08-21', 'INICIAL', '5 AÑOS', 'A', 'Av. Palermo 520',
 '07241291', 'silvana.loza@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Karina', 'Mendes', '2017-04-23', 'INICIAL', '4 AÑOS', 'A', 'Av. Sierra 332',
 '09214526', 'karina.mendes@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Xiomara', 'Silva', '2017-12-01', 'INICIAL', '4 AÑOS', 'A', 'Jr. Mirador 652',
 '31024521', 'xiomara.silva@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Thania', 'Jara', '2017-11-23', 'INICIAL', '4 AÑOS', 'A', 'Av. Kilometro 231',
 '02365214', 'thania.jara@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Juan', 'Castillo', '2017-05-21', 'INICIAL', '4 AÑOS', 'A', 'Jr. kilometro 111',
 '08253164', 'juan.castillo@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Tamara', 'Lopez', '2017-07-28', 'INICIAL', '4 AÑOS', 'A', 'Jr. La Paz 511',
 '01532612', 'tamara.lopez@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Kiara', 'Zapata', '2017-01-01', 'INICIAL', '4 AÑOS', 'A', 'Jr. La Villa 251',
 '02153698', 'kiara.zapata@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Angie', 'Saman', '2017-09-05', 'INICIAL', '4 AÑOS', 'A', 'Jr. Primavera 177',
 '31526321', 'angie.saman@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Tamara', 'Lopez', '2017-07-28', 'INICIAL', '4 AÑOS', 'A', 'Jr. La Paz 511',
 '01532612', 'tamara.lopez@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Julian', 'Gimenez', '2017-07-15', 'INICIAL', '4 AÑOS', 'A', 'Urb. Los Portales 888',
'01254635', 'julian.gimenez@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('flor', 'Ramirez', '2017-08-11', 'INICIAL', '4 AÑOS', 'A', 'Urb. Los Portales 012',
'03214520', 'flor.ramirez@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Mario', 'Casas', '2017-01-01', 'INICIAL', '4 AÑOS', 'A', 'Urb. Limatambo 147',
'02148542', 'mario.casas@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Natalie', 'Gomez', '2015-01-01', 'PRIMARIA', '6 AÑOS', 'A', 'Urb. Las Mercedes 201',
'21450020', 'natalie.gomez@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Samuel', 'Torres', '2015-07-01', 'PRIMARIA', '6 AÑOS', 'A', 'Av. Grau 147',
'02145120', 'samuel.torres@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Eva', 'Sandoval', '2015-04-17', 'PRIMARIA', '6 AÑOS', 'A', 'Av. Miramar 147',
'01232012', 'eva.sandoval@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Antonela', 'Malqui', '2015-06-29', 'PRIMARIA', '6 AÑOS', 'A', 'Av. Canada 117',
'09125412', 'antonela.malqui@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Fidel', 'Santos', '2015-08-11', 'PRIMARIA', '6 AÑOS', 'A', 'Av. Amazonas 745',
'02153265', 'fidel.santos@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Julisa', 'Vaques', '2015-09-09', 'PRIMARIA', '6 AÑOS', 'A', 'Av. Bandurria 145',
'02153256', 'julisa.vasques@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Sol', 'Rivarola', '2015-07-17', 'PRIMARIA', '6 AÑOS', 'A', 'Urb. Universitaria 401',
'01782354', 'sol.rivarola@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Naysha', 'Correa', '2015-10-15', 'PRIMARIA', '6 AÑOS', 'A', 'Urb. Casa Blanca 101',
'01423652', 'naysha.Correa@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Franco', 'Mandamiento', '2015-10-13', 'PRIMARIA', '6 AÑOS', 'A', 'Jr. Galvez 202',
'01963582', 'franco.mandamiento@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Wendy', 'Tamasco', '2015-01-27', 'PRIMARIA', '6 AÑOS', 'A', 'Av. Javier Prado 159',
'01432563', 'wendy.tamasco@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Rusbelt', 'Garcia', '2015-07-22', 'PRIMARIA', '6 AÑOS', 'A', 'Urb. La Villa 111',
'01259632', 'rusbelt.garcia@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Pedro', 'Castillo', '2015-07-09', 'PRIMARIA', '6 AÑOS', 'A', 'Urb. La Marina 999',
'02138578', 'pedro.castillo@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Fernando', 'Jimenez', '2015-11-01', 'PRIMARIA', '6 AÑOS', 'A', 'Urb. La villa 195',
'02992012', 'fernando.jimenez@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Luis', 'Montaner', '2015-12-15', 'PRIMARIA', '6 AÑOS', 'A', 'Av. Medio Mundo 150',
'01695847', 'luis.montaner@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Veronica', 'Luna', '2015-08-17', 'PRIMARIA', '6 AÑOS', 'A', 'Jr. La Malvina 195',
'01653624', 'veronica.luna@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Jordan', 'Luarte', '2015-06-20', 'PRIMARIA', '6 AÑOS', 'A', 'Urb. La Cantuta 119',
'01254632', 'jordan.luarte@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Katy', 'Leiva', '2014-07-28', 'PRIMARIA', '7 AÑOS', 'A', 'Av. Trinidad 215',
'01742315', 'katy.leiva@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Nilda', 'Ortiz', '2014-08-07', 'PRIMARIA', '7 AÑOS', 'A', 'Urb. Atahualpa 215',
'01962120', 'nilda.ortiz@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Alexandra', 'Colla', '2014-10-01', 'PRIMARIA', '7 AÑOS', 'A', 'Av. Santa Rosa 920',
'01524103', 'ale.colla@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Zarai', 'Marreros', '2014-05-21', 'PRIMARIA', '7 AÑOS', 'A', 'Urb. Señor de los Milagros',
'01291952', 'zarai.marreros@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Vanesa', 'Ramos', '2014-12-09', 'PRIMARIA', '7 AÑOS', 'A', 'Av. 28 de Julio',
'01332052', 'vanesa.ramos@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Jenifer', 'Gamboa', '2014-05-28', 'PRIMARIA', '7 AÑOS', 'A', 'Av. Sinchi Roca 001',
'01712356', 'jenifer.gamboa@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Luis', 'Pacheco', '2014-09-26', 'PRIMARIA', '7 AÑOS', 'A', 'Av. Trinidad 215',
'01621152', 'luis.pacheco@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Juan', 'Melendes', '2014-02-18', 'PRIMARIA', '7 AÑOS', 'A', 'Av. Trinidad 123',
'01254521', 'juan.melendes@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Rafaela', 'Gonzales', '2014-07-23', 'PRIMARIA', '7 AÑOS', 'A', 'Av. Sipreces 254',
'01412321', 'rafaela.gonzales@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Xionara', 'Llanos', '2014-11-25', 'PRIMARIA', '7 AÑOS', 'A', 'Av. Amansipacion 215',
'01356214', 'xiomara.llanos@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Michael', 'Flores', '2014-04-15', 'PRIMARIA', '7 AÑOS', 'A', 'Av. Luarte 007',
'03620214', 'mayki.flores@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Rosa', 'Peres', '2014-12-14', 'PRIMARIA', '7 AÑOS', 'A', 'Av. Manzanares 147',
'01452136', 'rosa.peres@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Manuel', 'Fuentes', '2014-09-11', 'PRIMARIA', '7 AÑOS', 'A', 'Av. Los Girasoles 107',
'08215426', 'manuel.fuentes@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Jhon', 'Tapia', '2014-07-20', 'PRIMARIA', '7 AÑOS', 'A', 'Av. San Juan 235',
'02486144', 'jhon.tapia@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Sonia', 'Figueroa', '2014-03-11', 'PRIMARIA', '7 AÑOS', 'A', 'Urb. Las Palmas 007',
'014525325', 'sonia.figueroa@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Isabel', 'Molina', '2014-01-19', 'PRIMARIA', '7 AÑOS', 'A', 'Av. La Perla 222',
'01751245', 'isabel.molina@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Alicia', 'Orellana', '2014-05-05', 'PRIMARIA', '7 AÑOS', 'A', 'Av. Atarraya 117',
'01365596', 'alicia.Orellana@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Camila', 'Vergara', '2014-10-01', 'PRIMARIA', '7 AÑOS', 'A', 'Av. La Marina 888',
'01662021', 'camila.vergara@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Nikol', 'pardo', '2014-03-22', 'PRIMARIA', '7 AÑOS', 'A', 'Av. Barrantes 110',
'01523261', 'nikol.pardo@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Ursula', 'Chumbes', '2014-10-27', 'PRIMARIA', '7 AÑOS', 'A', 'Av. Las Brisas 007',
'02152356', 'Ursula.chumbes@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
 INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Julian', 'Gimenez', '2017-07-15', 'INICIAL', '4 AÑOS', 'A', 'Urb. Los Portales 888',
'01254635', 'julian.gimenez@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('flor', 'Ramirez', '2017-08-11', 'INICIAL', '4 AÑOS', 'A', 'Urb. Los Portales 012',
'03214520', 'flor.ramirez@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Mario', 'Casas', '2017-01-01', 'INICIAL', '4 AÑOS', 'A', 'Urb. Limatambo 147',
'02148542', 'mario.casas@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Natalie', 'Gomez', '2015-01-01', 'PRIMARIA', 'PRIMERO', 'A', 'Urb. Las Mercedes 201',
'21450020', 'natalie.gomez@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Samuel', 'Torres', '2015-07-01', 'PRIMARIA', 'PRIMERO', 'A', 'Av. Grau 147',
'02145120', 'samuel.torres@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Eva', 'Sandoval', '2015-04-17', 'PRIMARIA', 'PRIMERO', 'A', 'Av. Miramar 147',
'01232012', 'eva.sandoval@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Antonela', 'Malqui', '2015-06-29', 'PRIMARIA', 'PRIMERO', 'A', 'Av. Canada 117',
'09125412', 'antonela.malqui@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Fidel', 'Santos', '2015-08-11', 'PRIMARIA', 'PRIMERO', 'A', 'Av. Amazonas 745',
'02153265', 'fidel.santos@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Julisa', 'Vaques', '2015-09-09', 'PRIMARIA', 'PRIMERO', 'A', 'Av. Bandurria 145',
'02153256', 'julisa.vasques@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Sol', 'Rivarola', '2015-07-17', 'PRIMARIA', 'PRIMERO', 'A', 'Urb. Universitaria 401',
'01782354', 'sol.rivarola@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Naysha', 'Correa', '2015-10-15', 'PRIMARIA', 'PRIMERO', 'A', 'Urb. Casa Blanca 101',
'01423652', 'naysha.Correa@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Franco', 'Mandamiento', '2015-10-13', 'PRIMARIA', 'PRIMERO', 'A', 'Jr. Galvez 202',
'01963582', 'franco.mandamiento@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Wendy', 'Tamasco', '2015-01-27', 'PRIMARIA', 'PRIMERO', 'A', 'Av. Javier Prado 159',
'01432563', 'wendy.tamasco@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Rusbelt', 'Garcia', '2015-07-22', 'PRIMARIA', 'PRIMERO', 'A', 'Urb. La Villa 111',
'01259632', 'rusbelt.garcia@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Pedro', 'Castillo', '2015-07-09', 'PRIMARIA', 'PRIMERO', 'A', 'Urb. La Marina 999',
'02138578', 'pedro.castillo@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Fernando', 'Jimenez', '2015-11-01', 'PRIMARIA', 'PRIMERO', 'A', 'Urb. La villa 195',
'02992012', 'fernando.jimenez@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Luis', 'Montaner', '2015-12-15', 'PRIMARIA', 'PRIMERO', 'A', 'Av. Medio Mundo 150',
'01695847', 'luis.montaner@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Veronica', 'Luna', '2015-08-17', 'PRIMARIA', 'PRIMERO', 'A', 'Jr. La Malvina 195',
'01653624', 'veronica.luna@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Jordan', 'Luarte', '2015-06-20', 'PRIMARIA', 'PRIMERO', 'A', 'Urb. La Cantuta 119',
'01254632', 'jordan.luarte@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Katy', 'Leiva', '2014-07-28', 'PRIMARIA', 'SEGUNDO', 'A', 'Av. Trinidad 215',
'01742315', 'katy.leiva@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Nilda', 'Ortiz', '2014-08-07', 'PRIMARIA', 'SEGUNDO', 'A', 'Urb. Atahualpa 215',
'01962120', 'nilda.ortiz@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Alexandra', 'Colla', '2014-10-01', 'PRIMARIA', 'SEGUNDO', 'A', 'Av. Santa Rosa 920',
'01524103', 'ale.colla@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Zarai', 'Marreros', '2014-05-21', 'PRIMARIA', 'SEGUNDO', 'A', 'Urb. Señor de los Milagros',
'01291952', 'zarai.marreros@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Vanesa', 'Ramos', '2014-12-09', 'PRIMARIA', 'SEGUNDO', 'A', 'Av. 28 de Julio',
'01332052', 'vanesa.ramos@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Jenifer', 'Gamboa', '2014-05-28', 'PRIMARIA', 'SEGUNDO', 'A', 'Av. Sinchi Roca 001',
'01712356', 'jenifer.gamboa@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Luis', 'Pacheco', '2014-09-26', 'PRIMARIA', 'SEGUNDO', 'A', 'Av. Trinidad 215',
'01621152', 'luis.pacheco@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Juan', 'Melendes', '2014-02-18', 'PRIMARIA', 'SEGUNDO', 'A', 'Av. Trinidad 123',
'01254521', 'juan.melendes@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Rafaela', 'Gonzales', '2014-07-23', 'PRIMARIA', 'SEGUNDO', 'A', 'Av. Sipreces 254',
'01412321', 'rafaela.gonzales@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Xionara', 'Llanos', '2014-11-25', 'PRIMARIA', 'SEGUNDO', 'A', 'Av. Amansipacion 215',
'01356214', 'xiomara.llanos@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Michael', 'Flores', '2014-04-15', 'PRIMARIA', 'SEGUNDO', 'A', 'Av. Luarte 007',
'03620214', 'mayki.flores@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Rosa', 'Peres', '2014-12-14', 'PRIMARIA', 'SEGUNDO', 'A', 'Av. Manzanares 147',
'01452136', 'rosa.peres@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Manuel', 'Fuentes', '2014-09-11', 'PRIMARIA', 'SEGUNDO', 'A', 'Av. Los Girasoles 107',
'08215426', 'manuel.fuentes@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Jhon', 'Tapia', '2014-07-20', 'PRIMARIA', 'SEGUNDO', 'A', 'Av. San Juan 235',
'02486144', 'jhon.tapia@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Sonia', 'Figueroa', '2014-03-11', 'PRIMARIA', 'SEGUNDO', 'A', 'Urb. Las Palmas 007',
'014525325', 'sonia.figueroa@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Isabel', 'Molina', '2014-01-19', 'PRIMARIA', 'SEGUNDO', 'A', 'Av. La Perla 222',
'01751245', 'isabel.molina@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Alicia', 'Orellana', '2014-05-05', 'PRIMARIA', 'SEGUNDO', 'A', 'Av. Atarraya 117',
'01365596', 'alicia.Orellana@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Camila', 'Vergara', '2014-10-01', 'PRIMARIA', 'SEGUNDO', 'A', 'Av. La Marina 888',
'01662021', 'camila.vergara@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Nikol', 'pardo', '2014-03-22', 'PRIMARIA', 'SEGUNDO', 'A', 'Av. Barrantes 110',
'01523261', 'nikol.pardo@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Ursula', 'Chumbes', '2014-10-27', 'PRIMARIA', 'SEGUNDO', 'A', 'Av. Las Brisas 007',
'02152356', 'Ursula.chumbes@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Fabricio', 'Tejada', '2013-01-01', 'PRIMARIA', 'TERCERO', 'A', 'Av. Las Brisas 387',
'02152356', 'fabricio.tejada@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Erick', 'Gallegos', '2013-02-12', 'PRIMARIA', 'TERCERO', 'A', 'Av. Las Brisas 245',
'02152356', 'erick.gallegos@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Rossel', 'Mamani', '2013-04-01', 'PRIMARIA', 'TERCERO', 'A', 'Av. Las Brisas 784',
'02152356', 'rossel.mamani@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Olenka', 'Herrera', '2013-05-01', 'PRIMARIA', 'TERCERO', 'A', 'Av. Las Brisas 245',
'02152356', 'olenka.herrera@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Darwin', 'Lopez', '2013-03-01', 'PRIMARIA', 'TERCERO', 'A', 'Av. Las Brisas 154',
'02152356', 'darwin.lopez@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Misael', 'Fermin', '2013-06-01', 'PRIMARIA', 'TERCERO', 'A', 'Av. Las Brisas 222',
'02152356', 'misael.fermin@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Sarita', 'Marquina', '2013-07-01', 'PRIMARIA', 'TERCERO', 'A', 'Av. Las Brisas 455',
'02152356', 'sarita.marquina@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Judith', 'Vallanueva', '2013-08-01', 'PRIMARIA', 'TERCERO', 'A', 'Av. Las Brisas 452',
'02152356', 'judith.villanueva@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Graciela', 'Salinas', '2013-09-01', 'PRIMARIA', 'TERCERO', 'A', 'Av. Las Brisas 752',
'02152356', 'graciela.salinas@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Jessica', 'Mattos', '2013-10-01', 'PRIMARIA', 'TERCERO', 'A', 'Av. Las Brisas 365',
'02152356', 'jessica.mattos@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Lorenzo', 'Lazaro', '2013-11-01', 'PRIMARIA', 'TERCERO', 'A', 'Av. Las Brisas 741',
'02152356', 'lorenzo.lazaro@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Bernardo', 'Roncal', '2013-12-01', 'PRIMARIA', 'TERCERO', 'A', 'Av. Las Brisas 231',
'02152356', 'bernardo.roncal@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Danitza', 'Avalos', '2013-01-11', 'PRIMARIA', 'TERCERO', 'A', 'Av. Las Brisas 587',
'02152356', 'danitza.avalos@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO dbnotas.alumno
(nombres, apellidos, fecha_nac, nivel, grado, seccion, direccion,
 telefono, email, fecha_registro, fecha_modificacion, estado)
VALUES('Irma', 'Tejada', '2013-02-21', 'PRIMARIA', 'TERCERO', 'A', 'Av. Las Brisas 125',
'02152356', 'irma.tejada@gmail.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);