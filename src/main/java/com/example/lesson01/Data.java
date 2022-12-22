package com.example.lesson01;

import org.springframework.web.bind.annotation.RequestMapping;

public class Data {
	
	//필드
	private int id;
	private String name;
	
	// getter setter
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	

}
