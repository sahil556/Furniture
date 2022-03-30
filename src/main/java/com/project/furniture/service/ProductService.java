package com.project.furniture.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.project.furniture.dao.AddToCart;
import com.project.furniture.dao.CartItemDao;
import com.project.furniture.dao.Cartdao;
import com.project.furniture.dao.ProductDao;
import com.project.furniture.model.Cart;
import com.project.furniture.model.Product;
import com.project.furniture.model.User;
import com.project.furniture.repository.CartRepo;
import com.project.furniture.repository.ProductRepo;
import com.project.furniture.utils.FileUploadUtil;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
@Component
public class ProductService {
	@Autowired
	private ProductRepo productrepository;
	
	@Autowired
	private CartRepo cartrepository;
	
	public void addtocart(User user, Product product, int qty)
	{
		Cart cart = new Cart(product, qty, user);
		cartrepository.save(cart);
		ModelAndView mv = new ModelAndView("home");
		
	}
	
	public Cartdao listCartItems(User user) {
        List<Cart> cartList = cartrepository.findAllByUserOrderByCreatedDateDesc(user);
        List<CartItemDao> cartItems = new ArrayList<>();
        for (Cart cart:cartList){
            CartItemDao cartItemDao = getDtoFromCart(cart);
            cartItems.add(cartItemDao);
        }
        double totalCost = 0;
        for (CartItemDao cartItemDto :cartItems){
            totalCost += (cartItemDto.getProduct().getPrice()* cartItemDto.getQuantity() - (cartItemDto.getProduct().getPrice()* cartItemDto.getQuantity() * 0.01 * cartItemDto.getProduct().getDiscount() ) );
        }
        return new Cartdao(cartItems,totalCost);
    }
	
	
	public void deleteCartItem(int id, int userId) 
	{
		if (cartrepository.existsById(id))
		{
        cartrepository.deleteById(id);
		}
	}
	
	
	public static CartItemDao getDtoFromCart(Cart cart) {
	        return new CartItemDao(cart);
	    }
	public ModelAndView saveProduct(ProductDao productdao, MultipartFile multipartFile) {
		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
		Product product = new Product();

		

		product.setName(productdao.getName());
		product.setImageURL(fileName);
		product.setQuantity(productdao.getQuantity());
		product.setPrice(productdao.getPrice());
		product.setDescription(productdao.getDescription());
		product.setDiscount(productdao.getDiscount());
		product.setCategory(productdao.getCategory());

		String uploadDir = "src/main/webapp/productimg/";
		ModelAndView mv = new ModelAndView();
		
		try {
			FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
		} catch (IOException ioe) {
			mv.setViewName("addproduct");
			mv.addObject("message", "Image insertion failed");
			return mv;
		}

		productrepository.save(product);
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
	
	public ModelAndView save_updated_product(int product_id, ProductDao productdao, MultipartFile multipartFile) {
		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
		Product product = productrepository.getById(product_id);
		product.setName(productdao.getName());
		product.setDescription(productdao.getDescription());
		product.setQuantity(productdao.getQuantity());
		product.setPrice(productdao.getPrice());
		product.setDiscount(productdao.getDiscount());
		product.setCategory(productdao.getCategory());
		
		if(!fileName.equals(""))
		product.setImageURL(fileName);
		else
		product.setImageURL(product.getImageURL());
		productrepository.save(product);
		ModelAndView mv = new ModelAndView("products");
		return mv;
		
	}
	
	public void updateCartItem(AddToCart addtocart, User user, Product product)
	{
		@SuppressWarnings("deprecation")
		Cart cart  = cartrepository.getOne(addtocart.getId());
		cart.setQuantity(addtocart.getQuantity());
		cart.setCreatedDate(new Date());
		cartrepository.save(cart);
	}
	
	public void deleteUserCartItems(User user) {
        cartrepository.deleteByUser(user);
    }
}
