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
<title>Departure Destination List</title>
<style>

 .div1{
   border: 10px solid #f5f5f5;
  background-color: #f5f5f5;
  padding-top: 1px;
  padding-right: 10px;
  padding-bottom: 10px;
  padding-left: 10px;
 }
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

  border: 1px solid white;
  text-align: left;
}

table {
  border-collapse: collapse;
  width: 30%;
 margin-left: 450px;
}

th, td {
  padding: 10px;
}
</style>
</head>
<body>




<div class="div1" ><jsp:include page="header.jsp"></jsp:include></div>
<div class="div3">

<h1 style="text-align:center;"> Departure Destination List</h1>
 <form action="FlightList.jsp">
    <%
		List<Flight> list = operations.listOfFlight();
		request.setAttribute("FlightList", list);
		
	%>
  
  
  <table>
    <tr>
     
      <th>Departure City</th>
      <th>Destination City</th>
    
    </tr>
 <core:forEach items="${FlightList}" var="fli">			
    <tr> 
      
      <td>${fli.getF_Departure()}</td>
      <td>${fli.getF_Destination()}</td>
      
     </tr>
    </core:forEach>	
  </table>
  
 </form>
</div>
<div class="div2"><jsp:include page="footer.jsp"></jsp:include></div>
</body>
</html>