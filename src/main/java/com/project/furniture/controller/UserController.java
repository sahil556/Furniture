package com.project.furniture.controller;

import java.util.List;
import com.project.furniture.dao.SignInDao;
import com.project.furniture.dao.SignUpDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	
	@PostMapping("signin")
    public ModelAndView Signin(SignInDao userdao) {
       return userservice.signIn(userdao);
	}
	@PostMapping("signup")
	public ModelAndView Signup(SignUpDao userdao)
	{
		return userservice.signUp(userdao);
	}
}
