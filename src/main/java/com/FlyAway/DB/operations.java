package com.FlyAway.DB;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.FlyAway.DB.Airline;
import com.FlyAway.DB.Flight;
import com.FlyAway.util.HibernateSessionUtil;
import com.FlyAway.DB.Admin;
public class operations {

	
	// ------Flight----
public static List<Flight> listOfFlight() {
		
		SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
		//open a session 
		Session session = factory.openSession();
		
		List<Flight> listOfFlight = session.createQuery("from Flight as e").list();
		
		return listOfFlight;
	}

public static List<Flight> search(String fDeparture,String fDestination,String fDate) {
	
	SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
	//open a session 
	Session session = factory.openSession();
	
	List<Flight> listOfFlight = session.createQuery("from Flight as e where flightDeparture=:fDeparture and flightDestination=:fDestination and flightDate=:fDate").setParameter("fDeparture", fDeparture)
			.setParameter("fDestination", fDestination).setParameter("fDate", fDate).list();
	
	return listOfFlight;
}

public static List<Flight> search(int fId) {
	
	SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
	//open a session 
	Session session = factory.openSession();
	
	List<Flight> listOfFlight = session.createQuery("from Flight as e where flightId=:fId").setParameter("fId", fId).list();
	
	return listOfFlight;
}

public static List<Flight> test1(String fDeparture,String fDestination,String fDate) {
	
	SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
	//open a session 
	Session session = factory.openSession();//select * from Flight a inner join Airline b on a.airlineId = b.airlineId
	
	List<Flight> listOfFlight = session.createQuery("select * from Flight a inner join Airline b on a.airlineId = b.airlineId where flightDeparture=:fDeparture and flightDestination=:fDestination and flightDate=:fDate").setParameter("fDeparture", fDeparture)
			.setParameter("fDestination", fDestination).setParameter("fDate", fDate).list();
	
	return listOfFlight;
}

//------Airline----

public static List<Airline> listOfAirline() {
	
	SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
	//open a session 
	Session session = factory.openSession();
	
	List<Airline> listOfAirline = session.createQuery("from Airline as e").list();
	
	return listOfAirline;
}
	
//------passenger----
public static List<Passenger> listOfPassenger(String email) {
	
	SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
	//open a session 
	Session session = factory.openSession();
	
	List<Passenger> listOfPassenger = session.createQuery("from Passenger e where passengerEmail=:email").setParameter("email", email).list();
	
	return listOfPassenger;
}



public static List<Flight> test(String fDeparture,String fDestination,String fDate) {
	
	SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
	//open a session 
	Session session = factory.openSession();//and flightDestination=:fDestination and flightDate=:fDate  ,String fDestination,String fDate
	
	List<Flight> listOfFlight = session.createQuery("from Flight as e where flightDeparture=:fDeparture and flightDestination=:fDestination and flightDate=:fDate").setParameter("fDeparture", fDeparture)
			.setParameter("fDestination", fDestination).setParameter("fDate", fDate).list();
	
	return listOfFlight;
}
	
	
//------Admin----

public static List<Admin> check(String AEmail,String APassword) {
	
	SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
	//open a session 
	Session session = factory.openSession();
	
	List<Admin> listOfAdmin = session.createQuery("from Admin as e where AdminEmail=:AEmail and AdminPassword=:APassword ").setParameter("AEmail", AEmail)
			.setParameter("APassword", APassword).list();
	
	return listOfAdmin;
}
public static void updateA(Integer AdminId, String APassword ){
	SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
	
	Session session = factory.openSession();
    Transaction tx = null;
    
    try {
       tx = session.beginTransaction();
       Admin admin = (Admin)session.get(Admin.class, AdminId); 
       admin.setA_Password(APassword);
		 session.update(admin); 
       tx.commit();
    } catch (HibernateException e) {
       if (tx!=null) tx.rollback();
       e.printStackTrace(); 
    } finally {
       session.close(); 
    }
 }
public static List<Admin> updateAdmin(String APassword) {
	
	SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
	//open a session 
	Session session = factory.openSession();//"UPDATE Admin set AdminPassword = :APassword WHERE id = 32"
	
	List<Admin> listOfAdmin = session.createQuery("UPDATE Admin set AdminPassword = :APassword WHERE id=32 ").setParameter("APassword", APassword).list();
//	session.update(APassword, listOfAdmin);
	return listOfAdmin;
}
public static void addAdmin(Admin admin) {
	// build session factory
	SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
	//open a session 
	Session session = factory.openSession();
	//begin tx
	Transaction tx = session.beginTransaction();
	
	//save employee
	session.save(admin);
	tx.commit();
	
	//close session
	session.close();		
}


//public static int convsrt(String num) {
////	Integer userId= parseToNumber(num);
////	int fId = Integer.parseInt(num);
//	return fId;
//}




}
