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

import com.project.furniture.model.User;
import com.project.furniture.repository.*;
import com.project.furniture.service.Userservice;

@RestController
public class UserController {
	@Autowired
	UserRepo userrepository;
	
	@Autowired
	Userservice userservice;
	
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
	public RedirectView Signup(SignUpDao userdao , @RequestParam("imageUrl") MultipartFile multipartFile) throws IOException 
	{
		System.out.println(userdao);
		ModelAndView mv =  userservice.signUp(userdao, multipartFile);
		return new RedirectView("/");
	}
	
}
