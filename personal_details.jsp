<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>Enter Personal Details</title>
</head>
<body>
 <h2>Personal Details Form</h2>
 <form action="display_details.jsp" method="post">
 <label>First Name:</label>
 <input type="text" name="firstname" required><br><br>
 <label>Last Name:</label>
 <input type="text" name="lastname" required><br><br>
 <label>Age:</label>
 <input type="number" name="age" required><br><br>
 <label>Contact Number:</label>
 <input type="text" name="contact" required><br><br>
 <label>Email:</label>
 <input type="email" name="email" required><br><br>
 <input type="submit" value="Submit">
 </form>
</body>
</html>