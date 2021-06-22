package com.FlyAway.DB;

import java.sql.Date;
import java.sql.Time;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="flight")
public class Flight {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="flightId")
	private	int f_Id;
	
	@Column(name="flightNumber")
	private	String f_Number;
	
	@Column(name="flightDeparture")
	private	String f_Departure;
	
	@Column(name="flightDestination")
	private	String f_Destination;
	
	@Column(name="flightDepartureTime")
	private	String f_DepartureTime;
	
	@Column(name="flightArrivalTime")
	private	String f_ArrivalTime;
	
	@Column(name="flightPrice")
	private	double f_Price;
	
	@Column(name="flightDate")
	private	String f_Date;
	
	@Column(name="flightGate")
	private	String f_Gate;
	
	
	@ManyToOne 
	@JoinColumn(name="airlineId")
	private Airline Airlines;
	
	
	// constructor
	

	public Flight() {
		super();
	}


	public Flight(int f_Id) {
		super();
		this.f_Id = f_Id;
	}



	public Flight(int f_Id, String f_Number, String f_Departure, String f_Destination, String f_DepartureTime,
			String f_ArrivalTime, double f_Price, String f_Date, String f_Gate, Airline airlines) {
		super();
		this.f_Id = f_Id;
		this.f_Number = f_Number;
		this.f_Departure = f_Departure;
		this.f_Destination = f_Destination;
		this.f_DepartureTime = f_DepartureTime;
		this.f_ArrivalTime = f_ArrivalTime;
		this.f_Price = f_Price;
		this.f_Date = f_Date;
		this.f_Gate = f_Gate;
		Airlines = airlines;
	}



	public Flight(String f_Number, String f_Departure, String f_Destination, String f_DepartureTime, String f_ArrivalTime,
			double f_Price, String f_Date, String f_Gate) {
		super();
		this.f_Number = f_Number;
		this.f_Departure = f_Departure;
		this.f_Destination = f_Destination;
		this.f_DepartureTime = f_DepartureTime;
		this.f_ArrivalTime = f_ArrivalTime;
		this.f_Price = f_Price;
		this.f_Date = f_Date;
		this.f_Gate = f_Gate;
	}

	// getter and setter methods

	public int getF_Id() {
		return f_Id;
	}

	public void setF_Id(int f_Id) {
		this.f_Id = f_Id;
	}

	public String getF_Number() {
		return f_Number;
	}


	public void setF_Number(String f_Number) {
		this.f_Number = f_Number;
	}


	public String getF_Departure() {
		return f_Departure;
	}

	public void setF_Departure(String f_Departure) {
		this.f_Departure = f_Departure;
	}
	public String getF_Destination() {
		return f_Destination;
	}

	public void setF_Destination(String f_Destination) {
		this.f_Destination = f_Destination;
	}

	public String getF_DepartureTime() {
		return f_DepartureTime;
	}

	public void setF_DepartureTime(String f_DepartureTime) {
		this.f_DepartureTime = f_DepartureTime;
	}

	public String getF_ArrivalTime() {
		return f_ArrivalTime;
	}


	public void setF_ArrivalTime(String f_ArrivalTime) {
		this.f_ArrivalTime = f_ArrivalTime;
	}


	public double getF_Price() {
		return f_Price;
	}


	public void setF_Price(double f_Price) {
		this.f_Price = f_Price;
	}

	public String getF_Date() {
		return f_Date;
	}


	public void setF_Date(String f_Date) {
		this.f_Date = f_Date;
	}

	public String getF_Gate() {
		return f_Gate;
	}


	public void setF_Gate(String f_Gate) {
		this.f_Gate = f_Gate;
	}


	public Airline getAirlines() {
		return Airlines;
	}
	
	public void setAirlines(Airline airlines) {
		Airlines = airlines;
	}


	
}
