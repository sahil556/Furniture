package com.project.furniture.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.project.furniture.dao.AddToCart;
import com.project.furniture.dao.Cartdao;
import com.project.furniture.model.Product;
import com.project.furniture.model.User;
import com.project.furniture.repository.CartRepo;
import com.project.furniture.service.OrderService;
import com.project.furniture.service.ProductService;
import com.project.furniture.service.Userservice;

@Controller
public class CartController {

	@Autowired
	Userservice userservice;

	@Autowired
	ProductService productservice;
	
	@Autowired
	OrderService orderservice;

	@PostMapping("/add")
	public RedirectView addTocart(@RequestParam("id") int id, @RequestParam("quantity") int Quantity,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		if (session.getAttribute("id") == null) {
			return new RedirectView("/login");
		}
		int customer_id = (Integer) session.getAttribute("id");

		User user = userservice.getuser(customer_id);
		Product product = productservice.getProduct(id);
		productservice.addtocart(user, product, Quantity);

		return new RedirectView("/Yourcart");
	}

	@RequestMapping("checkout")
	public ModelAndView checkout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		int customer_id = (Integer) session.getAttribute("id");
		User user = userservice.getuser(customer_id);
		Cartdao cartlist = productservice.listCartItems(user);
		
		ModelAndView mv = new ModelAndView("checkout");
		mv.addObject("user",user);
		mv.addObject("products",cartlist);
		return mv;
	}

	@RequestMapping("/Yourcart")
	public ModelAndView showcart(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		if (session.getAttribute("id") == null) {
			mv.setViewName("login");
			return mv;
		}
		int customer_id = (Integer) session.getAttribute("id");
		User user = userservice.getuser(customer_id);
		Cartdao cartlist = productservice.listCartItems(user);
		mv.setViewName("cart");
		mv.addObject("products", cartlist);
		return mv;

	}
	
	@RequestMapping("updatecart/{cartItemId}")
	public RedirectView updatecarrt(AddToCart addtocart, HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		if (session.getAttribute("id") == null) {
			return new RedirectView("login");
		}
		int customer_id = (Integer) session.getAttribute("id");
		User user = userservice.getuser(customer_id);
		Product product = productservice.getProduct(addtocart.getProductId());
		productservice.updateCartItem(addtocart,user, product);
		
		return new RedirectView("/Yourcart");
	}

	@RequestMapping("/deleteitem/{cartItemId}")
	public RedirectView deleteCartItem(@PathVariable("cartItemId") int itemID, HttpServletRequest request)
			throws UnsupportedEncodingException {
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		if (session.getAttribute("id") == null) {
			return new RedirectView("/login");
		}
		int userId = (Integer) session.getAttribute("id");
		productservice.deleteCartItem(itemID, userId);
		return new RedirectView("/Yourcart");
	}

	@RequestMapping("quickview/{id}")
	public ModelAndView quickviewProduct(@PathVariable(value = "id") String id) throws UnsupportedEncodingException {
		Product product = productservice.getProduct(Integer.parseInt(id));
		ModelAndView mv = new ModelAndView("singal");
		mv.addObject("product", product);
		return mv;
	}
	
	@RequestMapping("deleteall")
	public RedirectView deleteallcartitem(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		if (session.getAttribute("id") == null) {
			return new RedirectView("/login");
		}
		int userId = (Integer) session.getAttribute("id");
		User user = userservice.getuser(userId);
		productservice.deleteUserCartItems(user);
		return new RedirectView("/Yourcart");
	}

}
