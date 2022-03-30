package com.project.furniture.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.project.furniture.dao.Cartdao;
import com.project.furniture.dao.CheckoutItemdao;
import com.project.furniture.model.Order;
import com.project.furniture.model.User;
import com.project.furniture.service.OrderService;
import com.project.furniture.service.ProductService;
import com.project.furniture.service.Userservice;

@Controller
public class OrderController {
	@Autowired
	OrderService orderservice;

	@Autowired
	Userservice userservice;

	@Autowired
	ProductService productservice;

	@PostMapping("placeorder")
	public RedirectView placeorder(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session.getAttribute("id") == null) {
			return new RedirectView("login");
		}
		ModelAndView mv = new ModelAndView("my-account");
		int customer_id = (Integer) session.getAttribute("id");
		User user = userservice.getuser(customer_id);
		mv.addObject("user", user);

		Cartdao cartdao = productservice.listCartItems(user);
		if (cartdao.getTotalCost() == 0) {
			return new RedirectView("userprofile");
		}

		orderservice.placeorder(user);

		return new RedirectView("userprofile");

	}

//	@RequestMapping("viewaccount")
//	public ModelAndView viewaccount()
//	{
//		ModelAndView mv = new ModelAndView("my-account");
//		
//	}
//	
}
