package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="Customer_Table")
public class Customer {
	
	@Id //primary key = unique key + not null.
	@GeneratedValue(strategy= GenerationType.IDENTITY) // auto increment.Here the customer not produce their own ID not but that ID were generated according to the no customers in the order 001.002,003 etc.,. this like the numbers will increased in the order based on the customers
	@Column(name = "Customer_id")
	private int id;
	@Column(name = "Customer_name",nullable = false,length = 100)
	private String name;
	@Column(name = "Customer_gender",nullable = false,length = 10)
	private String gender;
	@Column(name = "Customer_dateofbirth",nullable = false,length = 20)
	private String dateofbirth;
	@Column(name = "Customer_email",nullable = false,unique=true,length = 100)
	private String email;
	@Column(name = "Customer_password",nullable = false,length = 100)
	private String password;
	@Column(name = "Customer_location",nullable = false,length = 100)
	private String location;
	@Column(name = "Customer_contact",nullable = false,length = 20)
	private String contactno;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

}
