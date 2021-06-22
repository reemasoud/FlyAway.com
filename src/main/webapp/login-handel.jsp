<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"  session="true" %>
<%@page import="java.util.List"%>
<%@page import="com.FlyAway.DB.Admin"%>
<%@page import="com.FlyAway.DB.operations"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Submitted Request</title>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<%


	
	String email = request.getParameter("Email");
	String password = request.getParameter("password");
	
	List<Admin> list = operations.check(email, password);
	
	if(email== null || email.equals("") || password== null || password.equals("")) {
		out.print("<h3> Login Failure ! due to invliad fields</h3>");
	} else{
		for(Admin admin :list){
		if(email.equals(admin.getA_Email()) && password.equals(admin.getA_Password())){
			out.print("<h3> Login Successful ! </h3>");
			
	        int HOUR24 = 60*60*24;
	        session.setAttribute("email", email);
	        session.setMaxInactiveInterval(HOUR24);

	    
		
			
			response.sendRedirect("AdminHome.jsp");
		}else{
			out.print("<h3> Login Failure </h3>");
		}
		}
	}
	%>

</body>
</html>