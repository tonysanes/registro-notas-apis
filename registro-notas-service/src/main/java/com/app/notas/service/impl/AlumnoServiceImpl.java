package com.app.notas.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import com.app.notas.domain.OrderCriteria;
import com.app.notas.domain.SearchCriteria;
import com.app.notas.entity.Alumno;
import com.app.notas.entity.AlumnoView;
import com.app.notas.repository.AlumnoRepository;
import com.app.notas.repository.AlumnoViewRepository;
import com.app.notas.repository.specs.CustomSpecification;
import com.app.notas.service.AlumnoService;
import com.app.notas.utils.JsonUtil;
import com.app.notas.utils.SecurityUtil;
import com.app.notas.utils.SpecUtil;


@Service
public class AlumnoServiceImpl implements AlumnoService {
	@Autowired
    private AlumnoRepository alumnoRepository;
	
	@Autowired
	private AlumnoViewRepository alumnoViewRepository;
	
	public Alumno addAlumno(Alumno alumno) {
		Alumno alum=null;
		alum=alumnoRepository.save(alumno);
		return alum;
	}

	public Alumno editAlumno(Alumno alumno) {
		Alumno alum=null;
		alum=alumnoRepository.save(alumno);
		return alum;
	}

	public boolean deletedAlumno(int id) {
		boolean deleted =false;
		try {
			alumnoRepository.deleteById(id);
			deleted=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return deleted;
	}

	public List<Alumno> findAll() {
		List<Alumno> result =  StreamSupport.stream(alumnoRepository.findAll(Sort.by(Sort.Direction.DESC, "fechaModificacion")).spliterator(), false).collect(Collectors.toList());
		return result;
	}

	public List<Alumno> searchByNombre(String nombre) {
		List<Alumno> alum=null;
		alum=alumnoRepository.findByNombres(nombre);
		return alum;
	}

	@Override
	public Alumno findById(int id) {
		
		return alumnoRepository.findById(id).get();
	}

	@SuppressWarnings("unchecked")
	@Override
	public Page<Alumno> findAllStudents(String filters, String sorts, Integer page, Integer size) {
		
		CustomSpecification<Alumno> alumnoSpec = null;
		List<Order> orderList = new ArrayList<>();

    	if(filters != null && !filters.isEmpty()) {
    		String decodedFilterParams = SecurityUtil.decodeUTF8(filters);
    		List<SearchCriteria> searchCriteriaList = JsonUtil.convertJsonStringToListSearchCriteria(decodedFilterParams);
    		//customerSpec = getSpecs(searchCriteriaList);
    		alumnoSpec = SpecUtil.getSpecs(searchCriteriaList);
    	}
    	if( sorts != null && !sorts.isEmpty()) {    
    		String decodedSortParams = SecurityUtil.decodeUTF8(sorts);
    		List<OrderCriteria> orderCriteriaList = JsonUtil.convertJsonStringToListOrderCriteria(decodedSortParams);
    		//orderList = getOrders(orderCriteriaList);
    		orderList = SpecUtil.getOrders(orderCriteriaList);
    	}
		
		Sort sort = Sort.by(orderList);
		if(page > 0 && size > 0) {
			page = page-1;
		}
		Pageable paging = PageRequest.of(page, size, sort);

		Page<Alumno> pagedResult = alumnoRepository.findAll(alumnoSpec, paging);

		return pagedResult;
	}

	public List<AlumnoView> findAllStudentsView() {
		return alumnoViewRepository.findAll();
	}

	public List<AlumnoView> findAllStudentsByFullname(String fullname) {
		return alumnoViewRepository.findByFullnameContaining(fullname);
	}
	

}
