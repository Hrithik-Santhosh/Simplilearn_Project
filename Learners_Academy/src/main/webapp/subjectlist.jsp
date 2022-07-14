<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.database.Subject, 
    				com.list.ClassList, 
    				java.util.List" 
    %>
    <%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
		List<Subject> slist = ClassList.getSubjectList("from Subject");
		request.setAttribute("subjects", slist);
	%>
	<table>
	<s:forEach items="${subjects}" var="subject">
		<tr>
			<td>${subject.getSubjectId()}</td>
			<td>${subject.getSubjectName()}</td>
		</tr>
	</s:forEach>
	</table>
</body>
</html>