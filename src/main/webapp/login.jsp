<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    
<%@page import="com.FlyAway.DB.Admin"%>
<%@page import="com.FlyAway.DB.operations"%>
<%@page import=" com.FlyAway.util.HibernateSessionUtil"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Login</title>
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


<div class="div3">

<form action="login-handel.jsp" method="post">

<fieldset>
		<legend>LogIn</legend>
<table>
    <tr>
        <td><label for="Email">Email</label><br>
          <input type="text" id="Email" name="Email" value=""required><br>   
          </td>
       </tr>
       <tr>
          <td><label for="Password">Password</label><br>
          <input type="password" id="password" name="password" value=""required><br>
          </td>
       </tr>
       <tr>
           <td><br><br><input type="submit" value="Login" ></td>
       </tr>
  </table>
</fieldset>
</form>


</div>

<div class="div2"><jsp:include page="footer.jsp"></jsp:include></div>
</body>
</html>