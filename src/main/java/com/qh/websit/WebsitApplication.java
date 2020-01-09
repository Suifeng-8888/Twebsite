package com.qh.websit;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
@ComponentScan("com.qh.websit.*")
@MapperScan("com.qh.websit.*.mapper")
public class WebsitApplication {

    public static void main(String[] args) {
        SpringApplication.run(WebsitApplication.class, args);
    }

}
