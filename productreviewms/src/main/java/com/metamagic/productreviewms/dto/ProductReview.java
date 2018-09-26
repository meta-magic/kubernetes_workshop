package com.metamagic.productreviewms.dto;

import java.util.Date;

public class ProductReview {

	private String id;
	private String author;
	private String desc;
	private Integer rating;
	private Date reviewDate;
	
	public ProductReview(String id, String name, String desc, Integer rating) {
		super();
		this.id = id;
		this.author = name;
		this.desc = desc;
		this.rating = rating;
		this.reviewDate = new Date();
	}

	 
	
	public String getId() {
		return id;
	}



	public String getAuthor() {
		return author;
	}



	public String getDesc() {
		return desc;
	}



	public Integer getRating() {
		return rating;
	}



	public Date getReviewDate() {
		return reviewDate;
	}



	@Override
	public String toString() {
		return this.id;
	}
	
}
