package com.lanyue.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lanyue.mapper.AboutUsMapper;
import com.lanyue.mapper.CustomerMapper;
import com.lanyue.pojo.CustomerPojo;
import com.lanyue.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerMapper customerMapper;

	@Override
	public int addCustomer(CustomerPojo customerPojo) {
//		int i = customerMapper.insertSelective(customerPojo);
		int i = customerMapper.insert(customerPojo);
		return i;
	}
}
