package com.lanyue.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lanyue.pojo.JoinPojo;
import com.lanyue.service.JoinService;

@RestController
public class JoinController {
	@Autowired
	private JoinService joinService;

	@RequestMapping("/join")
	public ResponseEntity<List<JoinPojo>> list() {
		List<JoinPojo> list = joinService.findByList();
		for (JoinPojo jp : list) {
			String[] split = jp.getMessage().split(";");
			jp.setSplitStr(split);
		}
		return ResponseEntity.ok(list);
	}
}
