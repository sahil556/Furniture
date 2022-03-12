package com.project.furniture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.furniture.dao.UserRepo;
import com.project.furniture.model.User;

/***
 * 
 * @author sahil
 *
 */
@Controller
public class HomeController {

	@Autowired
	UserRepo repo;
	@RequestMapping("/")
    public String index()
    {
    	System.out.print("hi");
    	return "index.jsp";
    }
	
	@RequestMapping("/Adduser")
	public String adduser(User user)
	{
		repo.save(user);
		System.out.println(user);
		return "index.jsp";
	}
	
}