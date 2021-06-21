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

INSERT INTO alumno VALUES 
(1,'David','Sanchez','2018-03-01','INICIAL','TERCERO','A','Calle Enrique Encinas Franco 117','16218526','david.sanchez@gamil.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,true),
(2,'Salvador','Sanchez','2016-02-02','INICIAL','QUINTO','A','Calle Enrique Encinas Franco 117','15236847','salvador.sanchez@hotmail.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,true),
(3,'Ariana','Sanchez','2006-01-30','SECUNDARIA','CUARTO','A','test','01323456','ariana.sanchez@gmail.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,true);