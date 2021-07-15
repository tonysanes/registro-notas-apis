package com.app.notas.repository;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.app.notas.entity.Profesor;

@Repository
public interface ProfesorRepository extends PagingAndSortingRepository<Profesor, Integer>{
	List<Profesor> findByNombres(String Nombres);
	Profesor findByDni(String dni);
}
