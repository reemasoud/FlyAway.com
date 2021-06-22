package com.FlyAway.DB;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.FlyAway.DB.Flight;

@Entity
@Table(name="airline")
public class Airline {

	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="airlineId")
	private	int A_Id;
	
	@Column(name="airlineName")
	private	String A_Name;
	
	@Column(name="CategoryAircraft")
	private	String A_Category;
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY , mappedBy="Airlines")
	private Set<Flight> Flights;
	



	public Airline() {
		super();
	}
	
	
	
	public Airline(String a_Name) {
		super();
		A_Name = a_Name;
	}


	
	
	
	public Airline(String a_Name, String a_Category) {
		super();
		A_Name = a_Name;
		A_Category = a_Category;
	}



	// getter and setter methods
	
	
	public Set<Flight> getFlights() {
		return Flights;
	}


	public int getA_Id() {
		return A_Id;
	}



	public void setA_Id(int a_Id) {
		A_Id = a_Id;
	}



	public String getA_Name() {
		return A_Name;
	}



	public void setA_Name(String a_Name) {
		A_Name = a_Name;
	}



	public String getA_Category() {
		return A_Category;
	}



	public void setA_Category(String a_Category) {
		A_Category = a_Category;
	}



	public void setFlights(Set<Flight> flights) {
		Flights = flights;
	}
	
	
	
	
	
}
