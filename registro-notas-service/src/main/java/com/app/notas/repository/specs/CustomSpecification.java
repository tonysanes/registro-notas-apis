package com.app.notas.repository.specs;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.jpa.domain.Specification;

import com.app.notas.domain.SearchCriteria;
import com.app.notas.utils.SpecUtil;


public class CustomSpecification<T> implements Specification<T>{

	private static final long serialVersionUID = -1556420764505549778L;
	
	private List<SearchCriteria> list;
	
	public CustomSpecification() {
		this.list = new ArrayList<>();
	}
	
	public void add(SearchCriteria criteria) {
        list.add(criteria);
    }
	
	public Predicate toPredicate(Root<T> root, CriteriaQuery<?> query, CriteriaBuilder builder) {
		List<Predicate> predicates = new ArrayList<>();
		predicates = SpecUtil.buildPredicates(root, builder, list);
		return builder.and(predicates.toArray(new Predicate[0]));
	}
	
	@Override
	public String toString() {
		return "CustomSpecification [list=" + list + "]";
	}
}