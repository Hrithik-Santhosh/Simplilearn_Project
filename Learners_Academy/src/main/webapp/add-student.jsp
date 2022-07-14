<%@page import="java.util.ArrayList"%>
<%@page import="com.database.Classes"%>
<%@page import="java.text.SimpleDateFormat, java.util.Date, java.util.List"%>
<%@page import="com.list.ClassList"%>
<%@page import="com.database.Student"%>
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
		// get selected class name
		String className = "";
		int clsId = Integer.parseInt(request.getParameter("classId"));
		List<Classes> clist = ClassList.getClassList("from Classes");
		for(Classes cls: clist){
			if (cls.getClassId() == clsId)
				className = cls.getClassName();
		}
		
		//set properties of Student class
  		Student std = new Student();
 		std.setStudentName(request.getParameter("studentName"));
 		std.setStudentContact(request.getParameter("studentContact"));
 		std.setStudentAddress(request.getParameter("studentAddress"));
 		std.setAdmissionDate(new Date());
			
  		ArrayList<Student> stdList = new ArrayList<Student>();
 		stdList.add(std);
		
 		//set class properties
  		Classes cls = new Classes();
 		cls.setClassId(Integer.parseInt(request.getParameter("classId")));
 		cls.setClassName(className);
		cls.setStudent(stdList);
			
 		ClassList.saveData(cls);
  	%>
	<h3>Add Student Successfully</h3>
</body>
</html>