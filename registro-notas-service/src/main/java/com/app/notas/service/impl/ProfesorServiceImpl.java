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
import com.app.notas.entity.Profesor;
import com.app.notas.entity.ProfesorView;
import com.app.notas.repository.ProfesorRepository;
import com.app.notas.repository.ProfesorViewRepository;
import com.app.notas.repository.specs.CustomSpecification;
import com.app.notas.service.ProfesorService;
import com.app.notas.utils.JsonUtil;
import com.app.notas.utils.SecurityUtil;
import com.app.notas.utils.SpecUtil;

@Service
public class ProfesorServiceImpl implements ProfesorService {
	@Autowired
	private ProfesorRepository profesorRepository;
	
	@Autowired
	private ProfesorViewRepository profesorViewRepository;

	@Override
	public Profesor addProfesor(Profesor profesor) {
		Profesor profe=null;
		profe=profesorRepository.save(profesor);
		return profe;
	}

	@Override
	public Profesor editProfesor(Profesor profesor) {
		Profesor profe=null;
		profe=profesorRepository.save(profesor);
		return profe;
	}

	@Override
	public boolean deletedProfesor(int id) {
		boolean deleted =false;
		try {
			profesorRepository.deleteById(id);
			deleted=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return deleted;
	}

	@Override
	public List<Profesor> findAll() {
		List<Profesor> result =  StreamSupport.stream(profesorRepository.findAll(Sort.by(Sort.Direction.DESC, "fechaMod")).spliterator(), false).collect(Collectors.toList());
		return result;
	}

	@Override
	public List<Profesor> searchByNombre(String nombre) {
		List<Profesor> profe=null;
		profe=profesorRepository.findByNombres(nombre);
		return profe;
	}

	@Override
	public Profesor searchByDni(String dni) {
		Profesor profe=null;
		profe=profesorRepository.findByDni(dni);
		return profe;
	}

	@Override
	public Profesor findById(int id) {
		return profesorRepository.findById(id).get();
	}

	@SuppressWarnings("unchecked")
	@Override
	public Page<Profesor> findAllTeachers(String filters, String sorts, Integer page, Integer size) {
		CustomSpecification<Profesor> profesorSpec = null;
		List<Order> orderList = new ArrayList<>();
		
		if(filters != null && !filters.isEmpty()) {
    		String decodedFilterParams = SecurityUtil.decodeUTF8(filters);
    		List<SearchCriteria> searchCriteriaList = JsonUtil.convertJsonStringToListSearchCriteria(decodedFilterParams);
    		profesorSpec = SpecUtil.getSpecs(searchCriteriaList);
    	}
		
		if( sorts != null && !sorts.isEmpty()) {    
    		String decodedSortParams = SecurityUtil.decodeUTF8(sorts);
    		List<OrderCriteria> orderCriteriaList = JsonUtil.convertJsonStringToListOrderCriteria(decodedSortParams);
    		orderList = SpecUtil.getOrders(orderCriteriaList);
    	}
		
		Sort sort = Sort.by(orderList);
		if(page > 0 && size > 0) {
			page = page-1;
		}
		Pageable paging = PageRequest.of(page, size, sort);

		Page<Profesor> pagedResult = profesorRepository.findAll(profesorSpec, paging);

		return pagedResult;
		
	}

	public List<ProfesorView> findAllTeachersByFullname(String fullname) {
		
		return profesorViewRepository.findByFullnameContaining(fullname);
	}

	public List<ProfesorView> findAllTeachersView() {
		return profesorViewRepository.findAll();
	}

}
