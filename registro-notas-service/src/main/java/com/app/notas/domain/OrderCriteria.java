package com.app.notas.domain;

public class OrderCriteria {
	private String key;
	private String criteria;
	public OrderCriteria() {
		super();
	}
	public OrderCriteria(String key, String criteria) {
		super();
		this.key = key;
		this.criteria = criteria;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public String getCriteria() {
		return criteria.toUpperCase();
	}
	public void setCriteria(String criteria) {
		this.criteria = criteria;
	}
	@Override
	public String toString() {
		return "OrderCriteria [key=" + key + ", criteria=" + criteria + "]";
	}
}

