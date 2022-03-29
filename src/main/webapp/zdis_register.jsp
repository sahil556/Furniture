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
		<form action="signup" method="post" enctype="multipart/form-data">
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
					
			</table>
		
					<img src="#" id="output"
						alt="No image" width="350px" height="230px" />
				
				
					<input id="fileInput" value="${user.imageurl}" type="file"
						name="imageUrl" onchange="readURL(this)" required/>
					<input type="button" class="btn btn-primary btn-block mx-auto"
						value="UPLOAD USer IMAGE" name="imageUrl" style="display:none"
						onclick="document.getElementById('fileInput').click();"  />
				
			<br><br><br><input type="submit" value="submit">
			
		</form>
	</div>
</body>
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous">
</script>
<script>
	function readURL(input) {
		  if (input.files && input.files[0]) {
		    var reader = new FileReader();

		    reader.onload = function (e) {
		      $('#output')output").att e.target.result).width(350).height(230);
		    };
			console.log("running");
		    reader.readAsDataURL(input.files[0]);
		  }
		}	
	</script>
</html>