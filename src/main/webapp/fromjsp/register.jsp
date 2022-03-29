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
		<h2>${message}</h2>
		<form action="signup" method="post">
			<table>
				<tr>
					<td>Firstrname:</td>
					<td><input type="text" name="firstname"></td>
				</tr>
				<tr>
					<td>Lastname:</td>
					<td><input type="text" name="lastname"></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="email" name="email"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password"></td>
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
					<td><a href="/">Login</a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>