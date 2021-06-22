<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    
    <%@page import="java.util.List"%>
<%@page import="com.FlyAway.DB.Airline"%>
<%@page import="com.FlyAway.DB.operations"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Airline Company List</title>
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

<h1 style="text-align:center;"> Airline List</h1>
 
  <%
		List<Airline> list = operations.listOfAirline();
		request.setAttribute("AirlineList", list);
		
	%>
 
 
  <table>
    <tr>
     
      <th>Airline Name</th>
      <th>Aircraft category</th>
    
    </tr>
    <core:forEach items="${AirlineList}" var="air">			
    <tr>
      
      <td>${air.getA_Name()}</td>
      <td>${air. getA_Category()}</td>

    </tr>
    </core:forEach>	
    
  </table>

</div>
<div class="div2"><jsp:include page="footer.jsp"></jsp:include></div>
</body>
</html>