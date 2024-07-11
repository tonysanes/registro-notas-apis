package com.app.notas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.notas.entity.ProfesorView;

public interface ProfesorViewRepository extends JpaRepository<ProfesorView, Integer> {
	List<ProfesorView> findByFullnameContaining(String fullname);
}
