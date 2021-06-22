package com.FlyAway.DB;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Admin")
public class Admin {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="AdminId")
	private	int Ad_Id;
	
	@Column(name="AdminEmail")
	private	String A_Email;
	
	@Column(name="AdminPassword")
	private	String A_Password;
	
	
	// constructor
	
	public Admin() {
		super();
	}


	// getter and setter methods
	public Admin(String a_Email, String a_Password) {
		super();
		A_Email = a_Email;
		A_Password = a_Password;
	}


	public String getA_Email() {
		return A_Email;
	}


	public void setA_Email(String a_Email) {
		A_Email = a_Email;
	}


	public String getA_Password() {
		return A_Password;
	}


	public void setA_Password(String a_Password) {
		A_Password = a_Password;
	}


	
	
	
	
	
	
}
