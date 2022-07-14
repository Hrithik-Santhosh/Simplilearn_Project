<%@ page import="com.list.ClassList, 
    				com.database.Classes,
    				java.util.List"
 %>
    <%@ taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
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
		if (session.getAttribute("uname") == null)
			response.sendRedirect("error.jsp");
	
		List<Classes> clist = ClassList.getClassList("from Classes order by classId");
		request.setAttribute("clslist", clist);
	
	%>
	<h3>Add Student and Assign its Class</h3>
	<form action="add-student.jsp" method="post">
		Enter Student Name : <input type="text" name="studentName"><br>
		Enter contact No.: <input type="text" name="studentContact"><br>
		Enter Address : <input type="text" name="studentAddress"><br>
		Enter Class : <select name="classId" id="classId">
		<t:forEach var="cls" items="${clslist}">
			<option  value="${cls.getClassId()}">${cls.getClassName()}</option>
		</t:forEach>
		</select> 
		<script type="text/javascript">
		</script>
		<input type="submit" value="Add Student">
	</form>
</body>
</html>