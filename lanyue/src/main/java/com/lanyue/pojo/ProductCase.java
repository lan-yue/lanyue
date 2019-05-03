package com.lanyue.pojo;

import lombok.Data;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Table(name = "product_case")
public class ProductCase {
    @Id
    @KeySql(useGeneratedKeys = true)
    private Integer pcId;
    private String pcTitle;
    private String pcSubtitle;
    private String pcContent;
    private String pcImg;
}
