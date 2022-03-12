package com.project.furniture;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.project.furniture.model.User;


@SpringBootApplication
public class FurnitureApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext context =  SpringApplication.run(FurnitureApplication.class, args);
	
		
		
	}
	
	
}
