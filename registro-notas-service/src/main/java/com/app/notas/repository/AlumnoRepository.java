package com.app.notas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.notas.entity.Alumno;
@Repository
public interface AlumnoRepository extends JpaRepository<Alumno, Integer> {
	List<Alumno> findByNombres(String nombres);

}
