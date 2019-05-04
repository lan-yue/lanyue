package com.lanyue.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lanyue.pojo.CustomerPojo;
import com.lanyue.service.CustomerService;

@RestController
public class CustomerController {
	@Autowired
	private CustomerService customerService;

	
	@RequestMapping("/addCustomer")
	public ResponseEntity addCustomer(CustomerPojo customerPojo) {
		int i = customerService.addCustomer(customerPojo);
		if(i==0){
			return (ResponseEntity) ResponseEntity.status(200);
		}
		return (ResponseEntity) ResponseEntity.ok();
	}
}
