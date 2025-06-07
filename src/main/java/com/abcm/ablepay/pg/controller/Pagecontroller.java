package com.abcm.ablepay.pg.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Pagecontroller {
	
    private static final Logger logger = LoggerFactory.getLogger(Pagecontroller.class);

    @GetMapping("/")
    public String landingPage() {
        logger.info("Inside landingPage");
        return "LandingPage";
    }

    @GetMapping("/About")
    public String about() {
        logger.info("Inside about");
        return "About";
    }

    @GetMapping("/Investmentoption")
    public String investment() {
        logger.info("Inside investment");
        return "Investmentoption";
    }

    @GetMapping("/Audition")
    public String audition() {
        logger.info("Inside audition");
        return "Audition";
    }

    @GetMapping("/Howitworks")
    public String howitworks() {
        logger.info("Inside howitworks");
        return "Howitworks";
    }

    @GetMapping("/Contact")
    public String contact() {
        logger.info("Inside contact");
        return "Contact";
    }

    @GetMapping("/Registration")
    public String Registration() {
        logger.info("Inside Registration");
        return "Registration";
    }

    @GetMapping("/Explore")
    public String Explore() {
        logger.info("Inside Explore");
        return "Explore";
    }
    
    @GetMapping("/Term")
    public String Term() {
        logger.info("Inside Term");
        return "Term";
    }

       @GetMapping("/Updates")
    public String Updates() {
        logger.info("Inside Updates");
        return "Updates";
    }

}