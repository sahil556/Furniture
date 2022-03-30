package com.project.furniture.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.furniture.model.Order;
import com.project.furniture.model.User;

@Repository
public interface OrderRepo extends JpaRepository<Order, Integer> {
	 List<Order> findAllByUserOrderByCreatedDateDesc(User user);

}
