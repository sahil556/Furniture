<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
    ${message}
	<div align="center">
		<h2 style="background-color: blue">Login Here</h2>
		welcome 
		${user.firstname }
		${user.lastname }
		<br>
		<img src="/userimg/${user.imageurl}" width="350px" height="250px">
 	</div>
</body>
</html>
