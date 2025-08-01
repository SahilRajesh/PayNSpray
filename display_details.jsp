<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
 String firstname = request.getParameter("firstname");
 String lastname = request.getParameter("lastname");
 String age = request.getParameter("age");
 String contact = request.getParameter("contact");
 String email = request.getParameter("email");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display personal details</title>
</head>
<body>
<h2>Your Submitted Details</h2>
 <p><strong>First Name:</strong> <%= firstname %></p>
 <p><strong>Last Name:</strong> <%= lastname %></p>
 <p><strong>Age:</strong> <%= age %></p>
 <p><strong>Contact Number:</strong> <%= contact %></p>
 <p><strong>Email:</strong> <%= email %></p>
 <br>
 <a href="personal_details.jsp">Go Back to Form</a>
</body>
</html>