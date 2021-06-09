package com.app.notas.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Alumno {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_alumno")
	private int id;
	private String nombres;
	private String apellidos;
	@Column(name = "fecha_nac")
	private Date fechaNac;
	private String nivel;
	private String grado;
	private String seccion;
	private String direccion;
	private String telefono;
	private String email;
	@Column(name = "fecha_registro")
	private Date fechaRegistro;
	@Column(name = "fecha_modificacion")
	private Date fechaModificacion;
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
	public Date getFechaNac() {
		return fechaNac;
	}
	public void setFechaNac(Date fechaNac) {
		this.fechaNac = fechaNac;
	}
	public String getNivel() {
		return nivel;
	}
	public void setNivel(String nivel) {
		this.nivel = nivel;
	}
	public String getGrado() {
		return grado;
	}
	public void setGrado(String grado) {
		this.grado = grado;
	}
	public String getSeccion() {
		return seccion;
	}
	public void setSeccion(String seccion) {
		this.seccion = seccion;
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
	public Date getFechaRegistro() {
		return fechaRegistro;
	}
	public void setFechaRegistro(Date fechaRegistro) {
		this.fechaRegistro = fechaRegistro;
	}
	public Date getFechaModificacion() {
		return fechaModificacion;
	}
	public void setFechaModificacion(Date fechaModificacion) {
		this.fechaModificacion = fechaModificacion;
	}
	public boolean isEstado() {
		return estado;
	}
	public void setEstado(boolean estado) {
		this.estado = estado;
	}
	public Alumno(int id, String nombres, String apellidos, Date fechaNac, String nivel, String grado, String seccion,
			String direccion, String telefono, String email, Date fechaRegistro, Date fechaModificacion,
			boolean estado) {
		super();
		this.id = id;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.fechaNac = fechaNac;
		this.nivel = nivel;
		this.grado = grado;
		this.seccion = seccion;
		this.direccion = direccion;
		this.telefono = telefono;
		this.email = email;
		this.fechaRegistro = fechaRegistro;
		this.fechaModificacion = fechaModificacion;
		this.estado = estado;
	}
	public Alumno() {
		super();
	}
	@Override
	public String toString() {
		return "Alumno [id=" + id + ", nombres=" + nombres + ", apellidos=" + apellidos + ", fechaNac=" + fechaNac
				+ ", nivel=" + nivel + ", grado=" + grado + ", seccion=" + seccion + ", direccion=" + direccion
				+ ", telefono=" + telefono + ", email=" + email + ", fechaRegistro=" + fechaRegistro
				+ ", fechaModificacion=" + fechaModificacion + ", estado=" + estado + "]";
	}
	
	

}
