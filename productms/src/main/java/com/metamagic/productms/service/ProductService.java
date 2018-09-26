package com.metamagic.productms.service;

import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;

import com.metamagic.productms.dto.Product;

public class ProductService {

	private static final ProductService productservice = new ProductService();
	
	private HashMap<String, Product> productmap = new LinkedHashMap<String, Product>();
	
	private ProductService(){
		productmap.put("1", new Product("1", "Apple", "Apple Mobile", 100000.00, ""));
		productmap.put("2", new Product("2", "Samsung", "Samsung Mobile", 40000.00, ""));
		productmap.put("3", new Product("3", "Nokia", "Nokia Mobile", 20000.00, ""));
		productmap.put("4", new Product("4", "MI", "MI Mobile", 4000.00, ""));
		productmap.put("5", new Product("5", "LG", "LG", 25000.00, ""));
		productmap.put("6", new Product("6", "JIO", "JIO", 2500.00, ""));
		productmap.put("7", new Product("7", "Sony", "Sony", 2500.00, ""));
	}
	
	public static ProductService getInstance(){
		return productservice;
	}
	
	public Collection<Product> getProducts(){
		return this.productmap.values();
	}
	
	public Product getProduct(String id){
		return this.productmap.get(id);
	}
	
}
