<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"  errorPage="error.jsp"  session="true"     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>AdminHome</title>
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
<div class="div1" ><jsp:include page="header.jsp"></jsp:include></div>


<div class="div3">	

<%
String email =(String) session.getAttribute("email");
if(email != null){
	
	out.print("<h4 style='color:black;text-align:center'>Hello user "+email+"<h4>");
}else{
	
	out.print("<h3> somthing wrong ! </h3>");
}


%>

	</div>

<div class="div2"><jsp:include page="footer.jsp"></jsp:include></div>

</body>
</html>