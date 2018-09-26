package com.metamagic.productms.dto;

public class Product {

	private String id;
	private String name;
	private String desc;
	private Double price;
	private String image;
	private Object reviews;
	
	public Product(String id, String name, String desc, Double price, String image) {
		super();
		this.id = id;
		this.name = name;
		this.desc = desc;
		this.price = price;
		this.image = image;
	}
	
	public Product(String id, String name, String desc, Double price, String image, Object reviews) {
		super();
		this.id = id;
		this.name = name;
		this.desc = desc;
		this.price = price;
		this.image = image;
		this.reviews = reviews;
	}

	public String getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getDesc() {
		return desc;
	}

	public Double getPrice() {
		return price;
	}

	public String getImage() {
		return image;
	}
	
	public Object getReviews(){
		return this.reviews;
	}
	
	public void attachReviews(Object review){
		this.reviews = review;
	}
	@Override
	public String toString() {
		return this.id;
	}
	
}
