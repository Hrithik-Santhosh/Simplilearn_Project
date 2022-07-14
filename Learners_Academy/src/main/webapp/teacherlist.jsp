<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.list.ClassList, 
    				com.database.Teacher,
    				java.util.List"
    %>
    <%@ taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core"%>
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

		List<Teacher> teacList = ClassList.getTeacherList("from Teacher");
		request.setAttribute("tealist", teacList);
	%>
	
	<table>
	<t:forEach var="teacher" items="${tealist}">
		<tr>
			<td>${teacher.getTeacherId()}</td>
			<td>${teacher.getTeacherName() }</td>
		</tr>
	</t:forEach>
	</table>
</body>
</html>