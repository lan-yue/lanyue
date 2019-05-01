package com.lanyue.web;

import com.lanyue.pojo.Employee;
import com.lanyue.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class IndexController {
    @Autowired
    private EmployeeService employeeService;
    @RequestMapping("/index")
    public ResponseEntity<List<Employee>> index(){
        List<Employee> list=employeeService.findEmployeeByIndex();
        return ResponseEntity.ok(list);
    }
}
