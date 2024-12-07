package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.repository.CustomerRepository;

@Service
public class CustomerServiceimpl implements CustomerService {
	@Autowired
	private CustomerRepository customerRepository;

	@Override
	public String customerRegistration(Customer customer) {
	    customerRepository.save(customer); // Assuming `save` is a JPA method in `CustomerRepository`
	    return "Registration Successful";
	}

	@Override
	public Customer checkCustomerLogin(String temail, String tpassword) {
		// TODO Auto-generated method stub
		return  customerRepository.checkCustomerLogin(temail,tpassword);
	}

}
