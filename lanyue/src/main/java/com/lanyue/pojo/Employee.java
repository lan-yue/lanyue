package com.lanyue.pojo;

import lombok.Data;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Table(name = "employee")
public class Employee {
    @Id
    @KeySql(useGeneratedKeys = true)
    private Integer id;
    private String name;
    private String introduction;
    private String img;
    private Boolean shouye;
    private Boolean status;
}
