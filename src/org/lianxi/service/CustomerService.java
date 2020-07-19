package org.lianxi.service;

import java.util.List;

import org.lianxi.entity.Customer;

public interface CustomerService {

	public List<Customer> allCustomer();
	
	public void addcustomer(Customer customer);
}
