package com.yunus.webproject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yunus.webproject.entity.Customer;
import com.yunus.webproject.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	//Spring will scan for a component that implements CustomerDAO interface.
	//need to inject the customer dao
	//we canceled these transactions because moved functionality this to the service layer.
	//So, we no longer gonna use the DAO directly.
	//Instead, we gonna use that new layer.
//	@Autowired
//	private CustomerDAO customerDao;
	
	//inject customer Service
	@Autowired
	private CustomerService customerService;
	
//	@RequestMapping("/list")
	@GetMapping("/list")
	public String listCustomers(Model theModel) {
		
		//get the customers from the dao 
		List<Customer> theCustomers=customerService.getCustomers();
		
		//add the customers to the model
		theModel.addAttribute("customers",theCustomers);
		
		return "list-customer";
	}
	
	@GetMapping("/showFormAdd")
	public String showFormAdd(Model theModel) {
		
		//create model attribute to bind form data
		Customer theCustomer=new Customer();
		theModel.addAttribute("customer", theCustomer);
		
		return "customer-form";
	}
	
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer) {
		
		
		//save the customer using our service
		customerService.saveCustomer(theCustomer);
		
		
		return "redirect:/customer/list";
	}
	
	@GetMapping("/showFormUpdate")
	public String showFormUpdate(@RequestParam("customerId") int theId, Model theModel) {
		
		//get the customer from our service
		Customer theCustomer=customerService.getCustomers(theId);
		//set customer as a model attribute to pre-populate the form
		theModel.addAttribute("customer",theCustomer);
		
		//send over to our form
		return "customer-form";
		
	}
	
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("customerId") int theId) {
		
		//delete customer
		customerService.deleteCustomer(theId);
		
		return "redirect:/customer/list";
	}
	

	
	

}