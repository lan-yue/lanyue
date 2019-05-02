package com.lanyue.service.serviceImpl;

import com.lanyue.mapper.AboutMapper;
import com.lanyue.pojo.AboutUs;
import com.lanyue.service.AboutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AboutServiceImpl implements AboutService {
    @Autowired
    private AboutMapper aboutMapper;
    @Override
    public AboutUs findById(int i) {
        AboutUs aboutUs = aboutMapper.selectByPrimaryKey(i);
        return aboutUs;
    }
}
