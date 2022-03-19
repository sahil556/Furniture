package com.project.furniture.model;

import java.util.Set;

import javax.persistence.*;

import org.springframework.lang.NonNull;
@Entity
@Table(name= "categories")
public class Category {	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name = "category_name")
	private String categoryname;
	private String description;
	private String imageUrl;
	
	@OneToMany(mappedBy = "category", fetch = FetchType.LAZY,
			cascade = CascadeType.ALL)
	Set<Product> products;

	public Category() {
		
	}

	public Category(@NonNull String categoryname, @NonNull String description) {
		super();
		this.categoryname = categoryname;
		this.description = description;
	}

	public Category(String categoryname, String description, String imageUrl) {
		super();
		this.categoryname = categoryname;
		this.description = description;
		this.imageUrl = imageUrl;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public Set<Product> getProducts() {
		return products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}	
	
}
