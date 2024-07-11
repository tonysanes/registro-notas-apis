package com.app.notas.domain;

import com.app.notas.model.SearchOperation;

public class SearchCriteria {
    private String key;
    private Object value1;
    private Object value2;
    private SearchOperation operation;

    public SearchCriteria() {
    }

    public SearchCriteria(String key, Object value1, Object value2, SearchOperation operation) {
        this.key = key;
        this.value1 = value1;
        this.value2 = value2;
        this.operation = operation;
    }

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public Object getValue1() {
		return value1;
	}

	public void setValue1(Object value1) {
		this.value1 = value1;
	}

	public Object getValue2() {
		return value2;
	}

	public void setValue2(Object value2) {
		this.value2 = value2;
	}

	public SearchOperation getOperation() {
		return operation;
	}

	public void setOperation(SearchOperation operation) {
		this.operation = operation;
	}

	public String toString() {
		return "SearchCriteria [key=" + key + ", value1=" + value1 + ", value2=" + value2 + ", operation=" + operation
				+ "]";
	}

}