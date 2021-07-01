package com.app.notas.service;

import java.util.List;

import com.app.notas.entity.Profesor;

public interface ProfesorService {
	public Profesor addProfesor(Profesor profesor);
	public Profesor editProfesor(Profesor profesor);
	public boolean deletedProfesor(int id);
	public List<Profesor> findAll();
	public List<Profesor> searchByNombre(String nombre);
	public Profesor searchByDni(String dni);
	public Profesor findById(int id);

}
