package org.lianxi.controller;

import java.util.List;
import java.util.Map;

import org.lianxi.entity.Customer;
import org.lianxi.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}
	
	@RequestMapping("allCustomers")
	public String allCustomers(Map<String,Object> map) {
		List<Customer> allCustomers= customerService.allCustomer();
		map.put("allCustomers", allCustomers);
		return "customers";
		
	}
	
	@RequestMapping("addcustomer")
	public String addcustomer(Customer customer) {
		customerService.addcustomer(customer);
		return "addcustomersuccess";		
	}
	
	
}
