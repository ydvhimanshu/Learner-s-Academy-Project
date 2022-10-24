<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Add</title>
<link type="text/css" rel="stylesheet" href="css/index.css">
</head>
<body style="background-image: url('css/img1.jpg');">

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/learner_academy" user="root" password="Linkedin@12345"/>  
     
     <sql:query dataSource="${db}" var="ListClasses">  
SELECT * from class;  
</sql:query>  

<center>
	<h1>User Management</h1>
	<h2>
		<a href="student_view.jsp">List all Student's</a><br> <br>
			
	</h2>
	


	<form action="addNewStudent" method="post">
		<b>Add New Student Name:</b><input type="text" name="studentName" size="20">
		<b>Select a Class:</b>&nbsp; <select name="classes">
			<c:forEach items="${ListClasses.rows}" var="classes">
				<option value="${classes.class_id}">${classes.class_name}</option>
			</c:forEach>
		</select> <br />
		<br /> <input type="submit" value="Submit" />
	</form>
	</center>

</body>
</html>