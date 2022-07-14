<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="padding-left:70px;background-color: lightgray; border-color:blue; border-style:solid; height:230px; width:350px;">
		<form method="post" action="index.jsp">
			<h1>Login App Version 1.0</h1>
			<label for="username"><span style="width:100px">Enter UserName :</span></label>
			<input type="text" name="username"><br><br>
			<label for="password"><span style="width:100px">Enter Password : </span></label>
			<input type="password" name="password"><br><br>
			<label for="nature"><span style="width:20px">Select User Type :</span></label>
			<select name="nature">
				<option value="admin">Admin</option>
				<option value="visitor">Visitor</option>
			</select><br><br>
			<span><input type="submit" value="Login"></span>
			<span><a href="addUser.jsp">Create User</a></span>
		</form>
	</div>
</body>
</html>