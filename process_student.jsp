<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="lab12.StudentBean" %>
<jsp:useBean id="student" class="lab12.StudentBean" scope="request" />
<jsp:setProperty name="student" property="name" param="name"/>
<jsp:setProperty name="student" property="rollno" param="rollno"/>
<jsp:setProperty name="student" property="department" param="department"/>
<jsp:setProperty name="student" property="email" param="email"/>
<jsp:forward page="display_student.jsp">
 <jsp:param name="bean" value="student" />
</jsp:forward>