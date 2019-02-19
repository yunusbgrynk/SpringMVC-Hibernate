package com.yunus.webproject.service;

import java.util.List;

import com.yunus.webproject.entity.Customer;

public interface CustomerService {

	public List<Customer> getCustomers();
	
	public void saveCustomer(Customer theCustomer);
	
	public Customer getCustomers(int theId);

	public void deleteCustomer(int theId);



}
