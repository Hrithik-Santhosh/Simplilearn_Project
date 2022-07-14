<%@page import="com.list.ClassList"%>
<%@page import="java.util.List"%>
<%@page import="com.database.Classes"%>
<%@page import="com.database.Subject"%>
<%@page import="com.database.Teacher"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="cls" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Assign Class to subjects</h3>
	<%
		if (session.getAttribute("uname") == null)
			response.sendRedirect("error.jsp");
		
		List<Classes> clist = ClassList.getClassList("from Classes");
		List<Subject> sublist = ClassList.getSubjectList("from Subject");
		List<Teacher> teclist = ClassList.getTeacherList("from Teacher");
		
		request.setAttribute("clist", clist);
		request.setAttribute("sublist", sublist);
		request.setAttribute("teclist", teclist);
		
	%>
	<form action="add-subandtetocls.jsp">
		<select name="classId">
			<cls:forEach var="cls" items="${clist }">
				<option value="${cls.getClassId() }">${cls.getClassName() }</option>
			</cls:forEach>
		</select>
		<select name="subId">
			<cls:forEach var="subl" items="${sublist }">
				<option value="${subl.getSubjectId() }">${subl.getSubjectName() }</option>
			</cls:forEach>
		</select>
		<select name="teaID">
			<cls:forEach var="tlist" items="${teclist }">
				<option value="${tlist.getTeacherId() }">${tlist.getTeacherName() }</option>
			</cls:forEach>
		</select>
		<input type="submit" value="Add Detail">	
	</form>
</body>
</html>