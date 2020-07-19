package org.lianxi.service.impl;

import java.util.List;

import org.lianxi.entity.Customer;
import org.lianxi.mapper.CustomerMapper;
import org.lianxi.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerMapper customerMapper;

	public void setCustomerMapper(CustomerMapper customerMapper) {
		this.customerMapper = customerMapper;
	}

	@Override
	public List<Customer> allCustomer() {
		return customerMapper.allCustomer();
	}

	@Override
	public void addcustomer(Customer customer) {
		customerMapper.addcustomer(customer);
	}
	
	
	
}
