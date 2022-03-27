package com.project.furniture.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.project.furniture.dao.ProductDao;
import com.project.furniture.model.Product;
import com.project.furniture.repository.ProductRepo;
import com.project.furniture.utils.FileUploadUtil;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@Component
public class ProductService {
	@Autowired
	private ProductRepo productrepository;

	public ModelAndView saveProduct(ProductDao productdao, MultipartFile multipartFile) {
		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
		Product product = new Product();

		System.out.println(fileName);

		product.setName(productdao.getName());
		product.setImageURL(fileName);
		product.setQuantity(productdao.getQuantity());
		product.setPrice(productdao.getPrice());
		product.setDescription(productdao.getDescription());

		String uploadDir = "src/main/webapp/productimg/";
		ModelAndView mv = new ModelAndView();
		
		try {
			FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
		} catch (IOException ioe) {
			mv.setViewName("addproduct");
			mv.addObject("message", "Image insertion failed");
			return mv;
		}

		Product savedProduct = productrepository.save(product);
		mv.setViewName("products");
		mv.addObject("message", "Product Added successfully !");
		return mv;

	}

	public List<Product> listproducts() {
		List<Product> products = productrepository.findAll();
		return products;
	}
	
	public Product getProduct(int id)
	{
		return productrepository.getById(id);
	}
	
	public void deleteproduct(int id) {
		productrepository.deleteById(id);
	}

	public static ProductDao getDaoFromProduct(Product product) {
		ProductDao productdao = new ProductDao(product);
		return productdao;
	}
	
	public ModelAndView save_upted_product(int product_id, ProductDao productdao, MultipartFile multipartFile) {
		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
		Product product = productrepository.getById(product_id);
		product.setName(productdao.getName());
		product.setDescription(productdao.getDescription());
		product.setQuantity(productdao.getQuantity());
		product.setPrice(productdao.getPrice());
		product.setImageURL(fileName);
		productrepository.save(product);
		ModelAndView mv = new ModelAndView("products");
		return mv;
		
	}

}
