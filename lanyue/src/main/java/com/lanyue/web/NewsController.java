package com.lanyue.web;

import com.lanyue.pojo.NewPojo;
import com.lanyue.service.NewsService;
import com.lanyue.vo.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class NewsController {
    int i=1;
    @Autowired
    private NewsService newsService;
    @RequestMapping("/newsList")
    public ResponseEntity<PageResult<NewPojo>> newsList(@RequestParam Integer page){
        PageResult<NewPojo> pageList=newsService.findByPage(page);
        return ResponseEntity.ok(pageList);
    }
    @RequestMapping("/newContent")
    public ResponseEntity<NewPojo> newContent(@RequestParam Integer nid){
        NewPojo newPojo=newsService.findById(nid);
        return ResponseEntity.ok(newPojo);
    }
}
