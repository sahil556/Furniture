package com.project.furniture.dao;

public class AddToCart {
	private Integer id;
    private Integer productId;
    private Integer quantity;
    
	public AddToCart() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "AddToCart [id=" + id + ", productId=" + productId + ", quantity=" + quantity + "]";
	}
    
    
}
