package com.lanyue.pojo;

import lombok.Data;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Table(name = "product")
public class Product {
    @Id
    @KeySql(useGeneratedKeys = true)
    private Integer pid;
    private String pTitle;
    private String pContent;
    private String pImg;
    private Long hots;
}
