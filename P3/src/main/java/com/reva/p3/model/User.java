package com.reva.p3.model;

/**
* User.java
* This is a model class represents a User entity
* @author Bharathraj
*
*/
public class User {
	protected int id;
	protected String regno;
	protected String name;
	protected String email;
	protected String course;
	protected String contact;
	
	public User(int id,String regno,String name, String email, String course,String contact) {
		super();
		this.id = id;
		this.regno=regno;
		this.name = name;
		this.email = email;
		this.course = course;
		this.contact = contact;
	}
	
	public User(String regno,String name, String email, String course,String contact) {
		super();
		
		this.regno=regno;
		this.name = name;
		this.email = email;
		this.course = course;
		this.contact = contact;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRegno() {
		return regno;
	}
	public void setRegno(String regno) {
		this.regno = regno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	

}