package com.galosoft.dao;

import java.util.List;
import com.galosoft.model.Customer;

public interface CustomerDao {
	
	void addCustomer(Customer customer);
	Customer getCustomerById(int customerId);
	List<Customer> getAllCustomer();
	Customer getCustomerByUsername(String username);

}
