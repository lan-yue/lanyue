package com.lanyue.service;

import com.lanyue.pojo.NewPojo;
import com.lanyue.vo.PageResult;



public interface NewsService {
    PageResult<NewPojo> findByPage(Integer page);

    NewPojo findById(Integer nid);
}
