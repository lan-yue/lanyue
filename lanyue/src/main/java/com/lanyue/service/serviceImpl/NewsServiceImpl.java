package com.lanyue.service.serviceImpl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanyue.mapper.NewMapper;
import com.lanyue.pojo.NewPojo;
import com.lanyue.service.NewsService;
import com.lanyue.vo.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.text.SimpleDateFormat;
import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {
    @Autowired
    private NewMapper newMapper;
    @Override
    public PageResult<NewPojo> findByPage(Integer page) {
        if(page==null){
            page=1;
        }
        PageHelper.startPage(page,2);
        Example example = new Example(NewPojo.class);
        example.orderBy("newDate").desc();
        List<NewPojo> newPojos = newMapper.selectByExample(example);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        for (NewPojo newPojo : newPojos) {
            String date = sdf.format(newPojo.getNewDate());
            newPojo.setDate(date);
        }
        PageInfo<NewPojo> info = new PageInfo<>(newPojos);
        Integer totalPage= Math.toIntExact((info.getTotal()+2-1)/2);
        return new PageResult<>(info.getTotal(),totalPage,page,newPojos);
    }

    @Override
    public NewPojo findById(Integer nid) {
        NewPojo newPojo = newMapper.selectByPrimaryKey(nid);
        return newPojo;
    }
}
