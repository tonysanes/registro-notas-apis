package com.app.notas.entity;

import java.util.Date;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.UpdateTimestamp;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString

@Entity
@Table(name = "alumno")
public class Alumno {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_alumno")
	private int id;
	private String nombres;
	private String apellidos;
	
	@Column(name = "fecha_nac")
	@Temporal(TemporalType.DATE)
	private Date fechaNac;
	
	private String nivel;
	private String grado;
	private String seccion;
	private String genero;
	private String direccion;
	private String telefono;
	private String email;
	
	@Basic(optional = false)
	@Column(name = "fecha_registro", insertable = false, updatable = false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date fechaRegistro;
	
	@Column(name = "fecha_modificacion")
	@UpdateTimestamp
	private Date fechaModificacion;
	
	private boolean estado =true;
}
