<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>

    
<%@page import="java.util.List"%>
<%@page import="com.FlyAway.DB.Flight"%>
<%@page import="com.FlyAway.DB.operations"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Flights</title>

<style>

 .div2{
   border: 10px solid #f5f5f5;
  background-color: #f5f5f5;
  text-align: center;
  padding-top: 1px;
  padding-right: 10px;
  padding-bottom: 10px;
  padding-left: 10px;
 }
 .div3{
   border: 10px solid #f5f5f5;
  background-color: #f5f5f5;
  padding-top: 30px;
  padding-right: 30px;
  padding-bottom: 30px;
  padding-left: 30px;
 
 }
table, td, th {  

  border: 1px solid #eeeeee;
  text-align: left;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 10px;
}
</style>

</head>
<body>
<%
String DepartureCity=request.getParameter("FromCity");
String DestinationCity=request.getParameter("ToCity");
String Date=request.getParameter("DepartureDate");
String persons=request.getParameter("NoOfPeople");
%>
<div class="div3">
 <form action="PassengerDetails.jsp">
 
  <%
		List<Flight> list = operations.search(DepartureCity,DestinationCity,Date);
		request.setAttribute("FlightList", list);
		
	%>
 
  <table>
    <tr>
     
      <th>FlightNumber</th>
      <th>flight Date</th>
      <th>Departure City</th>
      <th>Destination City</th>
      <th>Departure Time</th>
      <th>Arrival Time</th>
      <th>Airline Name</th>
      <th>flight Gate</th>
      <th>Price Of Ticket</th>
      <th>No.of people</th>
      <th></th>
    </tr>
    <core:forEach items="${FlightList}" var="fli">			
    <tr>
                             <input type="hidden" id="F_Id" name="F_Id" value="${fli.getF_Id()}" >
                            
      <td>${fli.getF_Number()}</td>
      <td>${fli.getF_Date()}</td>
      <td>${fli.getF_Departure()}</td>
      <td>${fli.getF_Destination()}</td>
      <td>${fli.getF_DepartureTime()}</td>
      <td>${fli.getF_ArrivalTime()}</td>
      <td>${fli.getAirlines().getA_Name()}</td>
      <td>${fli.getF_Gate()}</td>
      <td>${fli.getF_Price()}</td>
      <td>  <%=persons %><input type="hidden" id="NoOfPeople" name="NoOfPeople" value="<%=persons %>" ></td>
     <td><input type="submit" value="select" ></td>
    </tr>
    </core:forEach>	
  </table>
 </form>
</div>
<div class="div2"><jsp:include page="footer.jsp"></jsp:include></div>
</body>
</html>