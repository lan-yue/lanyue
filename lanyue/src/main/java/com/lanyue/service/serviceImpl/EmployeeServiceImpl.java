package com.lanyue.service.serviceImpl;

import com.lanyue.mapper.EmployeeMapper;
import com.lanyue.pojo.Employee;
import com.lanyue.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    private EmployeeMapper employeeMapper;
    @Override
    public List<Employee> findEmployeeByIndex() {
        Example example = new Example(Employee.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shouye",1);
        criteria.andEqualTo("status",1);

        List<Employee> employees = employeeMapper.selectByExample(example);
        for (Employee employee : employees) {
            System.out.println(employee.getName());
        }
        return employees;
    }
}
