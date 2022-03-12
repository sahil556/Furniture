<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
	<div align="center">
		<h2 style="background-color: blue">Login Here</h2>
		<form action="Login" method="post">
			<table>
				<tr>
					<td>Mobile no:</td>
					<td><input type="text" name="mobileno"></td>
				</tr>
				<tr>
					<td>DOB:</td>
					<td><input type="password" placeholder="dd/mm/yyyy" name="password"></td>
				</tr>
				<tr>
					<td><input type="submit" value="submit"></td>
					<td><a href="Registration.jsp">Not Registered ?</a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
