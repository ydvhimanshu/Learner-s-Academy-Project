<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subject Page</title>
<link type="text/css" rel="stylesheet" href="css/index.css">
</head>
<body style="background-image: url('css/img1.jpg');">

	<center>
		<h1>Subject Management Page</h1>
		<h2>
			<a href="subject_view.jsp">View All Subject's</a>
		</h2>

		<form action="addNewSubject" method="post">
			<b>Add New Subject Name:</b> <input type="text" name="subjectName" size="45">
			<br /> <br /> <input type="submit" value="Submit" />  
			
   </body>
		</form>

	</center>
</body>
</html>