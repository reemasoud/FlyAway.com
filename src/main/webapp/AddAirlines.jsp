<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Add Airline</title>
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

</style>
</head>
<body>
<div class="div3">


 	<h1>Add Airline</h1>
	<form method="post" action="AddAirlines" >
	<fieldset>
		<legend>Flight Information</legend>
		Airline Name: <input type="text" name="AirlineName" id="AirlineName"> <br><br> 
		Airline Country: <input type="text" name="airlineCountry" id="airlineCountry"> <br><br>
		
		<input type="submit"  value="Add">
	</fieldset>	
</div>
<div class="div2"><jsp:include page="footer.jsp"></jsp:include></div>
</body>
</html>