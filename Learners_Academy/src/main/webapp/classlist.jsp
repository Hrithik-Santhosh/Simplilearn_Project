<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.database.Classes, 
    				com.list.ClassList, 
    				java.util.List" 
    %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		if (session.getAttribute("uname") == null)
			response.sendRedirect("error.jsp");

		List<Classes> classList = ClassList.getClassList("from Classes");
		request.setAttribute("clslist", classList);
	%>
	
	<table>
	<c:forEach var="cls" items="${clslist}">
		<tr>
			<td>${cls.getClassId()}</td>
			<td>${cls.getClassName() }</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>