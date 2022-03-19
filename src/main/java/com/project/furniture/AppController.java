package com.project.furniture;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class AppController {

	@GetMapping("/")
	public String viewHomePage()
	{
		System.out.println("hi");
		return "index";
	}
}
