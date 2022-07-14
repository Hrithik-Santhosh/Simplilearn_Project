<%@page import="com.database.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="com.list.ClassList, 
    				com.database.Classes,
    				java.util.List,
    				 java.util.Iterator,
    				 com.database.Subject,
    				 com.database.class_subject,
    				 com.database.class_teacher,
    				 com.database.Teacher"
    %>
    <%@ taglib prefix="cls" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		List<Classes> clist = ClassList.getClassList("from Classes order by classId");
		Iterator<Classes>  itr= clist.iterator();
		
		while (itr.hasNext())
		{ 
			// show class details
			Classes cls = itr.next();
			out.println("<h2>"+cls.getClassId()+"&nbsp;&nbsp;"); 
			out.println(cls.getClassName()+"</h2>");
			List<Student> slist = cls.getStudent();
			Iterator<Student> itr2 = slist.iterator();
			out.print("<b>Students Details</b><br>");
			while (itr2.hasNext())
			{
				//show students details releted class
				Student std = itr2.next();
				out.print(std.getStudentId()+"&nbsp;&nbsp;");
				out.print(std.getStudentName()+"&nbsp;&nbsp;<br>");
			}
			out.print("<br>");
			out.print("<b>Subjects Details</b><br>");
			List<class_subject> csubjects = cls.getSubject();
			List<Subject> subjects = ClassList.getSubjectList("from Subject");
			for (class_subject csubject: csubjects){
				//show subjects details releted class
				int cid = csubject.getSubjectId();
				for (Subject subject: subjects){
					if (subject.getSubjectId() == cid)
						out.print(subject.getSubjectName()+"<br>");
				}
			}
			out.print("<br>");
			out.print("<b>Teachers Details</b><br>");
			List<class_teacher> teach = cls.getTeacher();
			List<Teacher> teachers = ClassList.getTeacherList("from Teacher");
			for (class_teacher cteacher: teach){
				//show teachers details releted class
				int cid = cteacher.getTeacherID();
				for (Teacher t: teachers){
					if (t.getTeacherId() == cid)
						out.print(t.getTeacherName()+"<br>");
				}
			}
			out.print("<br>");
		}
	%>
</body>
</html>