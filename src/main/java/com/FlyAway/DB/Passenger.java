package com.FlyAway.DB;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="passenger")
public class Passenger {

	
	//properties
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="passengerId")
	private	int p_Id;
	
	@Column(name="passengerEmail")
	private	String p_Email;
	
	@Column(name="passengerName")
	private	String p_Name;
	
	@Column(name="passengerNationality")
	private	String p_Nationality;
	
	@Column(name="passengerPassport")
	private	String p_passport;
	
	@Column(name="passengerDateOfBirth")
	private	String p_DateOfBirth;
	
	@Column(name="passengerPhon")
	private	String p_Phon;
	
	@Column(name="passengerAddress")
	private	String p_Address;
	
	@ManyToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	@JoinTable(name="passenger_flight", joinColumns=@JoinColumn(name="passengerId"),
	inverseJoinColumns=@JoinColumn(name="flightId"))
	private Set<Flight> Flights;
	
	// constructor
	
	public Set<Flight> getFlights() {
		return Flights;
	}



	public void setFlights(Set<Flight> flights) {
		Flights = flights;
	}



	public Passenger() {
		super();
	}
	
	
	
	public Passenger(int p_Id, String p_Email, String p_Name, String p_passport, String p_Phon, String p_Address) {
		super();
		this.p_Id = p_Id;
		this.p_Email = p_Email;
		this.p_Name = p_Name;
		this.p_passport = p_passport;
		this.p_Phon = p_Phon;
		this.p_Address = p_Address;
	}
	
	
	
	



	public Passenger(String p_Email, String p_Name, String p_Nationality, String p_passport, String p_DateOfBirth,
			String p_Phon, String p_Address) {
		super();
		this.p_Email = p_Email;
		this.p_Name = p_Name;
		this.p_Nationality = p_Nationality;
		this.p_passport = p_passport;
		this.p_DateOfBirth = p_DateOfBirth;
		this.p_Phon = p_Phon;
		this.p_Address = p_Address;
	}



	// getter and setter methods
	
	

	public int getP_Id() {
		return p_Id;
	}
	public void setP_Id(int p_Id) {
		this.p_Id = p_Id;
	}
	public String getP_Email() {
		return p_Email;
	}
	public void setP_Email(String p_Email) {
		this.p_Email = p_Email;
	}
	public String getP_Name() {
		return p_Name;
	}
	public void setP_Name(String p_Name) {
		this.p_Name = p_Name;
	}
	public String getP_passport() {
		return p_passport;
	}
	public void setP_passport(String p_passport) {
		this.p_passport = p_passport;
	}
	public String getP_Phon() {
		return p_Phon;
	}
	public void setP_Phon(String p_Phon) {
		this.p_Phon = p_Phon;
	}
	public String getP_Address() {
		return p_Address;
	}
	public void setP_Address(String p_Address) {
		this.p_Address = p_Address;
	}



	public String getP_DateOfBirth() {
		return p_DateOfBirth;
	}



	public void setP_DateOfBirth(String p_DateOfBirth) {
		this.p_DateOfBirth = p_DateOfBirth;
	}



	public String getP_Nationality() {
		return p_Nationality;
	}



	public void setP_Nationality(String p_Nationality) {
		this.p_Nationality = p_Nationality;
	}
	
	
	
	
	
	
}
