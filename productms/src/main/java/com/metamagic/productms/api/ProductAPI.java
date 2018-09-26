package com.metamagic.productms.api;

import java.util.Arrays;
import java.util.Collection;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.metamagic.productms.dto.Product;
import com.metamagic.productms.service.ProductService;

@RestController
@RequestMapping(value = "/product")
public class ProductAPI {

	@Autowired
	private RestTemplate restTemplate;
	
	@GetMapping(value = "/findall")
	public ResponseEntity<Collection<Product>> findall(){
		System.out.println("Product findall  "+new Date());
		return new ResponseEntity<Collection<Product>>(ProductService.getInstance().getProducts(), HttpStatus.OK);
	}
	
	@GetMapping(value = "/find/{id}")
	public ResponseEntity<Product> findbyId(@PathVariable ("id") String id)
	{
		System.out.println("Product findbyId  "+new Date());
	
		return new ResponseEntity<Product>(this.getProduct(id), HttpStatus.OK);
	}
	
	private Product getProduct(String id){
		Product product = ProductService.getInstance().getProduct(id);
		if(product!=null){
			org.springframework.http.HttpHeaders headers = new org.springframework.http.HttpHeaders();
			headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
			headers.setContentType(MediaType.APPLICATION_JSON);
			HttpEntity request = new HttpEntity(headers);
			ResponseEntity response = this.restTemplate.exchange("http://review-svc/productreview/"+id, HttpMethod.GET, request,
					Object.class);
			product.attachReviews(response.getBody());
		}
		return product;
	}
	
	
}
