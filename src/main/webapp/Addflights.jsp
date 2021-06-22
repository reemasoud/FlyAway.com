<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Add flight</title>
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


 	<h1>Add Flight</h1>
	<form method="post" action="Addflights" >
	<fieldset>
		<legend>Flight Information</legend>
		flight Number: <input type="text" name="flightNumber" id="flightNumber"> <br><br>
		flight Date: <input type="date" name="flightDate" id="flightDate"> <br><br>
		Departure City:  <select id="Departurecity" name="Departurecity">
                               <option value="Jeddah">Jeddah</option>
                               <option value="Riyadh">Riyadh</option>
                               <option value="Abha">Abha</option>
                               <option value="Dammam">Dammam</option>
                               <option value="altaif">Al-Taif</option>
                               <option value="Neom">Neom</option>
                             </select> <br><br>
		Destination City:  <select id="Destinationcity" name="Destinationcity">
                               <option value="Jeddah">Jeddah</option>
                               <option value="Riyadh">Riyadh</option>
                               <option value="Abha">Abha</option>
                               <option value="Dammam">Dammam</option>
                               <option value="altaif">Al-Taif</option>
                               <option value="Neom">Neom</option>
                             </select> <br><br>
                             
		Departure Time: <input type="time" name="DepartureTime" id="DepartureTime"> <br><br>
		Arrival Time: <input type="time" name="ArrivalTime" id="ArrivalTime"> <br><br>
		Airline Name:<select id="AirlineName" name="AirlineName">
                               <option value="Saudi Airlines">Saudi Airlines</option>
                               <option value="Flynas">Flynas</option>
                               <option value="Flyadeal">Flyadeal</option>
                               </select>  <br><br>
                               
		Category of Aircraft: <select id="CategoryAircraft" name="CategoryAircraft">
                               <option value="Airbus A330">Airbus A330</option>
                               <option value="Airbus A380">Airbus A380</option>
                               <option value="Boeing 737">Boeing 737</option>
                               <option value="Boeing 777">Boeing 777</option>
                               </select>  <br><br>  
		flight Price: <input type="text" name="flightPrice" id="flightPrice"> <br><br>
		flight Gate :<input type="text" name="flightGate" id="flightGate"> <br><br>
		
		<input type="submit"  value="Add">
	</fieldset>	
</div>


<div class="div2"><jsp:include page="footer.jsp"></jsp:include></div>
</body>
</html>