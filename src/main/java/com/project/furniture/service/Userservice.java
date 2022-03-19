package com.project.furniture.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.furniture.model.User;
import com.project.furniture.repository.UserRepo;
import com.project.furniture.dao.SignInDao;
import com.project.furniture.dao.SignUpDao;

@Service
public class Userservice {
	@Autowired
	UserRepo userrepo;
	@PostMapping("signin")
	public ModelAndView signIn(SignInDao signInDao){
        // first find User by email
        User user = userrepo.findByEmail(signInDao.getEmail());
        
        if(user.getPassword().equals(signInDao.getPassword()))
        {
        	 ModelAndView mv = new ModelAndView("user");
             System.out.println(signInDao);
             mv.addObject("user",user);
             mv.addObject("message", "login successful");
             return mv;
             
        }
        else
        {
        	ModelAndView mv = new ModelAndView("index");
        	mv.addObject("message", "Invalid credential");
        	return mv;
        }
    }
	public ModelAndView signUp(SignUpDao signupdao)
	{
		User user = userrepo.findByEmail(signupdao.getEmail());
		System.out.println(signupdao);
		if(user == null)
		{
			user = new User(signupdao.getEmail() ,signupdao.getFirstname(), signupdao.getLastname(),  signupdao.getPassword(), signupdao.getAddress(), signupdao.getPincode(), "user");
			System.out.println(user);
			userrepo.save(user);
			ModelAndView mv = new ModelAndView("index");
        	mv.addObject("message", "Account created successfully !");
        	return mv;
		}
		else
		{
			ModelAndView mv = new ModelAndView("register");
        	mv.addObject("message", "Email has been taken");
        	return mv;
		}
		
	}
}
