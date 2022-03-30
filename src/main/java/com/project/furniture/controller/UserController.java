package com.project.furniture.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.project.furniture.dao.SignInDao;
import com.project.furniture.dao.SignUpDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.project.furniture.model.Order;
import com.project.furniture.model.User;
import com.project.furniture.repository.*;
import com.project.furniture.service.OrderService;
import com.project.furniture.service.Userservice;

@RestController
public class UserController {
	@Autowired
	UserRepo userrepository;
	
	@Autowired
	Userservice userservice;
	
	@Autowired
	OrderService orderservice;
	
	@RequestMapping("register")
	public ModelAndView register()
	{
		ModelAndView mv = new ModelAndView("register");
		return mv;
	}
	
	@RequestMapping("login")
	public ModelAndView login()
	{	
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}
	
	@PostMapping("signin")
    public ModelAndView Signin(SignInDao userdao, HttpServletRequest request) {
       ModelAndView mv = userservice.signIn(userdao, request); 
       return mv;
       
	}
	@PostMapping("signup")
	public ModelAndView Signup(SignUpDao userdao , @RequestParam("imageUrl") MultipartFile multipartFile) throws IOException 
	{
		ModelAndView mv =  userservice.signUp(userdao, multipartFile);
		return mv;
	}
	
	@RequestMapping("logout")
	public RedirectView logout(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		if((session.getAttribute("id") != null))
		{
			session.invalidate();
			
		}
		return new RedirectView("/");
	}
	
	@RequestMapping("furea-about")
	public ModelAndView aboutus()
	{
		ModelAndView mv = new ModelAndView("about");
		return mv;
	}
	@RequestMapping("furea-contact")
	public ModelAndView contact()
	{
		ModelAndView mv = new ModelAndView("contact");
		return mv;
	}
	
	@RequestMapping("userprofile")
	public ModelAndView viewprofile(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		if(session.getAttribute("id") == null)
		{
			return new ModelAndView("login");
		}
		ModelAndView mv = new ModelAndView("my-account");
		int customer_id = (Integer) session.getAttribute("id");
		User user = userservice.getuser(customer_id);
		mv.addObject("user",user);
		if( orderservice.listOrders(user) == null)
		{
			
		}
		else
		{
			List<Order> orderlist = orderservice.listOrders(user);
			mv.addObject("orders",orderlist);
		}
		
		
		return mv;

	}
	
	@RequestMapping("furea-privacy-policy")
	public ModelAndView privacypolicy(HttpServletRequest request)
	{
		User user = userservice.getuserfromsession(request);
		ModelAndView mv = new ModelAndView("privacy-policy");
		mv.addObject("user",user);
		return mv;
	}
	
	@RequestMapping("furea-faq")
	public ModelAndView faq(HttpServletRequest request)
	{
		User user = userservice.getuserfromsession(request);
		ModelAndView mv = new ModelAndView("faq");
		mv.addObject("user",user);
		return mv;
	}
	
	@RequestMapping("myaddress")
	public ModelAndView viewaddress(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView("my-account2");
		int customer_id = (Integer) session.getAttribute("id");
		User user = userservice.getuser(customer_id);
		mv.addObject("user",user);
		return mv;
	}
	
}
