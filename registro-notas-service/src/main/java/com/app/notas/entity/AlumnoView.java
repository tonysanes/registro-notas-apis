package com.app.notas.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "alumno_view")
public class AlumnoView {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String nombres;
	private String apellidos;
	private String fullname;
	public AlumnoView() {
		super();
	}
	public AlumnoView(int id, String nombres, String apellidos, String fullname) {
		super();
		this.id = id;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.fullname = fullname;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombres() {
		return nombres;
	}
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	@Override
	public String toString() {
		return "AlumnoView [id=" + id + ", nombres=" + nombres + ", apellidos=" + apellidos + ", fullname=" + fullname
				+ "]";
	}
	
}
