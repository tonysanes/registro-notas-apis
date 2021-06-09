package com.app.notas.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.notas.entity.Alumno;
import com.app.notas.repository.AlumnoRepository;
import com.app.notas.service.AlumnoService;

@Service
public class AlumnoServiceImpl implements AlumnoService {
	@Autowired
    private AlumnoRepository alumnoRepository;
	
	public Alumno addAlumno(Alumno alumno) {
		Alumno alum=null;
		alum=alumnoRepository.save(alumno);
		return alum;
	}

	public Alumno editAlumno(Alumno alumno) {
		Alumno alum=null;
		alum=alumnoRepository.save(alumno);
		return alum;
	}

	public boolean deletedAlumno(int id) {
		boolean deleted =false;
		try {
			alumnoRepository.deleteById(id);
			deleted=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return deleted;
	}

	public List<Alumno> findAll() {
		List<Alumno> alum=null;
		alum=alumnoRepository.findAll();
		return alum;
	}

	public List<Alumno> searchByNombre(String nombre) {
		List<Alumno> alum=null;
		alum=alumnoRepository.findByNombres(nombre);
		return alum;
	}
	

}
