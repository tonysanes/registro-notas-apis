package com.app.notas.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.Predicate;
import jakarta.persistence.criteria.Root;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Order;

import com.app.notas.domain.OrderCriteria;
import com.app.notas.domain.SearchCriteria;
import com.app.notas.model.Direction;
import com.app.notas.repository.specs.CustomSpecification;


public class SpecUtil {
	/***
	 * 
	 * @param root
	 * @param builder
	 * @param criteria
	 * @return GreaterThan Predicate
	 */
	private static Predicate addGreaterThanPredicate(Root<?> root, CriteriaBuilder builder, SearchCriteria criteria) {
		Predicate predicate = null;
    	if(criteria.getValue1() != null && !criteria.getValue1().toString().isEmpty()) {       		
    		if(criteria.getValue1() instanceof Long) {	
				predicate = builder.greaterThan(root.get(criteria.getKey()), Long.valueOf(criteria.getValue1().toString()));
    		} else if(criteria.getValue1() instanceof Double) {	
    			predicate = builder.greaterThan(root.get(criteria.getKey()), Double.valueOf(criteria.getValue1().toString()));
    		} else if(criteria.getValue1() instanceof Integer) {	
    			predicate = builder.greaterThan(root.get(criteria.getKey()), Integer.valueOf(criteria.getValue1().toString()));
    		}
    	}
    	return predicate;
	}
	
	/***
	 * 
	 * @param root
	 * @param builder
	 * @param criteria
	 * @return LessThan Predicate
	 */
	private static Predicate addLessThanPredicate(Root<?> root, CriteriaBuilder builder, SearchCriteria criteria) {
		Predicate predicate = null;
    	if(criteria.getValue1() != null && !criteria.getValue1().toString().isEmpty()) {       		
    		if(criteria.getValue1() instanceof Long) {	
				predicate = builder.lessThan(root.get(criteria.getKey()), Long.valueOf(criteria.getValue1().toString()));
    		} else if(criteria.getValue1() instanceof Double) {	
    			predicate = builder.lessThan(root.get(criteria.getKey()), Double.valueOf(criteria.getValue1().toString()));
    		} else if(criteria.getValue1() instanceof Integer) {	
    			predicate = builder.lessThan(root.get(criteria.getKey()), Integer.valueOf(criteria.getValue1().toString()));
    		}
    	}
    	return predicate;
	}
	
	/***
	 * 
	 * @param root
	 * @param builder
	 * @param criteria
	 * @return GreaterThanOrEqualTo Predicate
	 */
	private static Predicate addGreaterThanOrEqualToPredicate(Root<?> root, CriteriaBuilder builder, SearchCriteria criteria) {
		Predicate predicate = null;
    	if(criteria.getValue1() != null && !criteria.getValue1().toString().isEmpty()) {       		
    		if(criteria.getValue1() instanceof Long) {	
				predicate = builder.greaterThanOrEqualTo(root.get(criteria.getKey()), Long.valueOf(criteria.getValue1().toString()));
    		} else if(criteria.getValue1() instanceof Double) {	
    			predicate = builder.greaterThanOrEqualTo(root.get(criteria.getKey()), Double.valueOf(criteria.getValue1().toString()));
    		} else if(criteria.getValue1() instanceof Integer) {	
    			predicate = builder.greaterThanOrEqualTo(root.get(criteria.getKey()), Integer.valueOf(criteria.getValue1().toString()));
    		}
    	}
    	return predicate;
	}
	
	/***
	 * 
	 * @param root
	 * @param builder
	 * @param criteria
	 * @return LessThanOrEqualTo Predicate
	 */
	private static Predicate addLessThanOrEqualToPredicate(Root<?> root, CriteriaBuilder builder, SearchCriteria criteria) {
		Predicate predicate = null;
    	if(criteria.getValue1() != null && !criteria.getValue1().toString().isEmpty()) {       		
    		if(criteria.getValue1() instanceof Long) {	
				predicate = builder.lessThanOrEqualTo(root.get(criteria.getKey()), Long.valueOf(criteria.getValue1().toString()));
    		} else if(criteria.getValue1() instanceof Double) {	
    			predicate = builder.lessThanOrEqualTo(root.get(criteria.getKey()), Double.valueOf(criteria.getValue1().toString()));
    		} else if(criteria.getValue1() instanceof Integer) {	
    			predicate = builder.lessThanOrEqualTo(root.get(criteria.getKey()), Integer.valueOf(criteria.getValue1().toString()));
    		}
    	}
    	return predicate;
	}
	
	/***
	 * 
	 * @param root
	 * @param builder
	 * @param criteria
	 * @return NotEqual Predicate
	 */
	private static Predicate addNotEqualPredicate(Root<?> root, CriteriaBuilder builder, SearchCriteria criteria) {
		Predicate predicate = null;
    	if(criteria.getValue1() != null && !criteria.getValue1().toString().isEmpty()) {       		
    		if(criteria.getValue1() instanceof String) {						
    			predicate = builder.notEqual(root.get(criteria.getKey()), criteria.getValue1());
			} else if(criteria.getValue1() instanceof Long) {	
				predicate = builder.notEqual(root.get(criteria.getKey()), Long.valueOf(criteria.getValue1().toString()));
    		} else if(criteria.getValue1() instanceof Double) {	
    			predicate = builder.notEqual(root.get(criteria.getKey()), Double.valueOf(criteria.getValue1().toString()));
    		} else if(criteria.getValue1() instanceof Integer) {	
    			predicate = builder.notEqual(root.get(criteria.getKey()), Integer.valueOf(criteria.getValue1().toString()));
    		}
    	}
    	return predicate;
	}
	
	/***
	 * 
	 * @param root
	 * @param builder
	 * @param criteria
	 * @return Equal Predicate
	 */
	private static Predicate addEqualPredicate(Root<?> root, CriteriaBuilder builder, SearchCriteria criteria) {
		Predicate predicate = null;
    	if(criteria.getValue1() != null && !criteria.getValue1().toString().isEmpty()) {       		
    		if(criteria.getValue1() instanceof String) {						
    			predicate = builder.equal(root.get(criteria.getKey()), criteria.getValue1());
			} else if(criteria.getValue1() instanceof Long) {	
				predicate = builder.equal(root.get(criteria.getKey()), Long.valueOf(criteria.getValue1().toString()));
    		} else if(criteria.getValue1() instanceof Double) {	
    			predicate = builder.equal(root.get(criteria.getKey()), Double.valueOf(criteria.getValue1().toString()));
    		} else if(criteria.getValue1() instanceof Integer) {	
    			predicate = builder.equal(root.get(criteria.getKey()), Integer.valueOf(criteria.getValue1().toString()));
    		}
    	}
    	return predicate;
	}
	
	/***
	 * 
	 * @param root
	 * @param builder
	 * @param criteria
	 * @return Between Predicate
	 */
	private static Predicate addBetweenPredicate(Root<?> root, CriteriaBuilder builder, SearchCriteria criteria) {
		Predicate predicate = null;
    	if(criteria.getValue1() != null && !criteria.getValue1().toString().isEmpty()) {       		
    		if(criteria.getValue1() instanceof Long) {						
				predicate = builder.between(root.get(criteria.getKey()), Long.valueOf(criteria.getValue1().toString()), Long.valueOf(criteria.getValue2().toString()));
			} else if(criteria.getValue1() instanceof Double) {	
				predicate = builder.between(root.get(criteria.getKey()), Double.valueOf(criteria.getValue1().toString()), Double.valueOf(criteria.getValue2().toString()));
			} else if(criteria.getValue1() instanceof Integer) {	
				predicate = builder.between(root.get(criteria.getKey()), Integer.valueOf(criteria.getValue1().toString()), Integer.valueOf(criteria.getValue1().toString()));
			}
    	}
    	return predicate;
	}
	
	/***
	 * 
	 * @param root
	 * @param builder
	 * @param criteria
	 * @return Match Predicate
	 */
	private static Predicate addMatchPredicate(Root<?> root, CriteriaBuilder builder, SearchCriteria criteria) {
		Predicate predicate = null;
    	if(criteria.getValue1() != null && !criteria.getValue1().toString().isEmpty()) { 
    		predicate = builder.like(builder.lower(root.get(criteria.getKey())), "%" + criteria.getValue1().toString().toLowerCase() + "%");
    	}
    	return predicate;
	}
	
	/***
	 * 
	 * @param root
	 * @param builder
	 * @param criteria
	 * @return MatchEnd Predicate
	 */
	private static Predicate addMatchEndPredicate(Root<?> root, CriteriaBuilder builder, SearchCriteria criteria) {
		Predicate predicate = null;
    	if(criteria.getValue1() != null && !criteria.getValue1().toString().isEmpty()) { 
    		predicate = builder.like(builder.lower(root.get(criteria.getKey())), criteria.getValue1().toString().toLowerCase() + "%");
    	}
    	return predicate;
	}
	
	/***
	 * 
	 * @param root
	 * @param builder
	 * @param criteria
	 * @return MatchStart Predicate
	 */
	private static Predicate addMatchStartPredicate(Root<?> root, CriteriaBuilder builder, SearchCriteria criteria) {
		Predicate predicate = null;
    	if(criteria.getValue1() != null && !criteria.getValue1().toString().isEmpty()) { 
    		predicate = builder.like(builder.lower(root.get(criteria.getKey())), "%" + criteria.getValue1().toString().toLowerCase());
    	}
    	return predicate;
	}
	
	@SuppressWarnings("unchecked")
	/***
	 * 
	 * @param root
	 * @param builder
	 * @param criteria
	 * @return In Predicate
	 */
	private static Predicate addInPredicate(Root<?> root, CriteriaBuilder builder, SearchCriteria criteria) {
		Predicate predicate = null;
		if(criteria.getValue1() instanceof List) {	
			List<Object> list = (List<Object>) criteria.getValue1();
			if(list.get(0) instanceof String) {
				if(list.size() > 1) {
					List<String> listString = list.stream().map(s -> String.valueOf(s.toString())).collect(Collectors.toList());
					predicate = builder.in(root.get(criteria.getKey())).value(listString);
				} else if(list.size() == 1) {
					predicate = builder.in(root.get(criteria.getKey())).value(list.get(0).toString());
				}
			} else if(list.get(0) instanceof Long) {
				if(list.size() > 1) {
					List<Long> listLong = list.stream().map(s -> Long.valueOf(s.toString())).collect(Collectors.toList());
					predicate = builder.in(root.get(criteria.getKey())).value(listLong);
				} else if(list.size() == 1) {
					predicate = builder.in(root.get(criteria.getKey())).value(Long.valueOf(list.get(0).toString()));
				}
			} else if(list.get(0) instanceof Double) {
				if(list.size() > 1) {
					List<Double> listDouble = list.stream().map(s -> Double.valueOf(s.toString())).collect(Collectors.toList());
					predicate = builder.in(root.get(criteria.getKey())).value(listDouble);
				} else if(list.size() == 1) {
					predicate = builder.in(root.get(criteria.getKey())).value(Double.valueOf(list.get(0).toString()));
				}
			} else if(list.get(0) instanceof Integer) {
				if(list.size() > 1) {
					List<Integer> listInteger = list.stream().map(s -> Integer.valueOf(s.toString())).collect(Collectors.toList());
					predicate = builder.in(root.get(criteria.getKey())).value(listInteger);							
				} else if(list.size() == 1) {
					predicate = builder.in(root.get(criteria.getKey())).value(Integer.valueOf(list.get(0).toString()));
				}
			}
		}
		
    	return predicate;
	}
	
	@SuppressWarnings("unchecked")
	/***
	 * 
	 * @param root
	 * @param builder
	 * @param criteria
	 * @return NotIn Predicate
	 */
	private static Predicate addNotInPredicate(Root<?> root, CriteriaBuilder builder, SearchCriteria criteria) {
		Predicate predicate = null;
		List<Object> list = (List<Object>) criteria.getValue1();
		if(list.get(0) instanceof String) {
			if(list.size() > 1) {
				List<String> listString = list.stream().map(s -> String.valueOf(s.toString())).collect(Collectors.toList());
				predicate = builder.not(root.get(criteria.getKey())).in(listString);
			} else if(list.size() == 1) {
				predicate = builder.not(root.get(criteria.getKey())).in(list.get(0).toString());
			}
		} else if(list.get(0) instanceof Long) {
			if(list.size() > 1) {
				List<Long> listLong = list.stream().map(s -> Long.valueOf(s.toString())).collect(Collectors.toList());
				predicate = builder.not(root.get(criteria.getKey())).in(listLong);
			} else if(list.size() == 1) {
				predicate = builder.not(root.get(criteria.getKey())).in(Long.valueOf(list.get(0).toString()));
			}
		} else if(list.get(0) instanceof Double) {
			if(list.size() > 1) {
				List<Double> listDouble = list.stream().map(s -> Double.valueOf(s.toString())).collect(Collectors.toList());
				predicate = builder.not(root.get(criteria.getKey())).in(listDouble);
			} else if(list.size() == 1) {
				predicate = builder.not(root.get(criteria.getKey())).in(Double.valueOf(list.get(0).toString()));
			}
		} else if(list.get(0) instanceof Integer) {
			if(list.size() > 1) {
				List<Integer> listInteger = list.stream().map(s -> Integer.valueOf(s.toString())).collect(Collectors.toList());
				predicate = builder.not(root.get(criteria.getKey())).in(listInteger);							
			} else if(list.size() == 1) {
				predicate = builder.not(root.get(criteria.getKey())).in(Integer.valueOf(list.get(0).toString()));
			}
		}
    	return predicate;
	}
	
	/***
	 * 
	 * @param root
	 * @param builder
	 * @param list of SearchCriteria
	 * @return Predicate list
	 */
	public static List<Predicate> buildPredicates(Root<?> root, CriteriaBuilder builder, List<SearchCriteria> list){
		List<Predicate> predicates = new ArrayList<>();
		for (SearchCriteria criteria : list) {
			switch (criteria.getOperation()) {
			case GREATER_THAN:
				predicates.add(addGreaterThanPredicate(root, builder, criteria));
				break;
			case LESS_THAN:
				predicates.add(addLessThanPredicate(root, builder, criteria));
				break;
			case GREATER_THAN_EQUAL:
				predicates.add(addGreaterThanOrEqualToPredicate(root, builder, criteria));
				break;
			case LESS_THAN_EQUAL:
				predicates.add(addLessThanOrEqualToPredicate(root, builder, criteria));
				break;
			case NOT_EQUAL:
				predicates.add(addNotEqualPredicate(root, builder, criteria));
				break;
			case EQUAL:
				predicates.add(addEqualPredicate(root, builder, criteria));
				break;
			case MATCH:
				predicates.add(addMatchPredicate(root, builder, criteria));
				break;
			case MATCH_END:
				predicates.add(addMatchEndPredicate(root, builder, criteria));
				break;
			case MATCH_START:
				predicates.add(addMatchStartPredicate(root, builder, criteria));
				break;
			case IN:
				predicates.add(addInPredicate(root, builder, criteria));
				break;
			case NOT_IN:
				predicates.add(addNotInPredicate(root, builder, criteria));
				break;
			case BETWEEN:
				predicates.add(addBetweenPredicate(root, builder, criteria));
				break;
			default:
				break;
			}
		}
		return predicates;
	}
	
	/***
	 * 
	 * @param orders of OrderCriteria
	 * @return Order list
	 */
	public static List<Order> getOrders(List<OrderCriteria> orders){
		List<Order> orderList = new ArrayList<>();
		for (OrderCriteria order : orders) {
			if(order.getCriteria().equals(Direction.DESC.toString())) {
				orderList.add(new Order(Sort.Direction.DESC, order.getKey()));
			} else if(order.getCriteria().equals(Direction.ASC.toString())) {
				orderList.add(new Order(Sort.Direction.ASC, order.getKey()));
			}
		}
		return orderList;
	}
	
	@SuppressWarnings("rawtypes")
	/***
	 * 
	 * @param list of SearchCriteria
	 * @return Predicate list
	 */
	public static CustomSpecification getSpecs(List<SearchCriteria> filters) {
		CustomSpecification specs = new CustomSpecification();
		for (SearchCriteria criteria : filters) {
			specs.add(new SearchCriteria(criteria.getKey(), criteria.getValue1(), criteria.getValue2(), criteria.getOperation()));
		}
		return specs;
	}
}
