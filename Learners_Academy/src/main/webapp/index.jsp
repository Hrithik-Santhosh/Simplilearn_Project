<%@page import="com.database.Login"%>
<%@page import="com.list.ClassList"%>
<%@page import="java.util.List"%>
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
		List<Login> users = ClassList.getUserList("from Login");
		String uname = request.getParameter("username");
		String password = request.getParameter("password");
		String nature = request.getParameter("nature");
		boolean usearch = false;
			
		for (Login user: users){
			if (user.getUserName().equalsIgnoreCase(uname) && user.getPassword().equalsIgnoreCase(password) && user.getNature().equalsIgnoreCase("admin")){
				session.setAttribute("uname", uname);
				usearch=true;
			}
		}
		if (!usearch){
			response.sendRedirect("error.jsp");
		}
	%>
	<a href="subjectlist.jsp">Show Subjects</a><br>
	<a href="classlist.jsp">Show Classes</a><br>
	<a href="teacherlist.jsp">Show Teachers</a><br>
	<a href="Assignstoc.jsp">Assign Student to Class</a><br>
	<a href="Assignctos.jsp">Assign Class to subjects</a><br><br>
	<a href="showclsinfo.jsp">Show Class Details</a>
</body>
</html>