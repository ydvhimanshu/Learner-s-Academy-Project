<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ViewStudent</title>
<link type="text/css" rel="stylesheet" href="css/studentview.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body style="background-image: url('css/view.jpg');">
<center>
	<a href="index.jsp">Home</a>
	<br><br>
	
	<h2>All Student's</h2>
	
	</center>
	<br><br>
	
	
<sql:setDataSource var ="db" driver="com.mysql.cj.jdbc.Driver" 
	url = "jdbc:mysql://localhost/learner_academy" user="root" password="Linkedin@12345" />
	
	<sql:query dataSource = "${db}" var ="rs">
	select * from student;
	</sql:query>
	
	<table class="table table-bordered" width="100%" border="1">
	<tr><th>Id</th><th>Student Name</th><th>Class Id</th></tr>
	<h4></h4><c:forEach var="data" items = "${rs.rows}">
	<tr><td><c:out value="${data.student_id}"/></td>
	<td><c:out value="${data.student_name}"/></td>
	<td><c:out value="${data.class_id}"/></td></h4>
	
	
	</tr>	
	</c:forEach>
	</table>
	
	
	
	
</body>
</html>