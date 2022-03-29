<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Product Page - Admin HTML Template</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:400,700" />
<!-- https://fonts.google.com/specimen/Roboto -->
<link rel="stylesheet" href="admin_style/css/fontawesome.min.css" />
<!-- https://fontawesome.com/ -->
<link rel="stylesheet" href="admin_style/css/bootstrap.min.css" />
<!-- https://getbootstrap.com/ -->
<link rel="stylesheet" href="admin_style/css/templatemo-style.css">
<!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
</head>

<body id="reportsPage">
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
					<li class="nav-item"><a class="nav-link" href="/dashboard">
							<i class="fas fa-tachometer-alt"></i> Dashboard <span
							class="sr-only">(current)</span>
					</a></li>

					<li class="nav-item"><a class="nav-link active"
						href="products.html"> <i class="fas fa-shopping-cart"></i>
							Products
					</a></li>

					<li class="nav-item"><a class="nav-link" href="/adminaccount">
							<i class="far fa-user"></i> Accounts
					</a></li>
				</ul>
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link d-block"
						href="login.html"> Admin, <b>Logout</b>
					</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container mt-1">
		<div class="row tm-content-row">
			<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 tm-block-col">
				<div class="tm-bg-primary-dark tm-block tm-block-products">
					<div class="tm-product-table-container">
						<table class="table table-hover tm-table-small tm-product-table">
							<thead>
								<tr>
									
									<th scope="col">Product name</th>
									<th scope="col">Category</th>
									<th scope="col">Price (with discount)</th>
									<th scope="col">Discount</th>
									<th scope="col">Quantity</th>
									<th scope="col">Description</th>
									<th scope="col">Edit</th>
									<th scope="col">Delete</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${products}" var="product">
									<tr>
										
										<td class="tm-product-name">${product.name}</td>
										<td class="tm-product-name">${product.category}</td>
										<td>	
										<c:choose>
											<c:when test="${product.discount > 0}">
												${product.price - ((0.01 * product.price)* product.discount ) }

											</c:when>
											<c:otherwise>
												${product.price}

											</c:otherwise>
										</c:choose>
										</td>
										<td>${product.discount}%</td>
										<td>${product.quantity}</td>
										<td>${product.description}</td>

										<td><a href="update/${product.id}"
											class="tm-product-delete-link"> <i
												class="fas fa-edit tm-product-delete-icon "></i>
										</a></td>
										
										<td><a href="delete/${product.id}"
											class="tm-product-delete-link"> <i
												class="far fa-trash-alt tm-product-delete-icon"></i>
										</a></td>
										
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- table container -->
					<a href="addproduct"
						class="btn btn-primary btn-block text-uppercase mb-3">Add new
						product</a>
					<!-- <button class="btn btn-primary btn-block text-uppercase">
              Delete selected products
            </button>-->
				</div>
			</div>
		</div>
	</div>
	<footer class="tm-footer row tm-mt-small">
		<div class="col-12 font-weight-light">
			<p class="text-center text-white mb-0 px-4 small">
				Copyright &copy; <b>2022</b> All rights reserved. 
			</p>
		</div>
	</footer>

	<script src="admin_style/js/jquery-3.3.1.min.js"></script>
	<!-- https://jquery.com/download/ -->
	<script src="admin_style/js/bootstrap.min.js"></script>
	<!-- https://getbootstrap.com/ -->
	<script>
		$(function() {
			$(".tm-product-name").on("click", function() {
				window.location.href = "edit-product.html";
			});
		});
	</script>
</body>
</html>