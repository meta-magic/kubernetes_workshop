package com.metamagic.productreviewms.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import com.metamagic.productreviewms.dto.ProductReview;

public class ProductReviewService {

	private static final ProductReviewService productservice = new ProductReviewService();
	
	private HashMap<String, ProductReview> productmap = new LinkedHashMap<String, ProductReview>();
	
	private ProductReviewService(){
	}
	
	public static ProductReviewService getInstance(){
		return productservice;
	}
	
	public Collection<ProductReview> getProductReview(String id){
		final List<ProductReview> productreview = new ArrayList<ProductReview>();
		productreview.add(new ProductReview("1", "Ketan Gote", "Very Good, value for money", Integer.valueOf(1)));
		productreview.add(new ProductReview("1", "Sagar Jadhav", "Average Phone", Integer.valueOf(1)));
		productreview.add(new ProductReview("1", "Dattaram Gawas", "Good", Integer.valueOf(1)));
		productreview.add(new ProductReview("1", "Deepali Arvind", "Bad", Integer.valueOf(1)));
		productreview.add(new ProductReview("1", "Kedar Kokil", "Very Bad, not value for money", Integer.valueOf(1)));
		
		return productreview;
	}
}
