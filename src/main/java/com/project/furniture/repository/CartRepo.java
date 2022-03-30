package com.project.furniture.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.furniture.model.Cart;
import com.project.furniture.model.User;

@Repository
@Transactional
public interface CartRepo extends JpaRepository<Cart, Integer> {
	
	 List<Cart> findAllByUserOrderByCreatedDateDesc(User user);
	 
	 List<Cart> deleteByUser(User user);
	
}
