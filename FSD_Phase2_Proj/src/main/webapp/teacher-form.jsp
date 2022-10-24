<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher Page</title>
<link type="text/css" rel="stylesheet" href="css/index.css">
</head>
<body style="background-image: url('css/img1.jpg');">

	<center>
		<h1>Teacher Management</h1>
		<h2>
			<a href="teacher_view.jsp">View All Teacher's</a>
		</h2>

	<h2>
		<form action="addNewTeacher" method="post">
			<b>Add New Teacher Name:</b> <input type="text" name="teacherName" size="25">
			<br /> <br /> <input type="submit" value="Submit" />
		</form>
	</h2>

	</center>
</body>
</html>