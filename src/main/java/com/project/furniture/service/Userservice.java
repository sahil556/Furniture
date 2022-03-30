package com.project.furniture.service;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.furniture.model.Product;
import com.project.furniture.model.User;
import com.project.furniture.repository.UserRepo;
import com.project.furniture.utils.FileUploadUtil;
import com.project.furniture.dao.SignInDao;
import com.project.furniture.dao.SignUpDao;

@Service
public class Userservice {
	@Autowired
	UserRepo userrepo;
	
	@Autowired
	ProductService productservice;
	
	public ModelAndView signIn(SignInDao signInDao, HttpServletRequest request){
        // first find User by email
        User user = userrepo.findByEmail(signInDao.getEmail());
        
        if(user.getPassword().equals(signInDao.getPassword()))
        {
        	ModelAndView mv;
        	List<Product> product = productservice.listproducts();
        	if(!user.getRole().equals("admin"))
        	{
        	 mv = new ModelAndView("home");
        	}
        	else
        	{
        		mv = new ModelAndView("adminprofile");
        	}
        	HttpSession session = request.getSession();
            session.setAttribute("id", user.getId());
            
             mv.addObject("id",user.getId());
             mv.addObject("user",user);
             mv.addObject("products", product);
             mv.addObject("message", "login successful");
             
             return mv;
             
        }
        else
        {
        	ModelAndView mv = new ModelAndView("login");
        	mv.addObject("message", "Invalid credential");
        	return mv;
        }
    }
	
	public ModelAndView signUp(SignUpDao signupdao, MultipartFile multipartFile) 
	{
		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
	
		User user = userrepo.findByEmail(signupdao.getEmail());
		if(user == null)
		{
			user = new User(signupdao.getEmail() ,signupdao.getFirstname(), signupdao.getLastname(),  signupdao.getPassword(), signupdao.getAddress(), signupdao.getPincode(), "user", fileName);
			ModelAndView mv = new ModelAndView("login");
			String uploadDir = "src/main/webapp/userimg/";
			try {
				FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
			} catch (IOException ioe) {
				mv.setViewName("login");
				mv.addObject("message", "Image insertion failed");
				return mv;
			}
			userrepo.save(user);
			
        	mv.addObject("message", "created");
        	return mv;
		}
		else
		{
			ModelAndView mv = new ModelAndView("login");
        	mv.addObject("message", "Email has been taken");
        	return mv;
		}
		
	}
	public boolean Userauth(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("id") == null)
		{
			return false;
		}
		return true;
	}
	
	public User getuserfromsession(HttpServletRequest request)
	{
		User user;
		HttpSession session = request.getSession();
		if(session.getAttribute("id") == null)
		{
			return null;
		}
		int customer_id = (Integer) session.getAttribute("id");
		user = getuser(customer_id);
		return user;
		
	}
	
	public User getuser(int id)
	{
		
		Optional<User> user = userrepo.findById(id);
		return user.get();
	}
}
