package com.project.furniture.model;

import java.util.Date;

import javax.persistence.*;
import org.springframework.lang.NonNull;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name ="orderitems")
public class OrderItem {

	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Integer id;
	 
	 @Column(name = "quantity", nullable = false)
	 private int quantity;
	 
	 @Column(name="price", nullable = false)
	 private double price;
	 
	 @Column(name = "created_date",  nullable = false)
	 private Date createdDate;
	 
	 @ManyToOne
	 @JsonIgnore
	 @JoinColumn(name = "order_id", referencedColumnName = "id",  nullable = false)
	 private Order order;
	 
	 @OneToOne
	 @JoinColumn(name = "product_id", referencedColumnName = "id",  nullable = false)
	 private Product product;
	 
	 public OrderItem()
	 {
		 
	 }
	 public OrderItem(Order order, @NonNull Product product, @NonNull int quantity, @NonNull double price) {
	        this.product = product;
	        this.quantity = quantity;
	        this.price = price;
	        this.order= order;
	        this.createdDate = new Date();
	  }
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	@Override
	public String toString() {
		return "OrderItem [id=" + id + ", quantity=" + quantity + ", price=" + price + ", createdDate=" + createdDate
				+ ", order=" + order + ", product=" + product + "]";
	}
	
	 
}
