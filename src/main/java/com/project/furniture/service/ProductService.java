package com.project.furniture.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.furniture.dao.ProductDao;
import com.project.furniture.model.Product;
import com.project.furniture.repository.ProductRepo;

import java.util.ArrayList;
import java.util.List;
@Service
public class ProductService {
	@Autowired
	private ProductRepo productrepository;
	
	public List<ProductDao> listproducts()
	{
		List<Product> products = productrepository.findAll();
		List<ProductDao> productdaos = new ArrayList<>();
		for(Product product : products)
		{
			ProductDao productdao = getDaoFromProduct(product);
			productdaos.add(productdao);
		}
		return productdaos;
	}
	public static ProductDao getDaoFromProduct(Product product)
	{
		ProductDao productdao = new ProductDao(product);
		return productdao;
	}

}
