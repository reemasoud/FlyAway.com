<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>paymentInfo</title>
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
<fieldset>
		<legend>Your are using Credit/Debit Card for payment</legend>
<form action="confirmpage.jsp" method="post">

<table>

   <tr>
     <td><label for="CardNumber">Card Number</label><br>
         <input type="text" id="CardNumber" name="CardNumber" required>
     </td>
     <td><label for="CardHolderName">Card Holder Name</label><br>
         <input type="text" id="CardHolderName" name="CardHolderName" required>
     </td>
    </tr>
    <tr>
      <td><label for="ExpiryDate">Expiry Date</label><br>
         <input type="Date" id="ExpiryDate" name="ExpiryDate" required>
      </td>
      <td><label for="CW2/CV2Number">CW2/CV2 Number</label><br>
         <input type="text" id="CW2/CV2Number" name="CW2/CV2Number" required>
      </td>
    </tr>

</table>

 <input type="submit" value="Confirm" >
 </form>
 </fieldset>
</div>
<div class="div2"><jsp:include page="footer.jsp"></jsp:include></div>
</body>
</html>