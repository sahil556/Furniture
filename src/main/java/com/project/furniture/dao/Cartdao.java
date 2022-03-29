package com.project.furniture.dao;

import java.util.List;

public class Cartdao {
	private List<CartItemDao> cartItems;
    private double totalCost;
	public Cartdao(List<CartItemDao> cartItems, double totalCost) {
		super();
		this.cartItems = cartItems;
		this.totalCost = totalCost;
	}
	public List<CartItemDao> getCartItems() {
		return cartItems;
	}
	public void setCartItems(List<CartItemDao> cartItems) {
		this.cartItems = cartItems;
	}
	public double getTotalCost() {
		return totalCost;
	}
	public void setTotalCost(double totalCost) {
		this.totalCost = totalCost;
	}
	@Override
	public String toString() {
		return "Cartdao [cartItems=" + cartItems + ", totalCost=" + totalCost + "]";
	}
	
    
}
