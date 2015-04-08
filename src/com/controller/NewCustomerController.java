/**
 * 
 */
package com.controller;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.HibernateUtil;
import com.model.NewCustomer;

/**
 * @author abhay.a.tripathi
 *
 */

@Entity
@Table(name = "USER_INFORMATION")
@Controller
public class NewCustomerController {
	
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public String onRegister(ModelMap model) throws Exception {
		NewCustomer newCust = new NewCustomer();
		model.addAttribute("registrationForm", newCust);
		return "RegistrationPage";
	}
	
	@RequestMapping(value="/maps", method = RequestMethod.GET)
	public String gotoMaps(ModelMap model) throws Exception {
		/*NewCustomer newCust = new NewCustomer();*/
		model.addAttribute("", "");
		return "RenderMap";
	}
	
	@RequestMapping(value="/Restaurants", method = RequestMethod.GET)
	public String searchRestaurants(ModelMap model) throws Exception {
		/*NewCustomer newCust = new NewCustomer();*/
		model.addAttribute("", "");
		return "Restaurants";
	}
	

	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String proceedRegistration(@Valid @ModelAttribute("registrationForm") NewCustomer newCust, BindingResult result, Model model) throws Exception {
		if(result.hasErrors()){
			return "RegistrationPage";
		}
		model.addAttribute(newCust);
		
		String loginName = newCust.getFirstName()+newCust.getLastName();
		String password = newCust.getFirstName() + "123";
		
		NewCustomer cust = new NewCustomer(newCust.getId(), newCust.getFirstName(), newCust.getLastName(), newCust.getDOB(), 
				newCust.getGender(), newCust.getAddress(), newCust.getCity(), newCust.getState(), newCust.getCountry(), newCust.getEmail(),
				newCust.getMobile(), loginName, password);
		cust = HibernateUtil.save(cust);
		cust = HibernateUtil.read(cust.getId());
		System.out.printf("%d %s %s \n", cust.getId(), cust.getFirstName(), cust.getLastName());
		
		return "SaveNewCustomer";
	}
	
/*	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String saveCustomerDetails(@ModelAttribute("registrationDetails") NewCustomer newCust, Model model) throws Exception {
		model.addAttribute(newCust);
		return "CustomerLoginForm";
	}*/
	
	/*private Map<String, NewCustomer> customers = null;
//	private static final Logger logger = LoggerFactory.getLogger(NewCustomerController.class);
	public NewCustomerController() {
		customers = new HashMap<String, NewCustomer>();
	}
	
	@RequestMapping(value = "/SaveNewCustomer" , method = RequestMethod.POST)
	public String saveCustomerPage(NewCustomer newCust, BindingResult binding, Model model) {
		if(binding.hasErrors()) {
//			logger.info("Found errors while binding..");
			return "custSave";
		}
//			logger.info("Return a new Page named SaveNewCustomer");
		model.addAttribute("saveNewCustomer", newCust);
		customers.put(newCust.getEmail(), newCust);
		return "SaveNewCustomer";
	}*/
}
