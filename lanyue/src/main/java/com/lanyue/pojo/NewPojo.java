package com.lanyue.pojo;

import lombok.Data;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.Date;

@Data
@Table(name = "news")
public class NewPojo {
    @Id
    @KeySql(useGeneratedKeys = true)
    private Integer newId;
    private String newTitle;
    private String newSubcontent;
    private String newContent;
    private Date newDate;
    @Transient
    private String date;
}
