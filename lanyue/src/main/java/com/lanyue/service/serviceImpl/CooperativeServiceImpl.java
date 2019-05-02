package com.lanyue.service.serviceImpl;

import com.github.pagehelper.PageHelper;
import com.lanyue.mapper.CooperativeMapper;
import com.lanyue.pojo.Cooperative;
import com.lanyue.service.CooperativeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CooperativeServiceImpl implements CooperativeService {
    @Autowired
    private CooperativeMapper cooperativeMapper;
    @Override
    public List<Cooperative> findByFooter() {
        PageHelper.startPage(1,5);
        List<Cooperative> cooperativeList = cooperativeMapper.selectAll();
        return cooperativeList;
    }
}
