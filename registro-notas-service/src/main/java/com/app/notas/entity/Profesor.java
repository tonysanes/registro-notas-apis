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
public class Profesor {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_profesor")
	private int id;
	private String nombres;
	private String apellidos;
	@Column(name = "fecha_nacimiento")
	@Temporal(TemporalType.DATE)
	private Date fechaNac;
	private String dni;
	private String direccion;
	private String telefono;
	private String email;
	@Basic(optional = false)
	@Column(name = "fecha_registro", insertable = false, updatable = false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date fechaReg;
	@Column(name = "fecha_modificacion")
	@UpdateTimestamp
	private Date fechaMod;
	private String genero;
	private boolean estado;
}
