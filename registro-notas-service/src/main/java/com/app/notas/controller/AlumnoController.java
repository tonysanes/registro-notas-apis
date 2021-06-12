package com.app.notas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.app.notas.entity.Alumno;
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
	@ResponseBody public List<Alumno> findAll(){
		return alumnoService.findAll();
	}
	@GetMapping("/api/alumnos/nombres/{nombre}")
	@ResponseBody public List<Alumno> searchByNombre(@RequestBody String nombre){
		return alumnoService.searchByNombre(nombre);
	}
	@GetMapping("/api/alumnos/{id}")
	@ResponseBody public Alumno searchById(@PathVariable int id ){
		return alumnoService.findById(id);
	}
	
}
