package com.metamagic.productms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
public class ProductMsApplication extends SpringBootServletInitializer{

	
	public static void main(String[] args) {
		SpringApplication.run(ProductMsApplication.class, args);
	}
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(ProductMsApplication.class);
	}
	
	@Bean
	public RestTemplate restTemplate(){
		return new RestTemplate();
	}
}
