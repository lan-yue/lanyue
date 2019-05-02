package com.lanyue.service.serviceImpl;

import com.lanyue.mapper.ProductMapper;
import com.lanyue.pojo.Product;
import com.lanyue.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PeoductServiceImpl implements ProductService {
    @Autowired
    private ProductMapper productMapper;
    @Override
    public List<Product> findByList() {
        List<Product> products = productMapper.selectAll();
        return products;
    }
}
