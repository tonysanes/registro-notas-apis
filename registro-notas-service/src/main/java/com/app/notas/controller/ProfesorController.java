package com.app.notas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.app.notas.entity.Profesor;
import com.app.notas.service.ProfesorService;

@RestController
@CrossOrigin(value = "http://localhost:4200")
public class ProfesorController {
	@Autowired
	private ProfesorService profesorService;
	@PostMapping("/api/profesores")
	@ResponseBody public Profesor addProfesor(@RequestBody Profesor profesor) {
		return profesorService.addProfesor(profesor);
	}
	@PutMapping("/api/profesores")
	@ResponseBody public Profesor editProfesor(@RequestBody Profesor profesor) {
		return profesorService.editProfesor(profesor);
	}
	@DeleteMapping("/api/profesores/{id}")
	@ResponseBody public boolean deletedProfesor(@PathVariable int id) {
		return profesorService.deletedProfesor(id);
	}
	@GetMapping("/api/profesores")
	@ResponseBody public List<Profesor> findAll(){
		return profesorService.findAll();
	}
	/**
	 * 
	 * @param filters
	 * @param sorts
	 * @param page
	 * @param size
	 * @return un listado de profesores con paginacion, ordenamiento, filtros
	 */
	@GetMapping(
			value = {
					"/api/profesores/{sorts}/{page}/{size}", 
					"/api/profesores/{filters}/{page}/{size}", 
					"/api/profesores/{page}/{size}", 
					"/api/profesores/{filters}/{sorts}/{page}/{size}" 
			},
			consumes = { MediaType.APPLICATION_FORM_URLENCODED_VALUE }
		)
	@ResponseBody public Page<Profesor> findAllTeachers(@PathVariable(required = false) String filters, @PathVariable(required = false) String sorts, @PathVariable Integer page, @PathVariable Integer size){
		return profesorService.findAllTeachers(filters, sorts, page, size);
	}

}
