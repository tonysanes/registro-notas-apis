package com.app.notas.repository;

import java.util.List;

import com.app.notas.entity.Alumno;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface AlumnoRepository extends PagingAndSortingRepository<Alumno, Integer>, JpaSpecificationExecutor<Alumno>, CrudRepository<Alumno, Integer> {
	List<Alumno> findByNombres(String nombres);
	Page<Alumno> findAll(Pageable pageable);
}
