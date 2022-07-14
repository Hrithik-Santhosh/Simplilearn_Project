<%@page import="com.database.class_teacher"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.list.ClassList,
				com.database.class_subject,
				com.database.Teacher,
				com.database.Classes"
				%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		
		//set properties of Assignsubject table
		int sid = Integer.parseInt(request.getParameter("subId"));
		class_subject sub = new class_subject();
		sub.setSubjectId(sid);
		ArrayList<class_subject> subject = new ArrayList<>();
		subject.add(sub);
		
		//set properties of Assignteacher tab
		class_teacher teach = new class_teacher();
		teach.setTeacherID(Integer.parseInt(request.getParameter("teaID")));
		ArrayList<class_teacher> teacher = new ArrayList<>();
		teacher.add(teach);
		
		
		//set properties of class table
		sid = Integer.parseInt(request.getParameter("classId"));
		String sName = "";
		List<Classes> cls = ClassList.getClassList("from Classes");
		for (Classes c: cls){
			if (c.getClassId() == sid)
				sName = c.getClassName();
		}
		
		//set properties of class table and add record of subject and teacher related class
		Classes c = new Classes();
		c.setClassId(sid);
		c.setClassName(sName);
		c.setSubject(subject);
		c.setTeacher(teacher);
		
		ClassList.saveData(c);
	%>
	<h3>Assign Class to Subject and Teacher Successfully</h3>
</body>
</html>