package com.app.notas.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.app.notas.entity.Profesor;
import com.app.notas.entity.ProfesorView;

public interface ProfesorService {
	public Profesor addProfesor(Profesor profesor);
	public Profesor editProfesor(Profesor profesor);
	public boolean deletedProfesor(int id);
	public List<Profesor> findAll();
	public List<Profesor> searchByNombre(String nombre);
	public Profesor searchByDni(String dni);
	public Profesor findById(int id);
	public Page<Profesor> findAllTeachers(String filters, String sorts, Integer page, Integer size);
	
	public List<ProfesorView> findAllTeachersView();
	public List<ProfesorView> findAllTeachersByFullname(String fullname);

}
