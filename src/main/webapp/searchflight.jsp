<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>search flight</title>

<style>
fieldset {
  background-color: #eeeeee;
}

legend {
  background-color: gray;
  color: white;
  padding: 5px 10px;
}

input {
  margin: 5px;
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

  border: 1px solid #eeeeee;
  text-align: left;
}

table {
  border-collapse: collapse;
  width: 50%;
}

th, td {
  padding: 10px;
}
</style>
</head>
<body>


<div class="div3">
<form action="flights.jsp" method="post">
  <fieldset>  
  <legend>Book a Flight</legend>
  <table >
 
  <tr>
    <td>From</td>
    <td>To</td>
    <td>Departure Date</td>
    <td>No.of people</td>
  </tr>
  <tr>
    <td> 
     <select id="FromCity" name="FromCity">
    <option value="Jeddah">Jeddah</option>
    <option value="Riyadh">Riyadh</option>
    <option value="Abha">Abha</option>
    <option value="Dammam">Dammam</option>
    <option value="altaif">Al-Taif</option>
    <option value="Neom">Neom</option>
  </select><br> </td>
    <td>
    <select id="ToCity" name="ToCity">
    <option value="Jeddah">Jeddah</option>
    <option value="Riyadh">Riyadh</option>
    <option value="Abha">Abha</option>
    <option value="Dammam">Dammam</option>
    <option value="altaif">Al-Taif</option>
    <option value="Neom">Neom</option>
  </select> </td>
    <td><input type="date" id="DepartureDate" name="DepartureDate" ><br> </td>
    <td><select id="NoOfPeople" name="NoOfPeople">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    </select> </td>
  </tr>
  <tr>
  <td ></td>
  </tr>
</table>

<input type="submit" value="Search Flights" >
</fieldset>
</form>
</div>




<div class="div2"><jsp:include page="footer.jsp"></jsp:include></div>
</body>
</html>