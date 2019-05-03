package com.lanyue.web;

import com.lanyue.pojo.ProductCase;
import com.lanyue.service.ProductCaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ProductCaseController {
    @Autowired
    private ProductCaseService productCaseService;
    @RequestMapping("/productCaseList")
    public ResponseEntity<List<ProductCase>> productCaseList(){
        List<ProductCase> list = productCaseService.productCaseList();
        return ResponseEntity.ok(list);
    }
}
