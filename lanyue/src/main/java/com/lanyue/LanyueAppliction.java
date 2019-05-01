package com.lanyue;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@MapperScan("com.lanyue.mapper")
public class LanyueAppliction {
    public static void main(String[] args) {
        SpringApplication.run(LanyueAppliction.class);
    }
}
