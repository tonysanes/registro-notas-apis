package com.app.notas.entity;

import java.util.Date;

import jakarta.persistence.*;

import org.hibernate.annotations.UpdateTimestamp;


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
	
	
	public Date getFechaNac() {
		return fechaNac;
	}
	public void setFechaNac(Date fechaNac) {
		this.fechaNac = fechaNac;
	}
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
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
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
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
	@Override
	public String toString() {
		return "Profesor [id=" + id + ", nombres=" + nombres + ", apellidos=" + apellidos + ", dni=" + dni
				+ ", direccion=" + direccion + ", telefono=" + telefono + ", email=" + email + ", fechaReg=" + fechaReg
				+ ", fechaMod=" + fechaMod + ", fechaNac=" + fechaNac + ", genero=" + genero + ", estado=" + estado
				+ "]";
	}
	public Profesor(int id, String nombres, String apellidos, String dni, String direccion, String telefono, String email,
			Date fechaReg, Date fechaMod, Date fechaNac, String genero, boolean estado) {
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
		this.fechaNac = fechaNac;
		this.genero = genero;
		this.estado = estado;
	}
	public Profesor() {
		super();
	}
	
	
	
	
	

}
