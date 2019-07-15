<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="EUC-KR">
<title>Welcome</title>
</head>
<body>
<%@ include file = "menu.jsp" %>
<%

String greeting = "Welcome to Web Shopping Mall";

String tagline = "Welcome to Web Market!";


%>
<div class ="jumbotron">

<div class = "container">
<h1 class = "display-3">   <!-- display- 출력문 글자크기 조정-->
<%= greeting %>
</h1>
</div>
</div>

<div class ="container">
<div class = "text-center">

<h3>
<%= tagline %>
</h3>


</div>
<hr>

</div>
<%@ include file="footer.jsp" %>
</body>
</html>