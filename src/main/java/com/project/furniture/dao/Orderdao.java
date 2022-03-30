package com.project.furniture.dao;

import com.project.furniture.model.Order;

public class Orderdao {
	private Integer id;
	private Integer userid;
	
	public Orderdao(Order order) {
		super();
		this.id = order.getId();
		this.userid = (order.getUser()).getId();
	}
	
	public Orderdao() {
		super();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	
	
}
