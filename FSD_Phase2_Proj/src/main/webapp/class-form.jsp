<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Class Add Page</title>
<link type="text/css" rel="stylesheet" href="css/index.css">
</head>
<body style="background-image: url('css/img1.jpg');">

<center>
		<h1>Class Management</h1>
		<h2>
			<a href="class_view.jsp">View All Classes</a>
		</h2>

		<form action="addNewClass" method="post">
			<b>Add Class Name: </b><input type="text" name="className" size="45">
			<br /> <br /> <input type="submit" value="Submit" />
		</form>

	</center>
</body>
</html>