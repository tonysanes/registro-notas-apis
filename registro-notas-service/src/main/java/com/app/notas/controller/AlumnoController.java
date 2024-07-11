package com.app.notas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;

import com.app.notas.entity.Alumno;
import com.app.notas.entity.AlumnoView;
import com.app.notas.service.AlumnoService;

@RestController
@CrossOrigin(value = "http://localhost:4200")
public class AlumnoController {
	@Autowired
	private AlumnoService alumnoService;
	
	@PostMapping("/api/alumnos")
	@ResponseBody public Alumno addAlumno(@RequestBody Alumno alumno) {
		return alumnoService.addAlumno(alumno);
	}
	@PutMapping("/api/alumnos")
	@ResponseBody public Alumno editAlumno(@RequestBody Alumno alumno) {
		return alumnoService.editAlumno(alumno);
	}
	@DeleteMapping("/api/alumnos/{id}")
	@ResponseBody public boolean deletedAlumno(@PathVariable int id) {
		return alumnoService.deletedAlumno(id);
	}

	@GetMapping("/api/alumnos")
	@ResponseBody public Page<Alumno> findAllStudents(@RequestParam(required = false) String filters, @RequestParam(required = false) String sorts, @RequestParam Integer page, @RequestParam Integer size){
		return alumnoService.findAllStudents(filters, sorts, page, size);
	}

	@GetMapping("/api/alumnos/nombres/{nombre}")
	@ResponseBody public List<Alumno> searchByNombre(@RequestBody String nombre){
		return alumnoService.searchByNombre(nombre);
	}
	@GetMapping("/api/alumnos/{id}")
	@ResponseBody public Alumno searchById(@PathVariable int id ){
		return alumnoService.findById(id);
	}
	
	//*****Alumno View
	@GetMapping("/api/alumnos/autosuggets")
	@ResponseBody public List<AlumnoView> findAllStudentsAutosuggests(){
		return alumnoService.findAllStudentsView();
	}
	
}
