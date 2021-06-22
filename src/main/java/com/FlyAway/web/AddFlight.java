package com.FlyAway.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.FlyAway.DB.Flight;
import com.FlyAway.DB.Airline;
import com.FlyAway.util.HibernateSessionUtil;

/**
 * Servlet implementation class AddFlight
 */
@WebServlet("/Addflights")
public class AddFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFlight() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");

		request.getRequestDispatcher("AdminHome.jsp").include(request, response);
		request.getRequestDispatcher("Addflights.jsp").include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		request.getRequestDispatcher("AdminHome.jsp").include(request, response);
		
		String firstNumber = request.getParameter("flightNumber");
		String flightDate = request.getParameter("flightDate");
		String DepartureCity = request.getParameter("Departurecity");
		String DestinationCity = request.getParameter("Destinationcity");
		String DepartureTime = request.getParameter("DepartureTime");
		String ArrivalTime = request.getParameter("ArrivalTime");
		String AirlineName = request.getParameter("AirlineName");
		String CategoryAircraft = request.getParameter("CategoryAircraft");
		double flightPrice = Double.parseDouble(request.getParameter("flightPrice"));
		String flightGate = request.getParameter("flightGate");
		
		try {
			// 1. load session factory
			SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
			
			// 2. create a session
			Session session = factory.openSession();
			
			// 3. begin transaction
			Transaction tx = session.beginTransaction();
			
			// 4. create persistence object / add product
			Airline airline= new Airline(AirlineName,CategoryAircraft);
			

			Flight flight =new Flight(firstNumber, DepartureCity, DestinationCity, DepartureTime, ArrivalTime,
				flightPrice, flightDate, flightGate);
			flight.setAirlines(airline);
			
			// 5. save product
			session.save(flight);
			session.save(airline);
			
			// 6. commit transaction
			tx.commit();
	
			out.print("<h3 style='color:green'> Flight is created with Airline successfully !<h3>");
			response.sendRedirect("FlightList.jsp");
			// 3. close session
			session.close();
		} catch (Exception e) {
			out.print("<h3 style='color:red'> Create Flight failed ! <h3>" + e);
		}
	}

}
