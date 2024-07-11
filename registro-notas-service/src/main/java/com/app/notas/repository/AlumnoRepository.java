package com.app.notas.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.app.notas.entity.Alumno;

@Repository
public interface AlumnoRepository extends PagingAndSortingRepository<Alumno, Integer>, JpaSpecificationExecutor<Alumno>{
	List<Alumno> findByNombres(String nombres);
	Page<Alumno> findAll(Pageable pageable);

}
