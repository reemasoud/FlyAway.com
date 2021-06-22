<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>confirm Page</title>
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

</style>
</head>
<body>

<div class="div3"> 


<h1 style="text-align:center;">Your Reservation is complete </h1>

<h2 style="text-align:center;">Thank you for choosing us </h2>

<%response.setHeader("Refresh","10;url=./index.html"); %>
</div>

<div class="div2"><jsp:include page="footer.jsp"></jsp:include></div>
</body>
</html>