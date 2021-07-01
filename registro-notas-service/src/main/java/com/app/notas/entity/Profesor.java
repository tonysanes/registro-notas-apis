package com.app.notas.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.UpdateTimestamp;

@Entity
public class Profesor {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_profesor")
	private int id;
	private String nombres;
	private String apellidos;
	private String dni;
	private String direccion;
	private int telefono;
	private String email;
	@Column(name = "fecha_registro", insertable = false, updatable = false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date fechaReg;
	@Column(name = "fecha_modificacion")
	@UpdateTimestamp
	private Date fechaMod;
	private boolean estado;
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
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public int getTelefono() {
		return telefono;
	}
	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getFechaReg() {
		return fechaReg;
	}
	public void setFechaReg(Date fechaReg) {
		this.fechaReg = fechaReg;
	}
	public Date getFechaMod() {
		return fechaMod;
	}
	public void setFechaMod(Date fechaMod) {
		this.fechaMod = fechaMod;
	}
	public boolean isEstado() {
		return estado;
	}
	public void setEstado(boolean estado) {
		this.estado = estado;
	}
	public Profesor(int id, String nombres, String apellidos, String dni, String direccion, int telefono, String email,
			Date fechaReg, Date fechaMod, boolean estado) {
		super();
		this.id = id;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.dni = dni;
		this.direccion = direccion;
		this.telefono = telefono;
		this.email = email;
		this.fechaReg = fechaReg;
		this.fechaMod = fechaMod;
		this.estado = estado;
	}
	public Profesor() {
		super();
	}
	@Override
	public String toString() {
		return "Profesor [id=" + id + ", nombres=" + nombres + ", apellidos=" + apellidos + ", dni=" + dni
				+ ", direccion=" + direccion + ", telefono=" + telefono + ", email=" + email + ", fechaReg=" + fechaReg
				+ ", fechaMod=" + fechaMod + ", estado=" + estado + "]";
	}
	
	
	

}
