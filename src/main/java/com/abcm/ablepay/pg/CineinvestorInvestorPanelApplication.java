package com.abcm.ablepay.pg;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class CineinvestorInvestorPanelApplication {
	
	@GetMapping("/msg")
	public String msg()
	{
		return "sucees,u deployed over azure";
	}

	public static void main(String[] args) {
		SpringApplication.run(CineinvestorInvestorPanelApplication.class, args);
	}

}
