package com.mashibing;

import lombok.extern.slf4j.Slf4j;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * Hello world!
 */
@SpringBootApplication
@Slf4j
@MapperScan({"com.gitee.sunchenbin.mybatis.actable.dao.*","com.mashibing.elk.esclient.base.mapper"})
@ComponentScan(basePackages = {"com.gitee.sunchenbin.mybatis.actable.manager.*","com.mashibing"})
public class ELKApplication {
    public static void main(String[] args) {
        SpringApplication.run(ELKApplication.class, args);
        log.info("elk project starting...");
    }
}
