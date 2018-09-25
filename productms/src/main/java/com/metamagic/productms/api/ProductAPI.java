package com.metamagic.productms.api;

import java.util.Collection;
import java.util.Date;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.metamagic.productms.dto.Product;
import com.metamagic.productms.service.ProductService;

@RestController
@RequestMapping(value = "/product")
public class ProductAPI {

	@GetMapping(value = "/findall")
	public ResponseEntity<Collection<Product>> findall(){
		System.out.println("Product findall  "+new Date());
		return new ResponseEntity<Collection<Product>>(ProductService.getInstance().getProducts(), HttpStatus.OK);
	}
	
	
}
