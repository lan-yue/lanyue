package com.lanyue.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lanyue.mapper.JoinMapper;
import com.lanyue.pojo.JoinPojo;
import com.lanyue.service.JoinService;

@Service
public class JoinServiceImpl implements JoinService {
	@Autowired
	private JoinMapper joinMapper;

	@Override
	public List<JoinPojo> findByList() {
		List<JoinPojo> list = joinMapper.selectAll();
		return list;
	}
}
