package com.app.notas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.notas.entity.AlumnoView;

public interface AlumnoViewRepository extends JpaRepository<AlumnoView, Integer> {
	List<AlumnoView> findByFullnameContaining(String fullname);
}
