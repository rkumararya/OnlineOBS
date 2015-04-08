/**
 * 
 */
package com.controller;


//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Customer;

/**
 * @author abhay.a.tripathi
 *
 */

@Controller
public class CustomerController{
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String onSubmit(ModelMap model) throws Exception {
		Customer cust = new Customer();
		model.addAttribute("loginForm", cust);
		return "CustomerLoginForm";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String processingLogin(@Valid @ModelAttribute("loginForm") Customer cust, BindingResult result, Model model) throws Exception {
		if (result.hasErrors()) {
			return "CustomerLoginForm";
		}
		model.addAttribute(cust);
		return "CustomerLoginSuccess";
	}
	
	@RequestMapping(value="/ForgotPassword", method = RequestMethod.GET)
	public String forgotPassword() throws Exception {
		return "ForgotPassword";
	}
	
	@RequestMapping(value = "/RegistrationPage", method = RequestMethod.GET)
	public String newUser() throws Exception {
		return "RegistrationPage";
	}
	
	@RequestMapping(value = "/ChangePassword", method = RequestMethod.GET)
	public String changePassword() throws Exception {
		return "ChangePassword";
	}
}
