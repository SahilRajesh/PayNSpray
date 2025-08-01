<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mail Registration</title>
</head>
<body>
	<h2>Mail Registration Form</h2>
	 <form method="post" action="register.jsp">
		 Name: <input type="text" name="name" required><br><br>
		 Email: <input type="email" name="email" required><br><br>
		 Password: <input type="password" name="password" required><br><br>
		 <input type="submit" value="Register">
	 </form>
	<%
	 String name = request.getParameter("name");
	 String email = request.getParameter("email");
	 String password = request.getParameter("password");
	 if(name != null && email != null && password != null) {
		 String dbURL = "jdbc:mysql://localhost:3306/maildb";
		 String dbUser = "root";
		 String dbPass = "1011"; 
		 try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
			 String sql = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";
			 PreparedStatement stmt = conn.prepareStatement(sql);
			 stmt.setString(1, name);
			 stmt.setString(2, email);
			 stmt.setString(3, password);
			 int rows = stmt.executeUpdate();
			 if (rows > 0) {
			 	out.println("<p style='color:green;'>Registration successful!</p>");
			 } else {
			 	out.println("<p style='color:red;'>Registration failed. Try again.</p>");
			 }
			 conn.close();
		 } catch(Exception e) {
		 	out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
		 }
	}
	%>
</body>
</html>