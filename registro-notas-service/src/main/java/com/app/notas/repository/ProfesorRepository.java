package com.app.notas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.notas.entity.Profesor;

@Repository
public interface ProfesorRepository extends JpaRepository<Profesor, Integer>{
	List<Profesor> findByNombres(String Nombres);
	Profesor findByDni(String dni);
}
