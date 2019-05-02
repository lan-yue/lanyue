package com.lanyue.pojo;

import lombok.Data;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Table(name = "cooperative")
public class Cooperative {
    @Id
    @KeySql(useGeneratedKeys = true)
    private Integer id;
    private String cname;
    private String chref;
}
