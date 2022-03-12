<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New User</title>
</head>
<body>
	<div align="center">
		<h2 style="background-color: sky">Register Here</h2>
		<form action="Adduser">
			<table>
				<tr>
					<td>Username:</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>Mobile no:</td>
					<td><input type="number" name="mobileno"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td>DOB:</td>
					<td><input type="text" maxlength="10" placeholder="dd/mm/yyyy" name="dob"></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><textarea cols="10" name="address"></textarea></td>
				</tr>
				<tr>
					<td>pincode</td>
					<td><input type="number" name="pincode"></td>
				</tr>
				<tr>
					<td><input type="submit" value="submit"></td>
					<td><a href="index.jsp">Login</a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>