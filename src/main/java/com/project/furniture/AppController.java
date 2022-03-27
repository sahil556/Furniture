package com.project.furniture;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.furniture.dao.ProductDao;
import com.project.furniture.model.Product;
import com.project.furniture.repository.ProductRepo;
import com.project.furniture.service.ProductService;

@Controller
public class AppController {

	@Autowired
	ProductRepo productrepo;
	
	@Autowired
	ProductService productservice;
	
	@GetMapping("/")
	public String viewHomePage()
	{
		System.out.println("hi");
		return "index";
	}
	@RequestMapping("update/{id}")
	public String updateProduct(@PathVariable(value="id") String id, Model model)
	{
		Optional<Product> products = productrepo.findById(Integer.parseInt(id));
		Product product = products.get();
		model.addAttribute("product", product);
		return "addproduct";	
	}
	@RequestMapping("update_product/{id}")
	public ModelAndView update_product(@PathVariable(value="id") String id, ProductDao productdao, @RequestParam("imageUrl") MultipartFile multipartFile) throws IOException 
	{
		ModelAndView mv = productservice.save_upted_product(Integer.parseInt(id), productdao, multipartFile);
		List<Product> product = productservice.listproducts();
		mv.addObject("products", product);
		return mv;
	}
}
