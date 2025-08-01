<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="lab12.StudentBean" %>
<jsp:useBean id="student" class="lab12.StudentBean" scope="request" />
<html>
<head>
 <title>Student Details</title>
</head>
<body>
 <h2>Student Information</h2>
 <p><strong>Name:</strong> <jsp:getProperty name="student" property="name" /></p>
 <p><strong>Roll No:</strong> <jsp:getProperty name="student" property="rollno" /></p>
 <p><strong>Department:</strong> <jsp:getProperty name="student" property="department" 
/></p>
 <p><strong>Email:</strong> <jsp:getProperty name="student" property="email" /></p>
</body>
</html>