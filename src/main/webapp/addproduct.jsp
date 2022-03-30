<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Add Product - Dashboard HTML Template</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:400,700" />
<!-- https://fonts.google.com/specimen/Roboto -->
<link rel="stylesheet" href="../admin_style/css/fontawesome.min.css" />
<!-- https://fontawesome.com/ -->
<link rel="stylesheet"
	href="../admin_style/jquery-ui-datepicker/jquery-ui.min.css"
	type="text/css" />
<!-- http://api.jqueryui.com/datepicker/ -->
<link rel="stylesheet" href="../admin_style/css/bootstrap.min.css" />
<!-- https://getbootstrap.com/ -->
<link rel="stylesheet" href="../admin_style/css/templatemo-style.css">
</head>

<body>
	<nav class="navbar navbar-expand-xl">
		<div class="container h-100">
			<a class="navbar-brand" href="index.html">
				<h1 class="tm-site-title mb-0">Product Admin</h1>
			</a>
			<button class="navbar-toggler ml-auto mr-0" type="button"
				data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars tm-nav-icon"></i>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mx-auto h-100">
					<li class="nav-item"><a class="nav-link" href="index.html">
							<i class="fas fa-tachometer-alt"></i> Dashboard <span
							class="sr-only">(current)</span>
					</a></li>

					<li class="nav-item"><a class="nav-link active"
						href="#"> <i class="fas fa-shopping-cart"></i>
							Products
					</a></li>

					<li class="nav-item"><a class="nav-link" href="/adminaccount">
							<i class="far fa-user"></i> Accounts
					</a></li>

				</ul>
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link d-block"
						href="/logout"> Admin, <b>Logout</b>
					</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<c:choose>
		<c:when test="${message != null}">
			<div class="alert alert-warning alert-dismissible fade show"
				role="alert" style="text-align: center">
				<strong>${message}</strong>
				<button type="button" class="btn-close" data-bs-dismiss="alert"
					aria-label="Close"></button>
			</div>
		</c:when>
	</c:choose>
	<div class="container tm-mt-big tm-mb-big">
		<div class="row">
			<div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
				<div class="tm-bg-primary-dark tm-block tm-block-h-auto">
					<div class="row">
						<div class="col-12">
							<h2 class="tm-block-title d-inline-block">Add Product</h2>
						</div>
					</div>
					<form
						action="<c:if test="${not empty product.id}"><c:out value = "/update_product/${product.id}"/></c:if><c:if test="${empty product.id}"><c:out value = "saveproduct"/></c:if>"
						class="tm-edit-product-form" method="post"
						enctype="multipart/form-data">
						<div class="row tm-edit-product-row">
							<div class="col-xl-6 col-lg-6 col-md-12">

								<div class="form-group mb-3">
									<label for="name">Product Name </label> <input id="name"
										name="name" value="${product.name}" type="text"
										class="form-control validate" required />
								</div>
								<div class="form-group mb-3">
									<label for="description">Description</label> <input
										class="form-control validate" rows="3"
										value="${product.description }" name="description" required />
								</div>
								<div class="form-group mb-3">
									<label for="category">Category</label> <select
										class="custom-select tm-select-accounts" id="category" name="category">
										
										<option selected>
										<c:if test="${not empty product.id}"><c:out value = "${product.category}"/></c:if><c:if test="${empty product.id}"><c:out value = "select category"/></c:if>
										</option>
										<option value="sofa">Sofa</option>
										<option value="bed">Bed</option>
										<option value="chair">Chair</option>
										<option value="tvbox">Tv box</option>
										<option value="diningtable">Dining table</option>
									</select>
								</div>
								<div class="row">
									<div class="form-group mb-3 col-xs-12 col-sm-6">
										<label for="stock">Quantity </label> <input id="stock"
											value="${product.quantity}" name="quantity" type="number"
											class="form-control validate" required />
									</div>
									<div class="form-group mb-3 col-xs-12 col-sm-6">
										<label for="stock">Price </label> <input id="stock"
											value="${product.price}" name="price" type="text"
											class="form-control validate" required />
									</div>
									<div class="form-group mb-3 col-xs-12 col-sm-6">
										<label for="stock">Discount </label> <input id="stock"
											value="${product.discount}" placeholder="in %" name="discount" type="number"
											class="form-control validate" required />
									</div>
						 		</div>
							</div>
							<div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
								<div class="tm-product-img-dummy mx-auto">
									<img src="/productimg/${product.imageURL}" id="output"
										alt="No image" width="350px" height="230px" /> 
								</div>
								<div class="custom-file mt-3 mb-3">
									<input id="fileInput" value="${product.imageURL}" type="file" name="imageUrl"
										onchange="readURL(this)" style="display:none"/> <input type="button"
										class="btn btn-primary btn-block mx-auto"
										value="UPLOAD PRODUCT IMAGE"
										name="imageUrl"
										onclick="document.getElementById('fileInput').click();" />
								</div>
							</div>
							<div class="col-12">
								<button type="submit"
									class="btn btn-primary btn-block text-uppercase">Add
									Product Now</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<footer class="tm-footer row tm-mt-small">
		<div class="col-12 font-weight-light">
			<p class="text-center text-white mb-0 px-4 small">
				Copyright &copy; <b>2018</b> All rights reserved. Design: <a
					rel="nofollow noopener" href="https://templatemo.com"
					class="tm-footer-link">Template Mo</a>
			</p>
		</div>
	</footer>

	<script src="../admin_style/js/jquery-3.3.1.min.js"></script>
	<!-- https://jquery.com/download/ -->
	<script src="../admin_style/jquery-ui-datepicker/jquery-ui.min.js"></script>
	<!-- https://jqueryui.com/download/ -->
	<script src="../admin_style/js/bootstrap.min.js"></script>
	<!-- https://getbootstrap.com/ -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script>
	function readURL(input) {
		  if (input.files && input.files[0]) {
		    var reader = new FileReader();

		    reader.onload = function (e) {
		      $('#output').attr('src', e.target.result).width(350).height(230);
		    };

		    reader.readAsDataURL(input.files[0]);
		  }
		}	
	</script>
</body>
</html>
