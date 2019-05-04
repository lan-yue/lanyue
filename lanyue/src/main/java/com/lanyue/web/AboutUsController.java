package com.lanyue.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lanyue.pojo.AboutUs;
import com.lanyue.pojo.JoinPojo;
import com.lanyue.service.AboutUsService;
import com.lanyue.service.JoinService;

@RestController
public class AboutUsController {
	@Autowired
	private AboutUsService sboutUsService;

	@RequestMapping("/aboutUs")
	public ResponseEntity<AboutUs> list() {
		AboutUs aboutUs = sboutUsService.findById(1);
		return ResponseEntity.ok(aboutUs);
	}
	
}
