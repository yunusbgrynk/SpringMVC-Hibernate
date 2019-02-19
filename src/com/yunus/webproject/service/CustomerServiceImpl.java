package com.yunus.webproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yunus.webproject.dao.CustomerDAO;
import com.yunus.webproject.entity.Customer;


@Service
public class CustomerServiceImpl implements CustomerService {
	
	//inject customerDao
	@Autowired
	private CustomerDAO customerDao;

	@Override
	@Transactional //define transactions at Service layer
	public List<Customer> getCustomers() {
		return customerDao.getCustomers();
	}

	@Override
	@Transactional
	public void saveCustomer(Customer theCustomer) {
		customerDao.saveCustomer(theCustomer);
	}

	@Override
	@Transactional
	public Customer getCustomers(int theId) {
		return customerDao.getCustomers(theId);
	}

	@Override
	@Transactional
	public void deleteCustomer(int theId) {
		
		customerDao.deleteCustomer(theId);
		
	}


	
	

}
