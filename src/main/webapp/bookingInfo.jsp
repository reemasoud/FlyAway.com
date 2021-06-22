<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>

<%@page import="java.util.List"%>
<%@page import="com.FlyAway.DB.Flight"%>
<%@page import="com.FlyAway.DB.Passenger"%>
<%@page import="com.FlyAway.DB.operations"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>bookingInfo</title>
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

  border: 1px solid #f5f5f5;
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

<div class="div3">
     <%
     int fId = Integer.parseInt(request.getParameter("F_Id"));
		List<Flight> list1 = operations.search(fId);
		request.setAttribute("FlightList", list1);
		String price ="";
	%>

	 <%
	 
	   
	   String email=request.getParameter("email");
	   List<Passenger> list = operations.listOfPassenger(email);
		request.setAttribute("PassengerList", list);
		
		
		Double fprice =Double.parseDouble(request.getParameter("price"));
		
		Double persons=Double.parseDouble(request.getParameter("NoOfPeople"));
		Double Total = 0.0;
	
	%>
	<fieldset>
		<legend> your booking information</legend>
  <table>
  
   <tr>
     
      <th>Name</th>
      <th>Date of birth</th>
      <th>Nationality</th>
      <th>Passport Number</th>
      <th>Address</th>
      <th>Email</th>
      <th>Phone</th>
      <th>Flight Number</th>
      <th>flight Gate</th>
     
    </tr>
    <core:forEach items="${PassengerList}" var="Pas">			
    <tr>
    
      <td>${Pas.getP_Name()}</td>
      <td>${Pas.getP_DateOfBirth()}</td>
      <td>${Pas.getP_Nationality()}</td>
      <td>${Pas.getP_passport()}</td>      
      <td>${Pas.getP_Address()}</td>
      <td>${Pas.getP_Email()}</td>
      <td>${Pas.getP_Phon()}</td>
     </core:forEach> 
      <core:forEach items="${FlightList}" var="fli">
       <td>${fli.getF_Number()}</td>
      <td>${fli.getF_Gate()}</td>
      
     </core:forEach>
   </tr>

       
  </table>
	

<br>
<br>
<br>
   <form action="paymentInfo.jsp"  method="post">
     <table>
       <tr>
         <td>Price Of Ticket</td>
         <td>Total Price</td>
         <td></td>
        </tr>
        
        <tr>
       
         <td><%=fprice %></td>
         
         <td> <%=Total=persons*fprice%> </td>
          
         <td> <input type="submit" value="Complete to pay" ></td>
      
        </tr>
      
   
       </table>
    </form>
     </fieldset>
  </div>

<div class="div2"><jsp:include page="footer.jsp"></jsp:include></div>
</body>
</html>