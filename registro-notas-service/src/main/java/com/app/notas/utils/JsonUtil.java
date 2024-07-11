package com.app.notas.utils;

import java.io.IOException;
import java.util.List;

import com.app.notas.domain.OrderCriteria;
import com.app.notas.domain.SearchCriteria;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;


public class JsonUtil {
	private static ObjectMapper mapper = new ObjectMapper();
	
	public static List<SearchCriteria> convertJsonStringToListSearchCriteria(String jsonString){
		List<SearchCriteria> searchCriteriaList = null;
		try {
			searchCriteriaList = mapper.readValue(jsonString, new TypeReference<List<SearchCriteria>>(){});
		} catch (IOException e) {
			e.printStackTrace();
		}
		return searchCriteriaList;
	}
	
	public static List<OrderCriteria> convertJsonStringToListOrderCriteria(String jsonString){
		List<OrderCriteria> searchCriteriaList = null;
		try {
			searchCriteriaList = mapper.readValue(jsonString, new TypeReference<List<OrderCriteria>>(){});
		} catch (IOException e) {
			e.printStackTrace();
		}
		return searchCriteriaList;
	}
}