package com.app.notas.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.app.notas.entity.Profesor;

@Repository
public interface ProfesorRepository extends PagingAndSortingRepository<Profesor, Integer>, JpaSpecificationExecutor<Profesor>{
	List<Profesor> findByNombres(String Nombres);
	Profesor findByDni(String dni);
	Page<Profesor> findAll(Pageable pageable);
}
