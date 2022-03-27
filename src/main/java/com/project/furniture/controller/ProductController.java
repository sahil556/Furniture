package com.project.furniture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.project.furniture.service.ProductService;
import com.project.furniture.dao.ProductDao;
import com.project.furniture.model.Product;
import com.project.furniture.repository.ProductRepo;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Optional;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productservice;
	
	@Autowired
	ProductRepo productrepo;
	
	@RequestMapping("addproduct")
	public ModelAndView addproduct()
	{
		ModelAndView mv = new ModelAndView("addproduct");
		return mv;
	}
	
	@RequestMapping("saveproduct")
	public ModelAndView saveproduct(ProductDao productdao, @RequestParam("imageUrl") MultipartFile multipartFile) throws IOException 
	{
		ModelAndView mv  = productservice.saveProduct(productdao, multipartFile);
		if(mv.getViewName().equals("products"))
		{
		List<Product> product = productservice.listproducts();
		mv.addObject("products", product);
		}
		return mv;
	}
	
	@RequestMapping("viewproduct")
	public ModelAndView viewproduct() throws UnsupportedEncodingException
	{   
		List<Product> product = productservice.listproducts();
		ModelAndView model = new ModelAndView("products");
		model.addObject("products", product);
		model.addObject("update", 43);
		return model;
	}
	@RequestMapping("delete/{id}")
	public RedirectView deleteProduct(@PathVariable(value="id") String id) throws UnsupportedEncodingException
	{
		productservice.deleteproduct(Integer.parseInt(id));
		return new RedirectView("/viewproduct");
	}
	
	
	
}
