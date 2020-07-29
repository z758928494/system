package com.kindergarten.rector;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class RectorApplication {

    public static void main(String[] args) {
        SpringApplication.run(RectorApplication.class, args);
    }

}
