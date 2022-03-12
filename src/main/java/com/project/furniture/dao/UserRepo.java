package com.project.furniture.dao;

import org.springframework.data.repository.CrudRepository;

import com.project.furniture.model.User;

public interface UserRepo extends CrudRepository<User, Integer> 
{
	
}
