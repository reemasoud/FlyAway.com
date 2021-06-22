package com.FlyAway.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.FlyAway.DB.Admin;
import com.FlyAway.DB.Airline;
import com.FlyAway.DB.Flight;
import com.FlyAway.DB.Passenger;



public class HibernateSessionUtil {
	
	private static SessionFactory factory;
	
	public static SessionFactory buildSessionFactory() {
		
		factory = new Configuration().configure("hibernate.cfg.xml")
				.addAnnotatedClass(Admin.class)
				.addAnnotatedClass(Passenger.class)
				.addAnnotatedClass(Airline.class)
				.addAnnotatedClass(Flight.class)
				.buildSessionFactory();
		return factory;
	}

}
