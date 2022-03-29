package com.project.furniture.model;

import java.util.List;

import javax.persistence.*;

import org.springframework.lang.NonNull;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "products")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
	private boolean is_best_seller= false;
	private boolean is_offer = false;
	private @NonNull String name;
	private @NonNull int quantity;
	private int discount = 0;
	private String color;
	private String material = "none";
	private String style = "none";
	
	
	@Column(nullable = true, length = 64)
	private String imageURL;
	
	private @NonNull double price;
	private String description;
	
	private String category;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
    private List<WishList> wishListList;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
    private List<Cart> carts;

	public Product()
	{
		
	}
	
	
	public Product(String name, int quantity, boolean is_best_seller, boolean is_offer, int discount, String color,
			String material, String style, String imageURL, double price, String description, String category) {
		super();
		this.name = name;
		this.quantity = quantity;
		this.is_best_seller = is_best_seller;
		this.is_offer = is_offer;
		this.discount = discount;
		this.color = color;
		this.material = material;
		this.style = style;
		this.imageURL = imageURL;
		this.price = price;
		this.description = description;
		this.category = category;
		
	}
	
	

	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getMaterial() {
		return material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public boolean isIs_best_seller() {
		return is_best_seller;
	}

	public void setIs_best_seller(boolean is_best_seller) {
		this.is_best_seller = is_best_seller;
	}

	public boolean isIs_offer() {
		return is_offer;
	}

	public void setIs_offer(boolean is_offer) {
		this.is_offer = is_offer;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", imageURL=" + imageURL + ", price=" + price + ", description="
				+ description + "]";
	}
	
	
}
