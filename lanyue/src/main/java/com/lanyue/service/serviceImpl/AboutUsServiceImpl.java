package com.lanyue.service.serviceImpl;

import com.lanyue.mapper.AboutUsMapper;
import com.lanyue.pojo.AboutUs;
import com.lanyue.service.AboutUsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AboutUsServiceImpl implements AboutUsService {
    @Autowired
    private AboutUsMapper aboutMapper;
    @Override
    public AboutUs findById(int i) {
        AboutUs aboutUs = aboutMapper.selectByPrimaryKey(i);
        return aboutUs;
    }
}
