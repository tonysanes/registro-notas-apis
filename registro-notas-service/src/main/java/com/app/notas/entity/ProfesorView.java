package com.app.notas.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "profesor_view")
public class ProfesorView {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String nombres;
	private String apellidos;
	private String fullname;
	public ProfesorView() {
		super();
	}
	public ProfesorView(int id, String nombres, String apellidos, String fullname) {
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
		return "ProfesorView [id=" + id + ", nombres=" + nombres + ", apellidos=" + apellidos + ", fullname=" + fullname
				+ "]";
	}
	
}
