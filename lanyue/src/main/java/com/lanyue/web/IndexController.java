package com.lanyue.web;

import com.lanyue.pojo.AboutUs;
import com.lanyue.pojo.Cooperative;
import com.lanyue.pojo.Employee;
import com.lanyue.service.AboutUsService;
import com.lanyue.service.CooperativeService;
import com.lanyue.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class IndexController {
    @Autowired
    private EmployeeService employeeService;
    @Autowired
    private CooperativeService cooperativeService;
    @Autowired
    private AboutUsService aboutService;
    @RequestMapping("/index")
    public ResponseEntity<List<Employee>> index(){
        List<Employee> list=employeeService.findEmployeeByIndex();
        return ResponseEntity.ok(list);
    }
    @RequestMapping("/footer")
    public ResponseEntity<Map<String,Object>> footer(){
        List<Cooperative> cooperativeList =  cooperativeService.findByFooter();
        AboutUs aboutUs=aboutService.findById(1);
        Map<String, Object> map = new HashMap<>();
        map.put("hezuo",cooperativeList);
        map.put("lianxi",aboutUs);
        return ResponseEntity.ok(map);
    }
}
