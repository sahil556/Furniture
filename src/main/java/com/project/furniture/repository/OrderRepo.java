package com.project.furniture.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.furniture.model.Order;

@Repository
public interface OrderRepo extends JpaRepository<Order, Integer> {

}
