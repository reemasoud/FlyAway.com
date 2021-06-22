package com.FlyAway.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.FlyAway.DB.Passenger;
import com.FlyAway.DB.operations;
import com.FlyAway.DB.Airline;
import com.FlyAway.DB.Flight;
import com.FlyAway.util.HibernateSessionUtil;

/**
 * Servlet implementation class Addpassenger
 */
@WebServlet("/PassengerDetails")
public class Addpassenger extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addpassenger() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");

		request.getRequestDispatcher("index.html").include(request, response);
		request.getRequestDispatcher("PassengerDetails.jsp").include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		int fId = Integer.parseInt(request.getParameter("F_Id"));
		String passengerName = request.getParameter("passengerName");
		String DateOfBirth = request.getParameter("DateOfBirth");
		String Nationality = request.getParameter("Nationality");
		String PassportNumber = request.getParameter("PassportNumber");
		String Address = request.getParameter("Address");
		String Phone = request.getParameter("Phone");
		String email = request.getParameter("email");
		
		
		
		
		try {
			// 1. load session factory
			SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
			
			// 2. create a session
			Session session = factory.openSession();
			
			// 3. begin transaction
			Transaction tx = session.beginTransaction();
			
			// 4. create persistence object / add product

		
			List<Flight> list = operations.search(fId);
			request.setAttribute("FlightList", list);
			int id=0;
			String f_Number="";
			String f_Departure="";
			String f_Destination="";
		    String f_DepartureTime="";
		    String f_ArrivalTime="";
		    double f_Price=0.0;
		    String f_Date="";
		    String f_Gate="";
		    Airline airlines = null;
			 for (Flight i : list) {
			      id=i.getF_Id();
			      f_Number=i.getF_Number();
			      f_Departure=i.getF_Departure();
			      f_Destination=i.getF_Destination();
			      f_DepartureTime=i.getF_DepartureTime();
			      f_ArrivalTime=i.getF_ArrivalTime();
			      f_Price=i.getF_Price();
			      f_Date=i.getF_Date();
			      f_Gate=i.getF_Gate();
			      airlines=i.getAirlines();
			    }
			
			Set<Flight> Flights =new HashSet<>();
			Flight f1=new Flight( id,  f_Number,  f_Departure,  f_Destination,  f_DepartureTime,
					 f_ArrivalTime,  f_Price,  f_Date,  f_Gate,  airlines);
			
			Flights.add(f1);
		 	Passenger passenger = new Passenger(email,passengerName, Nationality,PassportNumber, DateOfBirth, Phone,Address);
		 	
		 	passenger.setFlights(Flights);
			// 5. save product

			session.save(passenger);
			
			// 6. commit transaction
			tx.commit();
	
			out.print("<h3 style='color:green'> Passenger is created  successfully !<h3>");

			request.getRequestDispatcher("bookingInfo.jsp").include(request, response);
			// 3. close session
			session.close();
		} catch (Exception e) {
			out.print("<h3 style='color:red'> Create Passenger failed ! <h3>" + e);
		}
		
		
	}

	
}
