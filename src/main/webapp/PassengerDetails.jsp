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
<title>PassengerDetails</title>
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

<%

     int fId1 = Integer.parseInt(request.getParameter("F_Id"));
		List<Flight> list1 = operations.search(fId1);
		request.setAttribute("FlightList", list1);
		
		%>
<%String persons=request.getParameter("NoOfPeople");
String F_Id=request.getParameter("F_Id");
int fId = Integer.parseInt(request.getParameter("F_Id"));

%>
  
 
 
<div class="div3">
<fieldset>
		<legend>Enter your information</legend>
 <form action="PassengerDetails"  method="post">
  <input type="hidden" id="NoOfPeople" name="NoOfPeople" value="<%=persons %>" >
<input type="hidden" id="F_Id" name="F_Id" value="<%=F_Id %>" >
 <core:forEach items="${FlightList}" var="fli">
<input type="hidden" id="price" name="price" value="${fli.getF_Price() }" >
 </core:forEach>

  <table>
    <tr>
      <td>Name</td>
      <td>Date of birth</td>
    </tr>
    <tr>
      <td><input type="text" id="passengerName" name="passengerName" value=""required></td>
      <td><input type="date" id="DateOfBirth" name="DateOfBirth"  value=""required></td>
    </tr>
      <tr>
      <td>Nationality</td>
      <td>Passport Number</td>
    </tr>
      <tr>
      <td>
        <select id="Nationality" name="Nationality">
          <option value="Saudi Arabia">Saudi Arabia</option>
          <option value="India">India</option>
          <option value="Kuwait">Kuwait</option>
          <option value="Bahrain">Bahrain</option>
          <option value="Oman">Oman</option>
        </select>
       </td>
      
      <td><input type="text" id="PassportNumber" name="PassportNumber" value=""required></td>
    </tr>
     <tr>
      <td>Address</td>
      <td>Phone</td>
    </tr>
     <tr>
      <td><input type="text" id="Address" name="Address" value=""required></td>
      <td><input type="text" id="Phone" name="Phone" value=""required></td>
    </tr>
     <tr>
      <td>Email</td>
    </tr>
     <tr>
      <td><input type="email" id="email" name="email"required></td>
    </tr>
  </table>
  
   <input type="submit" value="Next" >
  
 </form>
 </fieldset>
</div>

<div class="div2"><jsp:include page="footer.jsp"></jsp:include></div>
</body>
</html>