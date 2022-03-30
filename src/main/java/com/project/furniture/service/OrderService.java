package com.project.furniture.service;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.furniture.dao.CartItemDao;
import com.project.furniture.dao.Cartdao;
import com.project.furniture.model.Order;
import com.project.furniture.model.OrderItem;
import com.project.furniture.model.User;
import com.project.furniture.repository.OrderItemRepo;
import com.project.furniture.repository.OrderRepo;

@Service
@Transactional
public class OrderService {
	@Autowired
	private ProductService productservice;

	@Autowired
	OrderRepo orderrepository;
	
	@Autowired
	OrderItemRepo orderitemrepository;

	public void placeorder(User user)
	{
		Cartdao cartdao = productservice.listCartItems(user);
		List<CartItemDao> cartitemlist = cartdao.getCartItems();
		
		Order neworder = new Order();
		neworder.setCreatedDate(new Date());
		neworder.setSessionId("sessionid"+user.getId());
		neworder.setUser(user);
		neworder.setTotalPrice(cartdao.getTotalCost());
		orderrepository.save(neworder);
		
		for(CartItemDao cartitemdao : cartitemlist)
		{
			OrderItem orderitem = new OrderItem();
			orderitem.setCreatedDate(new Date());
			orderitem.setPrice(cartitemdao.getProduct().getPrice());;
			orderitem.setProduct(cartitemdao.getProduct());
			orderitem.setQuantity(cartitemdao.getQuantity());
			orderitem.setOrder(neworder);
			orderitemrepository.save(orderitem);
		}
		productservice.deleteUserCartItems(user);
	}
	public List<Order> listOrders(User user) {
        return orderrepository.findAllByUserOrderByCreatedDateDesc(user);
    }

}
