CREATE TABLE alumno (
  id_alumno serial NOT NULL,
  nombres varchar(30) NULL,
  apellidos varchar(50) NULL,
  fecha_nac date NULL,
  nivel varchar(20) NULL,
  grado varchar(15) NULL,
  seccion bpchar(1) NULL,
  genero bpchar(1) NULL,
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
  genero bpchar(1) NULL,
  fecha_nacimiento timestamp NULL,
  estado bool NOT NULL DEFAULT true,
  PRIMARY KEY (id_profesor)
)

CREATE OR REPLACE VIEW dbnotas.alumno_view
AS SELECT a.id_alumno AS id,
    a.nombres,
    a.apellidos,
    concat(a.nombres, ' ', a.apellidos) AS fullname
   FROM dbnotas.alumno a;

-- Permissions

ALTER TABLE dbnotas.alumno_view OWNER TO postgres;
GRANT ALL ON TABLE dbnotas.alumno_view TO postgres;

INSERT INTO dbnotas.profesor (nombres,apellidos,dni,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero,fecha_nacimiento) VALUES
	 ('Laura','Calcinas','75268532','Av. Lasas 999','24586325   ','laura@gmail.com','2021-06-30 23:58:57.928672','2021-07-03 23:24:45.201',false,NULL,NULL),
	 ('Tadeo','Martines','25478562','Urb. Santa Catalina','1254789    ','tadeo.martines@gmail.com','2021-07-03 23:27:33.09926','2021-07-03 23:27:33.098',false,NULL,NULL);
	 
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Ariana','Sanchez','2006-01-30','SECUNDARIA','CUARTO','A','Av. La Marina 523','01323456   ','ariana.sanchez@gmail.com','2021-06-27 23:56:20.410803','2021-07-13 23:42:50.105',true,'F'),
	 ('David','Sanchez','2018-03-01','INICIAL','TERCERO','A','Calle Enrique Encinas Franco 117','16218526   ','david.sanchez@gamil.com','2021-06-27 23:56:20.398262','2021-06-27 23:56:20.398262',true,NULL),
	 ('Salvador','Sanchez','2016-02-02','INICIAL','QUINTO','A','Calle Enrique Encinas Franco 117','15236847   ','salvador.sanchez@hotmail.com','2021-06-27 23:56:20.4075','2021-06-27 23:56:20.4075',true,NULL),
	 ('Ana','Peres','2017-09-09','INICIAL','4 AÑOS','A','Av. Grau 123','12563548   ','ana.peres@gmail.com','2021-06-27 23:56:20.413933','2021-06-27 23:56:20.413933',true,NULL),
	 ('Ana','Morales','2016-05-28','INICIAL','5 AÑOS','A','Av. La Caleta 522','57563548   ','ana.morales@gmail.com','2021-06-27 23:56:20.418584','2021-06-27 23:56:20.418584',true,NULL),
	 ('Jose','Rios','2017-05-28','INICIAL','4 AÑOS','A','Jr. vidal 544','57563548   ','jose.rios@gmail.com','2021-06-27 23:56:20.42274','2021-06-27 23:56:20.42274',true,NULL),
	 ('Cesar','Borja','2017-05-28','INICIAL','4 AÑOS','A','Jr. Mercedes 222','62243523   ','jose.rios@gmail.com','2021-06-27 23:56:20.430109','2021-06-27 23:56:20.430109',true,NULL),
	 ('Angel','Leiva','2017-10-28','INICIAL','4 AÑOS','A','Jr. Naval 969','25143523   ','angel.leiva@gmail.com','2021-06-27 23:56:20.433576','2021-06-27 23:56:20.433576',true,NULL),
	 ('Fernanda','Sosa','2016-11-12','INICIAL','5 AÑOS','A','Jr. Manchurria 412','31141165   ','fer.sosa@gmail.com','2021-06-27 23:56:20.436157','2021-06-27 23:56:20.436157',true,NULL),
	 ('Leidy','Belen','2016-01-22','INICIAL','5 AÑOS','A','Jr. La Cruz 211','24455122   ','leidy.belen@gmail.com','2021-06-27 23:56:20.439216','2021-06-27 23:56:20.439216',true,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Victor','Montoya','2016-07-12','INICIAL','5 AÑOS','A','Jr. Bomberos 352','215425122  ','victor.montoya@gmail.com','2021-06-27 23:56:20.441244','2021-06-27 23:56:20.441244',true,NULL),
	 ('Mario','Villa','2016-01-22','INICIAL','5 AÑOS','A','Av. Ferrandes 211','25631425   ','mario.villa@gmail.com','2021-06-27 23:56:20.444074','2021-06-27 23:56:20.444074',true,NULL),
	 ('Daniela','Casas','2016-08-22','INICIAL','5 AÑOS','A','Av. Tarres 311','22156578   ','dani.casas@gmail.com','2021-06-27 23:56:20.447059','2021-06-27 23:56:20.447059',true,NULL),
	 ('Irvin','Muños','2016-12-21','INICIAL','5 AÑOS','A','Urb. Los girasoles','21453658   ','irvin.muños@gmail.com','2021-06-27 23:56:20.449615','2021-06-27 23:56:20.449615',true,NULL),
	 ('Alison','Guerra','2016-10-01','INICIAL','5 AÑOS','A','Av. Roca 777','20121102   ','alison.guerra@gmail.com','2021-06-27 23:56:20.454979','2021-06-27 23:56:20.454979',true,NULL),
	 ('Flavia','Duran','2016-02-18','INICIAL','5 AÑOS','A','Av. Villa 144','25631425   ','flavia.duran@gmail.com','2021-06-27 23:56:20.460703','2021-06-27 23:56:20.460703',true,NULL),
	 ('Flavio','Panana','2016-09-15','INICIAL','5 AÑOS','A','Av. Blanca 257','01472102   ','flavio.panana@gmail.com','2021-06-27 23:56:20.464221','2021-06-27 23:56:20.464221',true,NULL),
	 ('Martin','Roca','2016-06-07','INICIAL','5 AÑOS','A','Av. Naval 451','26651251   ','martin.roca@gmail.com','2021-06-27 23:56:20.467174','2021-06-27 23:56:20.467174',true,NULL),
	 ('Laura','Rivera','2016-04-04','INICIAL','5 AÑOS','A','Av. Aspero 012','02452631   ','laura.rivera@gmail.com','2021-06-27 23:56:20.486275','2021-06-27 23:56:20.486275',true,NULL),
	 ('Silvana','Loza','2016-08-21','INICIAL','5 AÑOS','A','Av. Palermo 520','07241291   ','silvana.loza@gmail.com','2021-06-27 23:56:20.489874','2021-06-27 23:56:20.489874',true,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Karina','Mendes','2017-04-23','INICIAL','4 AÑOS','A','Av. Sierra 332','09214526   ','karina.mendes@gmail.com','2021-06-27 23:56:20.492532','2021-06-27 23:56:20.492532',true,NULL),
	 ('Xiomara','Silva','2017-12-01','INICIAL','4 AÑOS','A','Jr. Mirador 652','31024521   ','xiomara.silva@gmail.com','2021-06-27 23:56:20.49518','2021-06-27 23:56:20.49518',true,NULL),
	 ('Thania','Jara','2017-11-23','INICIAL','4 AÑOS','A','Av. Kilometro 231','02365214   ','thania.jara@gmail.com','2021-06-27 23:56:20.498094','2021-06-27 23:56:20.498094',true,NULL),
	 ('Juan','Castillo','2017-05-21','INICIAL','4 AÑOS','A','Jr. kilometro 111','08253164   ','juan.castillo@gmail.com','2021-06-27 23:56:20.500021','2021-06-27 23:56:20.500021',true,NULL),
	 ('Tamara','Lopez','2017-07-28','INICIAL','4 AÑOS','A','Jr. La Paz 511','01532612   ','tamara.lopez@gmail.com','2021-06-27 23:56:20.503274','2021-06-27 23:56:20.503274',true,NULL),
	 ('Kiara','Zapata','2017-01-01','INICIAL','4 AÑOS','A','Jr. La Villa 251','02153698   ','kiara.zapata@gmail.com','2021-06-27 23:56:20.506783','2021-06-27 23:56:20.506783',true,NULL),
	 ('Angie','Saman','2017-09-05','INICIAL','4 AÑOS','A','Jr. Primavera 177','31526321   ','angie.saman@gmail.com','2021-06-27 23:56:20.509114','2021-06-27 23:56:20.509114',true,NULL),
	 ('Tamara','Lopez','2017-07-28','INICIAL','4 AÑOS','A','Jr. La Paz 511','01532612   ','tamara.lopez@gmail.com','2021-06-27 23:56:20.510581','2021-06-27 23:56:20.510581',true,NULL),
	 ('Julian','Gimenez','2017-07-15','INICIAL','4 AÑOS','A','Urb. Los Portales 888','01254635   ','julian.gimenez@gmail.com','2021-06-27 23:56:20.512966','2021-06-27 23:56:20.512966',true,NULL),
	 ('flor','Ramirez','2017-08-11','INICIAL','4 AÑOS','A','Urb. Los Portales 012','03214520   ','flor.ramirez@gmail.com','2021-06-27 23:56:20.515948','2021-06-27 23:56:20.515948',true,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Mario','Casas','2017-01-01','INICIAL','4 AÑOS','A','Urb. Limatambo 147','02148542   ','mario.casas@gmail.com','2021-06-27 23:56:20.517734','2021-06-27 23:56:20.517734',true,NULL),
	 ('Natalie','Gomez','2015-01-01','PRIMARIA','6 AÑOS','A','Urb. Las Mercedes 201','21450020   ','natalie.gomez@gmail.com','2021-06-27 23:56:20.520766','2021-06-27 23:56:20.520766',true,NULL),
	 ('Samuel','Torres','2015-07-01','PRIMARIA','6 AÑOS','A','Av. Grau 147','02145120   ','samuel.torres@gmail.com','2021-06-27 23:56:20.523969','2021-06-27 23:56:20.523969',true,NULL),
	 ('Eva','Sandoval','2015-04-17','PRIMARIA','6 AÑOS','A','Av. Miramar 147','01232012   ','eva.sandoval@gmail.com','2021-06-27 23:56:20.526173','2021-06-27 23:56:20.526173',true,NULL),
	 ('Antonela','Malqui','2015-06-29','PRIMARIA','6 AÑOS','A','Av. Canada 117','09125412   ','antonela.malqui@gmail.com','2021-06-27 23:56:20.531828','2021-06-27 23:56:20.531828',true,NULL),
	 ('Fidel','Santos','2015-08-11','PRIMARIA','6 AÑOS','A','Av. Amazonas 745','02153265   ','fidel.santos@gmail.com','2021-06-27 23:56:20.535394','2021-06-27 23:56:20.535394',true,NULL),
	 ('Julisa','Vaques','2015-09-09','PRIMARIA','6 AÑOS','A','Av. Bandurria 145','02153256   ','julisa.vasques@gmail.com','2021-06-27 23:56:20.539168','2021-06-27 23:56:20.539168',true,NULL),
	 ('Sol','Rivarola','2015-07-17','PRIMARIA','6 AÑOS','A','Urb. Universitaria 401','01782354   ','sol.rivarola@gmail.com','2021-06-27 23:56:20.542078','2021-06-27 23:56:20.542078',true,NULL),
	 ('Naysha','Correa','2015-10-15','PRIMARIA','6 AÑOS','A','Urb. Casa Blanca 101','01423652   ','naysha.Correa@gmail.com','2021-06-27 23:56:20.54506','2021-06-27 23:56:20.54506',true,NULL),
	 ('Franco','Mandamiento','2015-10-13','PRIMARIA','6 AÑOS','A','Jr. Galvez 202','01963582   ','franco.mandamiento@gmail.com','2021-06-27 23:56:20.547102','2021-06-27 23:56:20.547102',true,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Wendy','Tamasco','2015-01-27','PRIMARIA','6 AÑOS','A','Av. Javier Prado 159','01432563   ','wendy.tamasco@gmail.com','2021-06-27 23:56:20.548635','2021-06-27 23:56:20.548635',true,NULL),
	 ('Rusbelt','Garcia','2015-07-22','PRIMARIA','6 AÑOS','A','Urb. La Villa 111','01259632   ','rusbelt.garcia@gmail.com','2021-06-27 23:56:20.550962','2021-06-27 23:56:20.550962',true,NULL),
	 ('Pedro','Castillo','2015-07-09','PRIMARIA','6 AÑOS','A','Urb. La Marina 999','02138578   ','pedro.castillo@gmail.com','2021-06-27 23:56:20.557565','2021-06-27 23:56:20.557565',true,NULL),
	 ('Fernando','Jimenez','2015-11-01','PRIMARIA','6 AÑOS','A','Urb. La villa 195','02992012   ','fernando.jimenez@gmail.com','2021-06-27 23:56:20.559551','2021-06-27 23:56:20.559551',true,NULL),
	 ('Luis','Montaner','2015-12-15','PRIMARIA','6 AÑOS','A','Av. Medio Mundo 150','01695847   ','luis.montaner@gmail.com','2021-06-27 23:56:20.561071','2021-06-27 23:56:20.561071',true,NULL),
	 ('Veronica','Luna','2015-08-17','PRIMARIA','6 AÑOS','A','Jr. La Malvina 195','01653624   ','veronica.luna@gmail.com','2021-06-27 23:56:20.563337','2021-06-27 23:56:20.563337',true,NULL),
	 ('Jordan','Luarte','2015-06-20','PRIMARIA','6 AÑOS','A','Urb. La Cantuta 119','01254632   ','jordan.luarte@gmail.com','2021-06-27 23:56:20.567771','2021-06-27 23:56:20.567771',true,NULL),
	 ('Katy','Leiva','2014-07-28','PRIMARIA','7 AÑOS','A','Av. Trinidad 215','01742315   ','katy.leiva@gmail.com','2021-06-27 23:56:20.571315','2021-06-27 23:56:20.571315',true,NULL),
	 ('Nilda','Ortiz','2014-08-07','PRIMARIA','7 AÑOS','A','Urb. Atahualpa 215','01962120   ','nilda.ortiz@gmail.com','2021-06-27 23:56:20.578067','2021-06-27 23:56:20.578067',true,NULL),
	 ('Alexandra','Colla','2014-10-01','PRIMARIA','7 AÑOS','A','Av. Santa Rosa 920','01524103   ','ale.colla@gmail.com','2021-06-27 23:56:20.58454','2021-06-27 23:56:20.58454',true,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Zarai','Marreros','2014-05-21','PRIMARIA','7 AÑOS','A','Urb. Señor de los Milagros','01291952   ','zarai.marreros@gmail.com','2021-06-27 23:56:20.587635','2021-06-27 23:56:20.587635',true,NULL),
	 ('Vanesa','Ramos','2014-12-09','PRIMARIA','7 AÑOS','A','Av. 28 de Julio','01332052   ','vanesa.ramos@gmail.com','2021-06-27 23:56:20.589863','2021-06-27 23:56:20.589863',true,NULL),
	 ('Jenifer','Gamboa','2014-05-28','PRIMARIA','7 AÑOS','A','Av. Sinchi Roca 001','01712356   ','jenifer.gamboa@gmail.com','2021-06-27 23:56:20.593109','2021-06-27 23:56:20.593109',true,NULL),
	 ('Luis','Pacheco','2014-09-26','PRIMARIA','7 AÑOS','A','Av. Trinidad 215','01621152   ','luis.pacheco@gmail.com','2021-06-27 23:56:20.59699','2021-06-27 23:56:20.59699',true,NULL),
	 ('Juan','Melendes','2014-02-18','PRIMARIA','7 AÑOS','A','Av. Trinidad 123','01254521   ','juan.melendes@gmail.com','2021-06-27 23:56:20.599083','2021-06-27 23:56:20.599083',true,NULL),
	 ('Rafaela','Gonzales','2014-07-23','PRIMARIA','7 AÑOS','A','Av. Sipreces 254','01412321   ','rafaela.gonzales@gmail.com','2021-06-27 23:56:20.601463','2021-06-27 23:56:20.601463',true,NULL),
	 ('Xionara','Llanos','2014-11-25','PRIMARIA','7 AÑOS','A','Av. Amansipacion 215','01356214   ','xiomara.llanos@gmail.com','2021-06-27 23:56:20.604712','2021-06-27 23:56:20.604712',true,NULL),
	 ('Michael','Flores','2014-04-15','PRIMARIA','7 AÑOS','A','Av. Luarte 007','03620214   ','mayki.flores@gmail.com','2021-06-27 23:56:20.606625','2021-06-27 23:56:20.606625',true,NULL),
	 ('Rosa','Peres','2014-12-14','PRIMARIA','7 AÑOS','A','Av. Manzanares 147','01452136   ','rosa.peres@gmail.com','2021-06-27 23:56:20.609506','2021-06-27 23:56:20.609506',true,NULL),
	 ('Manuel','Fuentes','2014-09-11','PRIMARIA','7 AÑOS','A','Av. Los Girasoles 107','08215426   ','manuel.fuentes@gmail.com','2021-06-27 23:56:20.61098','2021-06-27 23:56:20.61098',true,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Jhon','Tapia','2014-07-20','PRIMARIA','7 AÑOS','A','Av. San Juan 235','02486144   ','jhon.tapia@gmail.com','2021-06-27 23:56:20.617474','2021-06-27 23:56:20.617474',true,NULL),
	 ('Sonia','Figueroa','2014-03-11','PRIMARIA','7 AÑOS','A','Urb. Las Palmas 007','014525325  ','sonia.figueroa@gmail.com','2021-06-27 23:56:20.623398','2021-06-27 23:56:20.623398',true,NULL),
	 ('Isabel','Molina','2014-01-19','PRIMARIA','7 AÑOS','A','Av. La Perla 222','01751245   ','isabel.molina@gmail.com','2021-06-27 23:56:20.626373','2021-06-27 23:56:20.626373',true,NULL),
	 ('Alicia','Orellana','2014-05-05','PRIMARIA','7 AÑOS','A','Av. Atarraya 117','01365596   ','alicia.Orellana@gmail.com','2021-06-27 23:56:20.628256','2021-06-27 23:56:20.628256',true,NULL),
	 ('Camila','Vergara','2014-10-01','PRIMARIA','7 AÑOS','A','Av. La Marina 888','01662021   ','camila.vergara@gmail.com','2021-06-27 23:56:20.630473','2021-06-27 23:56:20.630473',true,NULL),
	 ('Nikol','pardo','2014-03-22','PRIMARIA','7 AÑOS','A','Av. Barrantes 110','01523261   ','nikol.pardo@gmail.com','2021-06-27 23:56:20.633003','2021-06-27 23:56:20.633003',true,NULL),
	 ('Ursula','Chumbes','2014-10-27','PRIMARIA','7 AÑOS','A','Av. Las Brisas 007','02152356   ','Ursula.chumbes@gmail.com','2021-06-27 23:56:20.635802','2021-06-27 23:56:20.635802',true,NULL),
	 ('Julian','Gimenez','2017-07-15','INICIAL','4 AÑOS','A','Urb. Los Portales 888','01254635   ','julian.gimenez@gmail.com','2021-06-27 23:56:20.641407','2021-06-27 23:56:20.641407',true,NULL),
	 ('flor','Ramirez','2017-08-11','INICIAL','4 AÑOS','A','Urb. Los Portales 012','03214520   ','flor.ramirez@gmail.com','2021-06-27 23:56:20.644573','2021-06-27 23:56:20.644573',true,NULL),
	 ('Mario','Casas','2017-01-01','INICIAL','4 AÑOS','A','Urb. Limatambo 147','02148542   ','mario.casas@gmail.com','2021-06-27 23:56:20.648252','2021-06-27 23:56:20.648252',true,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Natalie','Gomez','2015-01-01','PRIMARIA','PRIMERO','A','Urb. Las Mercedes 201','21450020   ','natalie.gomez@gmail.com','2021-06-27 23:56:20.650116','2021-06-27 23:56:20.650116',true,NULL),
	 ('Samuel','Torres','2015-07-01','PRIMARIA','PRIMERO','A','Av. Grau 147','02145120   ','samuel.torres@gmail.com','2021-06-27 23:56:20.652253','2021-06-27 23:56:20.652253',true,NULL),
	 ('Eva','Sandoval','2015-04-17','PRIMARIA','PRIMERO','A','Av. Miramar 147','01232012   ','eva.sandoval@gmail.com','2021-06-27 23:56:20.656232','2021-06-27 23:56:20.656232',true,NULL),
	 ('Antonela','Malqui','2015-06-29','PRIMARIA','PRIMERO','A','Av. Canada 117','09125412   ','antonela.malqui@gmail.com','2021-06-27 23:56:20.659602','2021-06-27 23:56:20.659602',true,NULL),
	 ('Fidel','Santos','2015-08-11','PRIMARIA','PRIMERO','A','Av. Amazonas 745','02153265   ','fidel.santos@gmail.com','2021-06-27 23:56:20.662341','2021-06-27 23:56:20.662341',true,NULL),
	 ('Julisa','Vaques','2015-09-09','PRIMARIA','PRIMERO','A','Av. Bandurria 145','02153256   ','julisa.vasques@gmail.com','2021-06-27 23:56:20.664574','2021-06-27 23:56:20.664574',true,NULL),
	 ('Sol','Rivarola','2015-07-17','PRIMARIA','PRIMERO','A','Urb. Universitaria 401','01782354   ','sol.rivarola@gmail.com','2021-06-27 23:56:20.668184','2021-06-27 23:56:20.668184',true,NULL),
	 ('Naysha','Correa','2015-10-15','PRIMARIA','PRIMERO','A','Urb. Casa Blanca 101','01423652   ','naysha.Correa@gmail.com','2021-06-27 23:56:20.670357','2021-06-27 23:56:20.670357',true,NULL),
	 ('Franco','Mandamiento','2015-10-13','PRIMARIA','PRIMERO','A','Jr. Galvez 202','01963582   ','franco.mandamiento@gmail.com','2021-06-27 23:56:20.674902','2021-06-27 23:56:20.674902',true,NULL),
	 ('Wendy','Tamasco','2015-01-27','PRIMARIA','PRIMERO','A','Av. Javier Prado 159','01432563   ','wendy.tamasco@gmail.com','2021-06-27 23:56:20.679312','2021-06-27 23:56:20.679312',true,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Rusbelt','Garcia','2015-07-22','PRIMARIA','PRIMERO','A','Urb. La Villa 111','01259632   ','rusbelt.garcia@gmail.com','2021-06-27 23:56:20.683514','2021-06-27 23:56:20.683514',true,NULL),
	 ('Pedro','Castillo','2015-07-09','PRIMARIA','PRIMERO','A','Urb. La Marina 999','02138578   ','pedro.castillo@gmail.com','2021-06-27 23:56:20.686159','2021-06-27 23:56:20.686159',true,NULL),
	 ('Fernando','Jimenez','2015-11-01','PRIMARIA','PRIMERO','A','Urb. La villa 195','02992012   ','fernando.jimenez@gmail.com','2021-06-27 23:56:20.690336','2021-06-27 23:56:20.690336',true,NULL),
	 ('Luis','Montaner','2015-12-15','PRIMARIA','PRIMERO','A','Av. Medio Mundo 150','01695847   ','luis.montaner@gmail.com','2021-06-27 23:56:20.693302','2021-06-27 23:56:20.693302',true,NULL),
	 ('Veronica','Luna','2015-08-17','PRIMARIA','PRIMERO','A','Jr. La Malvina 195','01653624   ','veronica.luna@gmail.com','2021-06-27 23:56:20.697255','2021-06-27 23:56:20.697255',true,NULL),
	 ('Jordan','Luarte','2015-06-20','PRIMARIA','PRIMERO','A','Urb. La Cantuta 119','01254632   ','jordan.luarte@gmail.com','2021-06-27 23:56:20.701909','2021-06-27 23:56:20.701909',true,NULL),
	 ('Katy','Leiva','2014-07-28','PRIMARIA','SEGUNDO','A','Av. Trinidad 215','01742315   ','katy.leiva@gmail.com','2021-06-27 23:56:20.705135','2021-06-27 23:56:20.705135',true,NULL),
	 ('Nilda','Ortiz','2014-08-07','PRIMARIA','SEGUNDO','A','Urb. Atahualpa 215','01962120   ','nilda.ortiz@gmail.com','2021-06-27 23:56:20.707731','2021-06-27 23:56:20.707731',true,NULL),
	 ('Alexandra','Colla','2014-10-01','PRIMARIA','SEGUNDO','A','Av. Santa Rosa 920','01524103   ','ale.colla@gmail.com','2021-06-27 23:56:20.709605','2021-06-27 23:56:20.709605',true,NULL),
	 ('Zarai','Marreros','2014-05-21','PRIMARIA','SEGUNDO','A','Urb. Señor de los Milagros','01291952   ','zarai.marreros@gmail.com','2021-06-27 23:56:20.711667','2021-06-27 23:56:20.711667',true,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Vanesa','Ramos','2014-12-09','PRIMARIA','SEGUNDO','A','Av. 28 de Julio','01332052   ','vanesa.ramos@gmail.com','2021-06-27 23:56:20.714165','2021-06-27 23:56:20.714165',true,NULL),
	 ('Jenifer','Gamboa','2014-05-28','PRIMARIA','SEGUNDO','A','Av. Sinchi Roca 001','01712356   ','jenifer.gamboa@gmail.com','2021-06-27 23:56:20.716039','2021-06-27 23:56:20.716039',true,NULL),
	 ('Luis','Pacheco','2014-09-26','PRIMARIA','SEGUNDO','A','Av. Trinidad 215','01621152   ','luis.pacheco@gmail.com','2021-06-27 23:56:20.718019','2021-06-27 23:56:20.718019',true,NULL),
	 ('Juan','Melendes','2014-02-18','PRIMARIA','SEGUNDO','A','Av. Trinidad 123','01254521   ','juan.melendes@gmail.com','2021-06-27 23:56:20.720675','2021-06-27 23:56:20.720675',true,NULL),
	 ('Rafaela','Gonzales','2014-07-23','PRIMARIA','SEGUNDO','A','Av. Sipreces 254','01412321   ','rafaela.gonzales@gmail.com','2021-06-27 23:56:20.724908','2021-06-27 23:56:20.724908',true,NULL),
	 ('Xionara','Llanos','2014-11-25','PRIMARIA','SEGUNDO','A','Av. Amansipacion 215','01356214   ','xiomara.llanos@gmail.com','2021-06-27 23:56:20.726868','2021-06-27 23:56:20.726868',true,NULL),
	 ('Michael','Flores','2014-04-15','PRIMARIA','SEGUNDO','A','Av. Luarte 007','03620214   ','mayki.flores@gmail.com','2021-06-27 23:56:20.728617','2021-06-27 23:56:20.728617',true,NULL),
	 ('Rosa','Peres','2014-12-14','PRIMARIA','SEGUNDO','A','Av. Manzanares 147','01452136   ','rosa.peres@gmail.com','2021-06-27 23:56:20.730544','2021-06-27 23:56:20.730544',true,NULL),
	 ('Manuel','Fuentes','2014-09-11','PRIMARIA','SEGUNDO','A','Av. Los Girasoles 107','08215426   ','manuel.fuentes@gmail.com','2021-06-27 23:56:20.732704','2021-06-27 23:56:20.732704',true,NULL),
	 ('Jhon','Tapia','2014-07-20','PRIMARIA','SEGUNDO','A','Av. San Juan 235','02486144   ','jhon.tapia@gmail.com','2021-06-27 23:56:20.73579','2021-06-27 23:56:20.73579',true,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Sonia','Figueroa','2014-03-11','PRIMARIA','SEGUNDO','A','Urb. Las Palmas 007','014525325  ','sonia.figueroa@gmail.com','2021-06-27 23:56:20.738542','2021-06-27 23:56:20.738542',true,NULL),
	 ('Isabel','Molina','2014-01-19','PRIMARIA','SEGUNDO','A','Av. La Perla 222','01751245   ','isabel.molina@gmail.com','2021-06-27 23:56:20.741836','2021-06-27 23:56:20.741836',true,NULL),
	 ('Alicia','Orellana','2014-05-05','PRIMARIA','SEGUNDO','A','Av. Atarraya 117','01365596   ','alicia.Orellana@gmail.com','2021-06-27 23:56:20.744386','2021-06-27 23:56:20.744386',true,NULL),
	 ('Camila','Vergara','2014-10-01','PRIMARIA','SEGUNDO','A','Av. La Marina 888','01662021   ','camila.vergara@gmail.com','2021-06-27 23:56:20.746728','2021-06-27 23:56:20.746728',true,NULL),
	 ('Nikol','pardo','2014-03-22','PRIMARIA','SEGUNDO','A','Av. Barrantes 110','01523261   ','nikol.pardo@gmail.com','2021-06-27 23:56:20.749283','2021-06-27 23:56:20.749283',true,NULL),
	 ('Ursula','Chumbes','2014-10-27','PRIMARIA','SEGUNDO','A','Av. Las Brisas 007','02152356   ','Ursula.chumbes@gmail.com','2021-06-27 23:56:20.751544','2021-06-27 23:56:20.751544',true,NULL),
	 ('Fabricio','Tejada','2013-01-01','PRIMARIA','TERCERO','A','Av. Las Brisas 387','02152356   ','fabricio.tejada@gmail.com','2021-06-27 23:56:20.754631','2021-06-27 23:56:20.754631',true,NULL),
	 ('Erick','Gallegos','2013-02-12','PRIMARIA','TERCERO','A','Av. Las Brisas 245','02152356   ','erick.gallegos@gmail.com','2021-06-27 23:56:20.757027','2021-06-27 23:56:20.757027',true,NULL),
	 ('Rossel','Mamani','2013-04-01','PRIMARIA','TERCERO','A','Av. Las Brisas 784','02152356   ','rossel.mamani@gmail.com','2021-06-27 23:56:20.758888','2021-06-27 23:56:20.758888',true,NULL),
	 ('Olenka','Herrera','2013-05-01','PRIMARIA','TERCERO','A','Av. Las Brisas 245','02152356   ','olenka.herrera@gmail.com','2021-06-27 23:56:20.760658','2021-06-27 23:56:20.760658',true,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Darwin','Lopez','2013-03-01','PRIMARIA','TERCERO','A','Av. Las Brisas 154','02152356   ','darwin.lopez@gmail.com','2021-06-27 23:56:20.763736','2021-06-27 23:56:20.763736',true,NULL),
	 ('Misael','Fermin','2013-06-01','PRIMARIA','TERCERO','A','Av. Las Brisas 222','02152356   ','misael.fermin@gmail.com','2021-06-27 23:56:20.767283','2021-06-27 23:56:20.767283',true,NULL),
	 ('Sarita','Marquina','2013-07-01','PRIMARIA','TERCERO','A','Av. Las Brisas 455','02152356   ','sarita.marquina@gmail.com','2021-06-27 23:56:20.769693','2021-06-27 23:56:20.769693',true,NULL),
	 ('Judith','Vallanueva','2013-08-01','PRIMARIA','TERCERO','A','Av. Las Brisas 452','02152356   ','judith.villanueva@gmail.com','2021-06-27 23:56:20.774917','2021-06-27 23:56:20.774917',true,NULL),
	 ('Graciela','Salinas','2013-09-01','PRIMARIA','TERCERO','A','Av. Las Brisas 752','02152356   ','graciela.salinas@gmail.com','2021-06-27 23:56:20.776914','2021-06-27 23:56:20.776914',true,NULL),
	 ('Jessica','Mattos','2013-10-01','PRIMARIA','TERCERO','A','Av. Las Brisas 365','02152356   ','jessica.mattos@gmail.com','2021-06-27 23:56:20.778415','2021-06-27 23:56:20.778415',true,NULL),
	 ('Lorenzo','Lazaro','2013-11-01','PRIMARIA','TERCERO','A','Av. Las Brisas 741','02152356   ','lorenzo.lazaro@gmail.com','2021-06-27 23:56:20.779985','2021-06-27 23:56:20.779985',true,NULL),
	 ('Bernardo','Roncal','2013-12-01','PRIMARIA','TERCERO','A','Av. Las Brisas 231','02152356   ','bernardo.roncal@gmail.com','2021-06-27 23:56:20.78159','2021-06-27 23:56:20.78159',true,NULL),
	 ('Danitza','Avalos','2013-01-11','PRIMARIA','TERCERO','A','Av. Las Brisas 587','02152356   ','danitza.avalos@gmail.com','2021-06-27 23:56:20.784373','2021-06-27 23:56:20.784373',true,NULL),
	 ('Irma','Tejada','2013-02-21','PRIMARIA','TERCERO','A','Av. Las Brisas 125','02152356   ','irma.tejada@gmail.com','2021-06-27 23:56:20.786558','2021-06-27 23:56:20.786558',true,NULL);
INSERT INTO dbnotas.alumno (nombres,apellidos,fecha_nac,nivel,grado,seccion,direccion,telefono,email,fecha_registro,fecha_modificacion,estado,genero) VALUES
	 ('Alicia','Valverde','2017-02-14','INICIAL','4 AÑOS','A','Av. Siempre viva 159','01254789   ','alicia.valverde@gmail.com','2021-07-13 23:44:26.729431','2021-07-13 23:44:26.725',true,'F');
