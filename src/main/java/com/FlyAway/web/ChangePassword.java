package com.FlyAway.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.FlyAway.DB.Admin;
import com.FlyAway.DB.operations;

/**
 * Servlet implementation class ChangePassword
 */
@WebServlet("/changePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		request.getRequestDispatcher("AdminHome.jsp").include(request, response);
		request.getRequestDispatcher("changePassword.jsp").include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		PrintWriter out = response.getWriter();
		
	      String Currentpass = request.getParameter("Currentpassword");
	      String Newpass = request.getParameter("Newpassword");
	      String Confirmpass = request.getParameter("Confirmpassword");
	      
	      if (Newpass.equals(Confirmpass)) {
	    	 operations.updateA(32,Newpass);
	    	 out.println("Password changed.");
	  //  	 request.getRequestDispatcher("AdminHome.jsp").include(request, response);
	    	 response.sendRedirect("AdminHome.jsp");
	      }else { 
	    	  out.println("Password don't match");
	    	  request.getRequestDispatcher("changePassword.jsp").include(request, response);
	    	  
	      }

		
		
	}

}
