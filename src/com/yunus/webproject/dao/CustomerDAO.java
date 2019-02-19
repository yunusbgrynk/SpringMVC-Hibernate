package com.yunus.webproject.dao;

import java.util.List;

import com.yunus.webproject.entity.Customer;

public interface CustomerDAO {
	
	public List<Customer> getCustomers();
	
	public void saveCustomer(Customer theCustomer);
	
	public Customer getCustomers(int theId);

	public void deleteCustomer(int theId);




}
