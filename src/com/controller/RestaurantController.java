package com.controller;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.RestaurantModel;


@Entity
@Table(name = "RESTAURANT")
@Controller
public class RestaurantController {

	@RequestMapping(value="/Restaurants", method = RequestMethod.GET)
	public String searchRestaurants(ModelMap model) throws Exception {
		RestaurantModel restaurantModel = new RestaurantModel();
		model.addAttribute("", "");
		return "Restaurants";
	}
	
}
