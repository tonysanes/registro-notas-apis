package com.app.notas.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.app.notas.entity.Alumno;
import com.app.notas.entity.AlumnoView;

public interface AlumnoService {
	public Alumno addAlumno(Alumno alumno);
	public Alumno editAlumno(Alumno alumno);
	public boolean deletedAlumno(int id);
	public List<Alumno> findAll();
	public List<Alumno> searchByNombre(String nombre);
	public Alumno findById(int id);

	public Page<Alumno> findAllStudents(String filters, String sorts, Integer page, Integer size);
	public List<AlumnoView> findAllStudentsView();
	public List<AlumnoView> findAllStudentsByFullname(String fullname);
}
