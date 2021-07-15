package com.app.notas.service.impl;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.app.notas.entity.Profesor;
import com.app.notas.repository.ProfesorRepository;
import com.app.notas.service.ProfesorService;

@Service
public class ProfesorServiceImpl implements ProfesorService {
	@Autowired
	private ProfesorRepository profesorRepository;

	@Override
	public Profesor addProfesor(Profesor profesor) {
		Profesor profe=null;
		profe=profesorRepository.save(profesor);
		return profe;
	}

	@Override
	public Profesor editProfesor(Profesor profesor) {
		Profesor profe=null;
		profe=profesorRepository.save(profesor);
		return profe;
	}

	@Override
	public boolean deletedProfesor(int id) {
		boolean deleted =false;
		try {
			profesorRepository.deleteById(id);
			deleted=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return deleted;
	}

	@Override
	public List<Profesor> findAll() {
		List<Profesor> result =  StreamSupport.stream(profesorRepository.findAll(Sort.by(Sort.Direction.DESC, "fechaMod")).spliterator(), false).collect(Collectors.toList());
		return result;
	}

	@Override
	public List<Profesor> searchByNombre(String nombre) {
		List<Profesor> profe=null;
		profe=profesorRepository.findByNombres(nombre);
		return profe;
	}

	@Override
	public Profesor searchByDni(String dni) {
		Profesor profe=null;
		profe=profesorRepository.findByDni(dni);
		return profe;
	}

	@Override
	public Profesor findById(int id) {
		return profesorRepository.findById(id).get();
	}

}
