<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>changePassword</title>
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

  border: 1px solid #eeeeee;
  text-align: left;
}

table {
  border-collapse: collapse;
  width: 30%;
 margin-left: 100px;
}

th, td {
  padding: 10px;
}

fieldset {
  background-color: #eeeeee;
  width: 35%;
margin-left: 450px;
}

legend {
  background-color: gray;
  color: white;
  padding: 5px 10px;
}

input {
  margin: 5px;
}

</style>
</head>
<body>

<div class="div1" ><jsp:include page="header.jsp"></jsp:include></div>
<div class="div3">


 
	<form method="post" action="changePassword" >
	<fieldset>
		<legend>Change Password</legend>
			  <tr>
               <td><label for="Email">Current password:</label><br>
                <input type="password" name="Currentpassword" id="Currentpassword" required><br>   
               </td>
              </tr>
            <tr>
               <td><label for="Password">New password:</label><br>
                <input type="password" name="Newpassword" id="Newpassword"required> <br>
               </td>
           </tr>
            <tr>
               <td><label for="Password">Confirm password: </label><br>
                <input type="password" name="Confirmpassword" id="Confirmpassword"required> <br>
               </td>
            </tr>
              <tr>
                <td><br><br><input type="submit"  value="Update"></td>
               </tr>
	</fieldset>	
</div>
<div class="div2"><jsp:include page="footer.jsp"></jsp:include></div>
</body>
</html>