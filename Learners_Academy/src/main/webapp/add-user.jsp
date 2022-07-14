<%@page import="java.util.List"%>
<%@page import="com.list.ClassList"%>
<%@page import="com.database.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	//set Login class properties 
	Login user = new Login() ;
	user.setUserName(request.getParameter("username"));
	user.setNature(request.getParameter("nature"));
	user.setPassword(request.getParameter("password"));
	
	//save data into login table
	ClassList.saveUser(user);
	response.sendRedirect("Welcome.jsp");
%>
</body>
</html>