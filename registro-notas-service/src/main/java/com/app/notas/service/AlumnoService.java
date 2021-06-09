package com.app.notas.service;

import java.util.List;

import com.app.notas.entity.Alumno;

public interface AlumnoService {
	public Alumno addAlumno(Alumno alumno);
	public Alumno editAlumno(Alumno alumno);
	public boolean deletedAlumno(int id);
	public List<Alumno> findAll();
	public List<Alumno> searchByNombre(String nombre);

}
