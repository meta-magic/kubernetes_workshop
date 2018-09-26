package com.metamagic.productreviewms.api;

import java.util.Collection;
import java.util.Date;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.metamagic.productreviewms.dto.ProductReview;
import com.metamagic.productreviewms.service.ProductReviewService;

@RestController
@RequestMapping(value = "/productreview")
public class ProductReviewAPI {

	@GetMapping(value = "/{id}")
	public ResponseEntity<Collection<ProductReview>> reviewById(@PathVariable("id") String id){
		System.out.println("Product Review reviewById  "+new Date());
		return new ResponseEntity<Collection<ProductReview>>(ProductReviewService.getInstance().getProductReview(id), HttpStatus.OK);
	}
	
	
}
