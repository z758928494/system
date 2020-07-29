package com.kindergaten.healther;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class HealtherApplication {

    public static void main(String[] args) {
        SpringApplication.run(HealtherApplication.class, args);
    }

}
