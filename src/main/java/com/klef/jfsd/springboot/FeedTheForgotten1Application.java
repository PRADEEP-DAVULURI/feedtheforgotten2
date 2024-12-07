package com.klef.jfsd.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication 
@ComponentScan
public class FeedTheForgotten1Application {

	public static void main(String[] args) {
		SpringApplication.run(FeedTheForgotten1Application.class, args);
		System.out.println("hi github");
	}

}
