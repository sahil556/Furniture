package com.project.furniture.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.furniture.model.WishList;

@Repository
public interface WishListRepo extends JpaRepository<WishList, Integer>{

}
