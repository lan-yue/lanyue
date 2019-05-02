package com.lanyue.pojo;

import lombok.Data;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Table(name = "about")
public class AboutUs {
    @Id
    @KeySql(useGeneratedKeys = true)
    private Integer id;
    private String address;
    private String telephone;
    private String email;
}
