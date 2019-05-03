package com.lanyue.service.serviceImpl;

import com.lanyue.mapper.ProductCaseMapper;
import com.lanyue.pojo.ProductCase;
import com.lanyue.service.ProductCaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductCaseServiceImpl implements ProductCaseService {
    @Autowired
    private ProductCaseMapper productCaseMapper;

    @Override
    public List<ProductCase> productCaseList() {
        List<ProductCase> list = productCaseMapper.selectAll();
        return list;
    }
}
