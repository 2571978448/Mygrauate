package org.lianxi.mapper;

import java.util.List;

import org.lianxi.entity.Customer;

public interface CustomerMapper {

	public List<Customer> allCustomer();
	
	public void addcustomer(Customer customer);
	
}
