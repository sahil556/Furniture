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
import com.project.furniture.service.Userservice;
import com.project.furniture.dao.ProductDao;
import com.project.furniture.model.Product;
import com.project.furniture.model.User;
import com.project.furniture.repository.ProductRepo;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productservice;
	
	@Autowired
	ProductRepo productrepo;
	
	@Autowired
	Userservice userservice;
	
	@RequestMapping("addproduct")
	public ModelAndView addproduct(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("id") == null)
		{
			mv.setViewName("404");
		}
		else
		{
			User user = userservice.getuser((Integer)session.getAttribute("id"));
			mv.addObject("user", user);
			mv.setViewName("addproduct");
		}
		
		return mv;
		
	}
	
	@RequestMapping("dashboard")
	public ModelAndView viewdashboard(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("id") == null)
		{
			mv.setViewName("404");
		}
		else
		{
			User user = userservice.getuser((Integer)session.getAttribute("id"));
			mv.addObject("user", user);
			mv.setViewName("admindashboard");
		}
		
		return mv;
	}
	
	@RequestMapping("adminaccount")
	public ModelAndView viewAccount(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("id") == null)
		{
			mv.setViewName("404");
		}
		else
		{
			User user = userservice.getuser((Integer)session.getAttribute("id"));
			mv.addObject("user", user);
			mv.setViewName("adminprofile");
		}
		
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
	public ModelAndView viewproduct(HttpServletRequest request) throws UnsupportedEncodingException
	{   
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("id") == null)
		{
			mv.setViewName("home");
		}
		else
		{
			User user = userservice.getuser((Integer)session.getAttribute("id"));
			mv.addObject("user", user);
			List<Product> product = productservice.listproducts();
			mv.setViewName("products");
			mv.addObject("products", product);
		}
		
		return mv;
		
	}
	@RequestMapping("delete/{id}")
	public RedirectView deleteProduct(@PathVariable(value="id") String id, HttpServletRequest request) throws UnsupportedEncodingException
	{
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("id") == null)
		{
			return new RedirectView("/login");
		}
		productservice.deleteproduct(Integer.parseInt(id));
		return new RedirectView("/viewproduct");
	}
	
	
	
}
