<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<title>Furea - Cart</title>
<meta name="description" content="Morden Bootstrap HTML5 Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<!-- ======= All CSS Plugins here ======== -->
<link rel="stylesheet"
	href="../assets/css/plugins/swiper-bundle.min.css">
<link rel="stylesheet" href="../assets/css/plugins/glightbox.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap"
	rel="stylesheet">

<!-- Plugin css -->
<!-- <link rel="stylesheet" href="assets/css/vendor/bootstrap.min.css"> -->

<!-- Custom Style CSS -->
<link rel="stylesheet" href="../assets/css/style.css">

</head>

<body>

	<!-- Start header area -->
	<header class="header__section header__transparent">
		<!-- Start Header topbar -->
		<div class="header__topbar bg__primary">
			<div class="container-fluid">
				<div
					class="header__topbar--inner d-flex align-items-center justify-content-between">
					<div class="header__shipping">
						<p class="header__shipping--text text-white">Get Up To 80% off
							In your first Offer!</p>
					</div>
				</div>
			</div>
		</div>
		<!-- Start Header topbar -->

		<!-- Start main header -->
		<div class="main__header header__sticky">
			<div class="container-fluid">
				<div
					class="main__header--inner position__relative d-flex justify-content-between align-items-center">
					<div class="offcanvas__header--menu__open ">
						<a class="offcanvas__header--menu__open--btn"
							href="javascript:void(0)"> <svg
								xmlns="http://www.w3.org/2000/svg"
								class="ionicon offcanvas__header--menu__open--svg"
								viewBox="0 0 512 512">
                                        <path fill="currentColor"
									stroke="currentColor" stroke-linecap="round"
									stroke-miterlimit="10" stroke-width="32"
									d="M80 160h352M80 256h352M80 352h352" />
                                    </svg> <span class="visually-hidden">Offcanvas
								Menu Open</span>
						</a>
					</div>
					<div class="main__logo">
						<h1 class="main__logo--title">
							<a class="main__logo--link" href="index.html"><img
								class="main__logo--img" src="../assets/img/logo/nav-log.webp"
								alt="logo-img"></a>
						</h1>
					</div>
					<div class="header__menu d-none d-lg-block">
						<nav class="header__menu--navigation">
							<ul class="d-flex">
								<li class="header__menu--items"><a
									class="header__menu--link" href="home.jsp">Home </a></li>
								<li class="header__menu--items"><a
									class="header__menu--link" href="about.jsp">About US </a></li>
								<li class="header__menu--items"><a
									class="header__menu--link" href="contact.jsp">Contact </a></li>
							</ul>
						</nav>
					</div>
					<div class="header__account">
						<ul class="d-flex">
							<li
								class="header__account--items  header__account--search__items d-md-none">
								<a class="header__account--btn search__open--btn"
								href="javascript:void(0)"> <svg
										class="header__search--button__svg"
										xmlns="http://www.w3.org/2000/svg" width="26.51"
										height="23.443" viewBox="0 0 512 512">
                                                <path
											d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z"
											fill="none" stroke="currentColor" stroke-miterlimit="10"
											stroke-width="32" />
                                                <path fill="none"
											stroke="currentColor" stroke-linecap="round"
											stroke-miterlimit="10" stroke-width="32"
											d="M338.29 338.29L448 448" />
                                            </svg> <span
									class="visually-hidden">Search</span>
							</a>
							</li>
							<!-- <!-- <li class="header__account--items">
                                <a class="header__account--btn" href="my-account.html">
                                    <svg xmlns="http://www.w3.org/2000/svg"  width="26.51" height="23.443" viewBox="0 0 512 512"><path d="M344 144c-3.92 52.87-44 96-88 96s-84.15-43.12-88-96c-4-55 35-96 88-96s92 42 88 96z" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32"/><path d="M256 304c-87 0-175.3 48-191.64 138.6C62.39 453.52 68.57 464 80 464h352c11.44 0 17.62-10.48 15.65-21.4C431.3 352 343 304 256 304z" fill="none" stroke="currentColor" stroke-miterlimit="10" stroke-width="32"/></svg> 
                                    <span class="visually-hidden">My Account</span>
                                </a>
                            </li>
                            <li class="header__account--items d-md-none">
                                <a class="header__account--btn" href="wishlist.html">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24.526" height="21.82" viewBox="0 0 24.526 21.82">
                                        <path  d="M12.263,21.82a1.438,1.438,0,0,1-.948-.356c-.991-.866-1.946-1.681-2.789-2.4l0,0a51.865,51.865,0,0,1-6.089-5.715A9.129,9.129,0,0,1,0,7.371,7.666,7.666,0,0,1,1.946,2.135,6.6,6.6,0,0,1,6.852,0a6.169,6.169,0,0,1,3.854,1.33,7.884,7.884,0,0,1,1.558,1.627A7.885,7.885,0,0,1,13.821,1.33,6.169,6.169,0,0,1,17.675,0,6.6,6.6,0,0,1,22.58,2.135a7.665,7.665,0,0,1,1.945,5.235,9.128,9.128,0,0,1-2.432,5.975,51.86,51.86,0,0,1-6.089,5.715c-.844.719-1.8,1.535-2.794,2.4a1.439,1.439,0,0,1-.948.356ZM6.852,1.437A5.174,5.174,0,0,0,3,3.109,6.236,6.236,0,0,0,1.437,7.371a7.681,7.681,0,0,0,2.1,5.059,51.039,51.039,0,0,0,5.915,5.539l0,0c.846.721,1.8,1.538,2.8,2.411,1-.874,1.965-1.693,2.812-2.415a51.052,51.052,0,0,0,5.914-5.538,7.682,7.682,0,0,0,2.1-5.059,6.236,6.236,0,0,0-1.565-4.262,5.174,5.174,0,0,0-3.85-1.672A4.765,4.765,0,0,0,14.7,2.467a6.971,6.971,0,0,0-1.658,1.918.907.907,0,0,1-1.558,0A6.965,6.965,0,0,0,9.826,2.467a4.765,4.765,0,0,0-2.975-1.03Zm0,0" transform="translate(0 0)" fill="currentColor"/>
                                    </svg>
                                      
                                    <span class="items__count wishlist">02</span> 
                                </a>
                            </li> 
                            <li class="header__account--items">
                                <a class="header__account--btn minicart__open--btn" href="javascript:void(0)">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="18.897" height="21.565" viewBox="0 0 18.897 21.565">
                                        <path  d="M16.84,8.082V6.091a4.725,4.725,0,1,0-9.449,0v4.725a.675.675,0,0,0,1.35,0V9.432h5.4V8.082h-5.4V6.091a3.375,3.375,0,0,1,6.75,0v4.691a.675.675,0,1,0,1.35,0V9.433h3.374V21.581H4.017V9.432H6.041V8.082H2.667V21.641a1.289,1.289,0,0,0,1.289,1.29h16.32a1.289,1.289,0,0,0,1.289-1.29V8.082Z" transform="translate(-2.667 -1.366)" fill="currentColor"/>
                                    </svg>
                                    <span class="items__count">02</span> 
                                </a>
                            </li> -->
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- End main header -->

		<!-- Start Offcanvas header menu -->
		<div class="offcanvas-header" tabindex="-1">
			<div class="offcanvas__inner">
				<div class="offcanvas__logo">
					<a class="offcanvas__logo_link" href="index.html"> <img
						src="assets/img/logo/nav-log.webp" alt="Furea Logo">
					</a>
					<button class="offcanvas__close--btn"
						aria-label="offcanvas close btn">close</button>
				</div>
				<nav class="offcanvas__menu">
					<ul class="offcanvas__menu_ul">
						<li class="offcanvas__menu_li"><a
							class="offcanvas__menu_item" href="home.jsp">Home</a></li>

						<!-- <li class="offcanvas__menu_li">
                            <a class="offcanvas__menu_item" href="#">Pages</a>
                            <ul class="offcanvas__sub_menu">
                                <li class="offcanvas__sub_menu_li"><a href="about.html" class="offcanvas__sub_menu_item">About Us</a></li>
                                <li class="offcanvas__sub_menu_li"><a href="contact.html" class="offcanvas__sub_menu_item">Contact Us</a></li>
                                <li class="offcanvas__sub_menu_li"><a href="cart.html" class="offcanvas__sub_menu_item">Cart Page</a></li>
                                <li class="offcanvas__sub_menu_li"><a href="portfolio.html" class="offcanvas__sub_menu_item">Portfolio Page</a></li>
                                <li class="offcanvas__sub_menu_li"><a href="wishlist.html" class="offcanvas__sub_menu_item">Wishlist Page</a></li>
                                <li class="offcanvas__sub_menu_li"><a href="login.html" class="offcanvas__sub_menu_item">Login Page</a></li>
                                <li class="offcanvas__sub_menu_li"><a href="404.html" class="offcanvas__sub_menu_item">Error Page</a></li>
                            </ul>
                        </li> -->
						<li class="offcanvas__menu_li"><a
							class="offcanvas__menu_item" href="about.jsp">About</a></li>
						<li class="offcanvas__menu_li"><a
							class="offcanvas__menu_item" href="contact.jsp">Contact</a></li>
					</ul>
					<div class="offcanvas__account--items">
						<a
							class="offcanvas__account--items__btn d-flex align-items-center"
							href="login.html"> <span
							class="offcanvas__account--items__icon"> <svg
									xmlns="http://www.w3.org/2000/svg" width="20.51"
									height="19.443" viewBox="0 0 512 512">
                                            <path
										d="M344 144c-3.92 52.87-44 96-88 96s-84.15-43.12-88-96c-4-55 35-96 88-96s92 42 88 96z"
										fill="none" stroke="currentColor" stroke-linecap="round"
										stroke-linejoin="round" stroke-width="32" />
                                            <path
										d="M256 304c-87 0-175.3 48-191.64 138.6C62.39 453.52 68.57 464 80 464h352c11.44 0 17.62-10.48 15.65-21.4C431.3 352 343 304 256 304z"
										fill="none" stroke="currentColor" stroke-miterlimit="10"
										stroke-width="32" />
                                        </svg>
						</span> <span class="offcanvas__account--items__label">Login /
								Register</span>
						</a>
					</div>
				</nav>
			</div>
		</div>
		<!-- End Offcanvas header menu -->

		<!-- Start Offcanvas stikcy toolbar -->
		<div class="offcanvas__stikcy--toolbar" tabindex="-1">
			<ul class="d-flex justify-content-between">
				<li class="offcanvas__stikcy--toolbar__list"><a
					class="offcanvas__stikcy--toolbar__btn" href="index.html"> <span
						class="offcanvas__stikcy--toolbar__icon"> <svg
								xmlns="http://www.w3.org/2000/svg" fill="none" width="21.51"
								height="21.443" viewBox="0 0 22 17">
                                        <path fill="currentColor"
									d="M20.9141 7.93359c.1406.11719.2109.26953.2109.45703 0 .14063-.0469.25782-.1406.35157l-.3516.42187c-.1172.14063-.2578.21094-.4219.21094-.1406 0-.2578-.04688-.3515-.14062l-.9844-.77344V15c0 .3047-.1172.5625-.3516.7734-.2109.2344-.4687.3516-.7734.3516h-4.5c-.3047 0-.5742-.1172-.8086-.3516-.2109-.2109-.3164-.4687-.3164-.7734v-3.6562h-2.25V15c0 .3047-.11719.5625-.35156.7734-.21094.2344-.46875.3516-.77344.3516h-4.5c-.30469 0-.57422-.1172-.80859-.3516-.21094-.2109-.31641-.4687-.31641-.7734V8.46094l-.94922.77344c-.11719.09374-.24609.14062-.38672.14062-.16406 0-.30468-.07031-.42187-.21094l-.35157-.42187C.921875 8.625.875 8.50781.875 8.39062c0-.1875.070312-.33984.21094-.45703L9.73438.832031C10.1094.527344 10.5312.375 11 .375s.8906.152344 1.2656.457031l8.6485 7.101559zm-3.7266 6.50391V7.05469L11 1.99219l-6.1875 5.0625v7.38281h3.375v-3.6563c0-.3046.10547-.5624.31641-.7734.23437-.23436.5039-.35155.80859-.35155h3.375c.3047 0 .5625.11719.7734.35155.2344.211.3516.4688.3516.7734v3.6563h3.375z">
                                        </path>
                                    </svg>
					</span> <span class="offcanvas__stikcy--toolbar__label">Home</span>
				</a></li>
				<li class="offcanvas__stikcy--toolbar__list"><a
					class="offcanvas__stikcy--toolbar__btn" href="shop.html"> <span
						class="offcanvas__stikcy--toolbar__icon"> <svg
								fill="currentColor" xmlns="http://www.w3.org/2000/svg"
								width="18.51" height="17.443" viewBox="0 0 448 512">
                                        <path
									d="M416 32H32A32 32 0 0 0 0 64v384a32 32 0 0 0 32 32h384a32 32 0 0 0 32-32V64a32 32 0 0 0-32-32zm-16 48v152H248V80zm-200 0v152H48V80zM48 432V280h152v152zm200 0V280h152v152z">
                                        </path>
                                    </svg>
					</span> <span class="offcanvas__stikcy--toolbar__label">Shop</span>
				</a></li>
				<li class="offcanvas__stikcy--toolbar__list "><a
					class="offcanvas__stikcy--toolbar__btn search__open--btn"
					href="javascript:void(0)"> <span
						class="offcanvas__stikcy--toolbar__icon"> <svg
								xmlns="http://www.w3.org/2000/svg" width="22.51" height="20.443"
								viewBox="0 0 512 512">
                                        <path
									d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z"
									fill="none" stroke="currentColor" stroke-miterlimit="10"
									stroke-width="32" />
                                        <path fill="none"
									stroke="currentColor" stroke-linecap="round"
									stroke-miterlimit="10" stroke-width="32"
									d="M338.29 338.29L448 448" />
                                    </svg>
					</span> <span class="offcanvas__stikcy--toolbar__label">Search</span>
				</a></li>
			</ul>
		</div>
		<!-- End Offcanvas stikcy toolbar -->

		<!-- Start offCanvas minicart -->
		<div class="offCanvas__minicart" tabindex="-1">
			<div class="minicart__header ">
				<div
					class="minicart__header--top d-flex justify-content-between align-items-center">
					<h3 class="minicart__title">Shopping Cart</h3>
					<button class="minicart__close--btn"
						aria-label="minicart close btn">
						<svg class="minicart__close--icon"
							xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                    <path fill="currentColor"
								stroke="currentColor" stroke-linecap="round"
								stroke-linejoin="round" stroke-width="32"
								d="M368 368L144 144M368 144L144 368" />
                                </svg>
					</button>
				</div>
				<p class="minicart__header--desc">The organic foods products are
					limited</p>
			</div>
			<div class="minicart__product">
				<div class="minicart__product--items d-flex">
					<div class="minicart__thumbnail">
						<a href="product-details.html"><img
							src="assets/img/product/product1.webp" alt="prduct-img"></a>
					</div>
					<div class="minicart__text">
						<h4 class="minicart__subtitle">
							<a href="product-details.html">The is Garden Vegetable.</a>
						</h4>
						<span class="color__variant"><b>Color:</b> Beige</span>
						<div class="minicart__price">
							<span class="current__price">$125.00</span> <span
								class="old__price">$140.00</span>
						</div>
						<div class="minicart__text--footer d-flex align-items-center">
							<div class="quantity__box minicart__quantity">
								<button type="button" class="quantity__value decrease"
									aria-label="quantity value" value="Decrease Value">-</button>
								<label> <input type="number" class="quantity__number"
									value="1" />
								</label>
								<button type="button" class="quantity__value increase"
									aria-label="quantity value" value="Increase Value">+</button>
							</div>
							<button class="minicart__product--remove"
								aria-label="minicart remove btn">Remove</button>
						</div>
					</div>
				</div>
				<div class="minicart__product--items d-flex">
					<div class="minicart__thumbnail">
						<a href="product-details.html"><img
							src="assets/img/product/product2.webp" alt="prduct-img"></a>
					</div>
					<div class="minicart__text">
						<h4 class="minicart__subtitle">
							<a href="product-details.html">Fresh Tomatoe is organic.</a>
						</h4>
						<span class="color__variant"><b>Color:</b> Green</span>
						<div class="minicart__price">
							<span class="current__price">$115.00</span> <span
								class="old__price">$130.00</span>
						</div>
						<div class="minicart__text--footer d-flex align-items-center">
							<div class="quantity__box minicart__quantity">
								<button type="button" class="quantity__value decrease"
									aria-label="quantity value" value="Decrease Value">-</button>
								<label> <input type="number" class="quantity__number"
									value="1" />
								</label>
								<button type="button" class="quantity__value increase"
									aria-label="quantity value" value="Increase Value">+</button>
							</div>
							<button class="minicart__product--remove"
								aria-label="minicart remove btn">Remove</button>
						</div>
					</div>
				</div>
			</div>
			<div class="minicart__amount">
				<div class="minicart__amount_list d-flex justify-content-between">
					<span>Sub Total:</span> <span><b>$240.00</b></span>
				</div>
				<div class="minicart__amount_list d-flex justify-content-between">
					<span>Total:</span> <span><b>$240.00</b></span>
				</div>
			</div>
			<div class="minicart__conditions text-center">
				<input class="minicart__conditions--input" id="accept"
					type="checkbox"> <label class="minicart__conditions--label"
					for="accept">I agree with the <a
					class="minicart__conditions--link" href="privacy-policy.html">Privacy
						And Policy</a></label>
			</div>
			<div class="minicart__button d-flex justify-content-center">
				<a class="primary__btn minicart__button--link" href="cart.html">View
					cart</a> <a class="primary__btn minicart__button--link"
					href="checkout.html">Checkout</a>
			</div>
		</div>
		<!-- End offCanvas minicart -->

		<!-- Start serch box area -->
		<div class="predictive__search--box " tabindex="-1">
			<div class="predictive__search--box__inner">
				<h2 class="predictive__search--title">Search Products</h2>
				<form class="predictive__search--form" action="#">
					<label> <input class="predictive__search--input"
						placeholder="Search Here" type="text">
					</label>
					<button class="predictive__search--button"
						aria-label="search button">
						<svg class="header__search--button__svg"
							xmlns="http://www.w3.org/2000/svg" width="30.51" height="25.443"
							viewBox="0 0 512 512">
                                    <path
								d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z"
								fill="none" stroke="currentColor" stroke-miterlimit="10"
								stroke-width="32" />
                                    <path fill="none"
								stroke="currentColor" stroke-linecap="round"
								stroke-miterlimit="10" stroke-width="32"
								d="M338.29 338.29L448 448" />
                                </svg>
					</button>
				</form>
			</div>
			<button class="predictive__search--close__btn"
				aria-label="search close btn">
				<svg class="predictive__search--close__icon"
					xmlns="http://www.w3.org/2000/svg" width="40.51" height="30.443"
					viewBox="0 0 512 512">
                            <path fill="currentColor"
						stroke="currentColor" stroke-linecap="round"
						stroke-linejoin="round" stroke-width="32"
						d="M368 368L144 144M368 144L144 368" />
                        </svg>
			</button>
		</div>
		<!-- End serch box area -->
	</header>
	<!-- End header area -->

	<main class="main__content_wrapper">

		<!-- Start breadcrumb section -->
		<section class="breadcrumb__section breadcrumb__bg">
			<div class="container-fluid">
				<div class="row row-cols-1">
					<div class="col">
						<div class="breadcrumb__content">
							<h1 class="breadcrumb__content--title text-white mb-10">View
								Product</h1>
							<ul class="breadcrumb__content--menu d-flex">
								<li class="breadcrumb__content--menu__items"><a
									class="text-white" href="index.html">Home</a></li>
								<li class="breadcrumb__content--menu__items"><span
									class="text-white">View product</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End breadcrumb section -->

		<!-- cart section start -->

		<section>
			<div class="container-fluid">

				<form action="/add" method="post">
					<input type="hidden" name="id" value="${product.id}">
					<div class="modal-dialog quickview__main--wrapper">
						<header class="modal-header quickview__header">
							<button class="close-modal quickview__close--btn"
								aria-label="close modal" data-close>
								<a href="/">&#x2715;</a>
							</button>
						</header>
						<div class="quickview__inner">
							<div class="row row-cols-lg-8 row-cols-md-2">
								<div class="col">
									<div class="product__details--media">
										<div class="product__media--preview  swiper">
											<div class="swiper-wrapper">
												<div class="swiper-slide">
													<div class="product__media--preview__items">
														<a class="product__media--preview__items--link glightbox"
															data-gallery="product-media-preview"
															href="/productimg/${product.imageURL}"><img
															class="product__media--preview__items--img"
															src="/productimg/${product.imageURL}"
															alt="product-media-img"></a>
														<div class="product__media--view__icon">
															<a class="product__media--view__icon--link glightbox"
																href="/productimg/${product.imageURL}"
																data-gallery="product-media-preview"> <svg
																	class="product__media--view__icon--svg"
																	xmlns="http://www.w3.org/2000/svg" width="22.51"
																	height="22.443" viewBox="0 0 512 512">
                                                                                <path
																		d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z"
																		fill="none" stroke="currentColor"
																		stroke-miterlimit="10" stroke-width="32"></path>
                                                                                <path
																		fill="none" stroke="currentColor"
																		stroke-linecap="round" stroke-miterlimit="10"
																		stroke-width="32" d="M338.29 338.29L448 448"></path>
                                                                            </svg>
																<span class="visually-hidden">Media Gallery</span>
															</a>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- <div class="product__media--nav swiper">
                                                    <div class="swiper-wrapper">
                                                        <div class="swiper-slide">
                                                            <div class="product__media--nav__items">
                                                                <img class="product__media--nav__items--img"
                                                                    src="assets/img/product/small-product1.webp" alt="product-nav-img">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="swiper__nav--btn swiper-button-next"></div>
                                                    <div class="swiper__nav--btn swiper-button-prev"></div>
                                                </div> -->
									</div>
								</div>
								<div class="col">
									<div class="quickview__info">
										<form action="a">
											<h2 class="product__details--info__title mb-15">${product.name}
											</h2>
											<div class="product__details--info__price mb-12">
												<span class="current__price">&#x20B9;${product.price -
                                                                ((0.01 * product.price)* product.discount ) }</span>
												<span class="old__price">&#x20B9;${product.price}</span>
											</div>
											<div
												class="quickview__info--ratting d-flex align-items-center mb-15">
												<ul class="rating d-flex justify-content-center">
													<li class="rating__list"><span
														class="rating__list--icon"> <svg
																class="rating__list--icon__svg"
																xmlns="http://www.w3.org/2000/svg" width="14.105"
																height="14.732" viewBox="0 0 10.105 9.732">
                                                                            <path
																	data-name="star - Copy"
																	d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
																	transform="translate(0 -0.018)" fill="currentColor"></path>
                                                                        </svg>
													</span></li>
													<li class="rating__list"><span
														class="rating__list--icon"> <svg
																class="rating__list--icon__svg"
																xmlns="http://www.w3.org/2000/svg" width="14.105"
																height="14.732" viewBox="0 0 10.105 9.732">
                                                                            <path
																	data-name="star - Copy"
																	d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
																	transform="translate(0 -0.018)" fill="currentColor"></path>
                                                                        </svg>
													</span></li>
													<li class="rating__list"><span
														class="rating__list--icon"> <svg
																class="rating__list--icon__svg"
																xmlns="http://www.w3.org/2000/svg" width="14.105"
																height="14.732" viewBox="0 0 10.105 9.732">
                                                                            <path
																	data-name="star - Copy"
																	d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
																	transform="translate(0 -0.018)" fill="currentColor"></path>
                                                                        </svg>
													</span></li>
													<li class="rating__list"><span
														class="rating__list--icon"> <svg
																class="rating__list--icon__svg"
																xmlns="http://www.w3.org/2000/svg" width="14.105"
																height="14.732" viewBox="0 0 10.105 9.732">
                                                                            <path
																	data-name="star - Copy"
																	d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
																	transform="translate(0 -0.018)" fill="currentColor"></path>
                                                                        </svg>
													</span></li>
													<li class="rating__list"><span
														class="rating__list--icon"> <svg
																class="rating__list--icon__svg"
																xmlns="http://www.w3.org/2000/svg" width="14.105"
																height="14.732" viewBox="0 0 10.105 9.732">
                                                                            <path
																	data-name="star - Copy"
																	d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
																	transform="translate(0 -0.018)" fill="currentColor"></path>
                                                                        </svg>
													</span></li>
												</ul>
												<span class="quickview__info--review__text">(5
													reviews)</span>
											</div>
											<p class="product__details--info__desc mb-15">
												${product.description} - Lorem ipsum dolor sit amet,
												consectetur adipisicing elit is. Deserunt totam dolores ea
												numquam labore! Illum magnam totam tenetur fuga quo dolor.</p>
											<div class="product__variant">
												<div class="product__variant--list mb-15">
													<fieldset class="variant__input--fieldset">
														<legend class="product__variant--title mb-8">Color
															: </legend>
														<div class="variant__color d-flex">
															<div class="variant__color--list">
																<input id="color-red1" name="color" type="radio" checked>
																<label class="variant__color--value red"
																	for="color-red1" title="Red"><img
																	class="variant__color--value__img"
																	src="../productimg/${product.imageURL}"
																	alt="variant-color-img"></label>
															</div>
														</div>
													</fieldset>
													<fieldset class="variant__input--fieldset">
														<legend class="product__variant--title mb-8">Weight
															:</legend>
														<ul class="variant__size d-flex">
															<li class="variant__size--list"><input id="weight1"
																name="weight" type="radio" checked> <label
																class="variant__size--value red" for="weight1">5
																	kg</label></li>
														</ul>
													</fieldset>
												</div>

												<div
													class="quickview__variant--list quantity d-flex align-items-center mb-15">
													<div class="quantity__box">
														<button type="button"
															class="quantity__value quickview__value--quantity decrease"
															aria-label="quantity value" id="decrease" value="Decrease Value">-</button>
														<label> <input type="number"
															class="quantity__number quickview__value--number"
															value="1" min="1" name="quantity" id="qty" />
														</label>
														<button type="button" 
															class="quantity__value quickview__value--quantity increase"
															aria-label="quantity value" id="increase" value="Increase Value">+</button>
													</div>
													<button class="primary__btn quickview__cart--btn"
														type="submit">Add To Cart</button>
												</div>
												<div
													class="quickview__variant--list variant__wishlist mb-15">
													<a class="variant__wishlist--icon" href="wishlist.html"
														title="Add to wishlist"> <svg
															class="quickview__variant--wishlist__svg"
															xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                                                        <path
																d="M352.92 80C288 80 256 144 256 144s-32-64-96.92-64c-52.76 0-94.54 44.14-95.08 96.81-1.1 109.33 86.73 187.08 183 252.42a16 16 0 0018 0c96.26-65.34 184.09-143.09 183-252.42-.54-52.67-42.32-96.81-95.08-96.81z"
																fill="none" stroke="currentColor" stroke-linecap="round"
																stroke-linejoin="round" stroke-width="32" />
                                                                    </svg> Add
														to Wishlist
													</a>
												</div>
											</div>
											<div class="quickview__social d-flex align-items-center">
												<label class="quickview__social--title">Social
													Share:</label>
												<ul class="quickview__social--wrapper mt-0 d-flex">
													<li class="quickview__social--list"><a
														class="quickview__social--icon" target="_blank"
														href="https://www.facebook.com"> <svg
																xmlns="http://www.w3.org/2000/svg" width="7.667"
																height="16.524" viewBox="0 0 7.667 16.524">
                                                                            <path
																	data-name="Path 237"
																	d="M967.495,353.678h-2.3v8.253h-3.437v-8.253H960.13V350.77h1.624v-1.888a4.087,4.087,0,0,1,.264-1.492,2.9,2.9,0,0,1,1.039-1.379,3.626,3.626,0,0,1,2.153-.6l2.549.019v2.833h-1.851a.732.732,0,0,0-.472.151.8.8,0,0,0-.246.642v1.719H967.8Z"
																	transform="translate(-960.13 -345.407)"
																	fill="currentColor" />
                                                                        </svg>
															<span class="visually-hidden">Facebook</span>
													</a></li>
													<li class="quickview__social--list"><a
														class="quickview__social--icon" target="_blank"
														href="https://twitter.com"> <svg
																xmlns="http://www.w3.org/2000/svg" width="16.489"
																height="13.384" viewBox="0 0 16.489 13.384">
                                                                            <path
																	data-name="Path 303"
																	d="M966.025,1144.2v.433a9.783,9.783,0,0,1-.621,3.388,10.1,10.1,0,0,1-1.845,3.087,9.153,9.153,0,0,1-3.012,2.259,9.825,9.825,0,0,1-4.122.866,9.632,9.632,0,0,1-2.748-.4,9.346,9.346,0,0,1-2.447-1.11q.4.038.809.038a6.723,6.723,0,0,0,2.24-.376,7.022,7.022,0,0,0,1.958-1.054,3.379,3.379,0,0,1-1.958-.687,3.259,3.259,0,0,1-1.186-1.666,3.364,3.364,0,0,0,.621.056,3.488,3.488,0,0,0,.885-.113,3.267,3.267,0,0,1-1.374-.631,3.356,3.356,0,0,1-.969-1.186,3.524,3.524,0,0,1-.367-1.5v-.057a3.172,3.172,0,0,0,1.544.433,3.407,3.407,0,0,1-1.1-1.214,3.308,3.308,0,0,1-.4-1.609,3.362,3.362,0,0,1,.452-1.694,9.652,9.652,0,0,0,6.964,3.538,3.911,3.911,0,0,1-.075-.772,3.293,3.293,0,0,1,.452-1.694,3.409,3.409,0,0,1,1.233-1.233,3.257,3.257,0,0,1,1.685-.461,3.351,3.351,0,0,1,2.466,1.073,6.572,6.572,0,0,0,2.146-.828,3.272,3.272,0,0,1-.574,1.083,3.477,3.477,0,0,1-.913.8,6.869,6.869,0,0,0,1.958-.546A7.074,7.074,0,0,1,966.025,1144.2Z"
																	transform="translate(-951.23 -1140.849)"
																	fill="currentColor" />
                                                                        </svg>
															<span class="visually-hidden">Twitter</span>
													</a></li>
													<li class="quickview__social--list"><a
														class="quickview__social--icon" target="_blank"
														href="https://www.youtube.com"> <svg
																xmlns="http://www.w3.org/2000/svg" width="16.49"
																height="11.582" viewBox="0 0 16.49 11.582">
                                                                            <path
																	data-name="Path 321"
																	d="M967.759,1365.592q0,1.377-.019,1.717-.076,1.114-.151,1.622a3.981,3.981,0,0,1-.245.925,1.847,1.847,0,0,1-.453.717,2.171,2.171,0,0,1-1.151.6q-3.585.265-7.641.189-2.377-.038-3.387-.085a11.337,11.337,0,0,1-1.5-.142,2.206,2.206,0,0,1-1.113-.585,2.562,2.562,0,0,1-.528-1.037,3.523,3.523,0,0,1-.141-.585c-.032-.2-.06-.5-.085-.906a38.894,38.894,0,0,1,0-4.867l.113-.925a4.382,4.382,0,0,1,.208-.906,2.069,2.069,0,0,1,.491-.755,2.409,2.409,0,0,1,1.113-.566,19.2,19.2,0,0,1,2.292-.151q1.82-.056,3.953-.056t3.952.066q1.821.067,2.311.142a2.3,2.3,0,0,1,.726.283,1.865,1.865,0,0,1,.557.49,3.425,3.425,0,0,1,.434,1.019,5.72,5.72,0,0,1,.189,1.075q0,.095.057,1C967.752,1364.1,967.759,1364.677,967.759,1365.592Zm-7.6.925q1.49-.754,2.113-1.094l-4.434-2.339v4.66Q958.609,1367.311,960.156,1366.517Z"
																	transform="translate(-951.269 -1359.8)"
																	fill="currentColor" />
                                                                        </svg>
															<span class="visually-hidden">Youtube</span>
													</a></li>
												</ul>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>

				</form>

			</div>
		</section>

		<!-- cart section end -->

		<!-- Start product section -->
		<!-- End product section -->

		<!-- Start Newsletter banner section -->
		<section class="newsletter__banner--section section--padding pt-0">
			<div class="container-fluid">
				<div class="newsletter__banner--thumbnail position__relative">
					<img class="newsletter__banner--thumbnail__img"
						src="../assets/img/banner/banner-bg2.webp" alt="newsletter-banner">
					<div class="newsletter__content newsletter__subscribe">
						<h5 class="newsletter__content--subtitle text-white">Want to
							offer regularly ?</h5>
						<h2 class="newsletter__content--title text-white h3 mb-25">
							Subscribe Our Newsletter <br> for Get Daily Update
						</h2>
						<form class="newsletter__subscribe--form position__relative"
							action="#">
							<label> <input class="newsletter__subscribe--input"
								placeholder="Enter your email address" type="email">
							</label>
							<button class="newsletter__subscribe--button primary__btn"
								type="submit">
								Subscribe
								<svg class="newsletter__subscribe--button__icon"
									xmlns="http://www.w3.org/2000/svg" width="9.159" height="7.85"
									viewBox="0 0 9.159 7.85">
                                            <path
										data-name="Icon material-send"
										d="M3,12.35l9.154-3.925L3,4.5,3,7.553l6.542.872L3,9.3Z"
										transform="translate(-3 -4.5)" fill="currentColor" />
                                        </svg>
							</button>
						</form>
					</div>
				</div>
			</div>
		</section>
		<!-- End Newsletter banner section -->

		<!-- Start brand logo section -->
		<div class="brand__logo--section bg__secondary section--padding">
			<div class="container-fluid">
				<div class="row row-cols-1">
					<div class="col">
						<div
							class="brand__logo--section__inner d-flex justify-content-center align-items-center">
							<div class="brand__logo--items">
								<img class="brand__logo--items__thumbnail--img"
									src="../assets/img/logo/brand-logo1.webp" alt="brand logo">
							</div>
							<div class="brand__logo--items">
								<img class="brand__logo--items__thumbnail--img"
									src="../assets/img/logo/brand-logo2.webp" alt="brand logo">
							</div>
							<div class="brand__logo--items">
								<img class="brand__logo--items__thumbnail--img"
									src="../assets/img/logo/brand-logo3.webp" alt="brand logo">
							</div>
							<div class="brand__logo--items">
								<img class="brand__logo--items__thumbnail--img"
									src="../assets/img/logo/brand-logo4.webp" alt="brand logo">
							</div>
							<div class="brand__logo--items">
								<img class="brand__logo--items__thumbnail--img"
									src="../assets/img/logo/brand-logo5.webp" alt="brand logo">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End brand logo section -->

	</main>

	<!-- Start footer section -->
	<footer class="footer__section footer__bg">
		<div class="container-fluid">
			<div class="main__footer">
				<div class="row">
					<div class="col-lg-3 col-md-6">
						<div class="footer__widget">
							<h2 class="footer__widget--title d-none d-md-block">
								About Us
								<button class="footer__widget--button"
									aria-label="footer widget button"></button>
								<svg class="footer__widget--title__arrowdown--icon"
									xmlns="http://www.w3.org/2000/svg" width="12.355"
									height="8.394" viewBox="0 0 10.355 6.394">
                                            <path
										d="M15.138,8.59l-3.961,3.952L7.217,8.59,6,9.807l5.178,5.178,5.178-5.178Z"
										transform="translate(-6 -8.59)" fill="currentColor"></path>
                                        </svg>
							</h2>
							<div class="footer__widget--inner">
								<a class="footer__logo" href="index.html"><img
									src="assets/img/logo/nav-log.webp" alt="footer-logo"></a>
								<p class="footer__widget--desc">
									Ut enim ad minim veniam, quis <br> nostrud exercitation
									ullamco laboris <br> nisi ut aliquip ex ea commodo.
								</p>
								<div class="footer__social">
									<ul class="social__shear d-flex">
										<li class="social__shear--list"><a
											class="social__shear--list__icon" target="_blank"
											href="https://www.facebook.com"> <svg
													xmlns="http://www.w3.org/2000/svg" width="11.239"
													height="20.984" viewBox="0 0 11.239 20.984">
                                                            <path
														id="Icon_awesome-facebook-f"
														data-name="Icon awesome-facebook-f"
														d="M11.575,11.8l.583-3.8H8.514V5.542A1.9,1.9,0,0,1,10.655,3.49h1.657V.257A20.2,20.2,0,0,0,9.371,0c-3,0-4.962,1.819-4.962,5.112V8.006H1.073v3.8H4.409v9.181H8.514V11.8Z"
														transform="translate(-1.073)" fill="currentColor" />
                                                        </svg> <span
												class="visually-hidden">Facebook</span>
										</a></li>
										<li class="social__shear--list"><a
											class="social__shear--list__icon" target="_blank"
											href="https://twitter.com"> <svg
													xmlns="http://www.w3.org/2000/svg" width="24"
													height="19.492" viewBox="0 0 24 19.492">
                                                            <path
														id="Icon_awesome-twitter" data-name="Icon awesome-twitter"
														d="M21.533,7.112c.015.213.015.426.015.64A13.9,13.9,0,0,1,7.553,21.746,13.9,13.9,0,0,1,0,19.538a10.176,10.176,0,0,0,1.188.061,9.851,9.851,0,0,0,6.107-2.1,4.927,4.927,0,0,1-4.6-3.411,6.2,6.2,0,0,0,.929.076,5.2,5.2,0,0,0,1.294-.167A4.919,4.919,0,0,1,.975,9.168V9.107A4.954,4.954,0,0,0,3.2,9.731,4.926,4.926,0,0,1,1.675,3.152,13.981,13.981,0,0,0,11.817,8.3,5.553,5.553,0,0,1,11.7,7.173a4.923,4.923,0,0,1,8.513-3.365A9.684,9.684,0,0,0,23.33,2.619,4.906,4.906,0,0,1,21.167,5.33,9.861,9.861,0,0,0,24,4.569a10.573,10.573,0,0,1-2.467,2.543Z"
														transform="translate(0 -2.254)" fill="currentColor" />
                                                        </svg> <span
												class="visually-hidden">Twitter</span>
										</a></li>
										<li class="social__shear--list"><a
											class="social__shear--list__icon" target="_blank"
											href="https://www.instagram.com"> <svg
													xmlns="http://www.w3.org/2000/svg" width="19.497"
													height="19.492" viewBox="0 0 19.497 19.492">
                                                            <path
														id="Icon_awesome-instagram"
														data-name="Icon awesome-instagram"
														d="M9.747,6.24a5,5,0,1,0,5,5A4.99,4.99,0,0,0,9.747,6.24Zm0,8.247A3.249,3.249,0,1,1,13,11.238a3.255,3.255,0,0,1-3.249,3.249Zm6.368-8.451A1.166,1.166,0,1,1,14.949,4.87,1.163,1.163,0,0,1,16.115,6.036Zm3.31,1.183A5.769,5.769,0,0,0,17.85,3.135,5.807,5.807,0,0,0,13.766,1.56c-1.609-.091-6.433-.091-8.042,0A5.8,5.8,0,0,0,1.64,3.13,5.788,5.788,0,0,0,.065,7.215c-.091,1.609-.091,6.433,0,8.042A5.769,5.769,0,0,0,1.64,19.341a5.814,5.814,0,0,0,4.084,1.575c1.609.091,6.433.091,8.042,0a5.769,5.769,0,0,0,4.084-1.575,5.807,5.807,0,0,0,1.575-4.084c.091-1.609.091-6.429,0-8.038Zm-2.079,9.765a3.289,3.289,0,0,1-1.853,1.853c-1.283.509-4.328.391-5.746.391S5.28,19.341,4,18.837a3.289,3.289,0,0,1-1.853-1.853c-.509-1.283-.391-4.328-.391-5.746s-.113-4.467.391-5.746A3.289,3.289,0,0,1,4,3.639c1.283-.509,4.328-.391,5.746-.391s4.467-.113,5.746.391a3.289,3.289,0,0,1,1.853,1.853c.509,1.283.391,4.328.391,5.746S17.855,15.705,17.346,16.984Z"
														transform="translate(0.004 -1.492)" fill="currentColor" />
                                                        </svg> <span
												class="visually-hidden">Instagram</span>
										</a></li>
										<li class="social__shear--list"><a
											class="social__shear--list__icon" target="_blank"
											href="https://www.linkedin.com"> <svg
													xmlns="http://www.w3.org/2000/svg" width="19.419"
													height="19.419" viewBox="0 0 19.419 19.419">
                                                            <path
														id="Icon_awesome-linkedin-in"
														data-name="Icon awesome-linkedin-in"
														d="M4.347,19.419H.321V6.454H4.347ZM2.332,4.686A2.343,2.343,0,1,1,4.663,2.332,2.351,2.351,0,0,1,2.332,4.686ZM19.415,19.419H15.4V13.108c0-1.5-.03-3.433-2.093-3.433-2.093,0-2.414,1.634-2.414,3.325v6.42H6.869V6.454H10.73V8.223h.056A4.23,4.23,0,0,1,14.6,6.129c4.075,0,4.824,2.683,4.824,6.168v7.122Z"
														fill="currentColor" />
                                                        </svg> <span
												class="visually-hidden">Linkedin</span>
										</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="footer__widget">
							<h2 class="footer__widget--title ">
								Quick Links
								<button class="footer__widget--button"
									aria-label="footer widget button"></button>
								<svg class="footer__widget--title__arrowdown--icon"
									xmlns="http://www.w3.org/2000/svg" width="12.355"
									height="8.394" viewBox="0 0 10.355 6.394">
                                            <path
										d="M15.138,8.59l-3.961,3.952L7.217,8.59,6,9.807l5.178,5.178,5.178-5.178Z"
										transform="translate(-6 -8.59)" fill="currentColor"></path>
                                        </svg>
							</h2>
							<ul class="footer__widget--menu footer__widget--inner">
								<li class="footer__widget--menu__list"><a
									class="footer__widget--menu__text" href="about.html">About
										Us</a></li>
								<li class="footer__widget--menu__list"><a
									class="footer__widget--menu__text" href="wishlist.html">Wishlist</a></li>
								<li class="footer__widget--menu__list"><a
									class="footer__widget--menu__text" href="contact.html">Contact
										Us</a></li>
								<li class="footer__widget--menu__list"><a
									class="footer__widget--menu__text" href="privacy-policy.html">Privacy
										Policy</a></li>
								<li class="footer__widget--menu__list"><a
									class="footer__widget--menu__text" href="faq.html">Frequently</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="footer__widget">
							<h2 class="footer__widget--title ">
								Account Info
								<button class="footer__widget--button"
									aria-label="footer widget button"></button>
								<svg class="footer__widget--title__arrowdown--icon"
									xmlns="http://www.w3.org/2000/svg" width="12.355"
									height="8.394" viewBox="0 0 10.355 6.394">
                                            <path
										d="M15.138,8.59l-3.961,3.952L7.217,8.59,6,9.807l5.178,5.178,5.178-5.178Z"
										transform="translate(-6 -8.59)" fill="currentColor"></path>
                                        </svg>
							</h2>
							<ul class="footer__widget--menu footer__widget--inner">
								<li class="footer__widget--menu__list"><a
									class="footer__widget--menu__text" href="my-account.html">My
										Account</a></li>
								<li class="footer__widget--menu__list"><a
									class="footer__widget--menu__text" href="cart.html">Shopping
										Cart</a></li>
								<li class="footer__widget--menu__list"><a
									class="footer__widget--menu__text" href="login.html">Login</a></li>
								<li class="footer__widget--menu__list"><a
									class="footer__widget--menu__text" href="login.html">Register</a></li>
								<li class="footer__widget--menu__list"><a
									class="footer__widget--menu__text" href="checkout.html">Checkout</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="footer__widget">
							<h2 class="footer__widget--title ">
								Newsletter
								<button class="footer__widget--button"
									aria-label="footer widget button"></button>
								<svg class="footer__widget--title__arrowdown--icon"
									xmlns="http://www.w3.org/2000/svg" width="12.355"
									height="8.394" viewBox="0 0 10.355 6.394">
                                            <path
										d="M15.138,8.59l-3.961,3.952L7.217,8.59,6,9.807l5.178,5.178,5.178-5.178Z"
										transform="translate(-6 -8.59)" fill="currentColor"></path>
                                        </svg>
							</h2>
							<div class="footer__newsletter footer__widget--inner">
								<p class="footer__newsletter--desc">Get updates by subscribe
									our weekly newsletter</p>
								<form
									class="newsletter__subscribe--form__style position__relative"
									action="#">
									<label> <input
										class="footer__newsletter--input newsletter__subscribe--input"
										placeholder="Enter your email address" type="email">
									</label>
									<button
										class="footer__newsletter--button newsletter__subscribe--button primary__btn"
										type="submit">
										Subscribe
										<svg class="newsletter__subscribe--button__icon"
											xmlns="http://www.w3.org/2000/svg" width="9.159"
											height="7.85" viewBox="0 0 9.159 7.85">
                                                    <path
												data-name="Icon material-send"
												d="M3,12.35l9.154-3.925L3,4.5,3,7.553l6.542.872L3,9.3Z"
												transform="translate(-3 -4.5)" fill="currentColor" />
                                                </svg>
									</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div
				class="footer__bottom d-flex justify-content-between align-items-center">
				<p class="copyright__content  m-0">
					Copyright © 2022 <a class="copyright__content--link"
						href="index.html">Furea</a> . All Rights Reserved.Design By Furea
				</p>
				<div class="footer__payment text-right">
					<img class="footer__payment--visa__card display-block"
						src="../assets/img/other/payment-visa-card.webp" alt="visa-card">
				</div>
			</div>
		</div>
	</footer>
	<!-- End footer section -->

	<!-- Quickview Wrapper -->
	<!-- Quickview Wrapper End -->

	<!-- Scroll top bar -->
	<button id="scroll__top">
		<svg xmlns="http://www.w3.org/2000/svg" class="ionicon"
			viewBox="0 0 512 512">
                    <path fill="none" stroke="currentColor"
				stroke-linecap="round" stroke-linejoin="round" stroke-width="48"
				d="M112 244l144-144 144 144M256 120v292" />
                </svg>
	</button>


	<!-- All Script JS Plugins here  -->
	<!-- <script src="assets/js/vendor/popper.js" defer="defer"></script> -->
	<!-- <script src="assets/js/vendor/bootstrap.min.js" defer="defer"></script> -->

	<script src="../assets/js/plugins/swiper-bundle.min.js" defer="defer"></script>
	<script src="../assets/js/plugins/glightbox.min.js" defer="defer"></script>

	<!-- Customscript js -->
	<script src="../assets/js/script.js" defer="defer"></script>
	<script>
		var input = document.querySelector('#qty');
		var decrese = document.querySelector('#decrease');
		var increase = document.querySelector('#increase');
		if (input !== undefined && decrese !== undefined
				&& increase !== undefined && input !== null
				&& increase !== null && decrese !== null) {
			var min = Number(input.getAttribute('min'));
			var max = 10;
			var step = 1;

			function plus(e) {
				var current = Number(input.value);
				var newval = (current + step);
				if (newval > max)
					newval = max;
				input.value = Number(newval);
				e.preventDefault();
			}

			function minus(e) {
				var current = Number(input.value);
				var newval = (current - step);
				if (newval < min)
					newval = min;
				input.value = Number(newval);
				e.preventDefault();
			}
			decrese.addEventListener('click', minus);
			increase.addEventListener('click', plus);
		}
	</script>

</body>

</html>