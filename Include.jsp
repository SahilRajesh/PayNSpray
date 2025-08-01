<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p align="center">My main JSP page</p>
<jsp:include page="Includeprint.jsp" >
 <jsp:param name="firstname" value="Sachin" />
 <jsp:param name="middlename" value="Ramesh" />
 <jsp:param name="lastname" value="Tendulkar" />
</jsp:include>
</body>
</html>