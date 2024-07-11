package com.app.notas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;

import com.app.notas.entity.Profesor;
import com.app.notas.entity.ProfesorView;
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

	/**
	 * 
	 * @param filters
	 * @param sorts
	 * @param page
	 * @param size
	 * @return un listado de profesores con paginacion, ordenamiento, filtros
	 */
	@GetMapping("/api/profesores")
	@ResponseBody public Page<Profesor> findAllTeachers(@RequestParam(required = false) String filters, @RequestParam(required = false) String sorts, @RequestParam Integer page, @RequestParam Integer size){
		return profesorService.findAllTeachers(filters, sorts, page, size);
	}
	
	//*****profesor View
	@GetMapping("/api/profesores/autosuggets")
	@ResponseBody public List<ProfesorView> findAllTeachersAutosuggests(){
		return profesorService.findAllTeachersView();
	}

}
