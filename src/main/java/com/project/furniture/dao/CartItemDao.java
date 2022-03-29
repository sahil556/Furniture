package com.project.furniture.dao;

import com.project.furniture.model.Cart;
import com.project.furniture.model.Product;

public class CartItemDao {
	 private Integer id;
	 private  Integer quantity;
	 private  Product product;
	 
	public CartItemDao() {
		super();
	}
	
	public CartItemDao(Cart cart)
	{
		super();
		this.id = cart.getId();
		this.quantity = cart.getQuantity();
		this.product = cart.getProduct();
	}

	public CartItemDao(Integer id, Integer quantity, Product product) {
		super();
		this.id = id;
		this.quantity = quantity;
		this.product = product;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "CartItemDao [id=" + id + ", quantity=" + quantity + ", product=" + product + "]";
	}
	 
	 
}
