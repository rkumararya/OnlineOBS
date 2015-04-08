package com.controller;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
@RequestMapping("/")
public class HomePageController {
 
    @RequestMapping("/home")
    public ModelAndView homePage() {
        return new ModelAndView("home", "message", "");
    }
}  