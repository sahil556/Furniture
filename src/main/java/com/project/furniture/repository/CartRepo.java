package com.project.furniture.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.furniture.model.Cart;

@Repository
public interface CartRepo extends JpaRepository<Cart, Integer> {

}
