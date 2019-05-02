package com.lanyue.web;

import com.lanyue.pojo.Product;
import com.lanyue.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ProductController {
    @Autowired
    private ProductService productService;
    @RequestMapping("/productList")
    public ResponseEntity<List<Product>> list(){
        List<Product> list = productService.findByList();
        return ResponseEntity.ok(list);
    }
}
