package com.example.testing.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Cont {
	
	@GetMapping("/")
	public String hello()
	{
		return "helllo";
	}

}
