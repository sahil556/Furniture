package com.project.furniture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.project.furniture.service.ProductService;
import com.project.furniture.dao.ProductDao;

import java.util.List;

@RestController
public class ProductController {
	
	@Autowired
	ProductService productservice;
	
	@GetMapping("products")
	public ModelAndView getproducts()
	{
		List<ProductDao> products = productservice.listproducts();
		ModelAndView mv = new ModelAndView("viewproducts");
		mv.addObject(products);
		return mv;
	}
	

}
